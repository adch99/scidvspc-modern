## deutsch.tcl
#  German language support for Scid.
#  Contributors: Bernhard Bialas, Jürgen Clos, Christian Opitz 
#
#  Hinweis (aus tcl/lang/english.tcl):
#
# (4) [...]
#
#     A menu command has the format:
#         menuText L tag "Name..." underline {HelpMessage...}
#
#     [...]
#
#     where "L" is the language letter, "tag" is the name of the menu entry
#     or the button widget name, and "underline" is the index of the letter
#     to underline, counting from zero as the first letter. Two menu entries
#     that appear in the same menu should have a different underlined letter.

addLanguage D Deutsch 0 utf-8

proc setLanguage_D {} {

# File menu:
menuText D File "Datei" 0
menuText D FileNew "Neu..." 0 {Neue Scid-Datenbank anlegen}
menuText D FileOpen "Öffnen..." 0 {Existierende Scid-Datenbank öffnen}
menuText D FileClose "Schließen" 0 {Aktive Scid-Datenbank schließen}
menuText D FileFinder "Finder" 0 {Dateifinderfenster öffnen}
menuText D FileSavePgn "Speichere PGN..." 0 {}
menuText D FileOpenBaseAsTree "Öffne Datenbank als Baum" 0   {Öffne Datenbank und verwende sie im Zugbaumfenster}
menuText D FileOpenRecentBaseAsTree "Letzte Datenbank als Baum" 0   {Öffne zuletzt verwendete DB im Zugbaumfenster}
menuText D FileBookmarks "Lesezeichen" 0 {Lesezeichenmenü (Tasten: Strg+B)}
menuText D FileBookmarksAdd "Lesezeichen zur Liste hinzufügen" 0 \
  {Lesezeichen für die aktuelle Partie und Datenbank}
menuText D FileBookmarksFile "Lesezeichen hinzufügen in Verzeichnis" 26 \
  {Lesezeichen für die aktuelle Stellung und Partie zum Verzeichnis hinzufügen}
menuText D FileBookmarksEdit "Lesezeichen editieren..." 12 \
  {Lesezeichen bearbeiten}
menuText D FileBookmarksList "Listenansicht" 1 \
  {Lesezeichen als Liste zeigen, ohne Unterverzeichnisse}
menuText D FileBookmarksSub "Verzeichnisansicht" 3 \
  {Lesezeichen in Verzeichnissen zeigen, nicht als Gesamtliste}
menuText D FileReadOnly "Schreibschutz..." 3 \
  {Datenbank als schreibgeschützt behandeln, Änderungen verhindern}
menuText D FileSwitch "Datenbank wechseln" 0 \
  {Zu einer anderen geöffneten Datenbank umschalten}
menuText D FileExit "Ende" 0 {Scid beenden}

# Edit menu:
menuText D Edit "Bearbeiten" 0
menuText D EditAdd "Variante hinzufügen" 0 \
  {Füge zu diesem Zug eine Variante hinzu}
menuText D EditPasteVar "Variante einfügen" 0
menuText D EditDelete "Variante löschen" 9 \
  {Lösche eine Variante zu diesen Zug}
menuText D EditFirst "Als erste Variante setzen" 4 \
  {Variante an erste Stelle in der Liste setzten}
menuText D EditMain "Variante als Partiefortsetzung" 13 \
  {Variante zur Partiefolge machen (und umgekehrt)}
menuText D EditTrial "Variante testen" 9 \
  {Testmodus starten/stoppen, um eine Idee am Brett auszuprobieren}
menuText D EditStrip "Entfernen" 1 \
   {Kommentare oder Varianten aus der Partie entfernen}
menuText D EditUndo "Rückgängig" 0 {Macht die letzte Änderung rückgängig}
menuText D EditRedo "Wiederherstellen" 0
menuText D EditStripComments "Kommentare" 0 \
  {Alle Kommentare und Kommentarzeichen aus dieser Partie entfernen}
menuText D EditStripVars "Varianten" 0 \
  {Alle Varianten aus der Partie entfernen}
menuText D EditStripBegin "Züge ab Anfang" 8 \
  {Entferne Züge ab Partieanfang}
menuText D EditStripEnd "Züge bis Ende" 9 \
  {Entferne Züge bis Partieende}
menuText D EditReset "Ablage leeren" 0 \
   {Inhalt der Ablage-Datenbank löschen}
menuText D EditCopy "Partie in Ablage kopieren" 17 \
  {Diese Partie in die Ablage-Datenbank kopieren}
menuText D EditPaste "Partie aus Ablage einfügen" 19 \
  {Aktive Partie aus der Ablage hier einfügen}
menuText D EditPastePGN "PGN-Partie aus Ablage einfügen..." 1 \
  {Interpretiere den Inhalt der Zwischenablage als PGN-Notation und füge ihn hier ein}
menuText D EditSetup "Stellungseingabe..." 0 \
  {Neue Stellung eingeben (FEN oder manuell)}
menuText D EditCopyBoard "Stellung kopieren" 10 \
  {Aktuelle Brettposition in die Zwischenablage kopieren (im FEN-Format)}
menuText D EditCopyPGN "PGN-Stellung kopieren" 0 {kopiert Stellung als PGN}
menuText D EditPasteBoard "Stellung einfügen" 12 \
  {Stellung aus der Zwischenablage (im FEN-Format) einfügen}

# Game menu:
menuText D Game "Partie" 0
menuText D GameNew "Neue Partie" 5 \
  {Neue Partie beginnen, dabei alle Änderungen verwerfen}
menuText D GameFirst "Erste Partie laden" 0 {Erste Partie im Filter laden}
menuText D GamePrev "Vorherige Partie laden" 0 \
  {Vorherige Partie im Filter laden}
menuText D GameReload "Partie neu laden" 7 \
  {Diese Partie erneut laden, dabei alle Änderungen verwerfen}
menuText D GameNext "Nächste Partie laden" 0 {Nächste Partie im Filter laden}
menuText D GameLast "Letzte Partie laden" 0 {Letzte Partie im Filter laden}
menuText D GameRandom "Zufällige Partie laden" 1 \
  {Zufällig ausgewählte Partie im Filter laden}
menuText D GameNumber "Lade Partie Nummer..." 14 \
  {Partie durch Angabe der Nummer laden}
menuText D GameReplace "Partie ersetzen..." 8 \
  {Diese Partie sichern, dabei alte Version überschreiben}
menuText D GameAdd "Partie speichern..." 7 \
  {Diese Partie als neue Partie in der Datenbank sichern}
menuText D GameInfo "Partieinformationen setzen" 23
menuText D GameBrowse "Partien durchsuchen" 0
menuText D GameList "Alle Partien" 0
menuText D GameDelete "Partie löschen" 0
menuText D GameDeepest "Eröffnung identifizieren" 10 \
  {Zur Position der längstmöglichen Zugfolge nach ECO-Klassifikation gehen}
menuText D GameGotoMove "Zugnummer..." 0 \
  {Zur angegebenen Zugnummer in der aktuellen Partie gehen}
menuText D GameNovelty "Finde Neuerung..." 0 \
  {Ersten Zug dieser Partie finden, der vorher noch nie gespielt wurde}

# Search menu:
menuText D Search "Suchen" 0
menuText D SearchReset "Filter zurücksetzen" 0 \
  {Alle Partien in den Filter einschließen}
menuText D SearchNegate "Invertieren" 7 {Alle ausgeschlossenen Partien in den Filter nehmen}
menuText D SearchEnd "Filterpartien mit Schlußstellung laden" 2 {Alle gefilterten Partien mit ihrer Schlußstellung laden}
menuText D SearchCurrent "Brett..." 0 \
  {Aktuelle Brettposition suchen}
menuText D SearchHeader "Partiedaten..." 0 \
  {Partiedaten (Spieler, Turnier etc.) suchen}
menuText D SearchMaterial "Material/Muster..." 0 \
  {Nach Material- oder Stellungsmustern suchen}
menuText D SearchMoves {Züge} 0 {}
menuText D SearchUsing "Mit Suchoptionsdatei..." 4 \
  {Mit Suchoptionsdatei suchen}

# Windows menu:
menuText D Windows "Fenster" 0
menuText D WindowsGameinfo "Partieinformationen" 0 {Partieinformationen}
menuText D WindowsComment "Kommentareditor" 0 {Kommentareditor öffnen/schließen}
menuText D WindowsGList "Partienliste" 6 {Partienliste öffnen/schließen}
menuText D WindowsPGN "PGN-Fenster" 0 {PGN-Fenster (Partienotation) öffnen/schließen}
menuText D WindowsCross "Kreuztabelle" 0 {Kreuztabelle für diese Partie anzeigen}
menuText D WindowsPList "Spielersuche" 0 {Spielerfinder öffnen/schließen}
menuText D WindowsTmt "Turniersuche" 0 {Turnierfinder öffnen/schließen}
menuText D WindowsSwitcher "Datenbankumschalter" 0 \
  {Datenbank-Umschalter öffnen/schließen}
menuText D WindowsMaint "Wartung" 0 {(Datenbank-)Wartungsfenster öffnen/schließen}
menuText D WindowsECO "ECO-Auswertung" 0 {ECO-Auswertung öffnen/schließen}
menuText D WindowsStats "Statistik" 4 {Filterstatistik öffnen/schließen}
menuText D WindowsTree "Zugbaum" 0 {Zugbaum öffnen/schließen}
menuText D WindowsTB "Endspieltabellen..." 1 {Endspieltabellen öffnen/schließen}
menuText D WindowsBook "Eröffnungsbücher" 0 {Buchfenster öffnen/schließen}
menuText D WindowsCorrChess "Fernschach" 0 {Öffnet/schließt das Fernschachfenster}

# Tools menu:
menuText D Tools "Werkzeuge" 0
menuText D ToolsAnalysis "Analyse-Engine..." 0 \
  {Schachanalyseprogramm starten/beenden}
menuText D ToolsEmail "E-Mail-Manager" 7 \
  {E-Mail-Manager öffnen/schließen}
menuText D ToolsFilterGraph "Relative Filtergrafik" 0 \
  {Filtergrafik mit relativen Werten öffnen/schließen}
menuText D ToolsAbsFilterGraph "Absolute Filtergrafik" 11 \
  {Filtergrafik mit absoluten Werten öffnen/schließen}
menuText D ToolsOpReport "Eröffnungsbericht" 0 \
  {Ausführliche Eröffnungsübersicht für die aktuelle Position erstellen}
menuText D ToolsTracker "Figurenverteilung"  7 \
  {Figurenverteilungsfenster öffnen}
menuText D ToolsTraining "Training"  4 {Trainingswerkzeuge (Taktik, Eröffnungen,...) }
menuText D ToolsComp "Turnier Schachprogramm gegen Schachprogramm" 0 {Schachprogrammturnier}
menuText D ToolsTacticalGame "Gegen Phalanx spielen"  0 {Trainingspartie spielen}
menuText D ToolsSeriousGame "Gegen UCI-Schachprogramm spielen"  6 {Ernste Partie spielen}
menuText D ToolsTrainTactics "Taktikaufgaben lösen"  3 {Taktische Aufgaben lösen}
menuText D ToolsTrainCalvar "Varianten berechnen"  0 {Training zum Berechnen von Varianten}
menuText D ToolsTrainFindBestMove "Besten Zug finden"  0 {Find best move}
menuText D ToolsTrainFics "Internet (FICS)"  0 {Internetpartie auf freechess.org}
menuText D ToolsBookTuning "Buch abstimmen" 0 {Buch abstimmen}
menuText D ToolsMaint "Wartung" 0 {Das Scid-Datenbankwartungsfenster}
menuText D ToolsMaintWin "Wartungfenster" 0 \
  {Datenbank-Wartungsfenster öffnen/schließen}
menuText D ToolsMaintCompact "Datenbank komprimieren..." 10 \
  {Datenbank komprimieren, gelöschte Spiele und unbenutzte Namen entfernen}
menuText D ToolsMaintClass "Partien ECO-klassifizieren..." 8 \
{Neuklassifizierung aller Partien nach dem ECO-Code}
menuText D ToolsMaintSort "Sortieren..." 0 \
  {Alle Partien in der aktuellen Datenbank sortieren}
menuText D ToolsMaintDelete "Dubletten löschen..." 0 \
  {Dubletten finden und Löschkennzeichen setzen}
menuText D ToolsMaintTwin "Dubletten prüfen" 10 \
  {Dublettenfenster öffnen/erneuern}
menuText D ToolsMaintNameEditor "Namenseditor" 0 \
  {Namenseditorfenster öffnen/schließen}
menuText D ToolsMaintNamePlayer "Schreibkorrektur Spieler..." 17 \
  {Schreibkorrektur der Spielernamen mit Hilfe der .ssp-Datei}
menuText D ToolsMaintNameEvent "Schreibkorrektur ..." 17 \
  {Schreibkorrektur der Veranstaltungen mit Hilfe der .ssp-Datei}
menuText D ToolsMaintNameSite "Schreibkorrektur Ort..." 17 \
  {Schreibkorrektur der Orte mit Hilfe der .ssp-Datei}
menuText D ToolsMaintNameRound "Schreibkorrektur Runde..." 17 \
  {Schreibkorrektur der Runden mit Hilfe der .ssp-Datei}
menuText D ToolsMaintFixBase "Inkonsistenzen beseitigen" 0 {Versuche eine inkonsistente Datenbank zu reparieren}
menuText D ToolsConnectHardware "Hardware verbinden" 0 {Externe Hardware mit Scid verbinden}
menuText D ToolsConnectHardwareConfigure "Konfigurieren..." 0 {Hardware und Verbindung konfigurieren}
menuText D ToolsConnectHardwareNovagCitrineConnect "Novag Citrine verbinden" 0 {Novag Citrine mit Scid verbinden}
menuText D ToolsConnectHardwareInputEngineConnect "Input Engine verbinden" 0 {Input Engine (z.B. DGT Brett) mit Scid verbinden}
menuText D ToolsPInfo "Spielerinformationen"  0 \
  {Spielerinformationen öffnen/schließen}
menuText D ToolsPlayerReport "Spielerbericht" 7 \
  {Erzeuge einen Spielerbericht}
menuText D ToolsRating "Ratingveränderung" 4 \
  {Ratingveränderung beider Spieler grafisch darstellen}
menuText D ToolsScore "Partiebewertungsgrafik" 0 {Partiebewertungsgrafik zeigen}
menuText D ToolsExpCurrent "Partie exportieren" 8 \
  {Aktuelle Partie in eine Textdatei schreiben}
menuText D ToolsExpCurrentPGN "Partie in PGN-Datei exportieren..." 10 \
  {Aktuelle Partie in eine PGN-Datei schreiben}
menuText D ToolsExpCurrentHTML "Partie in HTML-Datei exportieren..." 10 \
  {Aktuelle Partie in eine HTML-Datei schreiben}
menuText D ToolsExpCurrentHTMLJS "Partie in HTML/JavaScript-Datei exportieren..." 15 {Aktuelle Partie wird in eine HTML und JavaScript Datei exportiert.}  
menuText D ToolsExpCurrentLaTeX "Partie in LaTeX-Datei exportieren..." 10 \
  {Aktuelle Partie in eine LaTeX-Datei schreiben}
menuText D ToolsExpFilter "Alles im Filter exportieren" 16 \
  {Alle Partien im Filter in eine Textdatei schreiben}
menuText D ToolsExpFilterPGN "Filter in PGN-Datei exportieren..." 10 \
  {Alle Partien im Filter in eine PGN-Datei schreiben}
menuText D ToolsExpFilterHTML "Filter in HTML-Datei exportieren..." 10 \
  {Alle Partien im Filter in eine HTML-Datei schreiben}
menuText D ToolsExpFilterHTMLJS "Filter in HTML/JavaScript exportieren..." 17 \
  {Alle Partien im Filter werden in eine HTML und JavaScript Datei exportiert.}  
menuText D ToolsExpFilterLaTeX "Filter in LaTeX-Datei exportieren..." 10 \
  {Alle Partien im Filter in eine LaTeX-Datei schreiben}
menuText D ToolsExpFilterEPD "Filter in EPD/FEN-Datei exportieren" 17 {Alle Filterpartien in eine EPD-Datei speichern}
menuText D ToolsExpFilterGames "Partienliste in eine Textdatei exportieren" 21 \
  {Alle Partien im Filter werden in eine Textdatei exportiert.}
menuText D ToolsImportOne "Eine PGN-Partie importieren..." 16 \
  {Eine Partie im PGN-Format eingeben oder einfügen}
menuText D ToolsImportFile "PGN-Partien importieren..." 0 \
  {Partien aus einer PGN-Datei lesen}
menuText D ToolsStartEngine1 "Starte Engine 1" 0  {Starte Analyse von Analyseprogramm 1}
menuText D ToolsStartEngine2 "Starte Engine 2" 0  {Starte Analyse von Analyseprogramm 2}
menuText D ToolsScreenshot "Bildschirmfoto" 0
#-----AW------
menuText D Play "Spielen" 0 {Partien spielen}
menuText D CorrespondenceChess "Fernschach" 0 {Funktionen für E-Mail und Xfcc basiertes Fernschach}
menuText D CCConfigure "Einstellungen..." 0 {Generelle Einstellungen und externe Werkzeuge}
menuText D CCConfigRelay "Beobachtete Partien..." 0 {Konfiguriere zu beobachtende Partien}
menuText D CCOpenDB "Datenbank öffnen..." 0 {Öffnet die Standarddatenbank für Fernschachpartien}
menuText D CCRetrieve "Partien abrufen" 0 {Synchronisiert Partien mit dem Posteingang und mittels (Xfcc-)Hilfsprogramm}
menuText D CCInbox "Posteingang synchronisieren" 12 {Synchronisiert alle Partien im Posteingang}
menuText D CCSend "Zug senden" 0 {Verschickt den letzten Zug via E-Mail oder exterem (Xfcc-)Hilfsprogramm}
menuText D CCResign "Aufgeben" 0 {Partie aufgeben}
menuText D CCClaimDraw "Remis reklamieren" 1 {Zug senden und Remis reklamieren (funktioniert nicht via E-Mail)}
menuText D CCOfferDraw "Remis anbieten" 0 {Zug senden und Remis anbieten (funktioniert nicht via E-Mail)}
menuText D CCAcceptDraw "Remis annehmen" 10 {Remis annehmen (funktioniert nicht via E-Mail)}
menuText D CCNewMailGame "Neue E-Mail-Partie..." 0 {Beginnt eine neue Partie via E-Mail}
menuText D CCMailMove "Zug per E-Mail senden..." 9 {Verschickt den letzten Zug per E-Mail}
menuText D CCGamePage "Partieseite (WWW)..." 13 {Ruft die Webseite der Partie auf}
menuText D CCEditCopy "Partienliste in Ablage" 0 {Kopiert die Partienliste als CSV in die Zwischenablage}
#-----AW------

# Options menu:
menuText D Options "Optionen" 0
menuText D OptionsBoard "Schachbrett" 6 {Schachbrettoptionen}
menuText D OptionsColour "Farben" 0 {Default text widget color}
menuText D OptionsBackColour "Hintergrund" 0 {Default text widget color}
menuText D OptionsMainLineColour "Pfeilfarbe für Partiezug" 0 {Mainline arrows}
menuText D OptionsVarLineColour "Pfeilfarbe für Variante" 0 {Variation arrows}
menuText D OptionsEngineLineColour "Engine-Pfeile" 0 {Engine-Pfeile}
menuText D OptionsRowColour "Farbe für eine Zeile" 0 {Default tree/book row color}
menuText D OptionsSwitcherColour "Datenbankwechselfarbe" 0 {Default db switcher color}
menuText D OptionsProgressColour "Fortschrittsbalken" 0 {Default progressbar color}
menuText D OptionsScoreColour "Farbe für alle Zugbewertungen" 0 {}
menuText D OptionsScoreBarColour "Farbe für Bewertung aktueller Zug" 0 {}
menuText D OptionsNames "Meine Spielernamen..." 0 {Editiere meine Spielernamen}
menuText D OptionsExport "Export" 1 {Textausgabeoptionen ändern}
menuText D OptionsFonts "Schriftarten" 3 {Schriftart wechseln}
menuText D OptionsFontsRegular "Normal" 0 {Standardzeichensatz}
menuText D OptionsFontsMenu "Menü" 0 {Schriftart für Menüs}
menuText D OptionsFontsSmall "Klein" 0 {Kleine Zeichen}
menuText D OptionsFontsFixed "Fest" 0 {Schriftart mit fester Breite (nichtproportional)}
menuText D OptionsGInfo "Partieinformationen" 0 {Optionen für Informationsbereich}
menuText D OptionsFics "FICS" 0
menuText D OptionsFicsAuto "Automatische Umwandlung in Dame" 0
menuText D OptionsFicsClk "Bedenkzeiten speichern" 0
menuText D OptionsFicsColour "Textfarbe" 0
menuText D OptionsFicsSize "Brettgröße" 0
menuText D OptionsFicsButtons "Benutzerschaltflächen" 0
menuText D OptionsFicsCommands "Startbefehle" 0
menuText D OptionsFicsNoRes "Keine Ergebnisse" 0
menuText D OptionsFicsNoReq "Keine Anfragen" 0
menuText D OptionsFicsPremove "Voreingabe von Zügen erlauben" 0
menuText D OptionsLanguage "Sprache" 0 {Sprache wählen}
menuText D OptionsMovesTranslatePieces "Figurennamen übersetzen" 0 {Übersetze den ersten Buchstaben der Figurenbezeichnung}
menuText D OptionsMovesHighlightLastMove "Letzen Zug hervorheben" 0 {Rahmt Start- und Zielfeld des letzten Zuges farbig ein}
menuText D OptionsMovesHighlightLastMoveDisplay "Anzeigen" 0 {Hervorhebung des letzen Zuges anzeigen}
menuText D OptionsMovesHighlightLastMoveWidth "Dicke" 0 {Dicke der Linie}
menuText D OptionsMovesHighlightLastMoveColor "Farbe" 0 {Farbe der Linie}
menuText D OptionsMovesColorSelected "Farbe ausgewähltes Feld" 0 {Zugfarbe}
menuText D OptionsMoves "Züge" 0 {Zugeingabeoptionen}
menuText D OptionsMovesAsk "Fragen vor Ersetzen" 0 \
  {Vor Überschreiben existierender Züge nachfragen}
menuText D OptionsMovesAnimate "Animation" 0 \
  {Zeit für Zuganimation einstellen}
menuText D OptionsMovesDelay "Automatisch vorspielen..." 7 \
  {Zeit für automatisches Vorspielen einstellen}
menuText D OptionsMovesCoord "Tastatureingabe" 0 \
  {Zugeingabe über Koordinaten ("g1f3") akzeptieren}
menuText D OptionsShowVarPopup "Variantenfenster zeigen" 0 { Anzeige des Variantenauswahlfensters ein/ausschalten}  
menuText D OptionsMovesSpace "Leerzeichen nach Zugnummer einfügen" 0 {Leerzeichen nach Zugnummer einfügen}  
menuText D OptionsMovesKey "Automatische Zugergänzung" 10 \
  {Automatische Zugergänzung ein-/ausschalten}
menuText D OptionsMovesShowVarArrows "Pfeile für Varianten anzeigen" 0 {Zeige Pfeile in Varianten an: ja/nein}
menuText D OptionsNumbers "Zahlenformat" 5 {Zahlenformat wählen}
menuText D OptionsStartup "Autostart" 1 {Fenster zum Öffnen bei Start auswählen}
menuText D OptionsTheme "Design" 0 {Verändert das Aussehen der Oberfläche}
menuText D OptionsWindows "Fenster" 6 {Fenster-Optionen}
menuText D OptionsWindowsIconify "Automatisch minimieren" 7 \
  {Alle Fenster mit dem Hauptfenster minimieren}
menuText D OptionsWindowsRaise "Automatisch heraufsetzen" 7 \
  {Bestimmte Fenster (z.B. Zustandsleiste) bei Bedarf öffnen}
menuText D OptionsSounds "Töne..." 0 {Töne für Zugankündigung einstellen} ;# *** Hmm, :-|
menuText D OptionsWindowsDock "Fenster andocken" 0 {Fenster andocken}
menuText D OptionsWindowsSaveLayout "Layout speichern" 0 {Das Fensterlayout abspeichern}
menuText D OptionsWindowsRestoreLayout "Layout wiederherstellen" 0 {Das gespeicherte Fensterlayout wiederherstellen}
menuText D OptionsWindowsShowGameInfo "Partieinformationen" 0 {Partieinformationen anzeigen}
menuText D OptionsWindowsAutoLoadLayout "Automatisch laden: 1. Layout" 0 {Lädt das erste definierte Layout automatisch beim Programmstart}
menuText D OptionsWindowsAutoResize "Brettgröße automatisch anpassen" 0 {}
menuText D OptionsWindowsFullScreen "Vollbild" 0 {Vollbild Modus umschalten}
menuText D OptionsToolbar "Werkzeugleiste" 0 {Werkzeug- bzw. Symbolleiste Ein/Aus}
menuText D OptionsECO "ECO-Datei laden..." 0 {ECO-Klassifikationsdatei laden}
menuText D OptionsSpell "Schreibkorrekturdatei laden..." 7 \
  {Datei für Scid-Rechtschreibprüfung laden}
menuText D OptionsTable "Endspieltabellenverzeichnis..." 16 \
  {Eine Endspieltabellendatei wählen (und damit alle Tabellen in diesem Verzeichnis)}
menuText D OptionsRecent "Aktuelle Dateien..." 9 \
  {Anzahl der aktuellen Dateien im Dateimenü ändern}
menuText D OptionsBooksDir "Buchverzeichnis..." 0 {Eröffnungsbuchverzeichnis einstellen}
menuText D OptionsTacticsBasesDir "Datenbankenverzeichnis..." 0 {Verzeichnis für taktische Trainingsdatenbanken einstellen}
menuText D OptionsInformant "Informatorwerte konfigurieren" 0
menuText D OptionsSave "Optionen speichern" 0 \
  "Alle einstellbaren Optionen in der Datei $::optionsFile sichern"
menuText D OptionsSaveBases "Datenbanken als Standard speichern" 0 
menuText D OptionsAutoSave "Automatisch speichern bei Beenden" 0 \
  {Alle Optionen beim Beenden von Scid automatisch speichern}

# Help menu:
menuText D Help "Hilfe" 0
menuText D HelpContents "Inhalt" 0 {Gehe zum Inhaltsverzeichnis}
menuText D HelpIndex "Index" 4 {Gehe zum Hilfeindex}
menuText D HelpGuide "Kurzanleitung" 4 {Ein Scid-Schnelldurchgang}
menuText D HelpHints "Hinweise" 0 {Die Scid-Kurztips}
menuText D HelpContact "Kontaktinformationen" 0 {Hilfe zur Kontaktinformation}
menuText D HelpTip "Tagestip" 0 {Zeigt einen nützlichen Tip an}
menuText D HelpStartup "Startfenster" 0 {Startfenster zeigen}
menuText D HelpAbout "Über Scid" 0 {Informationen zu Scid}

# Game info box popup menu:
menuText D GInfoHideNext "Nächsten Zug verstecken" 13
menuText D GInfoShow "Zugrecht anzeigen" 0
menuText D GInfoCoords "Koordinaten anzeigen" 0
menuText D GInfoMaterial "Materialwerte zeigen" 0
menuText D GInfoFEN "FEN zeigen" 0
menuText D GInfoMarks "Gefärbte Felder und Pfeile zeigen" 0
menuText D GInfoWrap "Umbruch bei langen Zeilen" 0
menuText D GInfoFullComment "Vollständigen Kommentar zeigen" 14
menuText D GInfoPhotos "Fotos zeigen" 1
menuText D GInfoTBNothing "Endspieltabellen: nichts" 18
menuText D GInfoTBResult "Endspieltabellen: nur Ergebnis" 22
menuText D GInfoTBAll "Endspieltabellen: Ergebnis und bester Zug" 31
menuText D GInfoDelete "(Ent)Lösche diese Partie" 5
menuText D GInfoMark "(Ent)Markiere diese Partie" 4
menuText D GInfoMenuBar "Menüleiste"  0
menuText D GInfoToolBar "Werkzeugleiste"  0
menuText D GInfoButtonBar "Schalterleiste"  0
menuText D GInfoStatusBar "Statusleiste"  0
translate D FlipBoard {Brett drehen}
translate D RaiseWindows {Fenster vergrößern}
translate D AutoPlay {Abspielen}
translate D TrialMode {Züge ausprobieren}
translate D KeepOpen {Nach Programmstart geöffnet halten}

# General buttons:
# todo
translate D Apply {Übernehmen}
translate D Back {Zurück}
translate D Browse {Durchsuchen}
translate D Cancel {Abbrechen}
translate D Continue {Weiter}
translate D Clear {Leeren}
translate D Close {Schließen}
translate D Contents {Inhalt}
translate D Defaults {Standard}
translate D Delete {Löschen}
translate D Graph {Grafik}
translate D Help {Hilfe}
translate D Import {Importieren}
translate D Index {Index}
translate D LoadGame {Partie laden}
translate D BrowseGame {Partie betrachten}
translate D MergeGame {Partie zusammenfügen} ;# mischen?! einfügen!?
translate D MergeGames {Partien zusammenfügen}
translate D Preview {Vorschau} ;# Voransicht!? (KDE)
translate D Revert {Umkehren}
translate D Save {Speichern}
translate D DontSave {Nicht speichern}
translate D Search {Suchen}
translate D Stop {Halt}
translate D Store {Speichern}
translate D Update {Aktualisieren}
translate D ChangeOrient {Fensterausrichtung ändern}
translate D ShowIcons {Symbole anzeigen}
translate D ConfirmCopy {Kopie bestätigen}
translate D None {Keine}
translate D First {Erste}
translate D Current {Aktuell}
translate D Last {Letzte}
translate D Font {Schrift} ;# Schriftart?
translate D Change {Änderung}
translate D Random {Zufall} ;# ?

# General messages:
translate D game {Partie}
translate D games {Partien}
translate D move {Zug}
translate D moves {Züge}
translate D all {Alle}
translate D Yes {Ja}
translate D No {Nein}
translate D Both {Beide}
translate D King {König}
translate D Queen {Dame}
translate D Rook {Turm}
translate D Bishop {Läufer}
translate D Knight {Springer}
translate D Pawn {Bauer}
translate D White {Weiß}
translate D Black {Schwarz}
translate D Player {Spieler}
translate D Rating {Elo}
translate D RatingDiff {Elo-Differenz (Weiß - Schwarz)}
translate D AverageRating {Elo-Durchschnitt}
translate D Event {Turnier}
translate D Site {Ort}
translate D Country {Land}
translate D IgnoreColors {Farben ignorieren}
translate D MatchEnd {Nur Schlußstellung}
translate D Date {Datum}
translate D EventDate {Turnierdatum}
translate D Decade {Dekade}
translate D Year {Jahr}
translate D Month {Monat}
translate D Months {Januar Februar März April Mai Juni Juli August September Oktober November Dezember}
translate D Days {Son Mon Die Mit Don Fre Sam}
translate D YearToToday {Ein Jahr zurück}
translate D Result {Ergebnis}
translate D Round {Runde}
translate D Length {Länge}
translate D ECOCode {ECO-Code}
translate D ECO {ECO}
translate D Deleted {Gelöscht}
translate D SearchResults {Suchergebnisse}
translate D OpeningTheDatabase {Datenbank öffnen}
translate D Database {Datenbank}
translate D Filter {Filter}
translate D Reset {Zurücksetzen}
translate D IgnoreCase {Ignoriere Groß-/Kleinschreibung}
translate D noGames {keine Partien}
translate D allGames {alle Partien}
translate D empty {leer}
translate D clipbase {Ablage}
translate D score {Punkte}
translate D Start {Start}
translate D StartPos {Stellung}
translate D Total {Summe}
translate D readonly {schreibgeschützt}
translate D altered {geändert}
translate D tagsDescript {Extramarkierungen (z.B.: Annotator "Anand")}
translate D prevTags {Verwende vorherige}

# Standard error messages:
translate D ErrNotOpen {Dies ist keine geöffnete Datenbank.}
translate D ErrReadOnly \
  {Diese Datenbank ist schreibgeschützt; sie kann nicht geändert werden.}
translate D ErrSearchInterrupted \
  {Suche wurde unterbrochen; Ergebnisse sind unvollständig.}

# Game information:
translate D twin {Dublette}
translate D deleted {gelöscht}
translate D comment {Kommentar}
translate D hidden {versteckt}
translate D LastMove {Letzter Zug}
translate D NextMove {Nächster Zug}
translate D GameStart {Partieanfang}
translate D LineStart {Beginn der Zugfolge}
translate D GameEnd {Partieende}
translate D LineEnd {Ende der Zugfolge}

# Player information:
translate D PInfoAll {Alle Spiele}
translate D PInfoFilter {Filterspiele}
translate D PInfoAgainst {Ergebnisse gegen}
translate D PInfoMostWhite {Häufigste Eröffnungen mit Weiß}
translate D PInfoMostBlack {Häufigste Eröffnungen mit Schwarz}
translate D PInfoRating {ELO-Historie}
translate D PInfoBio {Biographie}
translate D PInfoEditRatings {Bewertung bearb.}
translate D PinfoEditName {Name ändern}
translate D PinfoLookupName {Name suchen}

# Tablebase information:
translate D Draw {Remis}
translate D stalemate {Patt}
translate D checkmate {Schachmatt}
translate D withAllMoves {mit allen Zügen}
translate D withAllButOneMove {mit allen außer einem Zug}
translate D with {mit}
translate D only {nur}
translate D lose {verlieren}
translate D loses {verliert}
translate D allOthersLose {alle anderen verlieren}
translate D matesIn {setzt Matt in}
translate D longest {längste}
translate D WinningMoves {Gewinnzüge}
translate D DrawingMoves {Remiszüge}
translate D LosingMoves {Verlustzüge}
translate D UnknownMoves {Züge mit unbekanntem Resultat}

# Tip of the day:
translate D Tip {Tip}
translate D TipAtStartup {Tip beim Starten}

# Tree window menus:
menuText D TreeFile "Datei" 0
menuText D TreeFileFillWithBase "Cache mit Datenbank füllen" 0 {Die Cache-Datei wird mit allen Partien der aktuellen Datenbank befüllt.}
menuText D TreeFileFillWithGame "Cache mit Partie füllen" 0 {Die Cache-Datei wird mit der aktuellen Partien befüllt.}
menuText D TreeFileCacheInfo "Cache Informationen" 0 {Info über Cache-Nutzung anzeigen.}
menuText D TreeFileSave "Cache-Datei sichern" 12 \
  {Speichere die Zugbaum-Cache-Datei (.stc)}
menuText D TreeFileFill "Cache-Datei füllen" 12 \
  {Fülle die Cache-Datei mit häufigen Eröffnungspositionen}
menuText D TreeFileBest "Beste Partien" 0 \
  {Zeige die Liste bester Partien im Baum}
menuText D TreeFileGraph "Grafikfenster" 0 \
  {Zeige die Grafik für diesen Ast}
menuText D TreeFileCopy "Kopiere Baumfenster in Zwischenablage" 0 \
  {Kopiere die Zugbaum-Statistik in die Zwischenablage}
menuText D TreeFileClose "Baumfenster schließen" 12 {Schließe Zugbaum}
menuText D TreeMask "Maskieren" 0
menuText D TreeMaskNew "Neu" 0 {Neue Maske anlegen}
menuText D TreeMaskOpen "Öffnen" 0 {Maske öffnen}
menuText D TreeMaskOpenRecent "Aktuelle Masken" 0 {Zuletzt geöffnete Masken erneut laden}
menuText D TreeMaskSave "Speichern" 0 {Maske speichern}
menuText D TreeMaskClose "Schließen" 0 {Maske schließen}
menuText D TreeMaskFillWithLine "Mit vorherigen Zügen füllen" 0 {Maske mit allen vorherigen Zügen füllen}
menuText D TreeMaskFillWithGame "Mit aktueller Partie füllen" 0 {Maske mit der aktuellen Partie füllen}
menuText D TreeMaskFillWithBase "Mit Datenbank füllen" 0 {Maske mit Datenbankpartien füllen}
menuText D TreeMaskInfo "Info" 0 {Statistik für die aktuelle Maske anzeigen}
menuText D TreeMaskDisplay "Maske als Baum" 0 {Zeigt den Inhalt der aktuellen Maske als Zugbaum}
menuText D TreeMaskSearch "Suchen" 0 {Suchen innerhalb der aktuellen Maske}
menuText D TreeSort "Sortieren" 0
menuText D TreeSortAlpha "Alphabetisch" 0
menuText D TreeSortECO "ECO-Code" 0
menuText D TreeSortFreq "Häufigkeit" 0
menuText D TreeSortScore "Punkte" 0
menuText D TreeOpt "Optionen" 0
menuText D TreeOptSlowmode "Gründliche Suche" 0 {Update mit hoher Genauigkeit, langsamer}
menuText D TreeOptFastmode "Schneller Modus" 0 {Schnelles Update (ignoriert Zugumstellungen)}
menuText D TreeOptFastAndSlowmode "Gründlicher und schneller Modus" 0 {Zunächst schneller Updatemodus, dann Nacharbeit im gründlichen Modus}
menuText D TreeOptStartStop "Automatisch aktualisieren" 0 {Schaltet das automatische Aktualisieren ein/aus}
menuText D TreeOptLock "Anbinden" 0 \
  {Zugbaum an aktive Datenbank anbinden(/lösen)}
menuText D TreeOptTraining "Training" 0 {Trainingsmodus ein-/ausschalten}
menuText D TreeOptShort "Kurze Anzeige" 0 {Zeige keine Elo-Information}
menuText D TreeOptAutosave "Automatisch Cache-Datei sichern" 4 \
  {Beim Schließen des Zugbaums automatisch Cache-Datei sichern}
menuText D TreeOptAutomask "Automatisches Laden der Maske" 0 "Automatisches Laden der letzten Maske mit geöffnetem Baum"
menuText D TreeOptCacheSize "Cache-Größe" 0 {Cache-Größe auswählen.}
menuText D TreeOptShowBar "Fortschrittsbalken anzeigen" 0 "Zeigt Fortschrittsbalken an."
menuText D TreeOptShowFrame "Schaltflächenleiste anzeigen" 0 "Zeigt Schaltflächenleiste für den Zugbaum"
menuText D TreeOptSortBest "Sortiere beste Partien" 0 "Sortiert beste Partien nach ELO."
menuText D TreeHelp "Hilfe" 0
menuText D TreeHelpTree "Zugbaumhilfe" 0
menuText D TreeHelpIndex "Index" 0


translate D SaveCache {Cache sichern}
translate D Training {Training}
translate D LockTree {Anbinden}
translate D TreeLocked {angebunden}
translate D TreeBest {Beste}
translate D TreeBestGames {Beste Zugbaumpartien}
translate D TreeAdjust {Filter anpassen}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate D TreeTitleRow {    Zug       Häufigkeit    Pkte Remis  Elo  Erflg Jahr ECO}
translate D TreeTitleRowShort {    Zug       Häufigkeit    Pkte Remis}
translate D TreeTotal: {SUMME:}
translate D DoYouWantToSaveFirst {Soll zuerst gespeichert werden}
translate D AddToMask {Zur Maske hinzufügen}
translate D RemoveFromMask {Von Maske entfernen}
translate D AddThisMoveToMask {Diesen Zug zur Maske hinzufügen}
translate D SearchMask {Suche in einer Maske}
translate D DisplayMask {Maske als Zugbaum}
translate D Nag {NAG-Code}
translate D Marker {Marker}
translate D Include {Einbezogene Variante}
translate D Exclude {Ausgeschlossene Variante}
translate D MainLine {Hauptvariante}
translate D Bookmark {Lesezeichen}
translate D NewLine {Neue Variante}
translate D ToBeVerified {Überprüfen}
translate D ToTrain {Trainieren}
translate D Dubious {Zweifelhaft}
translate D ToRemove {Entfernen}
translate D NoMarker {Keine Markierung}
translate D ColorMarker {Farbe}
translate D WhiteMark {Weiß}
translate D GreenMark {Grün}
translate D YellowMark {Gelb}
translate D BlueMark {Blau}
translate D RedMark {Rot}
translate D CommentMove {Zug kommentieren}
translate D CommentPosition {Position kommentieren}
translate D AddMoveToMaskFirst {Zug zuerst zur Maske hinzufügen}
translate D OpenAMaskFileFirst {Zunächst Maske öffnen}
translate D positions {Stellungen}
translate D Moves {Züge}

# Finder window:
menuText D FinderFile "Datei" 0
menuText D FinderFileSubdirs "Unterverzeichnisse beachten" 0
menuText D FinderFileClose "Dateifinder schließen" 0
menuText D FinderSort "Sortieren" 0
menuText D FinderSortType "Typ" 0
menuText D FinderSortSize "Größe" 0
menuText D FinderSortMod "Modifiziert" 0
menuText D FinderSortName "Namen" 0
menuText D FinderSortPath "Pfad" 0
menuText D FinderTypes "Typen" 0
menuText D FinderTypesScid "Scid-Datenbanken" 0
menuText D FinderTypesOld "Datenbanken im alten Format" 0
menuText D FinderTypesPGN "PGN-Dateien" 0
menuText D FinderTypesEPD "EPD-Dateien" 0
menuText D FinderHelp "Hilfe" 0
menuText D FinderHelpFinder "Dateifinderhilfe" 0
menuText D FinderHelpIndex "Index" 0
translate D FileFinder {Dateifinder}
translate D FinderDir {Verzeichnis}
translate D FinderDirs {Verzeichnisse}
translate D FinderFiles {Dateien}
translate D FinderUpDir {hoch}
translate D FinderCtxOpen {Öffnen}
translate D FinderCtxBackup {Sicherungskopie}
translate D FinderCtxCopy {Kopieren}
translate D FinderCtxMove {Verschieben}
translate D FinderCtxDelete {Löschen}
translate D FinderDirOpen {Verzeichnis öffnen}

# Player finder:
menuText D PListFile "Datei" 0
menuText D PListFileUpdate "Aktualisieren" 0
menuText D PListFileClose "Spielerfinder schließen" 7
menuText D PListSort "Sortieren" 0
menuText D PListSortName "Name" 0
menuText D PListSortElo "ELO" 0
menuText D PListSortGames "Partien" 0
menuText D PListSortOldest "Älteste" 0
menuText D PListSortNewest "Neueste" 0

# Tournament finder:
menuText D TmtFile "Datei" 0
menuText D TmtFileUpdate "Aktualisieren" 0
menuText D TmtFileClose "Turnierfinder schließen" 0
menuText D TmtSort "Sortieren" 0
menuText D TmtSortDate "Datum" 0
menuText D TmtSortPlayers "Spieler" 0
menuText D TmtSortGames "Partien" 0
menuText D TmtSortElo "ELO" 0
menuText D TmtSortSite "Ort" 0
menuText D TmtSortEvent "Turnier" 1
menuText D TmtSortWinner "Gewinner" 0
translate D TmtLimit "Listengrenze"
translate D TmtMeanElo "Unterster ELO-Durchschnitt"
translate D TmtNone "Keine zutreffenden Turniere gefunden."

# Graph windows:
menuText D GraphFile "Datei" 0
menuText D GraphFileColor "Als Farb-Postscript speichern..." 4
menuText D GraphFileGrey "Als Graustufen-Postscript speichern..." 4
menuText D GraphFileClose "Fenster schließen" 0
menuText D GraphOptions "Optionen" 0
menuText D GraphOptionsWhite "Weiß invertieren" 0
menuText D GraphOptionsBlack "Schwarz invertieren" 0
menuText D GraphOptionsDots "Zeige Punkte" 0
menuText D GraphOptionsBar "Aktuellen Zug hervorheben" 0
menuText D GraphOptionsBoth "Beide" 0
menuText D GraphOptionsPInfo "Spielerinfo" 1
translate D GraphFilterTitle "Filtergrafik: Häufigkeit pro 1000 Partien"
translate D GraphAbsFilterTitle "Filtergrafik: Häufigkeit der Partien"
translate D ConfigureFilter "X-Achse für Jahr, ELO und Züge konfigurieren"
translate D FilterEstimate "Schätzen"
translate D TitleFilterGraph "Scid: Filtergrafik"

# Analysis window:
translate D AddVariation {Variante hinzufügen}
translate D AddAllVariations {Alle Varianten hinzufügen}
translate D AddMove {Zug hinzufügen}
translate D Annotate {Automatisch kommentieren}
translate D ShowAnalysisBoard {Analysebrett anzeigen}
translate D ShowInfo {Engine-Information anzeigen}
translate D FinishGame {Partie beenden}
translate D StopEngine {Engine anhalten}
translate D StartEngine {Engine starten}
translate D ExcludeMove {Zug ausschließen}
translate D LockEngine {Anbinden an aktuelle Position}
translate D AnalysisCommand {Analysebefehl}
translate D PreviousChoices {Vorherige Wahl}
translate D AnnotateTime {Zeit zwischen den Zügen (in Sek.) einstellen}
translate D AnnotateWhich {Welche Seite}
translate D AnnotateAll {Für Züge beider Seiten}
translate D AnnotateAllMoves {Alle Züge kommentieren}
translate D AnnotateWhite {Nur für Züge von Weiß}
translate D AnnotateBlack {Nur für Züge von Schwarz}
translate D AnnotateNotBest {Wenn der Partiezug nicht der beste Zug ist}
translate D AnnotateBlundersOnly {Wenn der Partiezug ein offensichtlicher Fehler ist}
translate D BlundersNotBest {Patzer/nicht bester Zug}
translate D AnnotateTitle {Kommentare konfigurieren}
translate D AnnotateMissedMates {Verpaßte/kürzere Mattführungen}
translate D BlundersThreshold {Schwelle}
translate D ScoreFormat {Format für die Bewertung}
translate D CutOff {Abschneiden}
translate D LowPriority {Niedrige CPU-Priorität}
translate D LogEngines {Protokollgröße}
translate D LogName {Namen hinzufügen}
translate D MaxPly {Max. Halbzüge}
translate D ClickHereToSeeMoves {Hier klicken, um Züge anzuzeigen}
translate D ConfigureInformant {Informator konfigurieren}
translate D Informant!? {Interessanter Zug}
translate D Informant? {Schwacher Zug}
translate D Informant?? {Fehler}
translate D Informant?! {Zweifelhafter Zug}
translate D Informant+= {Weiß hat leichten Vorteil}
translate D Informant+/- {Weiß hat mäßigen Vorteil}
translate D Informant+- {Weiß hat großen Vorteil}
translate D Informant++- {Partie wird gewonnen}
translate D Book {Eröffnungsbuch}
translate D OtherBook {andere Züge}
translate D Alphabetical {alphabetisch}
translate D TwoBooks {zwei Bücher}

# Analysis Engine open dialog:
translate D EngineList {Analyseprogramme}
translate D EngineKey {Taste}
translate D EngineType {Typ}
translate D EngineName {Name}
translate D EngineCmd {Befehl}
translate D EngineArgs {Parameter}
translate D EngineDir {Verzeichnis}
translate D EngineElo {ELO}
translate D EngineTime {Datum}
translate D EngineNew {Neu}
translate D EngineEdit {Bearbeiten}
translate D EngineRequired {Fettgedruckte Parameter erforderlich, andere optional}


# Stats window menus:
menuText D StatsFile "Datei" 0
menuText D StatsFilePrint "Drucken in Datei..." 0
menuText D StatsFileClose "Fenster schließen" 0
menuText D StatsOpt "Optionen" 0

# PGN window menus:
menuText D PgnFile "Datei" 0
menuText D PgnFileCopy "Kopiere Partie in Zwischenablage" 0
menuText D PgnFilePrint "Drucken in Datei..." 0
menuText D PgnFileClose "PGN-Fenster schließen" 0
menuText D PgnOpt "Ausgabe" 0
menuText D PgnOptColor "Farbige Darstellung" 0
menuText D PgnOptShort "Kurzer Vorspann (3 Zeilen)" 17
menuText D PgnOptSymbols "Symbolische Darstellung" 0
menuText D PgnOptIndentC "Kommentare einrücken" 0
menuText D PgnOptIndentV "Varianten einrücken" 0
menuText D PgnOptColumn "Tabellarisch (ein Zug pro Zeile)" 0
menuText D PgnOptSpace "Leerzeichen nach Zugnummer" 0
menuText D PgnOptStripMarks "Feld-/Pfeilcodes verbergen" 27
menuText D PgnOptChess "Schachfiguren als Symbole" 6
menuText D PgnOptScrollbar "Bildlaufleiste" 0
menuText D PgnOptBoldMainLine "Partiezüge in Fettdruck" 0
menuText D PgnColor "Farben" 0
menuText D PgnColorHeader "Vorspann..." 0
menuText D PgnColorAnno "Anmerkungen..." 0
menuText D PgnColorComments "Kommentare..." 0
menuText D PgnColorVars "Varianten..." 0
menuText D PgnColorBackground "Hintergrund..." 0
menuText D PgnColorMain "Partieverlauf..." 0
menuText D PgnColorCurrent "Hintergrund aktueller Zug..." 1
menuText D PgnColorNextMove "Hintergrund nächster Zug..." 0
menuText D PgnHelp "Hilfe" 0
menuText D PgnHelpPgn "PGN-Hilfe" 0
menuText D PgnHelpIndex "Index" 0
translate D PgnWindowTitle {Partienotation - Partie %u}

# Crosstable window menus:
menuText D CrosstabFile "Datei" 0
menuText D CrosstabFileText "Ausgabe in Textdatei..." 11
menuText D CrosstabFileHtml "Ausgabe in HTML-Datei..." 11
menuText D CrosstabFileLaTeX "Ausgabe in LaTeX-Datei..." 11
menuText D CrosstabFileClose "Kreuztabelle schließen" 0
menuText D CrosstabEdit "Bearbeiten" 0
menuText D CrosstabEditEvent "Veranstaltung" 0
menuText D CrosstabEditSite "Ort" 0
menuText D CrosstabEditDate "Datum" 0
menuText D CrosstabOpt "Optionen" 0
menuText D CrosstabOptColorPlain "Text" 0
menuText D CrosstabOptColorHyper "Hypertext" 0
menuText D CrosstabOptTieWin "Tie-Break durch Siege" 1
menuText D CrosstabOptTieHead "Tie-Break jeder gegen jeden" 1
menuText D CrosstabOptThreeWin "3 Punkte für Sieg" 1
menuText D CrosstabOptAges "Alter in Jahren" 0
menuText D CrosstabOptNats "Nationalität" 0
menuText D CrosstabOptTallies "Sieg/Niederlage/Unentschieden" 0
menuText D CrosstabOptRatings "ELO" 0
menuText D CrosstabOptTitles "Titel" 0
menuText D CrosstabOptBreaks "Stichkampfpunkte" 10
menuText D CrosstabOptDeleted "Inklusive gelöschte Partien" 10
menuText D CrosstabOptColors "Farben (nur Schweizer System)" 0
menuText D CrosstabOptColorRows "Farbige Zeilen" 0
menuText D CrosstabOptRowsColor "Zeilenfarbe" 0 {Standardzeilenfarbe in Kreuztabelle}
menuText D CrosstabOptColumnNumbers "Numerierte Spalten (Nur jeder-gegen-jeden-Tabelle)" 2
menuText D CrosstabOptGroup "Punktgruppen" 5
menuText D CrosstabSort "Sortieren" 0
menuText D CrosstabSortName "Name" 0
menuText D CrosstabSortRating "ELO" 0
menuText D CrosstabSortScore "Punkte" 0
menuText D CrosstabSortCountry "Land" 0
menuText D CrosstabType "Format" 0
menuText D CrosstabTypeAll "Jeder gegen jeden" 0
menuText D CrosstabTypeSwiss "Schweizer System" 0
menuText D CrosstabTypeKnockout "K.o.-System" 0
menuText D CrosstabTypeAuto "Automatisch" 1
menuText D CrosstabHelp "Hilfe" 0
menuText D CrosstabHelpCross "Hilfe Kreuztabelle" 0
menuText D CrosstabHelpIndex "Index" 0
translate D SetFilter {Filter setzen}
translate D AddToFilter {Zum Filter hinzufügen}
translate D Swiss {Schweizer}
translate D Category {Kategorie}

# Opening report window menus:
menuText D OprepFile "Datei" 0
menuText D OprepFileText "Ausgabe in Textdatei..." 11
menuText D OprepFileHtml "Ausgabe in HTML-Datei..." 11
menuText D OprepFileLaTeX "Ausgabe in LaTeX-Datei..." 11
menuText D OprepFileOptions "Optionen..." 0
menuText D OprepFileClose "Berichtsfenster schließen" 0
menuText D OprepFavorites "Favoriten" 0
menuText D OprepFavoritesAdd "Bericht hinzufügen..." 8
menuText D OprepFavoritesEdit "Favoritenbericht editieren..." 0
menuText D OprepFavoritesGenerate "Berichte erzeugen..." 9

menuText D OprepHelp "Hilfe" 0
menuText D OprepHelpReport "Hilfe Eröffnungsbericht" 0
menuText D OprepHelpIndex "Index" 0

# Header search:
translate D HeaderSearch {Partiedatensuche}
translate D EndSideToMove {Wer ist beim Partieende am Zug?}
translate D GamesWithNoECO {Partien ohne ECO?}
translate D GameLength {Partielänge}
translate D FindGamesWith {Finde Partien mit Markierungen (Flags)}
translate D StdStart {Standardausgangsposition}
translate D Promotions {Umwandlungen}
translate D UnderPromo {Unterverwandlung}
translate D Comments {Kommentare}
translate D Variations {Varianten}
translate D Annotations {Anmerkungen}
translate D DeleteFlag {Löschkennzeichen}
translate D WhiteOpFlag {Eröffnung Weiß}
translate D BlackOpFlag {Eröffnung Schwarz}
translate D MiddlegameFlag {Mittelspiel}
translate D EndgameFlag {Endspiel}
translate D NoveltyFlag {Neuerung}
translate D PawnFlag {Bauernstruktur}
translate D TacticsFlag {Taktik}
translate D QsideFlag {Damenflügel}
translate D KsideFlag {Königsflügel}
translate D BrilliancyFlag {Glänzend}
translate D BlunderFlag {Grober Fehler}
translate D UserFlag {Benutzer}
translate D PgnContains {PGN enthält Text}
translate D PreComment {Anfangskommentar}
translate D PostComment {Schlußkommentar}

# Game list window:
translate D GlistNumber {Nummer}
translate D GlistWhite {Weiß}
translate D GlistBlack {Schwarz}
translate D GlistWElo {W-ELO}
translate D GlistBElo {S-ELO}
translate D GlistEvent {Turnier}
translate D GlistSite {Ort}
translate D GlistRound {Runde}
translate D GlistDate {Datum}
translate D GlistYear {Jahr}
translate D GlistEventDate {Turnierdatum}
translate D GlistResult {Ergebnis}
translate D GlistLength {Länge}
translate D GlistCountry {Land}
translate D GlistECO {ECO}
translate D GlistOpening {Züge}
translate D GlistEndMaterial {Endmaterial}
translate D GlistDeleted {Gelöscht}
translate D GlistFlags {Markierungen}
translate D GlistVariations {Varianten}
translate D GlistComments {Kommentare}
translate D GlistAnnos {Anmerkungen}
translate D GlistStart {Stellung}
translate D GlistGameNumber {Partie Nummer:}
translate D GlistFindText {Text finden}
translate D GlistMoveField {Verschieben}
translate D GlistEditField {Konfigurieren}
translate D GlistAddField {Hinzufügen}
translate D GlistDeleteField {Löschen}
translate D GlistColor {Farbe}
translate D GlistSort {Datenbank sortieren}
translate D GlistRemoveThisGameFromFilter  {Partie aus Filter entfernen}
translate D GlistRemoveGameAndAboveFromFilter  {Partie (und alle oberhalb)}
translate D GlistRemoveGameAndBelowFromFilter  {Partie (und alle darunter)}
translate D GlistDeleteGame {(Ent)Lösche Partie}
translate D GlistDeleteAllGames {Lösche alle Partien im Filter} 
translate D GlistUndeleteAllGames {Entlösche alle Partien im Filter} 
translate D GlistAlignL {Ausrichtung links}
translate D GlistAlignR {Ausrichtung rechts}
translate D GlistAlignC {Ausrichtung zentriert}

# Maintenance window:
translate D DatabaseName {Datenbankname:}
translate D TypeIcon {Symbol}
translate D NumOfGames {Partien:}
translate D NumDeletedGames {Gelöschte Partien:}
translate D NumFilterGames {Partien im Filter:}
translate D YearRange {Jahr-Spanne:}
translate D RatingRange {ELO-Spanne:}
translate D Description {Beschreibung}
translate D Flag {Markierung}
translate D CustomFlags {Benutzerdefinierte Markierungen}
translate D DeleteCurrent {Lösche aktuelle Partie}
translate D DeleteFilter {Lösche Partien im Filter}
translate D DeleteAll {Lösche alle Partien}
translate D UndeleteCurrent {Aktuelle Partie wiederherstellen}
translate D UndeleteFilter {Partien im Filter wiederherstellen}
translate D UndeleteAll {Alle Partien wiederherstellen}
translate D DeleteTwins {Lösche Dubletten}
translate D MarkCurrent {Markiere aktuelle Partie}
translate D MarkFilter {Markiere Partien im Filter}
translate D MarkAll {Markiere alle Partien}
translate D UnmarkCurrent {Entmarkiere aktuelle Partie}
translate D UnmarkFilter {Entmarkiere Partien im Filter}
translate D UnmarkAll {Entmarkiere alle Partien}
translate D Spellchecking {Schreibkorrektur}
translate D MakeCorrections {Korrekturen durchführen}
translate D Ambiguous {Mehrdeutig}
translate D Surnames {Nachnamen}
translate D Players {Spieler}
translate D Events {Veranstaltung}
translate D Sites {Ort}
translate D Rounds {Runde}
translate D DatabaseOps {Datenbankoperationen}
translate D ReclassifyGames {Partien ECO-klassifizieren}
translate D CompactDatabase {Komprimieren}
translate D SortDatabase {Datenbank sortieren}
translate D AddEloRatings {ELO-Zahlen hinzufügen}
translate D AutoloadGame {Automatisch Partie Nr. laden}
translate D StripTags {PGN-Markierungen entfernen}
translate D StripTag {Markierung entfernen}
translate D CheckGames {Konsistenzprüfung}
translate D Cleaner {Bereiniger}
translate D CleanerHelp {
Der Scid-Bereiniger wird für die aktuelle Datenbank alle Wartungsarbeiten ausführen, welche aus der unten stehenden Liste ausgewählt werden.

Aktuelle Einstellungen in den Menüs "ECO-Klassifikation" und "Dubletten löschen" werden angewendet, falls diese Funktionen ausgewählt sind.}
translate D CleanerConfirm {
Ist der Bereiniger einmal gestartet, kann er nicht mehr unterbrochen werden!

Dies kann lange dauern, speziell bei großen Datenbanken, abhängig von den ausgewählten Funktionen und deren Einstellungen.

Sind Sie sicher, daß Sie die ausgewählten Wartungsarbeiten starten möchten?
}
# Twinchecker
translate D TwinCheckUndelete { umdrehen; "u" beide entlöschen)}
translate D TwinCheckprevPair {Vorheriges Paar}
translate D TwinChecknextPair {Nächstes Paar}
translate D TwinChecker {Scid: Dublettenprüfer}
translate D TwinCheckTournament {Partien im Turnier:}
translate D TwinCheckNoTwin {Keine Dublette}
translate D TwinCheckNoTwinfound {Kein Dublette für diese Partie gefunden.

Um Dubletten anzuzeigen, bitte zuerst die Funktion "Lösche Dubletten" benutzen.}
translate D TwinCheckTag {Nutze Markierung...}
translate D TwinCheckFound1 {Scid hat $result Dubletten gefunden}
translate D TwinCheckFound2 { und die Gelöschtmarkierung gesetzt}
translate D TwinCheckNoDelete {In dieser Datenbank sind keine Partien zu löschen.}
translate D TwinCriteria1 {Ihre Auswahlkriterien der Dublettensuche haben eine hohe Wahrscheinlichkeit, auch Partien mit ähnlichen Zügen als Dubletten zu erkennen.
}
translate D TwinCriteria2 {Es wird empfohlen, daß bei der Auswahl "Nein" für "gleiche Züge" die Auswahl "Ja" für Farbe, Veranstaltung, Ort, Runde, Jahr und Monat ausgewählt wird.

Wollen Sie fortsetzen und mit dieser Auswahl die Dubletten löschen? }
translate D TwinCriteria3 {Es wird empfohlen, daß bei der Auswahl "Ja" für mindestens zwei der Parameter "gleicher Ort", "gleiche Runde" und "gleiches Jahr" gesetzt werden.

Wollen Sie fortsetzen und mit dieser Auswahl die Dubletten löschen?}
translate D TwinCriteriaConfirm {Scid: Bestätigen der Dublettensuchparameter}
translate D TwinChangeTag "Ändern der folgenden Partiemarkierungen:\n\n"
translate D AllocRatingDescription "Mit dieser Funktion werden die ELO-Werte aus der Schreibkorrekturdatei den Partien hinzugefügt. Der Wert wird hinzugefügt, wenn ein Spieler keinen aktuellen Wert in der Partie besitzt, aber in der Korrekturdatei ein Wert für den Zeitraum der Partie vorhanden ist."
translate D RatingOverride "Existierende ELO-Werte überschreiben?"
translate D AddRatings "ELO-Werte hinzufügen:"
translate D AddedRatings {Scid hat $r ELO-Werte in $g Partien hinzugefügt.}

#Bookmark editor
translate D NewSubmenu "Neues Untermenü"

# Comment editor:
translate D AnnotationSymbols  {Kommentarzeichen:}
translate D Comment {Kommentar:}
translate D InsertMark {Markierung einfügen}
translate D InsertMarkHelp {
Markierung einfügen/löschen: Farbe, Typ, Feld wählen.
Pfeil einfügen/löschen: Rechtsklick auf zwei Felder.
}

# Nag buttons in comment editor:
translate D GoodMove {Guter Zug}
translate D PoorMove {Schwacher Zug}
translate D ExcellentMove {Ausgezeichneter Zug}
translate D Blunder {Grober Fehler}
translate D InterestingMove {Interessanter Zug}
translate D DubiousMove {Zweifelhafter Zug}
translate D WhiteDecisiveAdvantage {Weiß hat Vorteil}
translate D BlackDecisiveAdvantage {Schwarz hat Vorteil}
translate D WhiteClearAdvantage {Weiß hat klaren Vorteil}
translate D BlackClearAdvantage {Schwarz hat klaren Vorteil}
translate D WhiteSlightAdvantage {Weiß hat leichten Vorteil}
translate D BlackSlightAdvantage {Schwarz hat leichten Vorteil}
translate D Equality {Gleiche Chancen}
translate D Unclear {Unklar}
translate D Diagram {Diagramm}

# Board search:
translate D BoardSearch {Brettsuche}
translate D FilterOperation {Durchführung am aktuellen Filter:}
translate D FilterAnd {UND (Beschränke Filter)}
translate D FilterOr {ODER (Zum Filter hinzufügen)}
translate D FilterIgnore {IGNORIERE (Filter zurücksetzen)}
translate D SearchType {Suche nach Typ:}
translate D SearchBoardExact {Exakte Position (alle Steine auf gleichen Feldern)}
translate D SearchBoardPawns {Bauern (gleiche Figuren, alle Bauern auf gleichen Feldern)}
translate D SearchBoardFiles {Linien (gleiches Material, alle Bauern auf gleichen Linien)}
translate D SearchBoardAny {Material (gleiches Material, Bauern und Figuren beliebig)}
translate D SearchInRefDatabase { In folgender Datenbank suchen }
translate D LookInVars {Schaue in Varianten}
translate D CQLLabel {CQL-Skript}
translate D CQLComments {Kommentare erlauben}
translate D CQLStrip {Entferne passende Kommentare}

# Material search:
translate D MaterialSearch {Materialsuche}
translate D Material {Material}
translate D Patterns {Muster}
translate D Zero {Null}
translate D Any {Irgendeine}
translate D CurrentBoard {Aktuelle Stellung}
translate D CommonEndings {Endspiele}
translate D CommonPatterns {Gleiche Muster}
translate D MaterialDiff {Materialdifferenz}
translate D squares {Felder}
translate D SameColor {Gleichfarbige}
translate D OppColor {Ungleichfarbige}
translate D Either {Beides}
translate D MoveNumberRange {Zugnummernbereich}
translate D MatchForAtLeast {Zutreffend für mindestens}
translate D HalfMoves {Halbzüge}

# Common endings in material search:
translate D EndingPawns {Bauernendspiele}
translate D EndingRookVsPawns {Turm gegen Bauer(n)}
translate D EndingRookPawnVsRook {Turm und ein Bauer gegen Turm}
translate D EndingRookPawnsVsRook {Turm und Bauer(n) gegen Turm}
translate D EndingRooks {Turm gegen Turm}
translate D EndingRooksPassedA {Turm gegen Turm mit Freibauer}
translate D EndingRooksDouble {Doppelturmendspiele}
translate D EndingBishops {Läufer gegen Läufer}
translate D EndingBishopVsKnight {Läufer gegen Springer}
translate D EndingKnights {Springer gegen Springer}
translate D EndingQueens {Damenendspiele}
translate D EndingQueenPawnVsQueen {Dame und ein Bauer gegen Dame}
translate D BishopPairVsKnightPair {Zwei Läufer gegen zwei Springer im Mittelspiel}

# Common patterns in material search:
translate D PatternWhiteIQP {Weißer isolierter Damenbauer}
translate D PatternWhiteIQPBreakE6 {Weißer Isolani: Durchbruch d4-d5 gegen e6}
translate D PatternWhiteIQPBreakC6 {Weißer Isolani: Durchbruch d4-d5 gegen c6}
translate D PatternBlackIQP {Schwarzer isolierter Damenbauer}
translate D PatternWhiteBlackIQP {Weißer gegen schwarzer Damenbauerisolani}
translate D PatternCoupleC3D4 {Isoliertes Bauernpaar c3+d4}
translate D PatternHangingC5D5 {Hängende Bauern c5 und d5 von Schwarz}
translate D PatternMaroczy {Maroczy-Zentrum (mit Bauern auf c4 und e4)}
translate D PatternRookSacC3 {Turmopfer auf c3}
translate D PatternKc1Kg8 {0-0-0 gegen 0-0 (Kc1 gegen Kg8)}
translate D PatternKg1Kc8 {0-0 gegen 0-0-0 (Kg1 gegen Kc8)}
translate D PatternLightFian {Weißfeldrige Fianchettos (Läufer g2 gegen Läufer b7)}
translate D PatternDarkFian {Schwarzfeldrige Fianchettos (Läufer b2 gegen Läufer g7)}
translate D PatternFourFian {Beiderseitiges Doppelfianchetto (Läufer auf b2, g2, b7, g7)}

# Game saving:
translate D Today {Heute}
translate D ClassifyGame {Partie klassifizieren}

# Setup position:
translate D EmptyBoard {Brett leeren}
translate D InitialBoard {Initialisiere Brett}
translate D SideToMove {Zugrecht}
translate D MoveNumber {Zugnummer}
translate D Castling {Rochade}
translate D EnPassantFile {En-Passant-Linie}
translate D ClearFen {FEN löschen}
translate D PasteFen {FEN einfügen}
translate D SaveAndContinue {Speichern und weiter}
translate D DiscardChangesAndContinue {Verwerfen und weiter}
translate D GoBack {Zurück}

# Replace move dialog:
translate D ReplaceMove {Zug ersetzen}
translate D AddNewVar {Neue Variante}
translate D NewMainLine {Neue Hauptvariante}
translate D ReplaceMoveMessage {Hier existiert bereits ein Zug.

Sie können diesen Zug ersetzen - unter Verlust aller nachfolgenden Züge - oder mit dem Zug eine neue Variante hinzufügen.

(Sie können diese Anzeige vermeiden, indem Sie die Option "Fragen vor Ersetzen" im Menü Optionen:Züge deaktivieren)}

# Make database read-only dialog:
translate D ReadOnlyDialog {Wenn Sie diese Datenbank mit Schreibschutz
versehen, sind keine Änderungen möglich. Es können keine Partien gespeichert
oder ersetzt und keine Löschkennzeichen geändert werden. Alle Sortierungen oder
ECO-Klassifikationsergebnisse sind nur temporär.

Sie können den Schreibschutz einfach entfernen, indem Sie die Datenbank
schließen und wieder öffnen.
Wollen Sie diese Datenbank wirklich schreibschützen?}

# Exit dialog:
translate D ExitDialog {Möchten Sie Scid beenden?}
translate D ClearGameDialog {Diese Partie wurde geändert.\nWollen Sie sie speichern?}
translate D ExitUnsaved {Die folgenden Datenbanken haben ungesicherte Partieänderungen. Wenn Sie jetzt beenden, gehen diese Änderungen verloren.}
translate D ChangeTextDialog {Das globale Aktivieren der Textfarbe erfordert einen Neustart.}
translate D ChangeDockDialog {Das Andocken ändern erfordert einen Neustart.}
translate D ExitNow {Jetzt beenden?}

# Import window:
translate D PasteCurrentGame {Aktuelle Partie einfügen}
translate D ImportHelp1 {Eingeben oder Einfügen einer Partie im PGN-Format in den oberen Rahmen.}
translate D ImportHelp2 {Hier werden Fehler beim Importieren angezeigt.}
translate D OverwriteExistingMoves {Bestehende Züge überschreiben?}

# ECO Browser:
translate D ECOAllSections {alle ECO-Gruppen}
translate D ECOSection {ECO-Gruppe}
translate D ECOSummary {Zusammenfassung für}
translate D ECOFrequency {Häufigkeit der Untercodes für}

# Opening Report:
translate D OprepTitle {Eröffnungsbericht}
translate D OprepReport {Bericht}
translate D OprepGenerated {Erzeugt durch}
translate D OprepStatsHist {Statistiken und Geschichte}
translate D OprepStats {Statistiken}
translate D OprepStatAll {Alle Berichtspartien}
translate D OprepStatBoth {Beide Spieler}
translate D OprepStatSince {Nach}
translate D OprepOldest {Älteste Partien}
translate D OprepNewest {Neueste Partien}
translate D OprepPopular {Popularität}
translate D OprepFreqAll {Häufigkeit in allen Jahren: }
translate D OprepFreq1   {im letzten Jahr:            }
translate D OprepFreq5   {der letzten  5 Jahre:       }
translate D OprepFreq10  {der letzten 10 Jahre:       }
translate D OprepEvery {Eine pro %u Partien}
translate D OprepUp {mehr als %u%s von allen Jahren}
translate D OprepDown {weniger als %u%s von allen Jahren}
translate D OprepSame {keine Änderung in allen Jahren}
translate D OprepMostFrequent {Häufigste Spieler}
translate D OprepMostFrequentOpponents {Häufigste Gegner}
translate D OprepRatingsPerf {ELO und Performance}
translate D OprepAvgPerf {Durchschnitts-ELO und Performance}
translate D OprepWRating {ELO Weiß}
translate D OprepBRating {ELO Schwarz}
translate D OprepWPerf {Performance Weiß}
translate D OprepBPerf {Performance Schwarz}
translate D OprepHighRating {Spiele mit dem höchsten ELO-Durchschnitt}
translate D OprepTrends {Ergebnistrend}
translate D OprepResults {Ergebnis nach Längen und Häufigkeiten}
translate D OprepLength {Partielänge}
translate D OprepFrequency {Häufigkeit}
translate D OprepWWins {Weißsiege:    }
translate D OprepBWins {Schwarzsiege: }
translate D OprepDraws {Remis:        }
translate D OprepWholeDB {ganze Datenbank}
translate D OprepShortest {Kürzester Sieg}
translate D OprepMovesThemes {Züge und Themen}
translate D OprepMoveOrders {Zugfolgen zum Erreichen der Berichtsposition}
translate D OprepMoveOrdersOne \
  {Es gab nur eine Zugfolge zur erreichten Position:}
translate D OprepMoveOrdersAll \
  {Es gab %u Zugfolgen zur erreichten Position:}
translate D OprepMoveOrdersMany \
  {Es gab  %u Zugfolgen zur erreichten Position. Die ersten %u sind:}
translate D OprepMovesFrom {Züge ab der Berichtsposition}
translate D OprepMostFrequentEcoCodes {Häufigste ECO-Codes}
translate D OprepThemes {Themen}
translate D OprepThemeDescription {Häufigkeit der Themen in den ersten %u Zügen jeder Partie}
translate D OprepThemeSameCastling {Gleichseitige Rochaden}
translate D OprepThemeOppCastling {Verschiedenseitige Rochaden}
translate D OprepThemeNoCastling {Beide Seiten unrochiert}
translate D OprepThemeKPawnStorm {Bauernsturm auf König}
translate D OprepThemeQueenswap {Damen getauscht}
translate D OprepThemeWIQP {Weißer isolierter Damenbauer}
translate D OprepThemeBIQP {Schwarzer isolierter Damenbauer}
translate D OprepThemeWP567 {Weißer Bauer auf Reihe 5/6/7}
translate D OprepThemeBP234 {Schwarzer Bauer auf Reihe 2/3/4}
translate D OprepThemeOpenCDE {Offene c/d/e-Linie}
translate D OprepTheme1BishopPair {Eine Seite hat Läuferpaar}
translate D OprepEndgames {Endspiele}
translate D OprepReportGames {Berichtspartien}
translate D OprepAllGames {Alle Partien}
translate D OprepEndClass {Materialklassifikation von Endspielstellungen}
translate D OprepTheoryTable {Theorietabelle}
translate D OprepTableComment {Erzeugt aus %u Partien mit höchster ELO-Zahl.}
translate D OprepExtraMoves {Zusätzliche Züge in Anmerkungen zur Theorietabelle}
translate D OprepMaxGames {Maximum an Partien in der Theorietabelle}
translate D OprepViewHTML {Zeige HTML}
translate D OprepViewLaTeX {Zeige LaTeX}

# Player Report:
translate D PReportTitle {Spielerbericht}
translate D PReportColorWhite {mit den weißen Steinen}
translate D PReportColorBlack {mit den schwarzen Steinen}
translate D PReportBeginning {Beginnt mit}
translate D PReportMoves {nach %s}
translate D PReportOpenings {Eröffnungen}
translate D PReportClipbase {Leere Zwischenablage und kopiere gefundene Spiele}

# Piece Tracker window:
translate D TrackerSelectSingle {Linke Maustaste wählt diese Figur.}
translate D TrackerSelectPair \
  {Linke Maustaste wählt diese Figur; rechte Maustaste wählt das Figurenpaar.}
translate D TrackerSelectPawn \
  {Linke Maustaste wählt diesen Bauern; rechte Maustaste wählt alle acht Bauern.}
translate D TrackerStat {Statistik}
translate D TrackerGames {% der Partien mit Zug auf das Feld}
translate D TrackerTime {% der Zeit auf jedem Feld}
translate D TrackerMoves {Züge}
translate D TrackerMovesStart \
  {Zugnummer, ab der die Verteilungsberechnung beginnen soll.}
translate D TrackerMovesStop \
  {Zugnummer, wo die Verteilungsberechnung enden soll.}

# Game selection dialogs:
translate D SelectAllGames {Alle Partien in der Datenbank}
translate D SelectFilterGames {Nur Partien im Filter}
translate D SelectTournamentGames {Nur Partien des aktuellen Turniers}
translate D SelectOlderGames {Nur ältere Partien}

# Delete Twins window:
translate D TwinsNote {Damit zwei Partien Dubletten sind, müssen diese mindestens die beiden selben Spieler haben und die folgenden Kriterien, die Sie auswählen können, erfüllen. Wenn zwei Dubletten gefunden werden, so wird die kürzere der beiden Partien gelöscht. Tip: am besten führt man erst eine Schreibkorrektur durch, da dadurch das Finden von Dubletten verbessert wird.}
translate D TwinsCriteria {Kriterium: Dubletten müssen haben ...}
translate D TwinsWhich {Überprüfe, welche Spiele}
translate D TwinsColors {die gleichen Spielerfarben?}
translate D TwinsEvent {die gleiche Veranstaltung?}
translate D TwinsSite {den gleichen Ort?}
translate D TwinsRound {die gleiche Runde?}
translate D TwinsYear {das gleiche Jahr?}
translate D TwinsMonth {den gleichen Monat?}
translate D TwinsDay {den gleichen Tag?}
translate D TwinsResult {das gleiche Ergebnis?}
translate D TwinsECO {den gleichen ECO-Code?}
translate D TwinsMoves {die gleichen Züge?}
translate D TwinsPlayers {Vergleich Spielernamen}
translate D TwinsPlayersExact {Exakte Treffer}
translate D TwinsPlayersPrefix {Nur erste vier Buchstaben}
translate D TwinsWhen {Beim Löschen der Dubletten}
translate D TwinsSkipShort {Partien unter fünf Zügen ignorieren?}
translate D TwinsUndelete {Zuerst alle Partien entlöschen?}
translate D TwinsSetFilter {Filter auf Dubletten setzen?}
translate D TwinsComments {Spiele mit Kommentar immer behalten?}
translate D TwinsVars {Spiele mit Varianten immer behalten?}
translate D TwinsDeleteWhich {Welche Partie löschen:}
translate D TwinsDeleteShorter {Kürzere Partie}
translate D TwinsDeleteOlder {Kleinere Partienummer}
translate D TwinsDeleteNewer {Größere Partienummer}
translate D TwinsDelete {Lösche Spiele}

# Name editor window:
translate D NameEditType {Namen ändern von}
translate D NameEditSelect {Welche Spiele sollen geändert werden?}
translate D NameEditReplace {Ersetze}
translate D NameEditWith {durch}
translate D NameEditMatches {Entsprechungen: Drücke Strg+1 bis Strg+9 zum Auswählen}

# Check games window:

# Classify window:
translate D Classify {Klassifiziere}
translate D ClassifyWhich {ECO-klassifizieren}
translate D ClassifyAll {Alle Spiele (überschreibe alte ECO-Codes)}
translate D ClassifyYear {Alle Spiele  aus dem letzten Jahr}
translate D ClassifyMonth {Alle Spiele aus dem letzten Monat}
translate D ClassifyNew {Nur Spiele ohne ECO-Code}
translate D ClassifyCodes {Verwende}
translate D ClassifyBasic {Normale ECO-Codes ("B12", ...)}
translate D ClassifyExtended {ECO-Codes mit Scid-Erweiterung ("B12j", ...)}

# Compaction:
translate D NameFile {Namendatenbank}
translate D GameFile {Partiendatenbank}
translate D Names {Namen}
translate D Unused {Unbenutzt}
translate D SizeKb {Größe (kB)}
translate D CurrentState {Momentaner Stand}
translate D AfterCompaction {nach Kompression}
translate D CompactNames {Komprimiere Namen}
translate D CompactGames {Komprimiere Partien}
translate D NoUnusedNames "Es gibt keine unbenutzten Namen, die Namensdatei ist vollständig komprimiert."
translate D NoUnusedGames "Die Partiendatei ist vollständig komprimiert."
translate D NameFileCompacted {Die Namensdatei der Datenbank "[file tail [sc_base filename]]" wurde komprimiert.}
translate D GameFileCompacted {Die Partiendatei der Datenbank "[file tail [sc_base filename]]" wurde komprimiert.}

# Sorting:
translate D SortCriteria {Kriterium}
translate D AddCriteria {Füge Sortierkriterium hinzu}
translate D CommonSorts {Übliche Sortierkriterien}
translate D Sort {Sortiere}

# Exporting:
translate D AddToExistingFile {Anhängen an eine bestehende Datei?}
translate D ExportComments {Kommentare exportieren?}
translate D ExportVariations {Varianten exportieren?}
translate D IndentComments {Kommentare einrücken?}
translate D IndentVariations {Varianten einrücken?}
translate D ExportColumnStyle {Tabellarisch (ein Zug pro Zeile)?}
translate D ExportSymbolStyle {Symbolische Notation:}
translate D ExportStripMarks \
  {Felder-/Pfeilemarkierzeichen aus den Kommentaren entfernen?}
translate D ExportFlags {Scid-Markierungen exportieren}

# Goto game/move dialogs:
translate D LoadGameNumber {Geben Sie die zu ladende Spielnr. ein:}
translate D GotoMoveNumber {Gehe zu Zugnr.:}

# Copy games dialog:
translate D CopyGames {Kopiere Spiele}
translate D CopyConfirm {
 Möchten Sie wirklich die [::utils::thousands $nGamesToCopy]
 Spiele aus dem Filter
 in der Datenbank "$fromName"
 in die Datenbank "$targetName"
 kopieren?
}
translate D CopyErr {Kann Spiele nicht kopieren}
translate D CopyErrSource {Die Quelldatenbank}
translate D CopyErrTarget {Die Zieldatenbank}
translate D CopyErrNoGames {hat keine Spiele im Filter}
translate D CopyErrReadOnly {ist schreibgeschützt}
translate D CopyErrNotOpen {ist nicht geöffnet}

# Colors:
translate D LightSquares {Helle Felder}
translate D DarkSquares {Dunkle Felder}
translate D SelectedSquares {Ausgewählte Felder}
translate D Grid {Gitter}
translate D Previous {Vorherige}
translate D WhitePieces {Weiße Steine}
translate D BlackPieces {Schwarze Steine}
translate D WhiteBorder {Weiße Umrandung}
translate D BlackBorder {Schwarze Umrandung}
translate D ArrowMain   {Hauptpfeil}
translate D ArrowVar    {Variantenpfeil}
translate D ShowArrows  {Pfeile zeigen}

# Novelty window:
translate D FindNovelty {Finde Neuerung}
translate D Novelty {Neuerung}
translate D NoveltyInterrupt {Neuerungensuche abgebrochen}
translate D NoveltyNone {In dieser Partie wurde keine Neuerung gefunden}
translate D NoveltyHelp {
Scid wird den ersten Zug aus der aktuellen Partie finden, welcher zu einer Position führt, die nicht in der gewählten Datenbank oder in dem ECO-Eröffnungsbuch enthalten ist.
}

# Sounds configuration:
translate D SoundsFolder {Sound-Dateienverzeichnis}
translate D SoundsFolderHelp {Das Verzeichnis sollte enthalten: King.wav, a.wav, 1.wav etc.}
translate D SoundsAnnounceOptions {Optionen für Zugankündigung}
  # *** Ist das so gemeint? Ich kann's nicht ausprobieren (keine Soundkarte...).
translate D SoundsAnnounceNew {Kündige neue Züge an, wenn sie ausgeführt werden}
translate D SoundsAnnounceForward {Künde Zug an beim Vorwärtspielen}
translate D SoundsAnnounceBack {Kündige Zug an beim Zurückgehen}

# Upgrading databases:
translate D Upgrading {Upgrading}
translate D ConfirmOpenNew {
Dies ist eine Datenbank im alten (Scid 2.x) Format, die nicht in Scid 3.x
geöffnet werden kann. Aber eine Version im neuen Format wurde schon erstellt.

Wollen Sie die Version der Datenbank im neuen Format öffnen?
}
translate D ConfirmUpgrade {
Dies ist eine Datenbank im alten (Scid 2.x) Format. Vor der Verwendung in
Scid 3 muß eine Version im neuen Format der Datenbank erstellt werden.

Beim Erstellen der neuen Version der Datenbank bleiben die Dateien der alten Version erhalten.

Dieser Vorgang kann eine Zeitlang dauern, muß aber nur einmal durchgeführt
werden. Sie können jederzeit abbrechen, wenn es Ihnen zu lange dauert.

Soll das Erstellen der Datenbank im neuen Format jetzt durchgeführt werden?
}

# Recent files options:
translate D RecentFilesMenu {Anzahl der aktuellen Dateien im Dateimenü}
translate D RecentFilesExtra {Anzahl der aktuellen Dateien im zusätzlichen Untermenü}

# My Player Names options:
translate D MyPlayerNamesDescription {
Geben Sie unten eine Liste der bevorzugten Spielernamen ein, ein Name pro Zeile. Platzhalterzeichen (z.B. "?" für ein beliebiges einzelnes Zeichen, "*" für jede beliebige Folge von Zeichen) sind erlaubt.

Jedesmal, wenn ein Spiel mit einem aufgelisteten Spielernamen geladen wird, wird das Schachbrett im Hauptfenster erforderlichenfalls gedreht, um das Spiel aus der Sicht des betreffenden Spielers zu zeigen.
}
translate D showblunderexists {Engine-Fehler anzeigen}
translate D showblundervalue {Fehlerwert anzeigen}
translate D showscore {Wert anzeigen}
translate D coachgame {Trainingspartie}
translate D configurecoachgame {Trainingspartie konfigurieren}
translate D configuregame {Spiel konfigurieren}
translate D Phalanxengine {Phalanx-Engine}
translate D Coachengine {Trainings-Engine}
translate D difficulty {Schwierigkeit}
translate D hard {schwer}
translate D easy {leicht}
translate D Playwith {Spiel mit}
translate D white {Weiß}
translate D black {Schwarz}
translate D both {beide}
translate D Play {Spielen}
translate D Noblunder {Kein Fehler}
translate D blunder {Fehler}
translate D Noinfo {-- Keine Information --}
translate D moveblunderthreshold {fehlerhafter Zug, wenn Verlust größer als}
translate D limitanalysis {Analysezeit der Engine begrenzen}
translate D seconds {Sekunden}
translate D Abort {Abbrechen}
translate D Resume {Fortfahren}
translate D Restart {Neustart}
translate D OutOfOpening {Ende der Eröffnung}
translate D NotFollowedLine {Sie folgten nicht dem Partiezug}
translate D DoYouWantContinue {Möchten Sie fortfahren?}
translate D CoachIsWatching {Trainer schaut zu}
translate D Ponder {Berechnen im Hintergrund}
translate D LimitELO {Stärke begrenzen (ELO)}
translate D DubiousMovePlayedTakeBack {Zweifelhafter Zug gespielt, wollen Sie ihn zurücknehmen?}
translate D WeakMovePlayedTakeBack {Schwacher Zug gespielt, wollen Sie ihn zurücknehmen?}
translate D BadMovePlayedTakeBack {Schlechter Zug gespielt, wollen Sie ihn zurücknehmen?}
translate D Iresign {Ich gebe auf}
translate D yourmoveisnotgood {Ihr Zug ist nicht gut}
translate D EndOfVar {Variantenende}
translate D Openingtrainer {Eröffnungstrainer}
translate D DisplayCM {Kandidatenzüge anzeigen}
translate D DisplayCMValue {Wert der Kandidatenzüge anzeigen}
translate D DisplayOpeningStats {Statistik anzeigen}
translate D ShowReport {Bericht anzeigen}
translate D NumberOfGoodMovesPlayed {gute Züge gespielt}
translate D NumberOfDubiousMovesPlayed {zweischneidige Züge gespielt}
translate D NumberOfTimesPositionEncountered {Wiederholungen der Position}
translate D PlayerBestMove  {Nur beste Züge erlauben}
translate D OpponentBestMove {Gegner spielt besten Zug}
translate D OnlyFlaggedLines {Nur markierte Linien}
translate D resetStats {Statistik zurücksetzen}
translate D Movesloaded {Züge geladen}
translate D PositionsNotPlayed {nicht gespielte Positionen}
translate D PositionsPlayed {gespielte Positionen}
translate D Success {Erfolgreich}
translate D DubiousMoves {Zweifelhafte Züge}
translate D ConfigureTactics {Taktik konfigurieren}
translate D ResetScores {Punkte zurücksetzten}
translate D LoadingBase {Lade Datenbank}
translate D Tactics {Taktik}
translate D ShowSolution {Lösung zeigen}
translate D Next {Nächste}
translate D ResettingScore {Punkte zurücksetzen}
translate D LoadingGame {Lade Partie}
translate D MateFound {Matt gefunden}
translate D BestSolutionNotFound {Beste Lösung NICHT gefunden!}
translate D MateNotFound {Matt nicht gefunden}
translate D ShorterMateExists {Kürzeres Matt existiert}
translate D ScorePlayed {Bewertung gepielt}
translate D Expected {erwartet}
translate D ChooseTrainingBase {Trainingsdatenbank auswählen}
translate D Thinking {Denke...}
translate D AnalyzeDone {Analyse beendet}
translate D WinWonGame {Übungen zu Ende spielen}
translate D Lines {Variantenzahl}
translate D ConfigureUCIengine {UCI-Engine konfigurieren}
translate D SpecificOpening {Ausgewählte Eröffnung}
translate D StartNewGame {Neue Partie}
translate D FixedLevel {Festgelegte Spielstärke}
translate D Opening {Eröffnung}
translate D RandomLevel {Zufallsniveau}
translate D StartFromCurrentPosition {Von aktueller Position starten}
translate D FixedDepth {Feste Tiefe}
translate D Nodes {Knoten} 
translate D Depth {Tiefe}
translate D Time {Zeit} 
translate D Auto {Automatisch}
translate D Score {Bewertung}
translate D {Score Combo} {Bewertung und Zeit}
translate D {Time Combo} {Zeit und Bewertung}
translate D SecondsPerMove {Sekunden pro Zug}
translate D DepthPerMove {Tiefe pro Zug}
translate D MoveControl {Zugkontrolle}
translate D TimeLabel {Zeit pro Zug}
translate D AddVars {Varianten hinzufügen}
translate D AddScores {Bewertung hinzufügen}
translate D Engine {Engine}
translate D TimeMode {Zeitmodus}
translate D TimeBonus {Zeit + Bonus}
translate D TimeMin {min}
translate D TimeSec {s}
translate D AllExercisesDone {Alle Übungen gemacht}
translate D MoveOutOfBook {Zug nicht mehr im Buch}
translate D LastBookMove {Letzter Buchzug}
translate D AnnotateSeveralGames {Kommentiere mehrere Partien\nvon aktueller bis:}
translate D FindOpeningErrors {Eröffnungsfehler finden}
translate D MarkTacticalExercises {Taktische Übungen markieren}
translate D UseBook {Buch benutzen}
translate D MultiPV {Mehrvariantenmodus}
translate D Hash {Hash-Speicher}
translate D OwnBook {Engine-Buch verwenden}
translate D BookFile {Eröffnungsbuch}
translate D AnnotateVariations {Varianten kommentieren}
translate D ShortAnnotations {Kurze Kommentare}
translate D addAnnotatorTag {Kommentarmarkierung hinzufügen}
translate D AddScoreToShortAnnotations {Bewertung hinzufügen}
translate D Export {Export}
translate D BookPartiallyLoaded {Buch teilweise geladen}
translate D AddLine {Zugfolge hinzufügen}
translate D RemLine {Zugfolge entfernen}
translate D Calvar {Training: Variantenberechnung}
translate D ConfigureCalvar {Konfiguration}
translate D Reti {Reti}
translate D English {Englische Eröffnung}
translate D d4Nf6Miscellaneous {1. d4 Nf6 Verschiedene}
translate D Trompowsky {Trompowsky}
translate D Budapest {Budapest}
translate D OldIndian {Altindische Verteidigung}
translate D BenkoGambit {Benkö-Gambit}
translate D ModernBenoni {Moderne/Benoni-Verteidigung}
translate D DutchDefence {Holländische Verteidigung}
translate D Scandinavian {Skandinavische Verteidigung}
translate D AlekhineDefence {Aljechin-Verteidigung}
translate D Pirc {Pirc-Verteidigung}
translate D CaroKann {Caro-Kann}
translate D CaroKannAdvance {Caro-Kann Vorstoßvariante}
translate D Sicilian {Sizilianisch}
translate D SicilianAlapin {Sizilianisch, Alapin-Variante}
translate D SicilianClosed {Geschlossene Sizilianische Verteidigung}
translate D SicilianRauzer {Sizilianisch, Rauser-Angriff}
translate D SicilianDragon {Sizilianisch, Drachenvariante}
translate D SicilianScheveningen {Sizilianisch, Scheveningen}
translate D SicilianNajdorf {Sizilianisch, Najdorf}
translate D OpenGame {Offene Spiele}
translate D Vienna {Wiener Verteidigung}
translate D KingsGambit {Königsgambit}
translate D RussianGame {Russische Verteidigung}
translate D ItalianTwoKnights {Italienische Eröffnung}
translate D Spanish {Spanische Partie}
translate D SpanishExchange {Spanisch, Abtauschvariante}
translate D SpanishOpen {Spanisch, offene Systeme}
translate D SpanishClosed {Spanisch, geschlossene Systeme}
translate D FrenchDefence {Französische Verteidigung}
translate D FrenchAdvance {Französisch, Vorstoßvariante}
translate D FrenchTarrasch {Französisch, Tarrasch}
translate D FrenchWinawer {Französisch, Winawer}
translate D FrenchExchange {Französisch, Abtauschvariante}
translate D QueensPawn {Damenbauernspiel}
translate D Slav {Slawisch}
translate D QGA {Angenommenes Damengambit}
translate D QGD {Abgelehntes Damengambit}
translate D QGDExchange {Abgelehntes Damengambit, Abtauschvariante}
translate D SemiSlav {Semi-Slawisch}
translate D QGDwithBg5 {Abgelehntes Damengambit mit Lg5}
translate D QGDOrthodox {Abgelehntes Damengambit, orthodoxe Variante}
translate D Grunfeld {Grünfeld-Verteidigung}
translate D GrunfeldExchange {Grünfeld, Abtauschvariante}
translate D GrunfeldRussian {Grünfeld-Verteidigung, Russische Variante}
translate D Catalan {Katalanische Verteidigung}
translate D CatalanOpen {Katalanisch, offen}
translate D CatalanClosed {Katalanisch, geschlossen}
translate D QueensIndian {Damenindische Verteidigung}
translate D NimzoIndian {Nimzoindische Verteidigung}
translate D NimzoIndianClassical {Nimzoindisch, klassische Variante}
translate D NimzoIndianRubinstein {Nimzoindisch, Rubinstein}
translate D KingsIndian {Königsindische Verteidigung}
translate D KingsIndianSamisch {Königsindisch, Sämisch}
translate D KingsIndianMainLine {Königsindisch, Hauptvariante}

translate D ConfigureFics {FICS Konfigurieren}
translate D FICSLogin {Anmeldung}
translate D FICSGuest {Gastanmeldung}
translate D FICSServerPort {Serverport}
translate D FICSServerAddress {IP-Adresse}
translate D FICSRefresh {Aktualisieren}
translate D FICSTimeseal {Timeseal}
translate D FICSTimesealPort {Timeseal Port}
translate D FICSSilence {Konsolenfilter}
translate D FICSOffers {Angebot}
translate D FICSMakeOffer {Angebot machen}
translate D FICSGames {Partien}
translate D FICSFindOpponent {Gegner suchen}
translate D FICSTakeback {Zurücknehmen}
translate D FICSTakeback2 {Zwei zurücknehmen}
translate D FICSInitTime {Zeit (min)}
translate D FICSIncrement {Inkrement (s)}
translate D FICSRatedGame {Wertungspartie}
translate D FICSAutoColour {automatisch}
translate D FICSManualConfirm {Manuell bestätigen}
translate D FICSFilterFormula {Filterformel anwenden}
translate D FICSIssueSeek {Partie anbieten}
translate D FICSAccept {Annehmen}
translate D FICSDecline {Ablehnen}
translate D FICSColour {Seite wählen:}
translate D FICSSend {Senden}
translate D FICSConnect {Verbinden}
translate D FICSShouts {Rufe}
translate D FICSTells {Mitteilungen}
translate D FICSOpponent {Gegnerinformationen}
translate D FICSInfo {Information}
translate D FICSDraw {Remis anbieten}
translate D FICSRematch {Revanche}
translate D FICSQuit {FICS beenden}
translate D FICSCensor {Zensor}

# Correspondence Chess Dialogs:
translate D CCDlgConfigureWindowTitle {Einstellungen für Fernschach}
translate D CCDlgCGeneraloptions {Allgemeine Einstellungen}
translate D CCDlgDefaultDB {Standarddatenbank:}
translate D CCDlgInbox {Posteingang (Pfad):}
translate D CCDlgOutbox {Postausgang (Pfad):}
translate D CCDlgXfcc {Xfcc-Einstellungen:}
translate D CCDlgExternalProtocol {Externe Protokolle (Xfcc)}
translate D CCDlgFetchTool {Hilfsprogramm zum Abholen:}
translate D CCDlgSendTool {Hilfsprogramm zum Senden:}
translate D CCDlgEmailCommunication {E-Mail-Kommunikation}
translate D CCDlgMailPrg {E-Mail-Programm:}
translate D CCDlgBCCAddr {Adresse für Ausgangskopie:}
translate D CCDlgMailerMode {Modus:}
translate D CCDlgThunderbirdEg {z.B. Thunderbird, Mozilla Mail, Icedove...}
translate D CCDlgMailUrlEg {z.B. Evolution}
translate D CCDlgClawsEg {z.B. Sylpheed Claws}
translate D CCDlgmailxEg {z.B. mailx, mutt, nail...}
translate D CCDlgAttachementPar {Parameter für Anhang:}
translate D CCDlgInternalXfcc {Interne Xfcc-Unterstützung verwenden}
translate D CCDlgConfirmXfcc {Züge bestätigen}
translate D CCDlgSubjectPar {Parameter für Betreff:}
translate D CCDlgDeleteBoxes {Leeren des Postein- und Ausgangs}
translate D CCDlgDeleteBoxesText {Wollen Sie wirklich Ihren Postein- und Ausgang leeren?\nDies erfordert ein erneutes Synchronisieren, um den aktuellen Zustand Ihrer Partien anzuzeigen.}
translate D CCDlgConfirmMove {Zug bestätigen}
translate D CCDlgConfirmMoveText {Durch Bestätigen wird folgender Zug und Kommentar an den Server übertragen:}
translate D CCDlgDBGameToLong {Inkonsistente Hauptvariante}
translate D CCDlgDBGameToLongError {Die Hauptvariante dieser Partie in der Datenbank enthält mehr Züge als in der Partie tatsächlich gespielt. Sofern die Partie im Posteingang vollständig und aktuell ist (z.B. direkt nach einer Synchronisation), muß die Hauptvariante in der Datenbank entsprechend gekürzt werden. Der letzte Zug in der Partie ist Nr. \n}
translate D CCDlgStartEmail {Neue E-Mail-Partie}
translate D CCDlgYourName {Ihr Name:}
translate D CCDlgYourMail {Ihre E-Mail-Adresse:}
translate D CCDlgOpponentName {Name des Gegners:}
translate D CCDlgOpponentMail {E-Mail-Adresse des Gegners:}
translate D CCDlgGameID {Partiekennung (eineindeutig):}
translate D CCDlgTitNoOutbox {Scid: Fernschach Postausgang}
translate D CCDlgTitNoInbox {Scid: Fernschach Posteingang}
translate D CCDlgTitNoGames {Scid: Keine Fernschachpartien}
translate D CCErrInboxDir {Der Posteingang für Fernschachpartien unter:}
translate D CCErrOutboxDir {Der Postausgang für Fernschachpartien unter:}
translate D CCErrDirNotUsable {existiert nicht oder ist nicht benutzbar!\nBitte überprüfen und die Einstellungen korrigieren.}
translate D CCErrNoGames {enthält keine Partien!\nBitte sychronisieren Sie zunächst.}
translate D CCDlgTitNoCCDB {Scid: Keine Fernschachdatenbank}
translate D CCErrNoCCDB {Es wurde keine Datenbank vom Typ 'Fernschach' geöffnet. Bitte öffnen Sie eine solche, bevor Sie Funktionen des Fernschachmoduls benutzen.}
translate D CCFetchBtn {Partien vom Server abholen\nund Posteingang bearbeiten}
translate D CCPrevBtn {Vorhergehende Partie}
translate D CCNextBtn {Nächste Partie}
translate D CCSendBtn {Zug versenden}
translate D CCEmptyBtn {Postein- und -ausgang leeren}
translate D CCHelpBtn {Hilfe zu den Symbolen und Statusindikatoren\nFür allgemeine Hilfe bitte F1!}
translate D CCDlgServerName {Servername:}
translate D CCDlgLoginName  {Anmeldename:}
translate D CCDlgPassword   {Paßwort:}
translate D CCDlgURL        {Xfcc-URL:}
translate D CCDlgRatingType {Wertungszahl:}
translate D CCDlgDuplicateGame {Nichteindeutige Partie}
translate D CCDlgDuplicateGameError {Diese Partie existiert mehr als einmal in der Datenbank. Bitte löschen Sie alle Dubletten und komprimieren Sie die Datenbank (Datei/Wartung/Datenbank komprimieren).}
translate D CCDlgSortOption {Sortierung:}
translate D CCDlgListOnlyOwnMove {Partien mit anhängenden Zügen}
translate D CCOrderClassicTxt {Ort, Turnier, Runde, Ergebnis, Weiß, Schwarz}
translate D CCOrderMyTimeTxt {Eigene Bedenkzeit}
translate D CCOrderTimePerMoveTxt {Zeit pro Zug bis zur nächsten Zeitkontrolle}
translate D CCOrderStartDate {Startdatum}
translate D CCOrderOppTimeTxt {Gegnerische Bedenkzeit}
translate D CCDlgConfigRelay {Partien auf iccf-webchess beobachten}
translate D CCDlgConfigRelayHelp {Besuchen Sie http://www.iccf-webchess.com und lassen Sie die Partie anzeigen, die Sie beobachten wollen. Wenn das Brett sichtbar ist, bitte die Adresse aus dem Browser in untenstehende Liste kopieren. Nur eine URL pro Zeile!\nBeispiel: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}


translate D ExtHWConfigConnection {Hardware konfigurieren}
translate D ExtHWPort {Schnittstelle}
translate D ExtHWEngineCmd {Engine-Kommando}
translate D ExtHWEngineParam {Engine-Parameter}
translate D ExtHWShowButton {Knopf in Wergzeugleiste anzeigen}
translate D ExtHWHardware {Hardware}
translate D ExtHWNovag {Novag Citrine}
translate D ExtHWInputEngine {Input Engine}
translate D ExtHWNoBoard {Kein Brett verbunden}
translate D IEConsole {Konsole Input Engine}
translate D IESending {Sende Züge für}
translate D IESynchronise {Synchronisieren}
translate D IERotate  {Brett drehen}
translate D IEUnableToStart {Input-Engine konnte nicht gestartet werden:}
translate D DoneWithPosition {Stellungsanalyse beendet}
translate D Board {Brett}
translate D showGameInfo {Partieinformationen anzeigen}
translate D autoResizeBoard {Brettgröße automatisch berechnen}
translate D DockTop {Nach oben}
translate D DockBottom {Nach unten}
translate D DockLeft {Nach links}
translate D DockRight {Nach rechts}
translate D Undock {Fenster befreien}
translate D ChangeIcon {Symbol ändern}
translate D More {Mehr}

# Drag & Drop
translate D CannotOpenUri {Die folgenden URI können nicht geöffnet werden:}
translate D InvalidUri {Der Drop-Inhalt ist keine gültige URI-Liste.}
translate D UriRejected	{Die folgenden Dateien wurden zurückgewiesen:}
translate D UriRejectedDetail {Nur die aufgelisteten Dateitypen können gehandhabt werden:}
translate D EmptyUriList {Der Drop-Inhalt ist leer.}
translate D SelectionOwnerDidntRespond {Zeitüberschreitung während der Drop-Aktion: der Eigentümer des Drop-Inhalts antwortete nicht.}
translate D PasteAnal {Analyse einfügen}
translate D SortOpcodes {Opcodes sortieren}
translate D AddPosition {Stellung hinzufügen}
translate D FindPos {Tiefste Partiestellung finden}
translate D AnalPosition {Stellungen analysieren}
translate D StripOpcodes {Opcodes entfernen}
translate D NoMoves {Keine Züge ab dieser Stellung}
translate D CountBestMoves {Beste Züge zählen}

}

##########
#
# ECO Opening name translations:

translateECO D {
  Accelerated {, Beschleunigt}
  {: Accelerated} Beschleunigt
  Accepted {, Angenommen}
  {: Accepted} Angenommen
  Advance Vorstoß
  {as Black} {mit Schwarz}
  Attack Angriff
  Bishop Läufer
  Bishop's Läufer
  Classical Klassisch
  Closed Geschlossen
  {Closed System} {Geschlossenes System}
  Counterattack Gegenangriff
  Countergambit Gegengambit
  Declined {, Abgelehnt}
  Defence Verteidigung
  deferred verzögert
  Deferred {, verzögert}
  Early Frühe
  Exchange Abtausch
  Game Partie
  Improved verbessert
  King's Königs
  Knight Springer
  Line Variante
  {Main Line} Hauptvariante
  Open Offen
  Opening Eröffnung
  Queen's Damen
  Queenswap Damentausch
  Symmetrical Symmetrisch
  Variation Variante
  Wing Flügel
  with mit
  without ohne

  Alekhine Aljechin
  Averbakh Awerbach
  Botvinnik Botwinnik
  Chigorin Tschigorin
  Polugaevsky Polugajewski
  Rauzer Rauser
  Sveshnikov Sweschnikow

  Austrian Österreichisch
  Berlin Berliner
  Bremen Bremer
  Catalan Katalanisch
  Czech Tschechisch
  Dutch Holländisch
  English Englisch
  French Französisch
  Hungarian Ungarisch
  Indian Indisch
  Italian Italienisch
  Latvian Lettisch
  Meran Meraner
  Moscow Moskau
  Polish Polnisch
  Prague Prager
  Russian Russisch
  Scandinavian Skandinavisch
  Scheveningen Scheveninger
  Scotch Schottisch
  Sicilian Sizilianisch
  Slav Slawisch
  Spanish Spanisch
  Swedish Schwedisch
  Swiss Schweizer
  Vienna Wiener
  Yugoslav Jugoslawisch

  {Accelerated Fianchetto} {Beschleunigtes Fianchetto}
  {Accelerated Pterodactyl} {Beschleunigter Pterodactylus}
  {Alekhine Defence} Aljechin-Verteidigung
  {Alekhine Variation} Aljechin-Variante
  {Alekhine: Sämisch Attack} {Aljechin: Wiener System (Sämisch-Angriff)}
  {Anderssen Opening} Anderssen-Eröffnung
  {Anti-King's Indian} Anti-Königsindisch
  {Austrian Attack} {Österreichischer Angriff}
  {Benko Gambit} Wolga-Gambit
  {Benko Opening} Benkö-Eröffnung
  {Berlin Defence} {Berliner Verteidigung}
  Chameleon Chamäleon
  Chelyabinsk Tscheljabinsk
  {Classical Defence} {Klassische Verteidigung}
  {Spanish: Classical Defence} {Spanisch: Klassische (Cordel-) Verteidigung}
  {Classical Exchange} {Klassischer Abtausch}
  {Classical Variation} {Klassische Variante}
  {Closed Berlin} {Geschlossener Berliner}
  {Open Berlin} {Offener Berliner}
  {Bird's,} {Bird,}
  {Bird's Defence} Bird-Verteidigung
  {Bird's Deferred} {Verzögerte Bird}
  {Bishop's Opening} Läuferspiel
  {Botvinnik System} Botwinnik-System
  {Central Variation} Zentralvariante
  {Centre Attack} Zentrumsangriff
  {Centre Game} Mittelgambit
  {Danish Gambit} {Nordisches Gambit}
  Dragon Drachen
  {Dutch Variation} {Holländische Variante}
  {Early Exchange} {Früher Abtausch}
  {Early Queenswap} {Früher Damentausch}
  {English Attack} {Englischer Angriff}
  {English: King's} {Englisch: Königsbauer}
  {English Variation} {Englische Variante}
  {Englund Gambit} Englund-Gambit
  {Exchange Variation} Abtauschvariante
  {Fianchetto Variation} Fianchettovariante
  {Flohr Variation} Flohr-Variante
  {Four Knights} Vierspringer
  {Four Knights Game} Vierspringerspiel
  {Four Pawns} Vierbauern
  {Four Pawns Attack} Vierbauernangriff
  {French Variation} {Französische Variante}
  {From Gambit} {Froms Gambit}
  {Goring Gambit} {Göring-Gambit}
  {Grob Gambit} {Grobs Gambit}
  {Hungarian Defence} {Ungarische Verteidigung}
  {Indian Variation} {Indische Variante}
  {Italian Game} {Italienische Partie}
  KGD {Abgel. Königsgambit}
  {Classical KGD} {Klassisches abgelehntes Königsgambit}
  {Keres Variation} Keres-Variante
  KGA {Angen. Königsgambit}
  {KGA: Bishop's Gambit} Königsläufergambit
  {KGA: King's Knight Gambit} Königsspringergambit
  {King's Gambit} Königsgambit
  {King's Gambit Accepted} {Angen. Königsgambit}
  {King's Gambit Accepted (KGA)} {Angen. Königsgambit}
  {King's Indian} Königsindisch
  KIA {Königsindischer Angriff}
  {King's Knight Gambit} Königsspringergambit
  {King's Pawn} Königsbauer
  {Lasker Variation} {Lasker-Variante}
  {Latvian Gambit} {Lettisches Gambit}
  {Maroczy Bind} {Maroczy-Aufbau}
  {Marshall Variation} Marshall-Variante
  {Modern Attack} {Moderner Angriff}
  {Modern Steinitz} {Moderne Steinitz}
  {Modern Variation} {Moderne Variante}
  {Moscow Variation} {Moskauer Variante}
  Nimzo-Indian Nimzoindisch
  {Old Benoni} {Klassisches Benoni}
  {Old Indian} Altindisch
  {Old Indian Attack} {Altindisch i.A.}
  {Old Steinitz} Steinitz-Verteidigung
  {Open Game} {Offene Partie}
  {Poisoned Pawn} {Vergifteter Bauer}
  {Polish Variation} {Polnische Variante}
  {Polugaevsky Variation} {Polugajewski-Variante}
  {Queen's Gambit} Damengambit
  {Queen's Gambit Accepted} {Angen. Damengambit}
  QGA {Angen. Damengambit}
  {Queen's Gambit Accepted (QGA)} {Angenommenes Damengambit}
  {Reversed QGA} {Angen. Damengambit i.A.}
  QGD {Abgel. Damengambit}
  {Queen's Gambit Declined (QGD)} {Abgelehntes Damengambit}
  {Reversed QGD} {Abgel. Damengambit i.A.}
  {Queen's Indian} Damenindisch
  {Queen's Pawn} Damenbauer
  {Queen's Pawn Game} Damenbauerspiel
  {Reversed Slav} {Slawisch i.A.}
  {Rubinstein Variation} Rubinstein-Variante
  {Russian Game} {Russische Partie}
  {Russian Game (Petroff Defence)} {Russische Partie}
  {Russian-Three Knights Game} {Russisches Dreispringerspiel}
  {Scandinavian (Centre Counter)} Skandinavisch
  Schliemann Jänisch
  {Schliemann (Jänisch)} {Jänisch-Gambit (Schliemann)}
  {Scotch Opening} {Schottische Eröffnung}
  {Sicilian Defence} {Sizilianische Verteidigung}
  {Sicilian Variation} {Sizilianische Variante}
  {Slav Defence} {Slawische Verteidigung}
  Smith-Morra Morra
  {Smith-Morra Accepted} {Angenommenes Morra-Gambit}
  {Smith-Morra Gambit} Morra-Gambit
  {Spanish (Ruy Lopez)} {Spanische Partie}
  {Start position} Ausgangsstellung
  {Steinitz Deferred} Rubinstein-Aufbau
  {Swedish Variation} {Schwedische Variante}
  {Swiss Variation} {Schweizer Variante}
  {Tarrasch's Gambit} {Tarrasch-Gambit}
  {Three Knights} Dreispringer
  {3 Knights} Dreispringer
  {Three Knights Game} Dreispringerspiel
  {Three Pawns Attack} Dreibauernangriff
  {Two Knights} Zweispringer
  {Two Knights Defence} Zweispringer-Verteidigung
  {Two Knights Variation} Zweispringer-Variante
  {Two Pawns} Zweibauern
  {Two Pawns Attack} Zweibauernangriff
  {Wing Gambit} Flügel-Gambit
  {Yugoslav Attack} {Jugoslawischer Angriff}
}

global helpTitle helpText

set helpTitle(D,Contents) "$::scidName"
set helpText(D,Contents) "<h1>$::scidName</h1>

  <ht><img icon></ht>
  <ht><a Intro>Einführung</a></ht>
  <ht><a GUI>Benutzung der grafischen Oberfläche</a></ht>
  <ht><a BrowsingPGN>PGN-Dateien und Scid</a></ht>
  <ht><a Analysis>Schach-Engines benutzen</a></ht>
  <ht><a Scid>Datenbanken und allgemeine Nutzung</a></ht>
  <ht><a ComputerGame>Spiel gegen Computer</a></ht>
  <ht><a FICS>Spiel im Internet (FICS)</a></ht>
  <ht><a Tourney>Computerturniere</a></ht>
  <ht><a TacticsTrainer>Matt in ..N.. Puzzles</a></ht>
  <ht><a Related>Links</a></ht>
  <ht><a Author>Über</a></ht>
  <br>
  <p><footer>$::scidName  version $::scidVersion</footer></p>
"

set helpTitle(D,Intro) "$::scidName"
set helpText(D,Intro) {<h1>Einführung</h1>

<p><url http://scidvspc.sourceforge.net/>Scid vs. PC</url> ist eine
  Abspaltung von <b>Shane's Chess Information Database</b>
  hinsichtlich Benutzbarkeit und Fehlerbehebung. Sie können Schach
  online oder gegen den Computer spielen, Turniere durchstöbern, die
  Sie im PGN-Format heruntergeladen haben, riesige Datenbanken
  erzeugen und Eröffnungs- und Spielerberichte erstellen.
  </p>
  <p><i> Siehe <run ::tip::show 0><green>Tip des Tages</green></run>
  für einige nützliche Hinweise oder
  das <a Console>Willkommensfenster</a>für Informationen und
  Fehlersuche.
</i></p>
</p>

<h3>Eigenschaften</h3>
<ul>
<li>Verbesserte und anpaßbare Schnittstelle</li>
<li>Computerturniere mit Engine gegen Engine</li>
<li>Besondere Suchmöglichkeiten einschließlich Partiezug, Endspiel und Patt-/Mattsuchen</li>
<li>Ziehen und Ablegen (Drag and Drop) einer Datei öffnet sie für Windows und Linux</li>
<li>Neu geschriebene Partienlistengestaltung mit bequemen Kontextmenüs
  und Schaltflächen sowie einem integrierten Datenbankwechsler</li>
<li>Verbesserte Fähigkeiten für Computerpartie und FICS einschließlich
  Vorausziehen von Partiezügen sowie gleichzeitig beobachtete Partien</li>
<li>Viele Verbesserungen bei Schach-Engines einschließlich einer
  Max-Halbzug-Option sowie eine unbegrenzte Anzahl an laufenden
  Engines. Die Funktion der Tastenkürzel kann explizit gesetzt
  werden.</li>
<li>Dreifarbige Grafiksäulen bei Bäumen, Optionen für mehr oder
  weniger Statistiken</li>
<li>Wertungsgrafik kan mehrere Spieler anzeigen und die Ergebnisgrafik
  ist eine attraktive Säulengrafik</li>
<li>Verbesserte Buchfenster einschließlich Buchvergleich und Entfernen
  von Zugeigenschaften</li>
<li>Wiederherstellenschaltfläche und Werkzeugleisten</li>
<li>Der Teil für das Schachbrett/die Figuren wurde überarbeitet und
  enthält Unterstützung für benutzerdefinierte Felder und Figuren</li>
<li>Anklickbare Tablebase-Züge</li>
<li>Historien über letzte Partie und Spielerinformationen</li>
<li>Fehlergetestetes Zurücknehmen und Wiederherstellen</li>
<li>Der Hilfeindex ist für neue Anwender bedeutsam, mit Links zu den
  Hauptfähigkeiten der Partie</li>
<li>Anklickbare Variantenpfeile und Möglichkeit des Varianteneinfügens</li>
<li>Eine benutzerfreundliche Möglichkeit für Anmerkungen mit Tiefensuche</li>
<li>Bessere Unterstützung für UTF und lateinische Zeichensätze im PGN-Export/-Import</li>
<li>Verbesserte und leistungsfähigere Baummaskeneigenschaften</li>
<li>
<li>Schachvarianten werden nicht unterstützt außer für
  Chess960/Fischerschach, das durch eine Quellcodeverbesserung
  unterstützt wird.<li>
</ul>
  <p><footer>Aktualisiert: Scid vs. PC 4.18 Juli 2017</footer></p>
}

set helpTitle(D,GUI) {Scids GUI}
set helpText(D,GUI) {<h1>Scids Benutzerschnittstelle</h1>

  <br>
  <ht><a Docking><b>Angedockte Fenster</b></a></ht>
  <ht><a MainWindow>Das <b>Hauptbrett</b></a></ht>
  <ht><a GameList>Partielistenfenster</a></ht>
  <ht><a Menus>Die <b>Hauptmenüs</b></a></ht>
  <ht><a Moves>Eingeben von <b>Zügen</b></a></ht>
  <br>
  <p><footer>Aktualisiert: Scid vs. PC 4.14 Dezember 2014</footer></p>
}

set helpTitle(D,FICS) "FICS"
set helpText(D,FICS) {<h1>FICS</h1>
<ul>
<p>FICS (Free Internet Chess Server) ist ein Webportal, in dem Leute
  aus der ganzen Welt Schach Spielen. Seine Möglichkeiten beinhalten
  ein Spielerwertungssystem, internationale Turniere sowie die Partien
  anderer zu beobachten und zu diskutieren.
</p>

<p>Man kann anonym spielen. Um ein Benutzerkonto einzurichten,
  besuchen Sie
  <url http://www.freechess.org>www.freechess.org</url>. Spieler
  können ihre Partien bei
  <url http://ficsgames.org>http://ficsgames.org</url> ansehen.
</p>

<p>Um FICS zu starten, rufen
Sie <run ::fics::config><green>Spielen--<gt>Internetpartie</green></run>
auf.
</p>

<li><a FICSlogin>Anmelden</a>
<br>
<li><a FICSwidget>FICS benutzen</a></li>
<br>
<li><a FICSfindopp>Einen Spielpartner finden</a></li>
<br>
<li><a FICSobserve>Partien beobachten/untersuchen, internationale
  Veranstaltungen</a> und andere Möglichkeiten</li>
<br>
<li><a FICScommands>Befehle und Variablen von FICS</a></li>
</ul>

<p><i>Scid vs. PC unterstützt gegenwärtig nicht den kommerziellen
  ICC-Schachserver, könnte dies aber durch Anpassen der
  Textfundstellen in "fics.tcl". FICS und ICC haben
  <url http://www.edcollins.com/chess/fics-icc.htm>eine gemeinsame
  Historie</url></i>.
</p>

  <p><footer>Aktualisiert: Scid vs. PC 4.7 Februar 2012</footer></p>
}

set helpTitle(D,BrowsingPGN) "PGN"
set helpText(D,BrowsingPGN) {<h1>PGN-Dateien und Scid</h1>

<p>PGN ist das Standardformat für Schachpartien und Scid kann
  glücklicherweise große Partiearchive öffnen.
<i>Aber PGN ist nicht das native Format der Datenbanken von Scid. Man
  muß ein wenig lernen, aber die Benutzung
  von <a Scid>Scid-Datenbanken</a> anstelle von PGN wird sehr
  empfohlen.</i></p>

<p>Um PGN-Dateien zu öffnen, rufen Sie den
  Dialog <run ::file::Open><green>Datei--<gt>Öffnen</green></run> auf,
<a Switcher draganddrop>Ziehen und Ablegen (Drag and Drop)</a> oder das
<a Pgnscid>Pgnscid</a>-Werkzeug für schnelles Importieren und für eine
Fehlersuche.</p>


<h3>Betrachten von Partien</h3>

<p>Wenn Sie einmal eine Partie geladen haben, öffnen Sie
  das <a PGN>PGN-Fenster</a>, um durch die Partie zu gehen. Das
  Anklicken von Zügen geht durch die Partie oder Sie benutzen das
  Mausrad im Hauptfenster. Das Anklicken
  von <a Comment>Kommentaren</a> ermöglicht es Ihnen, sie zu
  editieren.</p>

<p>Im <a MainWindow GameInfo>Partieinformationsfenster</a> sehen Sie
  die Namen der Spieler und des Turniers. Diese Namen sind ebenfalls
  anklickbar und zeigen dann Informationen über das Turnier und die
  Spielerleistung. Dies ist der Anfang der Möglichkeiten der
  Scid-Datenbanken.</p>

<p>Wenn Sie eine PGN-Datei mit mehreren Partien geöffnet haben, dann
  ermöglicht Ihnen die <a GameList>Partienliste</a>, durch die Partien
  zu gehen und diejenigen auszusuchen, die Sie interessieren.
<i>Die Partienliste dient auch zum Auswählen und Löschen von Partien
  aus der Scid-Datenbank.</i></p>

<h3>Partien bearbeiten</h3>

<p>Änderungen an einer einzigen PGN-Datei können nach PGN
  zurückgespeichert werden
  über <run ::pgn::savePgn><green>Datei--<gt>Speichere
  PGN</green></run>.

Wenn Sie aber eine Datei mit mehreren Partien ändern wollen, muß sie
  zuerst in eine <a Scid>Scid-Datenbank</a> konvertiert werden. Der
  einfachste Weg hierfür ist, die Partienliste zu öffnen und die
  PGN-Datei zur Ablagedatenbank zu ziehen,
  anschließend <a Export>Export</a> aufrufen, um sie nach PGN
  zurückzuspeichern.
</p>

<p><footer>Aktualisiert: Scid vs. PC 4.8 Mai 2012</footer></p>
}

set helpTitle(D,Scid) {Allgemeine Nutzung}
set helpText(D,Scid) {<h1>Datenbanken und allgemeine Nutzung</h1>

<p><i> Datenbanken sind mittels
  eines <a Formats>drei-Dateien-Formats</a> implementiert. Sie
  werden durch das Importieren von PGN-Archiven oder anderen
  Datenbanken mit Daten befüllt. Dies geschieht durch Verwendung der
  Ablagedatenbank als Mittel zum Ausschneiden und Einfügen.
  </i></p>

  <p><i>Freie Datenbank Kingbase <url http://www.kingbase-chess.net/>http://www.kingbase-chess.net/</url>
  </i></p>

  <h4>Datenbanken benutzen</h4>
  <ul>
  <li><a Clipbase><b>Ablagedatenbank - die Standarddatenbank</b></a></li>
  <li><a Sorting><b>Datenbanken sortieren</b></a></li>
  <li><a Flags><b>Partiekennzeichen</b></a></li>
  <li><a Searches><b>Suchen</b></a></li>
  <li><a Reports><b>Berichte</b></a></li>
  <li><a Formats><b>Datenbankdateiformate</b></a></li>
  </ul>

  <h4>Haupteigenschaften/Fenster</h4>
  <ul>
  <li><a Analysis><b>Das Analysefenster</b></a></li>
  <li><a Book><b>Das Buchfenster</b></a></li>
  <li><a Comment><b>Der Kommentareditor</b></a></li>
  <li><a Crosstable><b>Die Kreuztabelle</b></a></li>
  <li><a Finder><b>Der Dateifinder</b></a></li>
  <li><a GameList><b>Das Partienlistenfenster</b></a></li>
  <li><a PGN><b>Das PGN-Fenster</b></a></li>
  <li><a PList><b>Das Spielersuchfenster</b></a></li>
  <li><a PInfo><b>Das Spielerinformationsfenster</b></a></li>
  <li><a Tmt><b>Das Turnierfinderfenster</b></a></li>
  <li><a Tree><b>Das Zugbaumfenster</b></a></li>
  <li><a Graphs><b>Das Grafikfenster</b></a></li>
  </ul>

  <h4>Weitere Möglichkeiten und Informationen</h4>
  <ul>
  <li><a Analysis Annotating>Automatische Partienkommentierung</a></li>
  <li><a Bookmarks><b>Lesezeichen</b></a></li>
  <li><a CalVar><b>Training Variantenberechnung</b></a></li>
  <li><a Cmdline><b>Befehlszeilenoptionen</b></a></li>
  <li><a Compact><b>Eine Datenbank komprimieren</b></a></li>
  <li><a Correspondence><b>Fernschach</b></a></li>
  <li><a Maintenance><b>Datenbankwartungsmittel</b></a></li>
  <li><a ECO><b>ECO-Codes</b></a></li>
  <li><a Email><b>E-Mail</b></a></li>
  <li><a EPD><b>EPD-Dateien</b></a></li>
  <li><a Export><b>Partien exportieren</b></a></li>
  <li><a Import><b>Partien importieren</b></a></li>
  <li><a LaTeX><b>LaTeX mit Scid benutzen</b></a></li>
  <li><a Options><b>Optionen und Voreinstellungen</b></a></li>
  <li><a PTracker><b>Figurenverteilung</b></a></li>
  <li><a Pgnscid><b>Pgnscid: PGN-Dateien konvertieren</b></a></li>
  <li><a NAGs>Standard <b>NAG-Kommentarwerte</b></a></li>
  <li><a TB><b>Endspieldatenbanken</b></a></li>
  </ul>

  <p><footer>Aktualisiert: Scid vs. PC 4.7, Januar 2012</footer></p>
}

set helpTitle(D,Index) "Scid Hilfeindex"
set helpText(D,Index) "<h1>$::scidName Hilfeindex</h1>"
append helpText(D,Index) {
<br>
<a Index A>  A</a> <a Index B>  B</a> <a Index C>  C</a> <a Index D>  D</a> <a Index  E> E</a> <a Index F>  F</a> <a Index G>  G</a> <a Index H>  H</a> <a Index I>  I</a> <a Index  J> J</a> <a Index K>  K</a> <a Index L>  L</a> <a Index M>  M</a> <a Index N>  N</a> <a Index O>  O</a> <a Index P>  P</a> <a Index Q>  Q</a> <a Index R>  R</a> <a Index S>  S</a> <a Index T>  T</a> <a Index U>  U</a> <a Index V>  V</a> <a Index W>  W</a> <a Index X>  X</a> <a Index Y>  Y</a> <a Index Z>  Z</a>
<br>
  <h4><name A>A </name></h4>
  <ul>
  <li><a Clipbase>Ablagedatenbank</a></li>
  <li><a Changelog>Änderungshistorie</a></li>
  <li><a Analysis>Analysefenster</a></li>
  <li><a Docking>Angedockte Fenster</a></li>
  <li><a Maintenance Autoload>Automatisch eine Partie laden</a></li>
  <li><a Analysis Annotating>Automatische Partienkommentierung</a></li>
  <li><a MainWindow Autoplay>Automatische Wiedergabe</a></li>
  <li><a Author>Autor, kontaktieren</a></li>
  </ul>

  <h3><name B>B</name></h3>
  <ul>
  <li><a Maintenance Cleaner>Bereiniger</a></li>
  <li><a Reports>Berichte</a></li>
  <li><a Tree Best>Beste Partien anzeigen</a></li>
  <li><a FindBestMove>Besten Zug finden: Training</a></li>
  <li><a Board>Brett- und Figureneinstellungen</a></li>
  <li><a Book Polyglot>Bücher für PolyGlot erstellen</a></li>
  </ul>

  <h3><name C>C</name></h3>
  <ul>
  <li><a ComputerGame>Computerpartie</a></li>
  <li><a Import CCRL>Computerschachpartienimporte (CCRL)</a></li>
  <li><a Tourney>Computerturniere</a></li>
  <li><a CQL>CQL</a> (Schachabfragesprache)</li>
  </ul>

  <h3><name D>D</name></h3>
  <ul>
  <li><a Finder>Dateifinder</a></li>
  <li><a Formats>Dateiformate</a></li>
  <li><a Compact>Datenbank komprimieren</a></li>
  <li><a Sorting>Datenbank sortieren</a></li>
  <li><a Formats>Datenbankdateiformate</a></li>
  <li><a Maintenance>Datenbankwartung</a></li>
  <li><a Switcher>Datenbankwechsler</a></li>
  <li><a Finder>Datensicherungen</a></li>
  <li><a Options Themes>Design</a></li>
  <li><a HardwareConfig>DGT Elektronisches Schachbrett konfigurieren</a></li>
  <li><a InputEngine>DGT-Benutzung</a></li>
  <li><a Comment Diagrams>Diagramme</a></li>
  <li><a Moves Trial>Direkte Drohungen</a></li>
  <li><a Maintenance Twins>Dubletten</a></li>
  </ul>

  <h3><name E>E</name></h3>
  <ul>
  <li><a Email>E-Mail</a></li>
  <li><a ECO>ECO-Codes</a></li>
  <li><a ECO Browser>ECO-Lesefenster</a></li>
  <li><a ECO Codes>ECO-Codespezifikation</a></li>
  <li><a Moves>Eingabe von Zügen</a></li>
  <li><a Maintenance Ratings>Elo-Wertungszahlen hinzufügen</a></li>
  <li><a TB>Endspieldatenbanken</a></li>
  <li><a Analysis>Engines</a></li>
  <li><a Analysis List>Engines konfigurieren</a></li>
  <li><a Analysis Debugging>Engine-Probleme: Fehlersuche</a></li>
  <li><a Tourney>Engine-Turniere</a></li>
  <li><a EPD>EPD-Dateien</a></li>
  <li><a EPD opcodes>EPD-Opcodes</a></li>
  <li><a Export EPD>EPD- und FEN-Export</a></li>
  <li><a Graphs Score>Ergebnisgrafik</a></li>
  <li><a Reports Opening>Eröffnungsberichte</a></li>
  <li><a BookTuning>Eröffnungsbuch anpassen</a></li>
  <li><a Book>Eröffnungsbücher</a></li>
  <li><a ECO>Eröffnungsklassifikation (ECO)</a></li>
  <li><a Repertoire>Eröffnungsrepertoire</a></li>
  <li><a HardwareConfig>Externe Hardware (Novag, DGT...)</a></li>
  </ul>

  <h3><name F>F</name></h3>
  <ul>
  <li><a Options Colours>Farben (verschiedene Optionen)</a></li>
  <li><a Docking>Fenster andocken</a></li>
  <li><a Correspondence>Fernschach</a></li>
  <li><a CCSetupDialog>Fernschach konfigurieren</a></li>
  <li><a CCeMailChess>Fernschach per E-Mail</a></li>
  <li><a CCXfcc>Fernschachserver/Xfcc</a></li>
  <li><a CCIcons>Fernschachsymbole</a></li>
  <li><a FICS>FICS (Free Internet Chess Server)</a></li>
  <li><a FICSlogin>FICS-Anmeldung</a></li>
  <li><a FICSobserve>FICS: weitere Funktionen</a></li>
  <li><a Board>Figuren</a></li>
  <li><a PTracker>Figurenverteilungsfenster</a></li>
  <li><a Filter>Filter</a></li>
  <li><a Export>Filter exportieren</a></li>
  <li><a Graphs Filter>Filtergrafik</a></li>
  <li><a PInfo Photos>Fotos</a></li>
  </ul>

  <h3><name G>G</name></h3>
  <ul>
  <li><a GameList Del>Gelöschte und gefilterte Partien</a>
  <li><a Maintenance Editing>Globale Ersetzungen</a></li>
  <li><a Graphs>Grafikfenster</a></li>
  <li><a GUI>Grafische Oberfläche benutzen</a></li>
  </ul>

  <h3><name H>H</name></h3>
  <ul>
  <li><a MainWindow>Hauptfenster</a></li>
  </ul>

  <h3><name I>I</name></h3>
  <ul>
  <li><a Import>Importfenster</a></li>
  <li><a Moves Informant>Informatorsymbole</a></li>
  <li><a Contents>Inhalt</a></li>
  <li><a FICS>Internetpartie</a></li>
  </ul>

  <h3><name J>J</name></h3>
  <ul>
  </ul>

  <h3><name K>K</name></h3>
  <ul>
  <li><a Flags>Kennzeichen</a></li>
  <li><a Cmdline>Kommandozeilenoptionen</a></li>
  <li><a Comment>Kommentareditor</a></li>
  <li><a Comment Annotation>Kommentarsymbole</a></li>
  <li><a NAGs>Kommentarsymbole (NAGs)</a></li>
  <li><a Comment>Kommentieren von Partien</a></li>
  <li><a Analysis List>Konfiguration einer Schach-Engine</a></li>
  <li><a Console>Konsole</a></li>
  <li><a Author>Kontaktinformation</a></li>
  <li><a Crosstable>Kreuztabelle</a></li>
  </ul>

  <h3><name L>L</name></h3>
  <ul>
  <li><a LaTeX>LaTeX-Ausgabeformat</a></li>
  <li><a MainWindow>Leiste mit Schaltflächen</a></li>
  <li><a Bookmarks>Lesezeichen</a></li>
  <li><a Related>Links</a></li>
  <li><a Flags>Löschkennzeichen</a></li>
  </ul>

  <h3><name M>M</name></h3>
  <ul>
  <li><a Searches Material>Material-/Mustersuche</a></li>
  <li><a TacticsTrainer>"Matt in ..n.."-Puzzle</a></li>
  <li><a Formats>Maximalzahl an Partien</a></li>
  <li><a Menus Edit>Menü Bearbeiten</a></li>
  <li><a Menus File>Menü Datei</a></li>
  <li><a Menus Windows>Menü Fenster</a></li>
  <li><a Menus Help>Menü Hilfe</a></li>
  <li><a Menus Game>Menü Partie</a></li>
  <li><a Menus Search>Menü Suchen</a></li>
  <li><a Menus Tools>Menü Werkzeuge</a></li>
  <li><a Menus>Menüs</a></li>
  </ul>

  <h3><name N>N</name></h3>
  <ul>
  <li><a NAGs>NAG-Kommentarzeichen</a></li>
  <li><a Maintenance Editing>Namen bearbeiten</a></li>
  <li><a Maintenance Spellcheck>Namen, Rechtschreibprüfung</a></li>
  <li><a Import CCRL>Namensproblem Runden</a></li>
  <li><a Maintenance Editing>Namensschreibweise bearbeiten</a></li>
  <li><a Novag>Novag Citrine</a></li>
  <li><a Variations Null>Nullzüge</a></li>
  </ul>

  <h3><name O>O</name></h3>
  <ul>
  <li><a Options>Optionen</a></li>
  </ul>

  <h3><name P>P</name></h3>
  <ul>
  <li><a Searches Header>Partiedatensuche</a></li>
  <li><a Crosstable tiebreak>Partieentscheidungen</a></li>
  <li><a MainWindow GameInfo>Partieinformationsfenster</a></li>
  <li><a Flags>Partiekennzeichen</a></li>
  <li><a Analysis Annotating>Partien bewerten</a></li>
  <li><a GameList Browsing>Partien durchsehen</a></li>
  <li><a Export>Partien exportieren</a></li>
  <li><a Maintenance Twins>Partien vergleichen</a> mit dem Dublettenprüfer</li>
  <li><a GameList Browsing>Partien verschmelzen</a></li>
  <li><a GameList>Partienlistenfenster</a></li>
  <li><a Export PDF>PDF-Unterstützung</a></li>
  <li><a Comment Diagrams>Pfeile</a></li>
  <li><a Comment Diagrams>Pfeile zeichnen</a></li>
  <li><a BrowsingPGN>PGN und Scid</a></li>
  <li><a PGN>PGN-Fenster</a></li>
  <li><a Maintenance Tags>PGN-Kennzeichnungen finden</a>
  <li><a Pgnscid>Pgnscid</a></li>
  <li><a Book Polyglot>PolyGlot</a></li>
  <li><a Moves Trial>Probiermodus</a></li>
  <li><a TacticsTrainer>Puzzle: Matt in ...</a></li>
  </ul>

  <h3><name Q>Q</name></h3>
  <ul>
  </ul>

  <h3><name R>R</name></h3>
  <ul>
  <li><a Maintenance Spellcheck>Rechtschreibprüfung Namen</a></li>
  <li><a Maintenance Spellcheck>Rechtschreibprüfung Spielernamen</a></li>
  <li><a Repertoire>Repertoireeditor</a></li>
  <li><a Moves Undo>Rückgängig machen</a></li>
  <li><a Import CCRL>Rundennamensproblem</a></li>
  </ul>

  <h3><name S>S</name></h3>
  <ul>
  <li><a Analysis Debugging>Schach-Engine: Fehlersuche</a></li>
  <li><a Analysis>Schach-Engines</a></li>
  <li><a Board>Schachfiguren</a></li>
  <li><a Cmdline>Schnellstartmodus</a>
  <li><a Maintenance Spellfile>Schreibkorrekturdatei</a></li>
  <li><a Options Fonts>Schriftarten</a></li>
  <li><a Formats>Si4-Datenbankformat</a></li>
  <li><a ComputerGame>Spiel gegen den Computer</a></li>
  <li><a FICS>Spielen im Internet (FICS)</a></li>
  <li><a Reports Player>Spielerberichte</a></li>
  <li><a PInfo Photos>Spielerfotos</a></li>
  <li><a PInfo>Spielerinformationen</a> </li>
  <li><a Options MyPlayerNames>Spielernamen, meine</a>
  <li><a PList>Spielersuchfenster</a></li>
  <li><a MainWindow Status>Statusleiste</a></li>
  <li><a Searches Board>Stellungssuche</a></li>
  <li><a Searches>Suchen</a></li>
  <li><a Searches Header>Suchen nach Partiedaten</a></li>
  <li><a Searches Move>Suchen von Partiezügen</a></li>
  <li><a CalVar>Stoyko-Übung</a></li>
  </ul>

  <h3><name T>T</name></h3>
  <ul>
  <li><a TB>Tablebases</a></li>
  <li><a ShortCuts>Tastaturkurzbefehle</a></li>
  <li><a ShortCuts alpha>Tastaturkurzbefehle (alphabetisch)</a></li>
  <li><a Sound>Ton</a></li>
  <li><a Tmt>Turnierfinder</a></li>
  <li><a FindBestMove>Training: besten Zug finden</a></li>
  <li><a CalVar>Training: Variantenberechnung</a></li>
  </ul>

  <h3><name U>U</name></h3>
  <ul>
  <li><a Analysis UCI>UCI-Engine-Optionen</a></li>
  <li><a Encoding>UTF-8-Zeichensatz</a></li>
  </ul>

  <h3><name V>V</name></h3>
  <ul>
  <li><a Variations Paste>Variante einfügen</a></li>
  <li><a Variations>Varianten</a></li>
  <li><a FICSobserve exam>Varianten in FICS</a></li>
  </ul>

  <h3><name W>W</name></h3>
  <ul>
  <li><a Maintenance>Wartung</a></li>
  <li><a MainWindow Toolbar>Werkzeugleiste</a></li>
  <li><a Graphs Rating>Wertungsgrafik</a></li>
  <li><a Moves Undo>Wiederholen</a></li>
  <li><a Console>Willkommensfenster</a></li>
  </ul>

  <h3><name X>X</name></h3>
  <ul>
  <li><a CCXfccSetupDialog>Xfcc-Servereinstellung</a></li>
  <li><a CCXfcc>Xfcc-Unterstützung</a></li>
  </ul>

  <h3><name Y>Y</name></h3>
  <ul>
  </ul>

  <h3><name Z>Z</name></h3>
  <ul>
  <li><a Encoding>Zeichenkodierung</a></li>
  <li><a Graphs Score>Zeitgrafik</a></li>
  <li><a Switcher draganddrop>Ziehen und Ablegen (Drag and Drop)</a></li>
  <li><a FICSwidget premove>Zug vorausziehen (FICS)</a></li>
  <li><a Tree>Zugbaumfenster</a></li>
  <li><a TreeMasks>Zugbaummasken</a></li>
  <li><a Moves>Zugeingabe und Optionen</a></li>
  </ul>

  <p><footer>Aktualisiert: Scid vs. PC 4.0, Juni 2010</footer></p>
}


set helpTitle(D,MainWindow) "Hauptfenster"
set helpText(D,MainWindow) {<h1>Hauptfenster von Scid vs. PC</h1>
  <p>Dieser Abschnitt beschreibt das Hauptbrett (zeigt die aktuelle
  Partie), die Partieinformation darunter und einige andere
  Dinge. Siehe auch die gesonderten Hilfeseiten
  über <a Menus>Menüs</a>, <a Board>Brettanpassungen</a>, <a Options
  Colours>andere Farben</a>, wie man <a Moves>Schachzüge eingibt</a>,
  <a ShortCuts General>Tastenkürzel</a>, um durch Partien zu
  navigieren und <a Comment Diagrams>Zeichnen von Pfeilen und Setzen
  von Markierungen.</a>
  </p>
  <p><i> Ein Rechtsklick auf den Reiter 'Brett' (oder auf das ganze Brett
  im nichtangedockten Modus) ermöglicht es, viele Elemente
  anzuzeigen/zu verbergen, die nachstehend beschrieben werden. Siehe
  Scids <run ::tip::show><green>Tagestip</green></run> für weitere
  hilfreiche Hinweise.</i>
  </p>

  <h4>Die Schaltflächen in der Hauptleiste</h4>
  <p>Die Tastenanbindungen für jede Schaltfläche werden in eckigen
  Klammern angezeigt:
  <ul>
  <li> <button tb_start> Zum Partieanfang gehen [Pos1] </li>
  <li> <button tb_prev> Einen Zug zurück gehen [links] </li>
  <li> <button tb_next> Einen Zug vorwärts gehen [rechts] </li>
  <li> <button tb_end> Zum Partieende gehen  [Ende] </li>
  <li> <button tb_invar> In eine <a Variations>Variante</a> gehen  [v]
  (Schaltfläche gedrückt halten bringt ein Menü mit verfügbaren Varianten)</li>
  <li> <button tb_outvar> Aus der aktuellen Variante herausgehen [z]
  (Rechtsklick verläßt alle Varianten)</li>
  <li> <button tb_addvar> Eine neue Variante hinzufügen  [Strg+a]</li>
  <li> <button autoplay_off> Startet/stoppt <a MainWindow
  Autoplay>automatisches Abspielen</a> (Rechtsklick spielt alle
  Filterpartien vor)</li>
  <li> <button tb_trial> Startet/stoppt <a Moves Trial>Probiermodus</a> [Strg+Leertaste]</li>
  <li> <button tb_flip> Brett drehen [Strg+f]</li>
  <li> <button tb_windows> Vergrößert offene Fenster [tab]. Diese
  Eigenschaft funktioniert nur, wenn Sie bei Ihrem Fenstermanager die
  Methode für die Fokuswegnahme deaktivieren. (Rechtsklick zeigt das
  Willkommensfenster)</li>
  </ul>
  </p>

  <h4><name Toolbar>Die Werkzeugleiste</name></h4>
  <p>Im Hauptfenster oben ist eine Reihe von kleinen Symbolen, die
  Werkzeugleiste genannt wird. Wenn man mit dem Mauszeiger drüber
  fährt, wird bei jedem Symbol der Name angezeigt. Die Auswahl
  darüber, welche Symbole angezeigt werden, wird
  im Menü  <green>Optionen--<gt>Werkzeugleiste</green> getroffen.
  Ein Rechtsklick auf das Symbol "Partie ersetzen..." bewirkt ein
  sofortiges Speichern.
  </p>

  <h4><name GameInfo>Das Partieinformationsfenster</name></h4>

  <p><i>Das Partieinformationsfenster kann durch Drücken von Strg-i
  versteckt/hervorgeholt werden.</i></p>
  <p>Unterhalb des Schachbretts gibt es allgemeine Informationen zur
  aktuellen Partie. Sie beinhalten Felder
  über <b>Spielernamen</b>, <b>Wertungszahlen</b>, <b>Veranstaltung</b>
  und <b>Ort</b> sowie <b>ECO</b>-Codes.
  </p>
  <p>Wenn Scid eine passende <a PInfo Photos>Fotodatei</a> findet, dann werden hier
  Spielerfotos angezeigt. Wenn man sie anklickt, werden sie
  verkleinert bzw. vergrößert.
  </p>
  <p>Dieser Bereich mit den Partieinformationen zeigt auch die Ergebnisse
  aus der <a TB>Endspieldatenbank</a> an.
  </p>
  <p>Die Anzeigemöglichkeiten für dieses Fenster befinden sich im
  Menü <green>Optionen--<gt>Partieinformationen</green>.
  </p>

  <h4>Anzeige von Materialwerten</h4>
  <p>Rechts neben dem Schachbrett wird das <b>Materialungleichgewicht</b>
  durch kleine Figuren bzw. Bauern angezeigt.
  </p>

  <h4><name Status>Die Statusleiste</name></h4>
  <p>Die Statusleiste zeigt Informationen über die aktuelle Datenbank
  und Partie einschließlich Partienummer, Partiekennzeichnungen und ob
  die Partie geändert wurde oder die Datenbank im Nur-Lese-Modus
  ist. Gelegentlich werden weitere Informationen angezeigt, so z.B.
  passende Züge (wenn man die Züge mit der Tastatur eingibt) oder
  FICS-Mitteilungen.
  </p>

  <h4><name Autoplay>Der Abspielmodus</name></h4>
  <p>Im Abspielmodus führt Scid automatisch die Züge bis zum Ende der
  aktuellen Partie aus. Die Zeit zwischen den Zügen kann über das
  Menü <green>Optionen--<gt>Züge--<gt>Automatisch vorspielen...</green>
  eingestellt werden.
  </p>
  <p>Ein Rechtsklick auf das Abspielensymbol <button autoplay_off>
  oberhalb des Schachbretts spielt alle Partien durch, die sich im
  Filter befinden.
  </p>
  <p>Das Abspielen wird auch gestartet, wenn die Partie <a Analysis
  Annotating>automatisch kommentiert</a> wird.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.19 Februar 2018 </footer></p>
}

set helpTitle(D,Docking) "Angedockte Fenster"
set helpText(D,Docking) {<h1>Angedockte Fenster</h1>
<p>Die grafische Oberfläche von Scid hat zwei Modi. Im Modus
  "Angedockte Fenster" (die Standardeinstellung) sind die meisten
  Fenster in einem einzigen großen Fenster gekachelt - oder
  angedockt. Das Andocken wird (de-)aktiviert im
  Menü  <green>Optionen--<gt>Fenster</green>, wo Sie auch eines der drei
  eingebauten Layouts laden oder Ihre eigene Fensteranordnung
  speichern können. Die aktuelle Fensteranordnung kann auch
  über <b>Optionen--<gt>Layout speichern</b> gespeichert werden.
</p>
<p>Das Anordnen von angedockten Fenstern ist ein wenig schwierig. Man
  kann irgendeinen Reiter mit der rechten Maustaste anklicken
  (ausgenommen das Hauptschachbrett) und auswählen, um das Fenster
  zur Seite zu schieben. Oder man kann den Reiter mit der Maus
  ziehen und ihn mit anderen Reitern in einem anderen Fenster
  gruppieren. Fenster können auch herausgelöst werden durch
  Rechtsklick auf den Reiter, obwohl Mac OS X dies nicht
  unterstützt.</p>
<p>Der Fensterfokus folgt automatisch dem Mauszeiger und wirkt sich
  auch darauf aus, welche Tastenkürzel aktiv sind. Die meisten
  Tastenkürzel sind aktiv, wenn sich der Mauszeiger über dem
  Hauptbrett befindet.</p>
<p>Die Fenstermenüs sind erreichbar durch Anklicken des Pfeils im Fensterreiter.
</p>
<p>Mit dem Fokus auf einem Fensterreiter kann man die Tabulatortaste
  drücken, um sich zwischen den Fensterbereichen zu bewegen. Strg+Tab
  wechselt zwischen aktiven Reitern.
</p>
<p><i>Falls Scid nicht startet, verwenden Sie die
 Kommandozeilenoption </i><b>-nodock</b><i>, um im nichtangedockten
 Modus zu starten.</i></p>
<p><footer>Aktualisiert: Scid vs. PC 4.14, Dezember 2014</footer></p> }

set helpTitle(D,Menus) "Menüs"
set helpText(D,Menus) {<h1>Menüs</h1>

  <h3><name File>Datei</name></h3>
  <ul>
  <li><green>Neu...</green>  Erstellt eine neue leere Scid-Datenbank.</li>
  <li><green>Öffnen...</green>  Öffnet eine Scid-Datenbank.</li>
  <li><green>Speichere PGN...</green>  Speichert die Partie in eine PGN-Datei.</li>
  <li><green>Schließen</green>  Schließt die aktuelle Scid-Datenbank.</li>
  <li><green>Schreibschutz...</green>  Setzt die aktuelle Datenbank in
  den Nur-Lese-Modus.</li>
  <li><green>Finder</green>  Öffnet den <a Finder>Dateifinder</a>.</li>
  <li><green>Lesezeichen</green>  Zeigt und bearbeitet <a Bookmarks>Lesezeichen</a>.</li>
  <br>
  <li><green>Datenbank wechseln...</green>  Wechselt zwischen neun
  verfügbaren Datenbanken (einschließlich der <a Clipbase>Ablagedatenbank</a>).</li>
  <li><green>Öffne Datenbank als Baum</green></li>
  <li><green>Letzte Datenbank als Baum</green>  Öffnet eine Datenbank
  in einem <a Tree>Zugbaumfenster</a>. Die Datenbanken werden
  geschlossen, wenn der Zugbaum geschlossen wird.</li>
  <br>
  <li><green>Ende</green>  Beendet Scid. </li>
  </ul>

  <h3><name Edit>Bearbeiten</name></h3>
  <li><green>Stellungseingabe...</green>  Eine beliebige Brettstellung setzen</li>
  <li><green>Stellung kopieren</green>  Kopiert die FEN-Werte der
  aktuellen Brettstellung in die Zwischenablage.</li>
  <li><green>PGN-Stellung kopieren</green>  Kopiert die Zwischenablage auf die PGN-Partie.</li>
  <li><green>Stellung einfügen</green>  Erstellt eine Brettposition gemäß FEN
  in der Zwischenablage.</li>
  <li><green>PGN-Partie aus Ablage einfügen...</green>  Importiert eine Partie aus PGN in der Zwischenablage.</li>
  <br>
  <li><green>Ablage leeren</green>  Löscht die temporäre Datenbank (<a Clipbase>Ablagedatenbank</a>).</li>
  <li><green>Partie in Ablage kopieren</green>  Kopiert die aktuelle Partie zur <a Clipbase>Ablagedatenbank</a>.</li>
  <li><green>Partie aus Ablage einfügen</green>  Fügt die aktive Partie in der <a Clipbase>Ablagedatenbank</a> als aktive Partie in die aktuelle Datenbank ein.</li>
  <br>
  <li><green>Entfernen</green>  Entfernt alle Kommentare und Varianten aus der aktuellen Partie.</li>
  <li><green>Rückgängig</green>  Macht Änderungen zu dieser Partie
  rückgängig. Der Puffer für das Rückgängigmachen kann 20 Stellungen halten.</li>
  <li><green>Wiederherstellen</green>  Stellt Änderungen wieder her.</li>
  <br>
  <li><green>Variante hinzufügen</green>  Fügt eine neue leere
  Variante für den nächsten Zug hinzu oder für den vorhergehenden Zug,
  falls es noch keinen nächsten Zug gibt.</li>
  <li><green>Variante einfügen</green>  Fügt die aktuelle Textauswahl
  als Variante ein.</li>
  <li><green>Variante löschen</green>  Bietet für den aktuellen Zug
  ein Variantenuntermenü, so daß eine Variante gelöscht werden kann.</li>
  <li><green>Als erste Variante setzen</green>  Bietet eine Variante,
  die zur ersten Variante des aktuellen Zuges wird.</li>
  <li><green>Variante als Partiefortsetzung</green>  Bietet eine
  Variante als Hauptfortsetzung im Tausch mit ihrem Vorgänger.</li>
  <li><green>Variante testen</green>  Ermöglicht einen <a Moves
  Trial>Versuchsmodus</a>, um eine temporäre Variante auszuprobieren,
  ohne die aktuelle Partie zu ändern.</li>

  <h3><name Game>Partie</name></h3>
  <ul>
  <li><green>Neue Partie</green>  Setzt die aktive Partie in einen
  neuen Zustand. Ungesicherte Änderungen gehen verloren.</li>
  <li><green>Partie ersetzen...</green>  Speichert und ersetzt die
  aktuelle Partie in der Datenbank.</li>
  <li><green>Partie speichern...</green>  Speichert diese Partie und
  fügt sie der Datenbank hinzu.</li>
  <br>
  <li><green>Partieinformationen setzen...</green>  Setzt verschiedene
  Angaben zur aktuellen Partie.</li>
  <li><green>Partien durchsuchen</green>  Zeigt eine einzelne Partie
  in einem separaten Fenster an. In diesem können weitere Partien angezeigt werden.</li>
  <li><green>Alle Spiele</green>  Zeigt eine Liste mit allen Partien an.</li>
  <br>
  <li><green>Partie löschen</green>  Partie als gelöscht kennzeichnen
  (für ein endgültiges Löschen während einer Datenbankkomprimierung).</li>
  <li><green>Partie neu laden</green>  Lädt die aktuelle Partie unter Wegfall bisher durchgeführter Änderungen.</li>
  <br>
  <li><green>Erste/Letzte/Nächste/Vorherige/Zufällige Partie laden</green>  Lädt die im <a Filter>Filter</a> enthaltene
  erste/letzte/nächste/vorherige oder eine zufällige Partie.</li>
  <li><green>Lade Partie Nummer...</green>  Lädt die Partie mit der
  gegebenen Nummer aus der aktuellen Datenbank.</li>
  <br>
  <li><green>Eröffnung identifizieren</green>  Findet die am weitesten
  entfernte Position in der aktuellen Partie, die in der ECO-Datei
  enthalten ist.</li>
  <li><green>Zugnummer...</green>  Geht in der aktuellen Partie zur
  angegebenen Zugnummer.</li>
  <li><green>Finde Neuerung...</green>  Findet in der aktuellen Partie
  den ersten Zug, der bisher nicht gespielt wurde.</li>
  </ul>

  <h3><name Search>Suchen</name></h3>
  <ul>
  <li><green>Filter zurücksetzen</green>  Setzt
  den <a Filter>Filter</a> zurück, so daß alle Partien enthalten sind.</li>
  <li><green>Filter invertieren</green>  Kehrt den Filter um, um nur
  die Partien anzuzeigen, die bisher ausgeschlossen waren.</li>
  <li><green>Filterpartien mit Schlußstellung laden</green>  Zeigt
  alle Partien mit ihrem letzten Zug.</li>
  <br>
  <li><green>Partiedaten...</green>  Führt eine <a Searches Header>Partiedatensuche</a> durch wie z.B. Spielernamen.</li>
  <li><green>Brett...</green>  Führt eine <a Searches Board>Brettsuche</a> durch.</li>
  <li><green>Material/Muster...</green>  Führt eine Muster- oder <a Searches Material>Materialsuche</a> durch.</li>
  <li><green>Züge</green> Findet einen bestimmten Zug oder <a Searches Move>Zugkombination</a>.</li>
  <li><green>CQL</green> Die Schachabfragesprache. Details siehe <url http://www.gadycosteff.com/cql>http://www.gadycosteff.com/cql</url>.</li>
  <br>
  <li><green>Spielersuche</green>  Sucht nach einem Spielernamen.</li>
  <li><green>Turniersuche</green>  Sucht nach einem Turner mittels
  Datum oder Name.</li>
  <br>
  <li><green>Mit Suchoptionsdatei...</green>  Führt eine Suche durch
  anhand Kriterien, die in einer <a Searches Settings>Suchoptionsdatei</a> gespeichert sind.</li>
  </ul>

  <h3><name Windows>Fenster</name></h3>
  <ul>
  <li><green>Partieinformationen</green>  Zeigt/versteckt Partieinformationen.</li>
  <li><green>Kommentareditor</green>  Öffnet den <a Comment>Kommentareditor</a>.</li>
  <li><green>Partienliste</green>  Öffnet die <a GameList>Partienliste</a>.</li>
  <li><green>PGN-Fenster</green>  Öffnet das <a PGN>PGN-Fenster</a>.</li>
  <li><green>Kreuztabelle</green>  Erstellt für die aktuelle Partie eine <a Crosstable>Kreuztabelle</a>.</li>
  <li><green>Spielersuche</green>  Öffnet das Fenster <a PList>Spielersuche</a>.</li>
  <li><green>Turniersuche</green>  Öffnet das Fenster <a Tmt>Turniersuche</a>.</li>
  <li><green>Wartungsfenster</green>  Öffnet das Fenster <a Maintenance>Wartung</a>.</li>
  <li><green>ECO-Auswertung</green>  Öffnet das Fenster <a ECO browser>ECO-Auswertung</a>.</li>
  <li><green>Statistik</green> Öffnet das
  Fenster <term>Statistik</term>, das eine Zusammenfassung von Gewinn- und Verlustpartien im <a Filter>Filter</a> liefert.</li>
  <li><green>Zugbaum</green>  Öffnet das <a Tree>Zugbaumfenster</a>.</li>
  <li><green>Endspieltabellen</green>  Öffnet das Fenster mit <a TB>Endspiel</a>informationen.</li>
  <li><green>Eröffnungsbuch</green>  Öffnet das Fenster mit Eröffnungsbüchern.</li>
  <li><green>Fernschach</green>  Öffnet das Fernschachfenster.</li>
  </ul>

  <h3><name Tools>Werkzeuge</name></h3>
  <ul>
  <li><green>Analyse-Engine</green>  Konfiguriert die Analyse-Engine</li>
  <li><green>Analyse-Engine #1</green>  Startet/stoppt
  die <a Analysis>Analyse-Engine Nr. 1 und zeigt die Bewertung der
  aktuellen Stellung</a>.
  <li><green>Analyse-Engine #2</green>  wie vorstehend
  <br>
  <li><green>Wartung</green>  Funktionen zur <a Maintenance>Datenbankwartung</a>.</li>
  <ul>
  <li><green>Wartungsfenster</green>  Öffnet/schließt das Datenbankwartungsfenster.</li>
  <li><green>Namenseditor</green>  Erlaubt das Ändern von Partiedaten
  wie Namen von Spielern, Turnierbezeichnung, Ort, Runde, Elo, Tagesdatum
  und Turnierdatum</li>
  <li><green>Datenbank komprimieren...</green>  Führt eine
  Datenbankkomprimierung durch.</li>
  <li><green>Sortieren...</green>  Sortiert die Datenbank nach Namen,
  Wertungszahl usw.</li>
  <li><green>Schreibkorrektur Spieler/Ereignis/Ort/Runde...</green>
  Durchsucht die Schreibkorrekturdatei für mögliche Namenskorrekturen.</li>
  <li><green>Dubletten löschen...</green>  Findet <a Maintenance Twins>Dubletten</a> in der Datenbank.</li>
  <li><green>Dubletten prüfen...</green>  Repariert eine fehlerhafte Datenbank.</li>
  </ul>
  <li><green>Buch abstimmen</green>  Zum Editieren von PolyGlot-Eröffnungsbüchern.</li>
  <li><green>Spielerbericht</green>  Erstellt für einen Spieler einen <a Reports Player>Eröffnungsbericht</a>.</li>
  <li><green>Eröffnungsbericht</green>  Erstellt für die aktuelle Brettstellung einen <a Reports Opening>Eröffnungsbericht</a>.</li>
  <li><green>Figurenverteilung</green>  Öffnet ein Fenster für die Ermittlung der <a PTracker>Figurenverteilung</a>.</li>
  <li><green>E-Mail-Manager</green>  Öffnet/schließt das Fenster <a Email>E-Mail-Manager</a> für die Verwaltung von Fernschachpartien.</li>
  <li><green>Hardware verbinden</green>  Ermöglicht das Einrichten externer Hardwaregeräte.</li>
  <br>
  <li><green>Rel. Filtergrafik</green>  Zeigt für <a Graphs Filter>gefilterte Partien</a> die Häufigkeit pro
  1.000 Partien bezüglich Dekaden, Jahren, Elo und Anzahl der Spielzüge grafisch an.</li>
  <li><green>Abs. Filtergrafik</green>  Wie vorstehend, jedoch in absoluten Zahlen.</li>
  <li><green>Ratingveränderung</green>  Zeigt eine <a Graphs Rating>Ratinggrafik</a> an.</li>
  <li><green>Score Graph</green>  Zeigt für die aktuelle Partie eine <a Graphs Score>Grafik mit Bewertungszahlen</a>an.</li>
  <br>
  <li><green>Partie exportieren</green>  Speichert die aktuelle Partie
  in eine Textdatei im Format PGN, HTML oder LaTeX. Siehe die
  Hilfeseite über das <a Export>Exportieren von Partien</a>.</li>
  <li><green>Alles im Filter exportieren</green>  Speichert
  alle <a Filter>Filterpartien</a> in eine Textdatei im Format PGN,
  HTML oder LaTeX. Siehe die Hilfeseite über das <a Export>Exportieren
  von Partien</a>.</li>
  <br>
  <li><green>Eine PGN-Partie importieren...</green>  Öffnet
  ein <a Import>PGN-Importfenster</a> für das manuelle Eingeben von
  Partiezügen bzw. Einfügen von Text im <a PGN>PGN-Format</a>.</li>
  <li><green>PGN-Partien importieren...</green>  Importiert eine
  Datei, die Partien im PGN-Format enthält, in die aktuelle
  Datenbank. Beachten Sie, daß in diesem Dialog mehrere Dateien
  gleichzeitig ausgewählt werden können.</li>
  <br>
  <li><green>Bildschirmfoto</green>  Speichert ein Bildschirmfoto
  des Schachbretts in eine Datei.</li>
  </ul>
  <p><footer>Aktualisiert: Scid vs. PC 4.17, März 2016</footer></p>
}


set helpTitle(D,Moves) "Erfassen von Partiezügen"
set helpText(D,Moves) {<h1>Zugeingabe und Optionen</h1>
  <p>Scid benutzt die Pfeiltasten und das Mausrad, um durch eine
  Partie vorwärts und rückwärts zu navigieren. Partiezüge können
  jederzeit mittels Maus oder Tastatur eingegeben werden.
</p><p>Klicken Sie mit der Maus auf eine Figur und dann auf das
  Zielfeld. Alternativ kann man die Figur ziehen.
  </p>
  <p>Die Zugeingabe mittels Tastatur erfolgt durch Verwendung der
  algebraischen Notation (z.B.: 1. e4 e5 2. Nf3 Nc6 3. Bb5 a6) oder
  durch die UCI-Notierung (z.B. e2e4, e1g1 [weiße kurze Rochade],
  e7e8q [Bauernumwandlung]). Die Rochade wird mit <b>OO</b>
  oder <b>OK</b> und <b>OQ</b> für die kurze bzw. lange Rochade
  durchgeführt. Weiteres siehe nachstehend.
  </p>
  <p><i>Das Drücken von </i><b>Escape</b><i> löscht die Tastatur- und
  Mauseingabe.</i></p>

  <h4>Züge ersetzen</h4>
<p>Wenn Sie einen Zug eingeben, wo bereits einer vorhanden ist, dann
  fragt Scid, ob dieser Zug ersetzt werden soll (der alte Zug und alle
  vorherigen gehen dann verloren) oder ob der neue Zug als eine
  Variante oder neue Partiefortsetzung hinzugefügt werden soll. Wenn
  Sie diesen Dialog als störend empfinden, dann kann man ihn
  überspringen, indem man im
  Menü <green>Optionen--<gt>Züge--<gt>Fragen vor Ersetzen</green>
  deaktiviert.
  </p>
  <p>Wenn der eingegebene Zug der gleiche wie der vorhandene ist, dann
  wird Scid nur in diesen Zug hineingehen.
  <i>Dieses Verhalten ist am Ende der Partie anders. Hier wird Scid
  dann automatisch eine neue Variante erstellen. Dies ermöglicht
  es, Partieendevarianten hinzuzufügen.</i>
  </p>

  <h4><name Undo>Rückgängig machen und Wiederherstellen</name></h4>
  <p>Scid vs. PC hat Rückgängig- und Wiederherstellungsmöglichkeiten,
  die bis zu 20 Änderungen für Partiezug, Variante, Kommentar oder
  Partieinformation speichern. Rückgängig und Wiederherstellen sind an
  die Tasten <b>Strg-z</b> und <b>Strg-y</b> gebunden (wenn der
  Mauspfeil über dem Hauptbrett ist). Sie sollten aber sorgsam benutzt
  werden, da diese Tastenkürzel auch die Voreinstellung für das Editieren
  in Textfenstern wie beim Kommentareditor sind.
  </p>

  <h4><name Trial>Probiermodus</name></h4>
  <p>Der Probiermodus (Schaltfläche <button tb_trial>) erlaubt es, in
  einer Partie temporär Züge und Änderungen vorzunehmen. Ein zweites
  Drücken dieser Schaltfläche beendet den Modus und kehrt zur
  ursprünglichen Partie zurück.
  </p>
  <p>Ein Rechtsklick auf diese Schaltfläche geht ebenfalls in den
  Probiermodus und fügt automatisch einen <a Variations Null>leeren
  Zug</a> ein. Dies ist praktisch, um sofortige Drohungen mit
  Schachprogrammen zu sehen.
  </p>
  <p><i>Partie speichern, Rückgängig und Wiederherstellen sind im
  Probiermodus nicht möglich. Bei einem Wechsel der Datenbank wird der
  Modus automatisch beendet.
  </i></p>

  <h4><name Mistakes>Fehlerkorrekturen</name></h4>
  <p>Wenn Sie eine Partie erfassen und Sie bemerken plötzlich einen
  fehlerhaften Zug, der einige Züge vorher passierte, dann ist es
  möglich, ihn zu korrigieren, ohne die nachfolgenden Züge zu
  verlieren. Dies geschieht durch Editieren der PGN-Darstellung der
  Partie. Öffnen Sie das <a Import>Import</a>-fenster
  (Menü <green>Werkzeuge--<gt>Eine PGN-Partie importieren...</green>),
  wählen "Aktuelle Partie einfügen", korrigieren den fehlerhaften Zug
  und wählen anschließend "Importieren".
  </p>

  <h3>Zugeingabe mittels Tastatur</h3>
  <p>Um Partiezüge über die Tastatur einzugeben, drücken Sie einfach
  die Tasten für Buchstabe und Ziffer - in langer oder kurzer
  algebraischer Notation - und ohne das Zeichen für Schlagen "x" oder
  "=" für die Bauernumwandlung. Groß-/Kleinschreibung spielen keine
  Rolle, so daß Sie z.B. nf3 statt Nf3 schreiben können.
  </p>
  <p>Wenn Sie einen Zug eingeben, dann zeigt die Statusleiste eine
  Liste von passenden Zügen an.
  </p>
  <p>Die Schreibweise für die Rochade ist [O][O], aber kurze und lange
  Rochade können auch explizit mit [O][K] und [O][Q] geschrieben
  werden.
  </p>
  <p>Kleinbuchstaben passen zuerst auf einen Bauern, so daß [b] auf
  einen Bauern (auf der B-Linie) oder einen Läufer (engl. bishop)
  passen kann. Falls es hier einen Konflikt gibt, müssen Sie den
  Großbuchstaben [B] für den Läuferzug verwenden.
  </p>

  <h4>Zugeingabe mit Koordinaten</h4>
  <p>Diese Zugeingabemöglichkeit erlaubt es, Partiezüge in der
  UCI-Notation einzugeben (wie a2a4 und g1f3). Diese Eigenschaft
  ist standardmäßig aktiviert, aber sie behindert die Möglichkeit der
  automatischen Ergänzung (die standardmäßig ausgeschaltet ist).
  </p>

  <h4>Automatische Zugergänzung</h4>
  <p>Die automatische Zugergänzung wird durch
  <green>Optionen--<gt>Züge--<gt>Automatische Zugergänzung</green>
  eingeschaltet. Sie vervollständigt einen Zug, sobald Sie genügend
  eingetippt haben, um ihn eindeutig von anderen legalen Zügen zu
  unterscheiden. So reicht es z.B. in der Anfangsposition, nur [n][f]
  anstatt [n][f][3] zu schreiben. Dies funktioniert nur mit
  Bauernzügen, falls die Zugeingabe mit Koordinaten ausgeschaltet ist.
  </p>

  <h3><name Null>Nullzüge eingeben</name></h3>
  <p><a Variations Null>Nullzüge</a> (oder leere Züge) können in
  Varianten hilfreich sein, wo man für eine Seite einen Zug
  überspringen möchte. Man kann mit dem Mauszeiger einen Nullzug
  einfügen, indem man einen König mit dem anderen König schlägt oder
  über die Tastatur, indem man "<b>--</b>" tippt (d.h., die Minustaste
  zweimal drücken).
  </p>

  <h3><name Informant>Übliche Kommentarsymbole</h3>
  <p>Man mag mit Hilfe der Tastatur Kommentarsymbole
  (oder <a NAGs>NAGs</a>) hinzufügen (ohne
  den <a Comment>Kommentareditor). Nachstehend sind die wichtigsten
  Tastenkürzel aufgeführt.
  </p>
  <p>Scid benutzt für <a Analysis Annotating>automatische
  Kommentare</a> ebenfalls einige dieser Symbole. Hierzu werden die
  Symbole mit einem gewissen Bauernwert verknüpft, der
  im Menü <run configInformant><green>Optionen--<gt>Informatorwerte
  konfigurieren</green></run> gesetzt werden kann.
  </p>

  <ul>
  <li> !    [!][Enter]</li>
  <li> ?    [?][Enter]</li>
  <li> !?   [!][?][Enter]</li>
  <li> ?!   [?][!][Enter]</li>
  <li> !!   [!][!][Enter]</li>
  <li> ??   [?][?][Enter]</li>
  <li></li>
  <li> +-   [+][-]</li>
  <li> +/-  [+][/]</li>
  <li> +=   [+][=]</li>
  <li> =    [=][Enter]</li>
  <li> -+   [-][+]</li>
  <li> -/+  [-][/]</li>
  <li> =+   [=][+]</li>
  </ul>

  <p><footer>Aktualisiert: Scid vs. PC 4.17 März 2016 </footer></p>
}

set helpTitle(D,Searches) "Suchen"
set helpText(D,Searches) {<h1>In Scid suchen</h1>
  <p>Scid kann unterschiedliche Sucharten durchführen. Die wichtigsten sind:
  <ul>
  <li><a Searches Header>Partiedatensuche</a> - nach Spieler, Ergebnis oder Datum</li>
  <li><a Searches Board>Suchen nach Partiestellungen</a> - passend für das aktuelle Brett</li>
  <li><a Searches Material>Material- und Mustersuche</a></li>
  <li><a Searches Move>Zugfolgen</a></li>
  <li><a CQL>CQL</a> Schachabfragesprache (Chess Query Language)</li>
  </p>
  <p>Suchaufgaben zeigen die Ergebnisse mittels Anpassung
  des <a Filter>Filters</a> für die zu suchenden
  Partien. Standardmäßig ist <b>Ignoriere</b> (Filter zurücksetzen)
  eingestellt, d.h., es wird die ganze Datenbank durchsucht. Man kann
  aber auch <b>Und</b> (beschränke Filter) oder <b>Oder</b> (zum
  Filter hinzufügen) einstelllen, was komplexe Suchaufgaben
  ermöglicht.
  </p>
  <p>Wenn mit einem Suchen nach Partiedaten, Brettstellungen und
  Material/Muster eine passende Partie geladen wird, dann wird
  automatisch die betreffende Partiestellung angezeigt (außer im
  unwahrscheinlichen Fall, daß die Stellung nach dem 255. Zug liegt,
  da dies einen Byte-Überlauf verursacht).
  </p>
  <p><i>Die meisten Suchen betreffen nur die Hauptfortsetzung einer
  Partie und nicht die Varianten.</i>
  <br>
  <br>
  <i>Stellungssuchen können auch mittels
  des <a Tree>Zugbaumfensters</a> durchgeführt wrden.</a>.</i>
  </p>

  <h3><name Header>Partiedatensuche</name></h3>
  <p>Diese Suche betrifft Informationen, die im Partiekopf gespeichert
  sind (wie Spielername, Datum usw.) oder den PGN-Text einer Partie.
  <br>Für eine erfolgreiche Suche müssen <b>alle Felder</b> passen.
  </p>
  <p>Die Namensfelder (Weiß, Schwarz, Turnier, Ort und Runde) passen
  auf jeden Text. Sie sind unabhängig von Groß-/Kleinschreibung und
  berücksichtigen keine Leerzeichen. Beispiel: <b>Michael</b> paßt auf
  viele Vor- und Nachnamen. Genauere Ergebnisse erhält man mit
  Platzhalterzeichen (<b>?</b> für ein Zeichen, <b> * </b> für
  null oder mehr Zeichen) und Einschließen in
  Anführungszeichen. Beispielsweise findet eine Suche nach dem
  Ort <b>USA</b> amerikanische Städte, aber auch <b>Lausanne SUI</b>,
  was vermutlich nicht das ist, was Sie wollten. <b>"*USA"</b>
  (beachten Sie die Anführungszeichen) findet die Orte, die auf USA
  enden. Ein anderes Beispiel: um nur Partien zu finden, die in Runde
  1 gespielt wurden, benutzen Sie <b>"1"</b>. Ohne die
  Anführungszeichen werden auch 10, 21 usw. gefunden.
  </p>
  <p>Wenn Sie nach einem bestimmten Spieler suchen (oder einem
  Spielerpaar) mit Weiß oder Schwarz und es spielt keine Rolle, mit
  welcher Farbe gespielt wurde, dann wählen Sie die Option <b>Farben
  ignorieren</b>.
  </p>
  <p>Eine Suche kann auch nach einem Anfangs- oder Schlußkommentar
  durchgeführt werden. Diese Suchen passen aber *nicht* auf versteckte
  Kommentare (d.h. solche, die mit '[’ beginnen und mit ']' enden).
  </p>
  <p>Und schließlich kann die Partiedatensuche auch verwendet werden
  für irgendeinen Text (mit Berücksichtigung von Groß-/Kleinschreibung
  und ohne Platzhalterzeichen) in der PGN-Darstellung jeder
  Partie. Man kann bis zu drei Textteile eingeben. Diese müssen für
  einen Fund in einer Partie alle vorhanden sein. Diese Suche ist sehr
  hilfreich in Kommentaren oder besonderen Kennzeichnungen
  (wie <b>Zeitüberschreitung</b> oder <b>Annotator</b>) oder für
  eine Zugfolge wie <b>Bxh7+</b> und <b>Kxh7</b> für ein Läuferopfer
  auf h7, das angenommen wurde. Diese Form des Suchens kann
  jedoch <i>sehr</i> langsam sein, da alle Partien, auf die weitere
  Kriterien zutreffen, für die Textteile dekodiert und eingelesen
  werden müssen. Deshalb ist es eine gute Idee, diese Suchen so weit
  als möglich zu begrenzen. Hier sind ein paar Beispiele. Um Partien
  mit einer Unterverwandlung in einen Turm zu finden, suchen Sie
  nach <b>=R</b> und setzen auch die Markierung <b>Umwandlungen</b>
  auf Ja. Wenn Sie nach den Zügen <b>Bxh7+</b> und <b>Kxh7</b> suchen,
  dann könnten Sie z.B. die Suche auf Partien mit dem Ergebnis 1-0 und
  mindestens 40 Halbzügen beschränken. Oder Sie führen eine
  Material-/Mustersuche durch, um Partien zu finden, in denen der
  weiße Läufer nach h7 zieht.
  </p>
  <p><i>Beachte - wenn eine Suche nach dem <a ECO>ECO</a>-Code
  durchgeführt wird, dann werden Partien, die keinen ECO-Code haben,
  ausgelassen.</i>
  </p>
  <p><i>Eine Suche nach besonderen PGN-Merkmalen (wie "Annotator")
  kann mittels <a Maintenance Tags>PGN-Markierungen entfernen</a> im
  Wartungsfenster (im Bereich Datenbankoperationen) durchgeführt
  werden.
  </p>

  <h3><name Board>Suchen nach Partiestellungen</name></h3>
  <p>Diese Suche findet Partien, die die aktuell angezeigte Stellung
  enthalten. Rochade- und <i>en passant</i>-Möglichkeiten werden
  hierbei nicht berücksichtigt.
  </p>
  <p>Es gibt vier verschiedene Stellungssuchen:
  <ul>
  <li> <b>Exakte Position</b> - beide Stellungen müssen auf jedem Feld übereinstimmen</li>
  <li> <b>Bauern</b> - die Bauernstruktur muß genau übereinstimmen,
  andere Figuren können beliebig plaziert sein</li>
  <li> <b>Linien</b> - die Anzahl der weißen und schwarzen Bauern in
  jeder Linie muß gleich sein, andere Figuren können beliebig plaziert
  sein</li>
  <li> <b>Material</b> - bei gleichem Material können Bauern und
  Figuren beliebig plaziert sein</li>
  </ul>
  <p>Die Bauernsuche ist nützlich für das Eröffnungsstudium anhand der
  Bauernstruktur. Bei einer Suche nach Linien und Material kann man
  ähnliche Stellungen in Endspielen finden.
  </p>
  <p>Um nach einer beliebigen Stellung zu suchen, setzen Sie sie im Menü
  <green>Bearbeiten--<gt>Stellungseingabe</green>, bevor Sie die Suche
  starten.
  </p>
  <p>Sie können angeben, daß die Suche Varianten berücksichtigt
  (anstatt nur die aktuellen Partiezüge zu untersuchen), indem
  Sie <b>Schaue in Varianten</b> auswählen. Dies kann die Suche jedoch
  verlangsamen, falls Ihre Datenbank viele Partien mit Varianten
  enthält.
  </p>

  <h3><name Material>Material-/Mustersuche</name></h3>
  <p>Diese leistungsfähige Funktion ist für das Finden von
  Mittelspiel- oder Endspielthemen hilfreich. Sie können Minimal- und
  Maximalwerte für jeden Materialtyp sowie Muster wie
  z.B. einen Läufer auf f7 oder einen Bauern in der f-Linie angeben.
  </p>
  <p>Eine Anzahl von üblichen Material- und Mustereinstellungen steht
  zur Verfügung wie z.B. Endspiele Turm gegen Bauer oder isolierte
  Damenbauern.
  </p>
  <p>Scid vs. PC ermöglicht Materialsuchen, die nur auf die
  Endstellung passen, obwohl diese Suchen nicht auf Partien passen,
  die keine normale Startaufstellung und <i>Nulllänge</i> haben.
  </p>
  <p><i>Hinweis - Die Geschwindigkeit der Mustersuche kann stark
  variieren und durch geschickte Einschränkungen verbessert
  werden. Wenn Sie beispielsweise für ein Partieende die
  Mindestzugzahl auf 20 setzen, dann können alle Partien mit weniger
  als 20 Zügen übersprungen werden.</i>
  </p>

  <h3><name Move>Zugfolgensuche</name></h3>
  <p>Die Zugfolgensuche ermöglicht es, nach bestimmten Zügen und
  Kombinationen zu suchen. Geben Sie die Spielzüge ins Eingabefeld ein
  und passende Stellungen werden dann gefunden. Zugkombinationen
  können unbegrenzt erweitert werden. Benutzen Sie das Zeichen '?' für
  einen beliebig passenden Zug.</p>
  <p>Benutzen Sie zum Beispiel <b>Rh8 ? R1h7</b>, um
  Turmverdoppelungen in der h-Linie zu finden.</p>
  <p>Die Option <b>Schachgebotstest</b> ermöglicht Zugeingaben in der
  Form <b>Qh7+</b> (oder <b>Rh8#</b>), aber diese Schachgebote
  verlangsamen die Suche ein wenig. Eine geeignete Wahl des
  <b>Zugrechts</b> kann die Suche beschleunigen.</p>

  <h3><name Settings>Sucheinstellungen speichern</name></h3>
  <p>Die Fenster für die Suchen nach Partieinformationen und
  Material-/Muster bieten eine Schaltfläche <b>Speichern</b>, die es
  ermöglicht, die aktuelle Sucheinstellung in einer Suchoptionsdatei
  ((<b>.sso</b>) zu speichern. Diese Datei wird geladen über das
  Menü <green>Suchen --<gt>Mit Suchoptionsdatei...</green>.
  </p>

  <h3>Suchzeiten und übersprungene Partien</h3>
  <p>Die meisten Suchen liefern eine Nachricht, die die benötigte
  Suchzeit und die Anzahl der übersprungenen Partien
  angibt. Eine <b>übersprungene</b> Partie ist eine, die von der
  Suche ausgeschlossen werden kann ohne ihre Züge zu
  dekodieren. Dies basiert auf der in der Indexdatei gespeicherten
  Information. Siehe für weitere Informationen die Hilfeseite
  zu <a Formats>Dateiformaten</a>.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.15 Juni 2015</footer></p>
}

set helpTitle(D,CQL) "CQL"
set helpText(D,CQL) {<h1>Schachabfragesprache CQL (Chess Query Language)</h1>
  <p>CQL ist eine leistungsstarke Sprache, die eine große Vielfalt an
  Suchen ermöglicht. Sie unterscheidet sich von normalen Scid-Suchen
  darin, daß sie auch detaillierte Kommentare zu passenden Partien
  hinzufügen kann.
  </p>
  <p><i>
  Schnelle und leistungsfähige Stellungsuchen können durchgeführt werden,
  indem man Felder mit Umschalt+Mausklick markiert und dann den
  CQL-Suchdialog öffnet.
  </p>
  <p>Wegen der kryptischen Natur von CQL sind Kommentare auf
  die Ablagedatenbank beschränkt. Sie müssen mit <b>Kommentare
  erlauben</b> aktiviert werden.
  </i></p><p>Wenn in der Ablagedatenbank Kommentare aktiviert sind,
  dann werden alle passenden Positionen mit <b>MATCH</b>
  kommentiert. Diese Kommentare können in nachfolgenden Suchen
  entfernt werden durch <b>Entferne passende
  Kommentare</b>. Zusätzlich überschreiben einige CQL-Filter und
  Schlüsselwörter (besonders <b>silent</b>) diese
  Schaltflächen. Andere CQL-Befehle lassen auch das Hinzufügen anderer
  Kommentare und die Bearbeitung von Varianten zu. Diese zusätzlichen
  Kommentare werden *nicht* mit der Entfernenschaltfläche beseitigt
  auch irgendwelche Kommentare in Varianten werden nicht entfernt.
  </p>
  <p>Es ist erwähnenswert, daß für viele einfache CQL-Suchen die
  gleichwertige eigene Scid-Suche (Partieinformation, Material, Muster
  usw.) viel schneller ist. CQL ist nicht für triviales Suchen
  optimiert - obwohl es selbstverständlich leistungsfähiger ist - und
  im Ergebnis können komplexe Suchen sehr langsam sein.
  </p>
  <p>Dank geht an Lewis Stiller und Gady Costeff für ihre innovative
  Arbeit an CQL.
<br>Eine ziemlich technische Dokumentation für ihre Sprache kann auf
  <url http://www.gadycosteff.com/cql>their CQL site</url> eingesehen
  werden.
  </p>

  <h3>Beispiele</h3>
  <ul>
  <li>cql() shifthorizontal shiftvertical flipcolor {ra8 rc8 Pb7} ;
  Finde alle Bauerngabeln mit zwei Türmen</li>
  <li>cql() flipcolor shifthorizontal countsquares 3 P[b2-7] ; Dreifachbauern
  <li>cql() flipcolor flip { next2 5 100 ((move from Q to up 1 Q move from Q to right 1 Q)+ {move from Q to up 1 Q}? ) } ; Damen'treppe'
  </ul>
  </p>

  <h3>Technisches</h3>
  <p>Diese Leistung ist nicht ausgereift. Sie verbraucht Speicher,
  ist in hohem Maße nichtwiedereinspringend (einige Fehler zerstören
  weitere Suchen bis ScidvsPC neu gestartet wird) und kann sich bei
  Partien mit <a Variations Null>Nullzügen</a> verschlucken.
  </p>
  <p>Einige Fehlermeldungen werden in der Statusleiste angezeigt,
  andere mehr im Detail auf der Kommandozeile (nur Linux und OS
  X). Entwickler können durch das Setzen der Variablen CqlShowLex,
  CqlShowParse und CqlDebug in tkscid.cpp mehr Informationen
  erhalten.
  </p>
  <p>Ein paar CQL-Schlüsselwörter, die in einem Scid-Kontext unsinnig
  sind, haben keine Wirkung. Die CQL-Kopfparameter <b>input</b>
  und <b>output</b> sind offensichtliche Kandidaten. Auch wird der
  CQL-Kopf <b>cql()</b> gewöhnlich leer sein, anders als das eigenständige
  CQL-Programm. Der <b>Sortierfilter</b> wurde einstweilen
  deaktiviert, er könnte später implementiert werden.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.19 Dezember 2017</footer></p>
}

set helpTitle(D,Filter) "Der Filter"
set helpText(D,Filter) {<h1>Der Filter</h1>
  <p>Scids Filter stellt eine Auswahl an Prtien aus der aktuellen
  Datenbank (oder PGN-Archiv) dar. Gefilterte Partien werden in
  der <a GameList>Partienliste</a> angezeigt.
  </p>
  <p>Der Filter wird häufig benutzt, um Suchergebnisse anzuzeigen.
  </p>
  </p><i>Verwechseln Sie nicht gefilterte Partien mit gelöschten
  Partien. Dies sind zwei <a GameList Del>verschiedene
  Dinge.</a></i>
  <p>Sie können auch alle Filterpartien einer Datenbank mit Hilfe
  des <a Switcher>Datenbankwechslers</a> in eine andere Datenbank
  kopieren.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.6 Oktober 2011</footer></p>
}

set helpTitle(D,Clipbase) "Die Ablagedatenbank"
set helpText(D,Clipbase) {<h1>Die Standarddatenbank</h1>
  <p>Zusätzlich zu der auf einer Festplatte physisch vorhandenen
  Datenbank bietet Scid eine temporäre Datenbank, die
  als <b>Ablagedatenbank</b> bezeichnet wird. Diese ist stets
  verfügbar und kann dafür benutzt werden, mit Hilfe des
  <a Switcher>Datenbankwechslers</a> Partien zwischen anderen
  Datenbanken auszuschneiden und einzufügen. Zusätzlich hat jede
  Datenbank eine Partie mit der Nummer 0 (Null), die als
  Hilfs-/Versuchs-/Testpartie dient.
  </p>
<h3>Benutzung</h3>
  <p>Die Ablagedatenbank ist hilfreich für das Zusammenfügen der
  Suchergebnisse von mehr als einer Datenbank oder um das Ergebnis
  einer Suche als separate Datenbank zu behandeln.
  </p>
  <p>Angenommen, Sie wollen sich auf einen Gegner vorbereiten und
  haben eine Datenbank durchsucht, so daß der <a Filter>Filter</a> nur
  Partien enthält, in denen der Gegner Weiß hatte. Sie können diese
  Partien in die Ablagedatenbank kopieren, indem Sie in
  der <a GameList>Partienliste</a>
  den <a Switcher>Datenbankwechsler</a> verwenden, um die Partien von
  der Datenbank zur Ablagedatenbank zu ziehen. Klicken Sie
  anschließend auf die Ablagedatenbank und öffnen Sie
  das <a Tree>Zugbaumfenster</a>, um das Repertoire des gegnerischen
  Spielers zu untersuchen.
  </p>
<h3>Anmerkungen</h3>
  <p>Sie können Partien von einer offenen Datenbank direkt zu einer
  anderen kopieren, ohne die Ablagedatenbank als Zwischenschritt zu benutzen.
  </p>
  <p>Die Ablagedatenbank kann nicht geschlossen werden. Der
  Menübefehl <green>Datei--<gt>Schließen</green> ist gleichbedeutend
  mit diese zu leeren über <green>Bearbeiten--<gt>Ablage leeren</green>.
  </p>
  <p>Partien in der Ablagedatenbank belegen den Arbeitsspeicher Ihres
  Rechners. Bitte denken Sie daran, wenn Sie eine große Anzahl an
  Partien kopieren.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.15 September 2015</footer></p>
}

set helpTitle(D,Variations) "Varianten"
set helpText(D,Variations) {<h1>Varianten</h1>

  <p>Eine Variante ist eine alternative Folge von Zügen an einem
  bestimmten Punkt in der Partie. Sie kann Kommentare und weitere
  Untervarianten enthalten.
  </p>
  <p>Die Schaltflächen <button tb_outvar 32> <button tb_invar
  32> <button tb_addvar 32> werden für das Heraus- und Hineingehen
  bzw. Hinzufügen der Varianten verwendet. Und im
  Menü <green>Bearbeiten</green> und im <a PGN>PGN</a>-Kontextmenü sind
  weitere nützliche Befehle enthalten.
  </p>
  <p><i>Wenn Sie in eine Variante hineingehen wollen ohne nach einer
  Bestätigung gefragt zu werden, dann verwenden Sie die mittlere
  Maustaste.
  </i></p>

  <h4>Variantenpfeile</h4>
  <p>Scid vs. PC hat anklickbare Variantenpfeile (aktiviert über das
  Menü <green>Optionen--<gt>Züge--<gt>Pfeile für Varianten
  anzeigen</green>). Damit dies aber funktioniert, muß zuerst
  das <b>Variantenfenster</b> deaktiviert werden
  (Menü <green>Optionen--<gt>Züge--<gt>Variantenfenster
  zeigen</green>).
  </p>

  <h4><name Paste>Variante einfügen</h4>
  <p>Diese Funktion (im Menü <green>Bearbeiten</green>) versucht, den aktuell
  ausgewählten Text als Variante hinzuzufügen. Es ist nicht sehr
  kompliziert, aber nützlich, wenn man <b>eine Zeile der
  MultiPV-Analyse</b> aus einer pausierenden Engine hinzufügt (MultiPV
  = multiple principal variations).
  </p>
  <p>
  <i>Siehe auch <a Variations Null>unten</a> bezüglich des Hinzufügens
  von Nullzügen.</i>
  </p>

  <h4>Tastaturkurzbefehle</h4>
  <p>Falls es zu einem Zug Varianten gibt, werden diese im
  Partieinformationsbereich angezeigt. Sie können eine Variante
  anklicken oder, wenn das <b>Variantenfenster</b> erscheint, "v"
  drücken, um in sie hineinzugehen. Das Setzen
  von <green>Optionen--<gt>Züge--<gt>Variantenfenster zeigen</green>
  zeigt automatisch dieses Fenster, wenn eine Variante gefunden
  wird.</p>
  <p>Im Variantenfenster kann man mit den Pfeiltasten hoch ↑/runter ↓
  eine Variante auswählen oder 0, 1, 2 usw. für jede Variante und dann
  Enter drücken. Zusätzlich geht "vv" in die erste Variante hinein.
  </p>
  <p>Um eine Variante zu verlassen, drücken Sie "z" oder die
  Pfeilaufwärtstaste ↑.
  </p>

  <h3><name Null>Nullzüge</name></h3>
  <p>Nullzüge werden benutzt, um für eine Seite einen Zug zu
  überspringen. Dies ist natürlich gegen die Regeln, sie sind aber
  eine sehr bekannte Idee und nützlich für die Analyse von unmittelbaren
  Drohungen Ihres Gegners.
  </p>
  <p>Nullzüge werden als "<b>--</b>" angezeigt und können durch Eingeben
  dieses Textes erstellt werden. Oder Sie benutzen die Maus, um einen
  Schlagzug <b>König x König</b> auszuführen. Dies ist nicht Teil des
  PGN-Standards. Wenn man also Partien nach
  PGN <a Export>exportiert</a>, dann kann Scid (neben anderen
  Möglichkeiten) Nullzüge in Kommentare umwandeln - für die
  Kompatibilität mit anderen Programmen.
  </p>
  <p><i>Einige andere Programme verwenden <term>Z0</term> als
  Nullzug. Scid importiert einen solchen Zug korrekt.</i></p>
  <p>Ein Aspekt taucht bei Engine-Analysen auf. Wenn Sie am Ende einer
  Partie oder Variante einen Nullzug haben, dann wird
  das <a Analysis>Analysefenster</a> hierzu keine weitere Variante
  hinzufügen. Stattdessen sollte man <b>zuerst einen Zug
  hinzufügen</b>. Dann können Varianten hinzugefügt werden. Dieser
  Hinweis gilt auch für die Funktion <a Variations Paste><b>Variante
  einfügen</b></a>.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.8 Juni 2012</footer></p>
}

set helpTitle(D,Comment) "Kommentareditor"
set helpText(D,Comment) {<h1>Der Kommentareditor</h1>

  <p>Mit dem <run
  ::commenteditor::Open><green>Kommentareditor</green></run> können
  Sie Kommentare und <a NAGs>Anmerkungen</a> hinzufügen. Er enthält
  auch ein kleines Schachbrett für das Zeichnen von Pfeilen
  (usw.). <i>Diese drei Bereiche können durch das Drücken der
  Schaltfläche <img bookmark_down> angezeigt bzw. ausgeblendet
  werden. Falls jedoch Abschnitte fehlen, versuchen Sie, die
  Fenstergröße zu ändern.</i> </p>

  <h3>Kommentare</h3>
  <p>Kommentare sind Texte, die zu einem bestimmten Zug gehören. Sie
  können Kommentare hinzufügen, indem Sie sie ins Eingabefeld eingeben
  (wo die Tastenkürzel Strg-A, Strg-Z und Strg-Y für das Verändern von
  Text verwendet werden können). Kommentare werden <b>automatisch
  gespeichert</b>, wann immer Sie in der Partie zu einer anderen
  Position gehen oder wenn Sie den Mauszeiger vom Kommentareditor
  wegbewegen.
  </p>

  <p>Kommentare können auch zu Beginn einer Partie oder Variante
  vorhanden sein. Um einen Kommentar <b>vor einer Variante</b>
  hinzuzufügen, gehen Sie zuerst zum ersten Zug in der Variante und
  dann einen Zug zurück, bevor Sie den Kommentar eingeben.
  </p>

  <p><i>Mit dem Fokus im Kommentareditor können Sie durch die Partie
  vorwärts und rückwärts gehen, indem Sie die Tasten Strg+links/rechts
  drücken. Strg-Enter speichert den Kommentar und schließt das
  Fenster.</i></p>

  <h3><name Annotation>Anmerkungssymbole</name></h3>
  <p>Scid verwendet den <a PGN>PGN-Standard</a> und <a NAGs>NAGs</a>
  für Anmerkungssymbole. Während die meisten Symbole als Ascii-Zeichen
  angezeigt werden (so wie "!" oder "+-"), müssen andere als passende
  numerische Werte angegeben werden (d.h., eine Zahl zwischen 1 und
  255). So bedeutet beispielsweise der NAG-Wert 36 "Weiß hat die
  Initiative". Er wird als "$36" im PGN-Fenster angezeigt.
  </p>
  <p>Die gebräuchlichsten Bewertungssymbole (!, ?, !!, ??, !? und ?!)
  können direkt vom Hauptfenster aus hinzugefügt werden, indem das
  Symbol, gefolgt von der Enter-Taste, getippt wird. Dies ist
  besonders nützlich, wenn Sie mit Hilfe der Tastatur
  die <a Moves>Partiezüge eingeben</a>.
  </p>

  <h3><name Diagrams>Diagramme</name></h3>
  <p>Zusätzlich zu den Textkommentaren kann Scid auch Farbsymbole und
  Pfeile auf das Schachbrett zeichnen. Sie können direkt auf das
  Hauptbrett gezeichnet werden. Detailliertere Zeichnungen können im
  Kommentareditor erstellt werden, indem man <img bookmark_down>
  drückt, um ein kleines Brett und Diagramme zu sehen bzw. zu
  verbergen.
  </p>

  <h4>Pfeile zeichnen</h4>
  <p>Pfeile können auf zwei Arten gezeichnet werden. Im Hauptbrett,
  während man die Strg-Taste gedrückt hält, auf das Startfeld klicken
  und dann auf das Zielfeld. Alternativ können im Kommentareditor
  durch Ziehen zwischen zwei Feldern Pfeile gezeichnet (und entfernt)
  werden.
  </p>

  <h4>Felder einfärben</h4>
  <p>Entsprechend halten Sie die Umschalttaste gedrückt und klicken
  ins Hauptbrett, um ein Feld einzufärben oder klicken Sie auf
  irgendein Feld im Kommentareditior, um die ausgewählte
  Farbe/Markierung hinzuzufügen.
  </p>
  <p>Die Kommentare zu diesen Diagrammen sind im PGN-Fenster als
  besondere %-Codes sichtbar, sie können aber durch Auswahl von
  "Feld-/Pfeilcodes verbergen" in den PGN-Fensteroptionen ausgeblendet
  werden.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21, Oktober 2019</footer></p>
}

set helpTitle(D,Crosstable) "Fenster Kreuztabelle"
set helpText(D,Crosstable) {<h1>Das Fenster Kreuztabelle</h1>
  <p>Die <run ::crosstab::Open><green>Kreuztabelle</green></run> zeigt
  die Turniertabelle (für die aktuelle Partie) im Format jeder gegen
  jeden, Schweizer System oder K.o.-System. Jede Partie, die bis
  zu <b>zwölf Monaten vor oder nach</b> der aktuellen Partie gespielt
  wurde, wird bei <b>identischer Turnierbezeichnung und Ort</b> als
  zum Turnier gehörend betrachtet.
  </p>
  <p><i>Für eine gute Kreuztabelle sollten <b>doppelte Partien</b> zum
  Löschen markiert sein und die Namen von Spielern, Veranstaltung
  und Ort sollten einheitlich geschrieben sein. Für weitere
  Informationen siehe <a Maintenance>Database Maintenance</a>.
  </i></p>

  <h4>Merkmale</h4>
  <p>Ein Klick auf ein Partieergebnis bringt ein Menü, von dem aus man
  eine Partie betrachten, laden oder zusammenfügen kann.
  </p>
  <p>Vom Menü im Kreuztabellenfenster aus können Sie die
  Turniereinzelheiten bearbeiten, die Tabelle im Text-, LaTeX- oder
  HTML-Format exportieren, die Sortierkriterien festlegen und weitere
  Optionen auswählen. Ein Rechtsklick in der Kreuztabelle zeigt das
  Menü.
  </p>

  <h4>Tabellenformate</h4>
  <ul>
  <li><b>Jeder gegen jeden</b> - Für Rundenturniere. Hat ein Limit von
  30 Spielern.</li>
  <br>
  <li><b>Schweizer System</b> - Für Turniere mit einer großen Anzahl
  an Spielern. Kann bis zu 200 Spieler und 20 Runden anzeigen. Scid
  verwendet bei jeder Partie das Merkmal "Runde", um eine
  Kreuztabelle nach Schweizer System zu erstellen, so daß Sie keine
  Partien sehen, wenn sie keine numerischen Rundenwerte enthalten.
  </li>
  <br>
  <li><b>K.o-System</b> - Zeigt Partieergebnisse Runde für Runde.</li>
  </ul>

  <h4><name tiebreak>Punktegleichstand</name></h4>
  <p>Beim Sortieren nach der Punktzahl werden Spieler mit gleicher
  Punktzahl nach zusätzlichen Kriterien sortiert. Diese
  sind <b>Sonneborn-Berger</b> für das System jeder gegen jeden
  und <b>Buchholz</b> für das Schweizer System. Optional können auch
  die Direktergebnisse der Spieler gegeneinander und die Gesamtzahl
  der gewonnenen Partien verwendet werden (in dieser Reihenfolge).
  </p>

  <h4>Weitere Optionen</h4>
  <ul>
  <li><b>Punktzahlen gruppieren</b> fügt eine Leerzeile nach
  Spielern mit gleicher Punktzahl ein.</li>
  <li><b>Farbinformation</b> zeigt w/b im Schweizer System. Dies
  zeigt an, ob der Spieler Weiß (w) oder Schwarz (b) hatte.</li>
  <li><b>Zeilenfarbe</b> schattiert jede zweite Zeile. Die Farbe
  kann im Menü <green>Optionen--<gt>Hintergrundfabe--<gt>Zeilenfarbe Kreuztabelle</green>
  gewählt werden.</li>
  </ul>

  <h4>Berechnung der Elo-Leistung</h4>
  <p>Um die Elo-Leistung und -Veränderung zu berechnen, benutzt Scid
  Algorithmen von
  <url http://www.fide.com/component/handbook/?view=article&id=172>FIDE
  handbook article 172</url> oder älteren Versionen dieses
  Artikels. Eine hierzu gehörende Diskussion kann bei
  <url http://www.chesschat.org/showthread.php?12161-Performance-ratings-models-for-100-and-0-scores>here</url>
  gefunden werden.
  </p>
  <p><i>Verglichen mit anderen Quellen haben Scids
  Bewertungsveränderungen kleine Diskrepanzen, weil die gegnerischen
  Durchschnittsergebnisse genommen werden. Wer in einer zuverlässigen
  Aktualisierung der Statistiken von Scid interessiert ist, findet den
  relevanten Code in Crosstable::RatingChange.
</i></p>

  <p><footer>Aktualisiert: Scid vs. PC 4.13 September 2013</footer></p>
}


set helpTitle(D,Switcher) "Datenbankwechsler"
set helpText(D,Switcher) {<h1>Der Datenbankwechsler</h1>
  <p>Der Datenbankwechsler am Fuß
  des <a GameList>Partienlistenfensters</a> liefert eine visuelle
  Rückmeldung über geöffnete Datenbanken. Es werden Name,
  Filterzustand und Symbol jeder Datenbank angezeigt. Die aktive
  Datenbank ist mit einem farbigen Hintergrund hervorgehoben. Das
  zweite Symbol von links ist eine Schaltfläche
  für <a Bookmarks>Lesezeichen</a>.
  </p>
  <p>Ein Rechtsklick auf eine Datenbank liefert ein Kontextmenü. Hier
  kann man <a Filter>Filteroperationen</a> durchführen, die Datenbank
  in den Nur-Lese-Zustand versetzen oder die Datenbank schließen. Es
  gibt auch ein Untermenü <green>Mehr</green>, wo man einen
  <a Tree>Zugbaum</a> oder die <a Tree Best>besten Partien</a>
  anzeigen lassen kann. Man kann hier auch das Datenbanksymbol
  ändern. Ein Klick mit der mittleren Maustaste versteckt die
  Datenbanksymbole oder zeigt sie wieder an.
  </p>
  <h2><name draganddrop>Ziehen und Fallenlassen</name></h2>
  <p>Zwei getrennte Formen des Ziehen und Fallenlassens sind möglich.
  <br> <br>
  * Dateien können vom Dateimanager in Windows, KDE oder Gnome
  geöffnet werden, indem man sie auf den Datenbankwechsler unterhalb
  der Partienliste fallen läßt (Dateien können auch in den
  Partieinformationsbereich und auf das Schachbrett fallengelassen werden).
  <br> <br> * Das Ziehen innerhalb des Datenbankwechslers von einer
  Datenbank zur anderen kopiert die gefilterten Partien. Dies ist ein
  wichtiger Weg, um innerhalb von Datenbanken Partien zu kopieren und
  zu verwalten. Das Kopieren zu Datenbanken (außer der
  Ablagedatenbank) erfordert eine Bestätigung. Dies kann aber im
  Kontextmenü des Datenbankwechslers ausgeschaltet werden.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.16, Januar 2016</footer></p>
}


set helpTitle(D,Finder) "Dateifinder"
set helpText(D,Finder) {<h1>Dateifinder</h1>
  <p>Mit <run ::file::finder::Open><green>Datei--<gt>Finder</green></run>
  können Sie das Dateisystem nach Scid-Dateien durchsuchen,
  Datensicherungen und andere Dateioperationen durchführen.
  </p>

  <p>Ein Doppelklick auf einen Dateinamen öffnet die Datei, während
  ein Rechtsklick ein Kontextmenü anzeigt, von dem aus Sie
  verschiedene Dateioperationen durchführen können:

  <ul>
  <li><term>Öffnen</term>  Öffnet die Datei.
  <li><term>Sicherungskopie</term>  Erstellt eine Kopie der Datei mit
  dem aktuellen Datum und Uhrzeit, die an den Dateinamen angehängt werden.</li>
  <li><term>Kopieren</term>  Kopiert die ausgewählte Datenbank an
  einen anderen Ort.</li>
  <li><term>Verschieben</term>  Verschiebt die ausgewählte Datenbank
  an einen anderen Ort.</li>
  <li><term>Umbenennen</term>  Benennt die ausgewählte Datenbank um.</li>
  <li><term>Löschen</term>  Löscht die ausgewählte Datenbank.</li>
   </ul>
  <p>Diese Funktionen sind besonders nützlich für si4-Datenbanken, die
   aus drei Dateien bestehen.
  </p>

  <h3>Unterverzeichnisse beachten</h3>
  <p>Dieses Auswahlkästchen veranlaßt Scid, Unterverzeichnisse
  rekursiv nach kompatiblen Dateien zu durchsuchen. Dies kann jedoch
  lange dauern, so daß Sie dies nicht für große Verzeichnisse tun
  wollen. Der Prozeß kann mit Drücken der Schaltfläche <b>Halt</b>
  abgebrochen werden.
  </p>

  <h3>Spalte Größe</h3>
  <p>Die Bedeutung dieser Spalte hängt vom Dateityp ab. Für
  Datenbanken und PGN-Dateien wird die Anzahl der Partien aufgeführt,
  bei EPD-Dateien ist es die Anzahl der Stellungen.
  </p>
  <p>Für alle Dateitypen mit Ausnahme der Scid-Datenbanken ist der
  Wert in dieser Spalte nur eine Schätzung (angezeigt durch '~'), die
  von den ersten 64 Kilobytes gelesen wird.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.8, April 2012</footer></p>
}


set helpTitle(D,Tmt) "Turnierfinder"
set helpText(D,Tmt) {<h1>Der Turnierfinder</h1>
  <p>
  Der <run ::tourney::Open><green>Turnierfinder</green></run> sucht in
  der aktuellen Datenbank nach Turnieren. Er fragt alle
  Datenbankpartien ab und sammelt Daten über gefundene Turniere.
  </p>
  <p><i>Zwei Partien werden als zum gleichen Turnier gehörend
  angesehen, wenn sie die gleichen Kennzeichen für Veranstaltung,
  Ort und Veranstaltungsdatum haben oder sie wurden innerhalb von drei
  Monaten gegenseitig gespielt.
  </i></p>
  <p>Die Turnierauswahlkriterien schließen die Anzahl der
  Spieler/Partien, das Datum, durchschnittliche Elo-Zahl und Land
  ein. Passen Sie diese Werte an und drücken <b>Aktualisieren</b>, um
  die neuen Ergebnisse zu sehen.
  </p>
  <p>Das Anklicken eines Turniers aktualisiert
  die <a Crosstable>Kreuztabelle</a>. Ein Rechtsklick lädt auch die
  erste Partie.
  </p>
  <h3>Turniere sortieren</h3>
  <p>Die Ergebnisse können nach Datum, Anzahl der Spieler, Anzahl der
  Partien, durchschnittliche Elo-Zahl, Ort, Veranstaltung oder
  Gewinner durch <b>Klicken auf einen Spaltentitel</b> sortiert
  werden.
  </p>
  <p>In Scid vs. PC 4.17 haben wir einen neuen Sortieralgorithmus
  implementiert. Die Sortierergebnisse sind nicht länger von der
  Listengröße abhängig.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.17 September 2016</footer></p>
}

set helpTitle(D,GameList) "Partienlistenfenster"
set helpText(D,GameList) {<h1>Das Partienlistenfenster</h1>

  <p>Das <run ::windows::gamelist::Open><green>Partienlistenfenster</green></run>
  zeigt alle gefilterten Partien der aktuell geöffneten Datenbank/PGN-Datei.</p>
  <p>Unterhalb der Partienliste sind verschiedene Schaltflächen und
  Eingabefelder und unten finden Sie den <a Switcher>Datenbankwechsler</a>.</p>
  <p>Ein Klick auf einen Partieeintrag wählt die Partie aus. Um
  mehrere Partien auszuwählen, verwenden Sie Strg+Klick und
  Umschalt+Klick. Ein Rechtsklick auf eine Partie/mehrere Partien
  zeigt ein Kontextmenü für verschiedene Befehle. Ein Doppelklick lädt
  eine Partie.</p>
  <p>Ein Rechtsklick auf einen Spaltentitel ermöglicht es, Spalten
  hinzuzufügen oder sie neu zu ordnen ("Hinzufügen" ordnet ebenfalls
  eine Spalte neu). Man kann auch den Spaltentext unterschiedlich
  ausrichten (links, rechts oder zentriert).</p>
  <p>Schnelles Suchen kann durch Texteingabe im Kombinationsfeld und
  Drücken der Enter-Taste oder durch Klicken auf
  die <b>Filter</b>-Schaltfläche erfolgen. Benutzen Sie mit dem Filter
  "+" als logisches "UND", z.B."Kasparov+Karpov". Analog erlaubt das
  Eingabefeld das Suchen nach einer besonderen Partie durch Angabe
  einer Zahl. Diese beiden Steuerelemente laden die Partie durch
  Drücken von Strg+Enter.</p>
  <p><i>Um Partien zu sehen, die mit der aktuellen Stellung
  übereinstimmen, aktivieren Sie im <a Tree>Zugbaumfenster</a> "Filter
  anpassen". Dies ändert auch die Spalte "Züge", die dann die
  nachfolgenden Partiezüge anzeigt. Über weitere Informationen zu
  Suchen und Filter siehe <a Searches>In Scid suchen</a> oder
  nachstehende Ausführungen.
  </i></p>

  <h3>Die Partienliste sortieren</h3>
  <p>Die Datenbank kann durch Klicken auf die
  Spaltenüberschriften <b>dauerhaft sortiert</b> werden. Das Sortieren
  kann nicht rückgängig gemacht werden und kann die Leistung des
  Suchens und des Zugbaums (geringfügig) beeinflussen. Für weitere
  Einzelheiten siehe <a Sorting>Datenbank sortieren</a>.
  </p>

  <h3><name Del>Gefilterte und gelöschte Partien</name></h3>
  <p>Scid hat zwei Ansichten über gelöschte Partien, was verwirrend
  sein kann.</p>

  <p>Die erste ist <b>gefilterte Partien</b>. Im Partienlistenfenster
  wird ein Rechtsklick auf einige Partien und Auswahl
  von <b>Löschen</b> diese Partien aus dem Filter entfernen. Sie
  verschwinden aus der Partienliste, sie können aber leicht wieder
  gesehen werden, indem man den Filter mit <b>Zurücksetzen</b> neu
  setzt. Das Filtern von Partien hat keine Auswirkungen auf die Datenbank.</p>

  <p>Andererseits werden <b>gelöschte</b> Partien nicht aus der
  Partienliste entfernt. Sie sind einfach nur als gelöscht markiert
  und es wird nichts weiter unternommen, bis die Datenbank komprimiert
  wird. Dann werden sie aus der Datenbank <b>dauerhaft
  gelöscht</b>. Dies kann über das <a Maintenance>Wartungsfenster</a>
  erfolgen.</p>
  <p><i>Die Partienliste löscht nur (bis zu) eine(r) Seite an Partien
  gleichzeitig. Das Löschen/Verändern ALLER gefilterten Partien
  erfolgt über das Wartungsfenster.</i></p>

  <p><i>Die Ablagedatenbank kann nicht komprimiert werden.</i></p>

  <h3>Die Schaltflächen</h3>
  <ul>
  <li><img tb_save> - ersetzt die aktuelle Partie</li>
  <li><img tb_bkm> - zeigt Lesezeichen</li>
  <li><img tb_gfirst> - lädt die erste Filterpartie</li>
  <li><img tb_gprev> - lädt die vorhergehende Filterpartie</li>
  <li><img tb_gnext> - lädt die nächste Filterpartie</li>
  <li><img tb_glast> - lädt die letzte Filterpartie</li>
  <br>
  <li><b>Datenbank</b> - Datenbankkomprimierung</li>
  <li><b>Aktuell</b> - hebt im Partielistenfenster die aktuell geladene Partie hervor</li>
  <li><b>Zurücksetzen</b> - setzt den Partiefilter zurück</li>
  <li><b>Invertieren</b> - negiert die Filterergebnisse</li>
  <li><b>Filter</b> - sucht/filtert den aktuellen Filter nach dem im Kombinationsfeld eingegebenen Text</li>
  </ul>
  </p>

  <h3>Anmerkungen</h3>
  <ul>
  
  <li>Die Spalte <b>Land</b> enthält aktuell die letzten drei
  Buchstaben des Turnierortes (wenn der drittletzte ein Großbuchstabe
  ist und ein Leerzeichen vorausgeht). Die Seite <a Maintenance
  Spellcheck>Rechtschreibprüfung</a> könnte hilfreich sein, um
  Ländernamen hinzuzufügen.</li>
  <li>Die Spalte <b>Züge</b> zeigt die Eröffnungszüge oder, falls
  der Zugbaum den Filter anpaßt, die nächsten Züge jeder Partie.</li>
  <li>Maximal 50 Kommentare werden aufgezeichnet/angezeigt.</li>
  <li>Die Elo-Werte in Klammern sind Schätzungen.</li>
  </ul>

  <h3>Weitere Funktionen</h3>
  <ul>
  <li>Drücken von Entf entfernt die ausgewählte(n) Partie(n) aus dem Filter.</li>
  <li>Strg+Entf - wechselt das Löschkennzeichen</li>
  <li>Strg+a - wählt alle sichtbaren Partien aus</li>
  <li>Strg+n - invertiert den Filter</li>
  <li>Strg+r - setzt den Filter zurück</li>
  <li>Strg+c - kopiert die Partie in die Ablagedatenbank</li>
  <li>Strg+v - fügt die Partie aus der Ablagedatenbank in die akuelle
  Datenbank ein</li>
  <br>
  <li>Die Spaltenbreite kann durch Ziehen der Spaltenränder verändert
  werden.</li>
  <li>Drücken der Mausradtaste verbirgt die Symbolleiste.</li>
  </ul>

  <h3><name Browsing>Partien durchsuchen und zusammen</name></h3>
  <p>Aus dem Kontextmenü der Partienliste können Sie eine
  Partie <b>durchstöbern</b>. Das ist eine Partievorschau, die in
  einem separaten Fenster ohne Kommentare oder Varianten angezeigt wird.
  </p>
  <p>Aus dieser Vorschau heraus können Sie diese Partie als Variante
  mit der aktuellen Partie <b>zusammenfügen</b>. Das Zusammenfügen
  beginnt an der Stelle, an der sich die Partien unterscheiden
  (Umstellungen werden berücksichtigt). Sie können die letzte
  Zugnummer, die hinzugefügt werden soll, ändern, je nachdem, ob Sie
  die ganze Partie oder nur ihre nächsten paar Züge hinzufügen wollen.
  </p>
  <p><i>Die Brettgröße kann mittels Strg+Mausrad oder
  Strg+Umschalt+Links-/Rechtspfeil verändert werden.</i></p>
  <p><i>Die aktuelle Partienliste kann als Text exportiert werden über
  das Menü <green>Werkzeuge--<gt>Alles im Filter
  exportieren--<gt>Partienliste in eine Textdatei
  exportieren</green></i>.</p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21, August 2019</footer></p>
}


set helpTitle(D,Import) "Importfenster"
set helpText(D,Import) {<h1>Das Importfenster</h1>
  <p>Das <run importPgnGame><green>Importfenster</green></run> bietet
  Ihnen einen einfachen Weg, eine Partie aus einer anderen Anwendung
  oder einem Fenster nach Scid einzufügen.
  </p>
  <p>Der obere Rahmen ist für das Eingeben oder Einfügen der Partie im
  PGN-Format. Der untere Rahmen liefert Rückmeldungen über
  irgendwelche Fehler oder Warnungen.
  </p>

  <p><i>Scid bietet mehrere Wege, auf PGN-Partien zuzugreifen. Genauso
  wie beim Importfenster können Partien
  über <run ::file::Open><green>Datei--<gt>Öffnen...</green></run>
  geöffnet werden. Große PGN-Archive können Scid manchmal Probleme
  bereiten. Eine zuverlässigere Importmethode ist das
  Dienstprogramm <a Pgnscid>Pgnscid</a>.</i>
  </p>

  <h3>Die aktuelle Partie bearbeiten</h3>
  <p>Das Importfenster dient auch als ein Weg, um Änderungen oder
  Berichtigungen durchzuführen. Fügen Sie zuerst die aktuelle Partie
  mit <b>Aktuelle Partie einfügen</b> ein, bearbeiten die Züge und
  klicken dann, wenn Sie fertig sind, auf <b>Importieren</b>.
  </p>

  <h3>Anmerkungen</h3>
  <p>Scid erwartet PGN-Kopfdaten wie
  <ul>
  <li> <b>[Result "*"]</b> </li>
  </ul>
  vor irgendwelchen Zügen, aber ein Partiefragment wie
  <ul>
  <li> <b>1.e4 e5 2.Bc4 Bc5 3.Qh5?! Nf6?? 4.Qxf7# 1-0</b></li>
  </ul>
  einzufügen (ohne irgendwelche Kopfdaten), ist gewöhnlich in Ordnung.
  </p>

  <h3><name CCRL>CCRL-Importe/Rundennamensprobleme</name></h3>
  <p>Die Wertungslisten im Computerschach (Computer Chess Rating List,
  CCRL) vertreiben PGN-Archive, die Scid Probleme bereiten können. Sie
  benutzen das Feld "Round", um eindeutige Partienummern
  darzustellen. Scid unterstützt aber nur 262.143
  Rundenbezeichnungen. Vielleicht wollen Sie das Feld "Round" durch
  "Rd" oder ein anderes Merkmal ersetzen.
  </p>
  <p>Man kann dies mit dem Hilfsprogramm <b>sed</b> durchführen mit dem
  Befehl
  <ul><li>sed -e "s/\[Round /[Rd /" <lt> CCRL.pgn <gt>
  new.pgn</li></ul>Sed ist in Linux und OSX
  enthalten. Windows-Anwender könnten diese Version versuchen:
  <url http://sed.sourceforge.net/grabbag/ssed/sed-3.62.zip>http://sed.sourceforge.net/grabbag/ssed/sed-3.62.zip</url>.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.3, Februar 2011</footer></p>
}

set helpTitle(D,Export) "Partien exportieren"
set helpText(D,Export) {<h1>Partien exportieren</h1>
  <p>Befehle für das Exportieren von Partien in andere Formate sind im
  Menü <green>Werkzeuge</green> zu finden. Es werden vier Dateiformate unterstützt:
  <ul>
  <li><a PGN>PGN</a> das Standardformat für Schachpartien</li>
  <li><b>HTML</b> für Web-Seiten</li>
  <li><b>HTML und JavaScript</b> für interaktive Web-Seiten</li>
  <li><b>LaTeX</b> ein populäres Textsatzsystem</li>
  </ul>Zusätzlich kann auf Unix-Systemen LaTeX nach <a Export
  PDF>PDF</a> exportiert werden (siehe unten).
  </p>

  <h3><name Null>PGN-Kompatibilitätsprobleme</name></h3>
  <p>Scids si4-Datenbankformat erzwingt keine besondere
  Zeichenkodierung. Scid vs. PC exportiert jetzt PGN entweder nach
  Latin-1 oder Utf-8. Für mehr Information siehe den
  Abschnitt <a Encoding>PGN-Kodierung</a>.
  </p>
  <p>Der
  <url http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm>PGN-Standard</url>
  hat kein <a Variations Null>Nullzug</a>konzept. Falls Sie also
  Partien nach PGN exportieren, die Nullzüge enthalten, könnten andere
  Programme diese Partien nicht korrekt lesen.
  </p>
  <p>Um dieses Problem zu lösen, sollte man die Option <b>Nullzüge in
  Kommentare umwandeln</b> aktivieren. Falls Sie natürlich später die
  PGN-Datei unter Beibehaltung der Nullzüge zurückimportieren
  wollen, deaktivieren Sie diese Option.
  </p>
  <p>Scids Verwendung von Ascii-Texten (wie <b>+=</b>), um Anmerkungen
  darzustellen, ist ebenfalls gegen den PGN-Standard. Aus
  Kompatibilitätsgründen sollte die <b>Symbolische Notation</b>
  auf <b>$2 $14</b> gesetzt werden.
  </p>
  <p>Die Verwendung von '{' und '}' innerhalb von Kommentaren ist auch
  gegen den Standard. Scid vs. PC ersetzt diese beim PGN-Export durch runde Klammern.
  </p>
  <p>Scid vs. PC bietet auch die Option, Scid-Kennzeichen
  beizubehalten, einschließlich des Löschkennzeichens. Dies erlaubt
  es, Partien nach PGN zu exportieren, ein paar Textänderungen in der
  Datei durchzuführen (z.B.), und dann die Partien zurückzuladen unter
  Beibehaltung der Datenbankkennzeichen.
  </p>

  <h3>HTML mit JavaScript</h3>
  <p><i>Diagramme werden gezeichnet (in HTML- oder LaTeX-Formaten),
  wenn ein NAG-Kommentarzeichen <b>D</b> oder ein Kommentar (beginnt
  mit <b>#</b>) erscheint. Im Falle von HTML sollte das Verzeichnis
  mit den Punktgrafiken (Bitmaps) bei Ihrer exportierten Datei sein.
  </i></p>

  <p>Während der HTML-Export eine statische Datei erzeugt, die
  statische Schachbrettdiagramme enthalten kann, bietet dieses Format
  dynamisches HTML, das es erlaubt, interaktiv mit der Maus durch die
  Partie zu gehen.
  </p>
  <p>Dieses Format besteht aus mehreren Dateien, die in einer
  besonderen Struktur gespeichert werden müssen. Deshalb ist es
  ratsam, zuerst ein leeres Verzeichnis zu erstellen, das diese
  Dateien aufnimmt. Der Name der Hauptdatei kann angegeben werden und
  sie erhält die Erweiterung html (z.B. mygame.html). Diese Datei
  sollte im Webbrowser geladen werden. Das ganze Verzeichnis kann
  jedoch einfach zu irgendeinem Webserver hochgeladen werden.
  </p>

  <h3>LaTeX</h3>
  <p>Scid kann Partien in eine LaTeX-Datei exportieren. Die Partien
  werden in zwei Spalten auf einer Seite ausgegeben. Die Züge sind in
  figuriner algebraischer Notation mit richtiger Übersetzung der
  NAG-Symbole.
  </p>
  <p>Für weitere Informationen siehe <a LaTeX>LaTeX mit Scid
  benutzen</a>,
  </p>

  <b><name PDF>LaTeX nach PDF konvertieren</name></b>
  <p>Dies kann man auf Unix-Systemen mit dem Befehl <b>pdflatex</b>
  erreichen. Eine schnelle Konvertierung hat die Form
  <br>
  <ul><li>pdflatex -interaction batchmode mytexfile.tex</li></ul>
  </p>

  <h3><name EPD>EPD / FEN</name></h3>
  <p>Diese Funktion läuft durch den Filter und exportiert ausgewählte
  Partien in eine einfache EPD-Datei. Nur Partien mit
  Anfangsstellungen, die nicht standardkonform sind, oder solche, die
  in einen Halbzug laden (z.B. nach einer Materialsuche oder nach
  <b>Suche--<gt>Filterpartien mit Schlußstellung laden</b>), werden
  gespeichert. Beachte: nachfolgendes Laden dieser Datei könnte
  weniger Stellungen als (nicht standardkonforme) Partien anzeigen, da
  EPD-Dateien doppelte Stellungen verwerfen.</p>

  <p><i>Noch zu implemetieren: Unterstützung EPD-Zähler für Halbzüge
  und ganze Züge (hmvc und fmvn) mit Speichern und Laden... Dies würde
  aber die Verwendung von reinem FEN zerreißen.</i></p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21 Juni 2019</footer></p>
}

set helpTitle(D,Encoding) "PGN-Kodierung"
set helpText(D,Encoding) {<h1>PGN-Kodierung</h1>
  <h3>PGN-Kodierung und UTF-8</h3>
  <p>Scid vs. PC kann PGN nach den Zeichensätzen UTF-8 und Latin-1
  (ISO 8859/1) <a Export>exportieren</a>. Englischsprechende werden
  allgemein Latin-1 bevorzugen (der
  <url http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm>PGN</url>-Standard),
  aber andere mögen UTF-8 für eine bessere Wahl halten.
  </p>
  <p>Die zwingende Auswahl einer von diesen ist notwendig,
  weil <a Formats>si4</a> Schwächen bezüglich der
  Internationalisierung von Partiedaten hat. Spieler, Ort,
  Veranstaltungsname, PGN-Kommentare usw. können
  mit <b>irgendeiner</b> Zeichensatzkodierung gespeichert werden.
</p>

  <h3>Technische Einzelheiten</h3>
  <p>Diese Faktoren betreffen die Zeichenkodierung der Scid-Datenbanken.
  </p>
  <ul>
  <li>Ältere Linux-/Unix-Distributionen wurden mit der
  Zeichenkodierung Latin-1 als Voreinstellung installiert. Ältere
  MS-Windows-Versionen benutzten CP1252. Aber UTF-8 ist jetzt
  die <i>Standard</i>kodierung sowohl für Linux als auch für
  Windows. Gegenwärtig interpretiert Scid PGN-Dateien als systemgemäße
  Kodierung ohne zu prüfen, ob dies korrekt ist.
  </li>
  <br>
  <li>Viele Anwendungen erstellen PGN-Dateien mit unpassendem
  Zeichensatz. Es ist nicht ungewöhnlich, daß eine PGN-Datei den
  erweiterten ASCII-Zeichensatz hat (z.B. CP850) oder UTF-8-kodiert
  ist, aber ohne das führende UTF-8-BOM (BOM = byte order mark). Wenn
  diese PGN-Dateien importiert werden, interpretiert Scid den Inhalt
  gemäß der Systemkodierung. Dies kann in Partien resultieren, die
  nicht sauber dargestellt werden.</li>
  </ul>

  <p>Der PGN-Export wird unter Verwendung eines Zeichensatzdetektors
  durchgeführt. Dieser Detektor untersucht den Textinhalt und
  konvertiert ihn entweder nach Latin-1 oder UTF-8 (abhängig von der
  Wahl des Benutzers). In vielen Fällen kann er sogar defekte
  Kodierungen in einen sauberen Zeichensatz umwandeln.</p>

  <p>Die Implementierung dieser Eigenschaft in Scid vs. PC ist auch
  ein wichtiger Schritt hin zur Unterstützung
  des <b>CIF-Archivformats</b>, das nur gültiges UTF-8 erlaubt. Der
  Zeichensatzdetektor wird für eine korrekte Umwandlung verwendet.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.15 Juni 2015</footer></p>
}

set helpTitle(D,LaTeX) "Scid und LaTeX"
set helpText(D,LaTeX) {<h1>LaTeX mit Scid benutzen</h1>

  <p>LaTeX ist ein reizvolles und umfassendes Dokumentationssystem. Es
  wird von Scid für die Vorschau von Spieler- und Eröffnungsberichten
  verwendet. Es ist aber schwierig zu installieren und zu benutzen.
  </p>

  <p><i>Scid vs. PC verwendet nicht mehr Chess12 für die
  LaTeX-Ausgabe. Die neue Skak-Implementation ist nahezu vollständig,
  aber nicht ganz. Es bleibt zu tun: Kommentare innerhalb von
  Varianten implementieren, Rochadediagramme und Hinzufügen einer
  "Zusammenfassen"-Option, die Diagramme und Ergebnisgrafiken
  ausblendet und den Partiekopf (auf halbe Seitengröße) beschränkt.
  </i></p>

  <h2>Installation</h2>
  Der Autor installierte texlive auf Linux Mint 17 (Ubuntu 14.04) und
  zusätzlich diese Pakete:
  </p>
  <ul>
  <li>latex-xcolor (xcolor.sty)</li>
  <li>texlive-games (xskak.sty)</li>
  <li>texlive-generic-extra, (lambda.sty) </li>
  <li>texlive-latex-extra (xifthem.sty)</li>
  <li>pgf (pgfcore.sty)</li>
  <li>lmodern (lmodern.sty)</li>
  <li>texlive-pstricks (pstricks-add.sty)</li>
  <li>texlive-xetex (xelatex)</li>
  </ul>

  <h2>PDF erstellen</h2>
  <p>LaTeX muß im Allgemeinen nach PDF konvertiert werden. Die
  LaTeX-Vorschaufunktion von Scid erledigt dies. Für ein manuelles
  Konvertieren nach pdf benutzen Sie den Befehl <b>xelatex
  datei.tex</b></p>

  <p>Die ältere Methode hierfür ist
  <ul>
  <li>latex file.tex     // dies erstellt eine Datei file.dvi</li>
  <li>dvi2ps file.dvi    // dies erstellt dann eine Datei file.ps</li>
  <li>ps2pdf file.ps     // dies erstellt eine Datei file.pdf</li>
  </ul></p>

  <h2>Anzeigeprogramm</h2>
  <p> Um die LaTeX-Vorschaumöglichkeiten für Eröffnungs- und
  Spielerberichte zu nutzen, wird empfohlen, einen PDF-Betrachter auf
  Ihrem System zur Verfügung zu haben. Kompatible Betrachter sind
  </p>
  <ul>
  <li><b>Linux</b> - Evince, Okular etc.</li>
  <li><b>OS X</b> - Adobe Acrobat Reader,  PDF Experts etc.</li>
  <li><b>Windows</b> - Adobe Acrobat Reader, Foxit Reader etc.</li>
  </ul>
  </p>

  <p>In Linux wird die von Scid erzeugte TeX-Ausgabe zuerst
  nach pdf konvertiert unter Benutzung von "pdflatex
  -interaction=nonstopmode" und anschließend vom Anzeigeprogramm
  geöffnet (Voreinstellung Evince).
  </p>

  <p>Sowohl die Erstellung als auch das Anzeigeprogramm sind
  in <run setExportText Latex><green>Optionen--<gt>Export--<gt>LaTeX</green></run> konfigurierbar.
  </p>
  <h2>Anmerkungen zu OS X</h2>
  <p>
  Ileano schreibt<ul>
  <li>On El Capitan ...  It is necessary to add in the LaTeX options "\usepackage{auto-pst-pdf}"
  , and  call the pdflatex tool  with "pdflatex -shell-escape myfile.tex".
  Also ...  add "PATH=$PATH:/Library/TeX/Root/bin/x86_64-darwin" to the startup scripts.</li></ul>
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.17, Sept 2016</footer></p>
}

set helpTitle(D,PGN) "PGN-Fenster"
set helpText(D,PGN) {<h1>PGN-Fenster</h1>

  <p>Dieser Abschnitt beschreibt, wie
  das <run ::pgn::Open><green>PGN-Fenster</green></run> zu benutzen
  ist.
  </p>

  <p><i>Andere Hilfethemen beinhalten <a BrowsingPGN>PGN-Dateien und
  Scid</a>, <a Export>Partien exportieren</a> und <a Import>Partien
  importieren</a></i>
  </p>

  <p><i>Die "portable Partienotation" (PGN - Portable Game Notation)
  ist ein üblicher
  <url http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm>Standard</url>
  für die Darstellung von Schachpartien. Eine PGN-Datei besteht aus
  zwei Abschnitten, einem Kopfbereich, der Kennzeichen wie [White
  "Kasparov, Gary"] und [Result "1/2-1/2"] enthält und einem
  Hauptteil, der die Partiezüge in algebraischer Notation (SAN,
  Standard Algebraic Notation) zusammen mit
  irgendwelchen <a Variations>Varianten</a>, <a NAGs>Kommentarzeichen</a>
  und <a Comment>Kommentaren</a> enthält</i>.
  </p>

  <h3>Allgemeine Benutzung</h3>
  <p>Das PGN-Fenster erlaubt das Navigieren durch die Partie. Ein
  Klick auf einen Zug springt zur betreffenden Stellung. Ein Klick auf
  einen Kommentar öffnet das Editorfenster (und genau wie im
  Hauptfenster kann man mit <b>Pfeiltasten</b> navigieren). Ein
  Rechtsklick zeigt ein Kontextmenü.
  </p>

  <h3><name ttf>Schachfiguren</name></h3>
  <p>Die Option <b>Schachfiguren als Symbole</b> (im
  Menü <green>PGN--<gt>Ausgabe</green>) zeigt kleine Schachfiguren
  anstelle von Buchstaben, um Figuren darzustellen. Diese Eigenschaft
  ist nur verfügbar, wenn Truetype-Schriften unterstützt werden und
  ScidChessStandard.ttf erfolgreich installiert wurde. Dies kann in
  einem kleinen Leistungsverlust resultieren.
  </p>

  <p>In <b>Microsoft Windows</b> werden die Schriften automatisch
  installiert. Sie sind aber solange nicht verfügbar, bis Windows den
  Pufferspeicher für Schriften aktualisiert hat. Falls sie nicht
  vorhanden sind, gehen Sie durch das Verzeichnis Windows\Fonts und
  doppelklicken auf die Scid-Schriften.
  </p>

  <p><b>OS X</b>-Anwender sollten die Schrift ebenfalls manuell
  installieren.</p>

  <p><url https://sourceforge.net/projects/scidvspc/files/support
  files/pgn_ttf_fonts.tgz/download>TTF-Schrift herunterladen</url>
  </p>

  <h3>Optionen</h3>
  <p>Das PGN-Menü enthält Optionen darüber, wie die Partie angezeigt
  wird. Einige von ihnen enthalten: farbige Darstellung oder reiner
  Text, kurzer Vorspann, tabellarische Darstellung
  und <b>Bildlaufleiste</b>.
  Persönliche Vorlieben für die <b>Farben</b> können ebenfalls
  eingestellt werden.
  </p>

 <p>Auf langsamen Rechnern kann das Abwählen der <b>farbigen
  Darstellung</b> die Geschwindigkeit erhöhen, jedoch mit reduzierten
  Eigenschaften. Sie können auch das Format der Kommentare und
  Varianten ändern, indem Sie sie für eine bessere Lesbarkeit auf
  einer eigenen Zeile eingerückt anzeigen lassen.
  </p>

  <h3>Das Kontextmenu</h3>
  <ul>
   <li><term>Variante löschen:</term> löscht die aktuelle Variante</li>
   <li><term>Als erste Variante setzen:</term> verschiebt die aktuelle
     Variante an die erste Position aller Varianten auf dieser Ebene</li>
   <li><term>Variante als Partiefortsetzung:</term> macht die
   aktuelle Variante zur Partiefortsetzung und kennzeichnet die
   momentane Hauptfortsetzung als Variante</li>
   <li><term>Entfernen Züge ab Anfang</term> löscht alle Partiezüge</li>
   <li><term>Entfernen Züge bis Ende</term> löscht alle Züge ab dem
   aktuellen Zug</li>
   <li><term>Entfernen Kommentare</term> löscht alle Kommentare</li>
   <li><term>Entfernen Varianten</term> löscht alle Varianten </li>
  </ul>

  <p><footer>Aktualisiert: Scid vs. PC 4.10, Juli 2013</footer></p>
}


set helpTitle(D,PTracker) "Figurenverteilung"
set helpText(D,PTracker) {<h1>Das Figurenverteilungsfenster</h1>
  <p>Die <term>Figurenverteilung</term>
  (Menü <green>Werkzeuge--<gt>Figurenverteilung</green>) ist ein
  Hilfsmittel, das die Bewegungen einer bestimmten Figur in allen Partien
  des aktuellen Filters aufzeichnet. Es erstellt einen "Fußabdruck",
  der anzeigt, wie oft jedes Feld von der Figur besucht wurde.
  </p>
  <p>Um die Figurenverteilung zu nutzen, stellen Sie zuerst sicher,
  daß der Filter diejenigen Partien enthält, an denen Sie interessiert
  sind, z.B. Partien, die eine bestimmte Eröffnungsposition erreicht
  haben oder alle Partien, in denen ein bestimmter Spieler Weiß
  hatte. Danach wählen Sie die zu beobachtende Figur und setzen
  weitere Optionen. Diese werden nachstehend erläutert. Anschließend
  drücken Sie die Schaltfläche <b>Aktualisieren</b>.
  </p>
  <p>Die aufgezeichnete Figurenbewegung wird auf zwei Arten angezeigt:
  ein grafischer "Fußabdruck" und eine tabellarische Übersicht mit
  einer Zeile an Daten pro Feld.
  </p>

  <h3>Die Auswahl der zu beobachtenden Figur</h3>
  <p>Die Schachfiguren werden unterhalb der grafischen Darstellung in
  der Grundstellung angezeigt. Eine einzelne Figur (wie weißer
  Springer auf b1 oder der schwarze Bauer auf d7) kann mit der linken
  Maustaste ausgewählt werden. Alle Figuren des gleichen Typs und
  gleicher Farbe (wie alle weißen Bauern oder beide Türme) können mit
  der rechten Maustaste ausgewählt werden.
  </p>

  <h3>Weitere Einstellungen</h3>
  <p>Der Zugnummernbereich legt fest, wann die Aufzeichnung in jeder
  Partie beginnen und enden soll. Der vorgegebene Bereich 1-20 (das
  heißt, die Aufzeichnung soll nach dem 20. Zug von Schwarz anhalten)
  ist für die Untersuchung von Eröffnungsthemen geeignet. Ein Bereich
  von beispielsweise 15-35 wäre besser, wenn man nach
  Mittelspieltrends suchen will.
  </p>
  <p>Es gibt zwei Arten der Statistik, die die Figurenbeobachtung
  erstellen kann:
  <ul>
  <li> <b>% der Partien mit Zug auf das Feld</b>: zeigt, welcher
  Anteil der gefilterten Partien einen Zug mit der zu beobachtenden
  Figur auf jedes Feld enthält. Dies ist die Voreinstellung und
  normalerweise die beste Wahl.
  <li> <b>% der Zeit auf jedem Feld</b>: zeigt den Zeitanteil der zu
  beobachtenden Figur, den sie auf jedem Feld verbracht hat.
  </ul>
  </p>

  <h3>Hinweise</h3>
  <p>Es gibt mindestens drei gute Anwendungen für die
  Figurenbeobachtung: Eröffnungsvorbereitung, Mittelspielthemen und
  Spielervorbereitung.
  </p>
  <p>Benutzen Sie für die Eröffnungsvorbereitung die
  Figurenbeobachtung mit einem geöffneten <a Tree>Zugbaum</a>. Durch
  die Verfolgung der Figuren können Sie in der aktuellen Eröffnung
  Trends erkennen wie Bauernvorstöße, Randspringer und wo die Läufer
  meistens plaziert sind. Sie mögen es nützlich finden den
  Zugbereich so zu setzen, daß nach dem aktuellen Zug in der Partie
  gestartet wird, so daß die Züge, die zur aktuellen Stellung führen,
  nicht in der Statistik mit auftauchen.
  </p>
  <p>Für Mittelspielthemen kann die Figurenbeobachtung nützlich sein,
  wenn der Filter so gewählt wurde, daß ein bestimmter ECO-Bereich
  (mit der <a Searches Header>Partiedatensuche</a>) oder vielleicht
  ein Muster wie weißer Isolani (mit der <a Searches
  Material>Material-/Mustersuche</a>) festgelegt wurde. Setzen Sie den
  Zugbereich auf etwas passendes (wie 20-40) und verfolgen Sie die
  Figuren, um beispielsweise Bauernvorstöße im späten Mittelspiel oder
  frühen Endspiel zu sehen.
  </p>
  <p>Für die Spielervorbereitung benutzen Sie die <a Searches
  Header>Partiedatensuche</a> oder
  das <a PInfo>Spielerinformationsfenster</a>, um alle Partien eines
  bestimmten Spielers mit einer Farbe zu finden. Die
  Figurenbeobachtung kann dann genutzt werden, um zu erkennen, wie
  wahrscheinlich der Spieler beispielsweise die Läufer fianchettiert,
  lang rochiert oder auf d5 oder e5 eine Bauernkette erstellt.
  </p>

  <p><footer>Aktualisiert: Scid 3.6.2, Dezember 2006</footer></p>
}


set helpTitle(D,Repertoire) "Der Repertoireeditor"
set helpText(D,Repertoire) {<h1>Der Repertoireeditor</h1>

  <p>Der Repertoireeditor wurde seit Scid vs. PC 4.2 entfernt.
  <br>Ähnliche und leistungsfähigere Funktioen stehen
  in den <a TreeMasks>Zugbaummasken</a> zur Verfügung.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.2, November 2010</footer></p>
}

set helpTitle(D,Tree) "Zugbaumfenster"
set helpText(D,Tree) {<h1>Das Zugbaumfenster</h1>

  <p>Das <run ::tree::Open><green>Zugbaumfenster</green></run> ist
  eine leistungsstarke Funktion in Scid. Es zeigt Informationen über
  die Züge von der aktuellen Stellung an in Form von Statistiken und
  eine farbige Balkengrafik, die die Weißsiege, Unentschieden und
  Schwarzsiege darstellt.
  </p>
  <p><i>Scids Baumsuche ist schnell wegen einer neuartigen Idee - wir
  suchen nach Partien, die diese Stellung nicht erreichen!
  </i></p>

  <h3>Einen Zugbaum öffnen</h3>
  <p>Man kann eine Datenbank öffnen und
  dann <b>Fenster--<gt>Zugbaum</b> auswählen, den
  Tastaturkurzbefehl <b>Strg-T</b> anwenden oder aus dem
  Dateimenü <b>Öffne Datenbank als Baum</b> wählen. Die letzte Methode
  bedeutet, daß Partien in einer Datenbank über den Zugbaum einer
  anderen Datenbank untersucht werden können.</p>

  <h3>Allgemeiner Gebrauch</h3>
  <p>Das Baumfenster zeigt Statistiken über den nächsten Zug, der aus
  allen Partien der aktuellen Datenbank ermittelt wurden. Zusätzliche
  Informationen werden über die Schaltfläche <button tb_info>
  angezeigt. Das Ergebnis wird immer aus der Sicht von Weiß
  berechnet. So bedeutet 100%, daß Weiß alles gewonnen hat und 0%
  bedeutet, daß Schwarz alles gewonnen hat. Partien ohne Ergebnis
  wirken sich nicht auf den Remisprozentsatz aus, sondern sind halb
  gewonnen/halb verloren.
  </p>
  <p>Ein Klick auf einen Zug fügt diesen der Partie hinzu. Ein Klick
  mit der mittleren Maustaste zeigt/verbirgt die Symbolleiste.
  </p>
  <p>Die Züge im Baumfenster können sortiert werden nach Zug
  (alphabetisch), ECO-code, Häufigkeit oder Ergebnis.
  </p>
  <p>Das Kontrollkästchen <b>Filter anpassen</b> ändert die
  Partienliste/den Filter, so daß nur Partien angezeigt werden, die
  auf die aktuelle Stellung passen. Sein Verhalten ist ein wenig
  kompliziert. Das Abwählen des Filterkontrollkästchens setzt den
  regulären Filter auf den <i>aktuellen</i> (angepaßten) Filter. Wenn
  man jedoch das Zugbaumfenster schließt, wird der reguläre Filter in
  den Zustand wiederhergestellt, wie er vor der Aktivierung des
  Kontrollkästchens war.
  </p>

  <h3><name Best>Fenster "Beste Zugbaumpartien"</name></h3>
  <p>Die Schaltfläche <button b_list> im Zugbaumfenster zeigt Partien,
  die auf die aktuelle Stellung passen.
  </p>
  <p>Normalerweise werden die höchstbewerteten Partien zuerst
  angezeigt. Durch Ändern der Schaltfläche "Sortiere" werden die
  Partien in ihrer normalen Datenbankreihenfolge gezeigt. Die
  Voreinstellung für diese Funktion kann im Menü der Zugbaumoptionen
  geändert werden.
  </p>
  <p>Man kann die Liste auf Partien mit einem bestimmten Ergebnis
  beschränken und auch die angezeigten Spalten durch Rechtsklick auf
  die Spaltenüberschriften ändern.
  </p>

  <h3>Zugbaummasken</h3>
  <p>Die Zugbaummasken bieten zusätzliche Informationen jenseits
  reiner statistischer Daten und können als eine transparente Schicht
  über dem aktuellen Zugbaum angesehen werden. Für weitere
  Informationen siehe <a TreeMasks>Zugbaummasken</a>.
  </p>

  <h3><name Lock>Das Zugbaumfenster sperren</name></h3>
  <p>Jedes Zugbaumfenster ist mit einer besonderen Datenbank
  verbunden. Das heißt, wenn mehrere Datenbanken gleichzeitig geöffnet
  sind, dann können mehrere Zugbaumfenster vorhanden sein. Wenn die
  Schaltfläche <term>Sperren</term> im Zugbaumfenster aktiviert ist,
  dann wird das Schließen dieses Fensters auch die zugehörige
  Datenbank schließen. Zusätzlich schließt dies auch das zugehörige
  Grafikfenster oder das Fenster mit den besten Partien. Wenn
  die <term>Sperren</term>-Schaltfläche nicht aktiv ist, dann läßt ein
  Schließen des Zugbaumfensters alle übrigen Fenster geöffnet.
  </p>
  <p>Beachten Sie, daß das Öffnen einer Datenbank als Baum aus dem
  Dateimenü heraus die Datenbank standardmäßig automatisch sperrt.
  </p>

  <h3><name Training>Training</name></h3>
  <p>Wenn die Trainingsschaltfläche <button tb_training> ausgewählt
  wird, dann wird Scid jedesmal, wenn Sie einen Zug machen,
  willkürlich einen Zug ausführen. Der von Scid gewählte Zug hängt von
  den Datenbankstatistiken ab, so daß ein Zug, der in 80% der
  Datenbankpartien gespielt wurde, von Scid mit einer
  Wahrscheinlichkeit von 80% gewählt werden wird. Das Einschalten
  dieser Funktion mit verstecken (oder auf Symbolgröße verkleinern)
  des Zugbaumfensters und Eröffnungen gegen eine große Datenbank
  spielen ist ein guter Weg, um die Kenntnisse Ihres
  Eröffnungsrepertoires zu testen.</p>

  <h3>Zwischenspeicherung für schnellere Ergebnisse</h3>
  <p><i>Der Zwischenspeicher des Zugbaumes ist nicht mehr so wichtig
  wie früher, da Scid jetzt über eine Baumfunktion verfügt, die
  unterbrochen werden kann.</i></p>
  <p>Scid unterhält einen internen Zwischenspeicher über die
  Zugbaumergebnisse. Dies ermöglicht dem Zugbaumfenster eine viel
  schnellere Aktualisierung, wenn die aktuelle Stellung im
  Zwischenspeicher ist. Die Konfiguration dieser Funktion erfolgt über
  das Menü des Zugbaumfensters.
  </p>
  <p>Dieser Zwischenspeicher kann mit dem Befehl <b>Cache-Datei
  sichern</b> für zukünftige Nutzung auf Festplatte geschrieben
  werden. Der Befehl schreibt den Zwischenspeicher in eine Datei mit
  der Erweiterung <b>.stc</b> im gleichen Verzeichnis wie die
  Datenbank. Man kann auch <b>Automatisch Cache-Datei sichern</b> wählen,
  um den Zwischenspeicher automatisch zu sichern, wenn die Datenbank
  geschlossen wird. Dies könnte dann nicht funktionieren, wenn Scid
  beendet wird bevor die Datenbank geschlossen wird.
  </p>
  <p>Der Befehl <b>Cache-Datei füllen</b> füllt den Zwischenspeicher
  mit Daten für rund hundert der häufigsten Eröffnungen.
  </p>
  <p><i>Die maximale Größe des Zwischenspeichers ist konfigurierbar
  und ist auf tausend Zeilen voreingestellt. Die Datei des
  Zwischenspeichers (.stc) ist frei verfügbar. Man kann sie ohne
  Auswirkung auf die Datenbank löschen und sie wird von Scid
  tatsächlich immer dann verworfen, wenn eine Aktion geschieht, die
  sie veralten lassen könnte, z.B. eine Partie hinzufügen oder
  ersetzen, die Datenbank sortieren oder die Zwischenspeichergröße
  verringern.
  </i></p>
  <p>Andererseits könnte man den Zwischenspeicher mit dem Inhalt einer
  Datenbank oder einer einzelnen Partie einschließlich aller Varianten
  füllen. Im Allgemeinen wird der Zwischenspeicher für eine ganze
  Datenbank nicht groß genug sein. In diesem Fall werden die weniger
  gebräuchlichen Zeilen verworfen. Diese Funktion ist nützlich, wenn
  Sie eine oder mehrere Repertoiredatenbanken haben, die als
  Dateneingabe dienen können.
  </p>

  <h3>Schneller/gründlicher Modus</h3>
  <p>Die Baumaktualisierung kann beschleunigt werden, wenn die
  Datenbank nach dem ECO-Code sortiert ist und dann komprimiert wird
  (siehe das <a Maintenance>Wartungsfenster</a>). Wenn dies einmal
  gemacht wurde (was eine gewisse Zeit benötigen kann), schalten Sie
  die Option <b>Schneller Modus</b> ein. Die Baumaktualisierung wird
  auf Kosten gewisser Ungenauigkeiten durchschnittlich zwanzig mal
  schneller sein. Die Partien, die nicht im aktuellen Filter enthalten
  sind, werden nicht berücksichtigt. Auch aktualisiert der schnelle
  Modus weder den Zugbaumzwischenspeicher noch werden Zugumstellungen
  berücksichtigt. Hierfür gibt es einen dritten
  Zugbaummodus. <b>Gründlicher und schneller Modus</b> gibt anfänglich
  eine Vorschau der Statistiken und führt anschließend eine langsame
  Aktualisierung durch. Für weitere Informationen siehe Pascals
  Kommentare.
  <br>https://sourceforge.net/p/scid/mailman/scid-users/thread/48103F94.1010408%40free.fr/
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21, Dezember 2019</footer></p>
}

set helpTitle(D,TreeMasks) "Zugbaummasken"
set helpText(D,TreeMasks) {<h1>Die Zugbaummasken</h1>
  <p>Das <a Tree>Zugbaumfenster</a> zeigt Informationen über alle Züge
  in der Datenbank, die von der aktuellen Stellung aus gemacht
  wurden. <b>Masken</b> fügen zusätzliche Informationen hinzu und
  können als durchsichtige Ebenen über dem Zugbaum vorgestellt werden,
  die Daten enthalten wie Kommentare über Züge oder Stellungen, eigene
  Bewertungen und eigenes Eröffnungsrepertoire.
  </p>
  <p>Sie werden in einer Maskendatei gespeichert (<b>.stm</b> - scid
  tree mask) und sind von jeder Datenbank unabhängig. Das heißt,
  einmal erzeugt, kann eine Maske mit jeder Datenbank verwendet
  werden, indem sie aus dem Menü der Zugbaummaske geladen wird.
  </p>
  <p>Wenn eine Maske geöffnet wird, ändert sich die Anzeige des
  Zugbaumfensters. Zuallererst werden alle in der Maske vorhandenen
  Züge violett hervorgehoben. Zusätzlich werden NAGs und Markierungen
  vor jedem Zug angezeigt und den Zug betreffende Kommentare werden
  dahinter angezeigt. Schließlich kann die aktuelle Stellung ebenfalls
  einen Kommentar enthalten.
  </p>
  <p><i>Die Datenbankunabhängigkeit der Masken macht diese für den
  Umgang mit Eröffnungsrepertoires zu einem sehr leistungsfähigen
  Werkzeug. Im Gegensatz zum traditionellen Weg der Eröffnungszüge
  haben Masken den Vorteil, Umstellungen transparent zu verarbeiten,
  einfach deshalb, weil sie auf den aktuellen Stellungen fußen anstatt
  auf einer Zugfolge, die zu diesen führt.</i>
  </p>

  <h3>Masken benutzen</h3>
  <p>Das Zugbaumfenster hat ein Maskenuntermenü, in dem Masken
  geöffnet oder erstellt werden (neben anderen Funktionen).
  </p>
  <p>Wenn einmal eine Maske geöffnet ist, können im Zugbaumfenster
  durch <b>Rechtsklick auf den Zügen</b> Kommentare, NAGs
  Markierungen (usw., siehe unten) hinzugefügt werden.
  </p>
  <p>Ganze Züge können während des Rechtsklicks
  durch <b>Gedrückthalten der Strg-Taste</b> markiert werden. D.h.,
  für die meisten Tätigkeiten werden alle *vorhergehenden* Züge auf diese
  Weise markiert. Die Ausnahme ist "Von Maske entfernen", was alle
  *nachfolgenden* Züge entfernt.
  </p>
  <p>Züge, die nicht im Zugbaum angezeigt werden, können der Maske
  über "Diesen Zug zur Maske hinzufügen" im Kontextmenü hinzugefügt werden.
  </p>
  <p>Vergessen Sie nicht, die Maske zu speichern! Sie werden hierzu
  aufgefordert, wenn Sie eine Maske schließen, die geändert wurde oder
  wenn das Zugbaumfenster geschlossen ist. Die zuletzt verwendete
  Maskendatei kann automatisch
  über <green>Zugbaum--<gt>Optionen--<gt>Automatisches Laden der
  Maske</green> geöffnet werden.
  </p>
  <p><i>Für ein Eröffnungsrepertoire könnte man in Erwägung ziehen,
  zwei Masken zu haben, eine für Eröffnungen mit Weiß und eine für
  Eröffnungen mit Schwarz.</i></p>

  <h3>Masken konfigurieren</h3>
  <ul>
  <li><term>Marker</term> (1 und 2) ermöglichen das Anhängen von zwei grafischen
    Markierungen an einen Zug. Sie sind hauptsächlich für den Umgang
    mit Eröffnungsrepertoires gedacht. Die verfügbaren Möglichkeiten sind:
   <ul>
   <li> <img ::rep::_tb_include> Zug in Repertoire aufnehmen</li>
   <li> <img ::rep::_tb_exclude> Zug aus Repertoire ausschließen</li>
   <li> <img ::tree::mask::imageMainLine> Hauptfortsetzung</li>
   <li> <img tb_bkm> Lesezeichen</li>
   <li> <img ::tree::mask::imageWhite> Weiß</li>
   <li> <img ::tree::mask::imageBlack> Schwarz</li>
   <li> <img tb_new> neue Zugfolge</li>
   <li> <img tb_rfilter> mit weiterer Analyse zu überprüfen</li>
   <li> <img tb_msearch> zu trainieren</li>
   <li> <img tb_help_small> zweifelhafte Zugfolge</li>
   <li> <img tb_cut> zu entfernen</li>
   <li> keine Markierung</li>
   </ul>
  </li>
  <br>
  <li><term>Farbe</term> Ermöglicht für eine persönliche Hervorhebung
  das Hinzufügen eines kleinen farbigen Feldes vor dem Zug. Um es
  wieder zu entfernen, wählen Sie wieder <b>Weiß</b>.</li>
  <br>
  <li><term>NAG-Code</term> NAG-Symbole sind die einfachsten
  Kommentarsymbole. Das Menü zeigt nur die NAG-Symbole, die für einen
  Zug sinnvoll sind (nicht für eine Stellung), was die folgenden
  möglichen Symbole ergibt: <term>!!, !, !?, ?!,?, ??, ~</term>
  </li>
  <br>
  <li><term>Zug kommentieren</term> fügt einen Textkommentar für den
  Zug/die Zugfolge hinzu. Ein Doppelklick auf Kommentare erlaubt
  einfaches Editieren. Beachten Sie, daß dort nur ein Teil der ersten
  Zugfolge erscheint, um eine gewisse visuelle Rückmeldung zu geben,
  daß Kommentare vorhanden sind. Der ganze Kommentar erscheint in
  einer Kurzinformation, wenn der Mauszeiger über die in Frage
  kommende Zugfolge bewegt wird.
  </li>
  <br>
  <li><term>Position kommentieren</term> kann verwendet werden, um für
  die aktuelle Stellung einen Kommentar hinzuzufügen. Dieser Kommentar
  wird oben im Zugbaumfenster angezeigt, wenn die kommentierte
  Stellung erreicht wird.
  </li>
  </ul>

  <h3>Maskensuchen</h3>

  <p><i>Es wird empfohlen, bei Maskensuchen das
  Kontrollkästchen</i> <b>Filter anpassen</b><i> zu aktivieren.</i>
  </p>
  <p>Die Maskensuchfunktion ermöglicht Suchen nach Kommentaren,
  Symbolen usw. Das Anwählen der Schaltfläche <b>Suchen</b> liefert
  eine Liste aller gefundenen Stellungen in FEN-Notation, gefolgt
  von dem in Frage kommenden Zug und Kommentar, falls vorhanden.
  </p>

  <h3>Maskenanzeige</h3>
  <p>Die Funktion der Maskenanzeige zeigt die aktuelle Maske im
  Linienstil. Ausgehend von der aktuellen Stellung werden alle
  nachfolgenden Züge in einen nichtfaltbaren Baum sortiert, um einen
  Überblick über die aktuellen Spielzüge zu geben, ähnlich zu dem, was
  in vielen Eröffnungsbüchern gefunden wird. Nicht alle Informationen
  werden angezeigt (Kommentare sind z.B. verkürzt, um in die Anzeige
  zu passen). Zusätzlich, da Masken auf Stellungen statt Zugfolgen
  arbeiten, können sie Wiederholungen (z.B. Umstellungen) enthalten,
  die nicht sauber in einer zeilenweisen Darstellung aufgeteilt werden
  können, d.h., diese Anzeige kann an einem gewissen Punkt
  abgeschnitten werden.
  </p>

  <h3>In Masken umwandeln</h3>
  <p>Eine Maske erstellen kann eine mühsame Aufgabe sein, besonders
  für komplexe Eröffnungsrepertoires. Wenn jedoch ein solches
  Repertoire als Scid-Datenbank oder als Anzahl von PGN-Partien zur
  Verfügung steht, kann Scid diese Informationen verwenden, um
  automatisch passende Masken zu erstellen.
  </p>
  <p>Zuallererst muß man diese Informationen in eine Scid-Datenbank
  laden. Falls diese Informationen schon als Scid-Datenbank zur
  Verfügung stehen, ist das so einfach wie sie zu öffnen. Falls eine
  PGN-Datei verwendet wird, sollte sie entweder in eine Scid-Datenbank
  importiert werden oder man verwendet die Ablagedatenbank, um sie
  temporär zu importieren (dann sollte man sicherstellen, daß diese vor
  dem Importieren leer ist.)
  </p>
  <p>Der nächste Schritt ist, den Zugbaum für die eben geöffnete
  Scid-Datenbank zu öffnen. Dann sollte eine neue Maske erstellt oder
  eine bestehende Maske geöffnet werden. <i>Diese Funktion kann
  genutzt werden, um verschiedene Datenbanken in einer einzigen Maske
  zu verbinden.</i>
  </p>
  <p>Jetzt kann die Maske automatisch mit dem Partieninhalt der
  Datenbank gefüllt werden. In diesem Prozeß werden Kommentare
  innerhalb der Partien in Zugkommentare in der Maske umgewandelt (um
  sie schließlich an die bestehenden anzuhängen). NAGs werden ebenso
  hinzugefügt. Um diesen Prozeß zu starten, kann man entweder <b>Mit
  Partie füllen</b> wählen, um die Maske mit dem Inhalt einer einzigen
  Partie zu füllen, oder <b>Mit Datenbank füllen</b>, um über alle
  Partien in der Datenbank zu gehen.
  </p>
  <p><b>Hinweis</b> Das Füllen einer Maske mit einer ganzen Datenbank
  kann sehr zeitraubend sein.
  </p>
  <p><b>Hinweis</b> Die Maske wird mit allen Zügen bis zum Partieende
  gefüllt einschließlich aller Varianten innerhalb einer
  Partie. Deshalb ist es vernünftig, für diesen Prozeß nur die
  Datenbanken zu verwenden, in denen Partien enden, sobald das
  Mittelspiel erreicht ist.
  </p>

  <p><footer>(Aktualisiert: Scid vs. PC 4.14, März 2015)</footer></p>
}


set helpTitle(D,Compact) "Datenbankkomprimierung"
set helpText(D,Compact) {<h1>Datenbankkomprimierung</h1>
  <p>Die Datenbankkomprimierung ist eine besondere Art
  der <a Maintenance>Wartung</a>, die eine Datenbank möglichst klein
  und effizient hält. Sie beinhaltet das Entfernen ungenutzten Platzes
  in ihren Dateien.
  </p>
  <p><i>Die Datenbankkomprimierung ist unumkehrbar. Nach der
  Komprimierung sind gelöschte Namen und Partien dauerhaft entfernt.
  </i></p>

  <h3>Namensdateikomprimierung</h3>
  <p>Mit der Zeit könnten Sie eine Datenbank finden, die Namen von
  Spielern, Veranstaltungen, Orten oder Runden enthält, die in keiner
  Partie mehr benutzt werden. Dies passiert häufig, wenn Sie
  Namensschreibweisen überprüfen. Die nicht verwendeten Namen
  verschwenden in der Namensdatei Platz und können Namenssuchen
  verlangsamen. Die Namensdateikomprimierung entfernt alle Namen, die
  nicht in irgendwelchen Partien verwendet werden.
  </p>

  <h3>Partiendateikomprimierung</h3>
  <p>Immer wenn eine Partie ersetzt oder gelöscht wird, bleibt in der
  Partiendatei (die größte der drei Dateien in einer Scid-Datenbank)
  verbrauchter Platz zurück. Die Partiendateikomprimierung entfernt
  diese gelöschten Partien.
  </p>
  <p>Eine Partiendateikomprimierung wird nach
  dem <a Sorting>Sortieren</a> einer Datenbank empfohlen, um die
  Ordnung der Partiendatei mit der sortierten Indexdatei konsistent zu
  halten.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.13, August 2014</footer></p>
}


set helpTitle(D,Maintenance) "Datenbankwartung"
set helpText(D,Maintenance) {<h1>Datenbankwartung</h1>
  <p>Die meisten Wartungsarbeiten an Scid-Datenbanken können
  im <green><run ::maint::Open>Wartungsfenster</b></run></green>
  durchgeführt werden.
  </p>
  <p>Die Arbeiten umfassen unter anderem <a Flags>Löschen (und andere
  Partiemarkierungen)</a>, <a Maintenance Spellcheck>Namenskorrekturen</a>,
  <a Compact>Komprimieren</a> und <a Sorting>Sortieren</a>.
  </p>
  <p><i>Die Funktionen
  <a Flags>Partiekennzeichen</a>, <a Compact>Komprimierung</a>
  und <a Sorting>Sortieren</a> sind gesondert beschrieben.
  </i></p>

  <h3><name Twins>Doppelt vorhandene Partien löschen</name></h3>
  <p>
  <run markTwins><green>Lösche Dubletten</green></run> ermöglicht das
  Entfernen von doppelt vorhandenen Partien, Es erkennt solche Partien
  und markiert eine Partie als gelöscht. Zwei Partien werden als
  Dubletten erkannt, wenn die Spielernamen und weitere Markierungen,
  die Sie angeben, exakt passaen. Wenn Sie die Option "die gleichen
  Züge" angeben (wird sehr empfohlen), dann muß jedes Paar die
  gleichen Züge haben: bis zur Länge der kürzeren Partie oder maximal
  sechzig Züge.
  </p>
  <p>Wenn Sie Dubletten ermittelt haben, ist es gute Praxis zu
  bestätigen, daß sie korrekt markiert wurden. Die Wahl "Filter auf
  Dubletten setzen?" gestattet eine einfache Überprüfung mittels des
  Fensters <b>Dublettenprüfer</b> (das automatisch erscheint). Hier
  werden Unterschiede in den Markierungen hervorgehoben und Scid
  vs. PC zeigt einen Vergleich von Partievarianten und Kommentaren.
  </p>
  <p>Benutzen Sie die Pfeiltasten, um sich durch die Partien
  weiterzubewegen sowie die Tasten "1", "2" und "t" für das Umschalten
  des Löschfeldes und "u", um bei beiden Partien das Löschkennzeichen
  zu entfernen.
  </p>
  <p><i>Um die Partien tatsächlich zu löschen, müssen Sie die
  Datenbank <a Compact>komprimieren</a>.</i>
  </p>

  <h3><name Editing>Namen bearbeiten</name></h3>
  <p>Der <run nameEditor><green>Namenseditor</green></run> ist ein
  Werkzeug, um ausgewählte Namen (z.B. Spielernamen) zu bearbeiten.
  </p>
  <p>Jeder eindeutige Name wird nur einmal in
  der <a Formats>Namensdatei</a> gespeichert, so daß die Änderung
  eines Namens tatsächlich alle seine Vorkommen ändert. Ebenso könnten
  einige Namen in der Namensdatei sogar nicht benutzt werden. Um
  solche Namen zu entfernen, führen Sie eine <a Compact>Komprimierung
  der Namendatenbank</a> durch.
  </p>
<p>Ein einzelnes Sternchen '*' kann benutzt werden, um
  auf <b>jeden</b> Namen zu passen. Diese globale Ersetzung ist nur
  für Veranstaltungs-, Ort- und Rundenbezeichnungen verfügbar - nicht
  für Spielernamen, Elo- oder Datumsangaben.
  </p>
  <p>Datums- und Turnierdatumsfelder müssen die Form JJJJ.MM.TT (Jahr,
  Monat, Tag) haben.
  </p>
  <p><i>Bitte seien Sie vorsichtig, wenn Sie den Namenseditor
  verwenden. Änderungen können nicht einwandfrei rückgängig gemacht
  werden, wenn der neue Name bereits existiert. Es gibt auch viele
  Sicherheitsmechanismen - die Verwendung von '*' oder '?' ist bei
  'Alle Partien in der Datenbank' nicht erlaubt.</i>
  </p>

  <h3><name Spellfile>Die Schreibkorrekturdatei</name></h3>
  <p>Die Schreibkorrekturdatei <b>spelling.ssp</b> enthält Informationen
  über Spielernamen, Titel, Geburts- und Todesdatum sowie
  Herkunftsland. <b>Bitte mit Vorsicht verwenden.</b> Die Namen
  könnten nicht einheitlich sein und die Anfangsbuchstaben von
  Spielernamen könnten nicht korrekt erkannt werden. Es ist auch
  möglich, die größere Datei <b>ratings.ssp</b> zu nehmen, die
  Elo-Werte und biographische Daten von der FIDE mit einschließt.
  </p>
  <p>Die Datei sollte bei Programmstart geladen werden. Sie kann auch
  <run readSpellCheckFile><green>manuell geladen</green></run> werden.
  <i>Aktualisierte Versionen sind von
  <url http://sourceforge.net/projects/scid/files/Player
  Data/>http://sourceforge.net/projects/scid/files/Player Data</url>
  erhältlich.
  </i></p>

  <h3><name Spellcheck>Prüfung der Schreibweisen</name></h3>
  <p>Scids Funktion der Schreibweisenprüfung wird benutzt, um Namen
  von Spielern, Turnierbezeichnungen, Orten und Runden für die ganze
  Datenbank zu vereinheitlichen. Um dies durchzuführen, muß die
  Schreibkorrekturdatei geladen werden (siehe oben).
  </p>
  <p>Wenn die Prüfung läuft, wird eine Liste mit vorgeschlagenen
  Korrekturen erstellt. Diese sollte durchgesehen und berichtigt
  werden, bevor die Korrekturen tatsächlich auf Festplatte geschrieben
  werden. <i>Die normalen Tastaturkurzbefehle für Kopieren, Ausschneiden,
  Einfügen, Rückgängig und Wiederherstellen können angewendet
  werden.</i>
  </p>
  <p>Das Format für jede Korrektur ist:
  <br><b>"Alter Name" <gt><gt>"Neuer Name"</b> (<b>N</b>) <b>Geburtsdatum</b>--<b>Todestag</b><br>
  Vor "Alter Name" darf kein Leerzeichen sein, "N" stellt die Anzahl
  der Partien dar, die auf den ursprünglichen Spielernamen passen.
  </p>
  <p>Man kann jede Korrektur durch Löschen verwerfen oder ein
  Leerzeichen oder sonstiges Zeichen am Zeilenanfang
  hinzufügen. Spielernamen, die <b>nur einen Familiennamen</b>
  enthalten, werden standardmäßig nicht berichtigt. Ebenso
  werden <b>mehrdeutige</b> Namensersetzungen nicht durchgeführt,
  sofern man nicht den mehrdeutigen Vorspann aus jeder Zeile entfernt.
  </p>
  <p>Eine Namensersetzung wird nicht durchgeführt in Partien mit Datum
  vor dem Geburtsdatum des Spielers oder nach dessen Tod - sofern
  Geburts- und Todesdatum nicht aus der Konvertierung entfernt werden.
  </p>
  <p>Für problematische PGN-Dateien kann es notwendig sein, reguläre
  Ausdrücke und einen Editor wie "vi" zu verwenden. Zum Beispiel - die
  ersten beiden Beispiele entfernen die vierstelligen Elo-Zahlen von
  den Spielernamen. Das letzte Beispiel entfernt von allen
  Markierungen nachfolgende Leerzeichen.
  <br>
  :%s/\(White .*\) *[[:digit:]][[:digit:]][[:digit:]][[:digit:]].*"/\1"/g
  <br>
  :%s/\(Black .*\) *[[:digit:]][[:digit:]][[:digit:]][[:digit:]].*"/\1"/g
  <br>
  :%s/ *"]$/"]/
  </p>

  <h3><name Ratings>Elo-Werte hinzufügen</name></h3>
  <p>Die Schreibkorrekturdatei <b>ratings.ssp</b> enthält
  Elo-/Datumsinformationen für gewertete Spieler. Die
  Schaltfläche <b>Elo-Zahlen hinzufügen</b> sucht Partien und fügt die
  passende Elo-Zahl <b>zum Partiedatum</b> hinzu. Es gibt auch die
  Option, bestehende Elo-Zahlen zu überschreiben.
  </p>
  <p>Die Schreibkorrekturdatei, die mit Scid geliefert wird, enthält
  keine Elo-Zahlen, die für diese Funktion benötigt wird. Es sollte
  stattdessen die größere Datei ratings.ssp verwendet werden.
  </p>
  <p><i>Partien mit bekannten Pseudonymen werden keine Wertungszahlen
  hinzugefügt. Sie mögen vielleicht zuerst die Prüfung der
  Schreibweisen durchführen, die Namen ändert, die Pseudonyme
  verwenden.</i>
  </p>


  <h3><name Cleaner>Der Bereiniger</name></h3>
  <p>Das <run cleanerWin><green>Bereiniger</green></run>fenster ist
  ein Werkzeug, um mehrere Wartungsaufgaben gleichzeitig
  durchzuführen. Sie können wählen, welche Aufgaben Sie durchführen
  wollen und Scid führt sie für die aktuelle Datenbank aus, ohne daß
  weitere Benutzereingriffe erforderlich sind. Dies ist besonders für
  große Datenbanken nützlich.
  </p>

  <h3><name Autoload>Automatisch eine Partie laden</name></h3>
  <p>Wenn eine Datenbank geöffnet wird, will man vielleicht, daß eine
  bestimmte Partie automatisch geladen wird. Benutzen Sie hierfür im
  Wartungsfenster im Bereich "Datenbankoperationen" die Schaltfläche
  "Automatisch Partie Nr. laden". <i>Hinweis: aufgrund der
  Konstruktion des si4-Dateikopfs liegt die obere Grenze bei
  Partienummer 16.777.214 (ungefähr 2^(8*3)).</i>
  </p>

  <h3><name Tags>Kommentare/Varianten entfernen</name></h3>
  <p><b>Mit Vorsicht verwenden</b> Das massenweise Entfernen von
  Kommentaren und Varianten kann nicht rückgängig gemacht werden.
  </p>

  <h3><name Tags>Zusätzliche Markierungen entfernen</name></h3>
  <p>Diese Funktion durchsucht die Datenbank nach besonderen
  PGN-Markierungen (so wie "Annotator"). Dann kann man diese entfernen
  oder den Filter anpassen, um die betreffenden Partien anzuzeigen.
  </p>

  <h3><name Check>Konsistenzprüfung</name></h3>
  <p>Diese Funktion führt Überprüfungen an jeder (Filter-)Partie durch.
  </p>
  <p>
  Jede Partie
  <br>
  * hat einen Indexeintrag
  <br>
  * wurde von der Festplatte gelesen
  <br>
  * und wurde dekodiert.
  </p>
  <p>Etwaige Fehler werden angezeigt.
  </p>

  <h3>Eine Datenbank reparieren</h3>
  <p>Im seltenen Fall, daß eine Scid-Datenbank beschädigt ist, könnte
  man versuchen, sie
  mit <green>Werkzeuge--<gt>Wartung--<gt>Inkonsistenzen
  beseitigen</green> zu reparieren. Die betreffende Datenbank darf
  nicht geöffnet sein. Scid wird dann sein Bestes versuchen, um die
  Datenbank in einen konsistenten und benutzbaren Zustand
  zurückzubringen.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.17, August 2016</footer></p>
}

set helpTitle(D,Sorting) "Sortieren einer Datenbank"
set helpText(D,Sorting) {<h1>Datenbanken sortieren</h1>
  <p>Scid hat eine schnelle und leistungsfähige Funktion für
  das <run makeSortWin><green>Sortieren einer
  Datenbank</green></run>. Es kann nach einzelnen Feldern
  (z.B. Datum, Namen und ECO-Codes) oder nach mehreren sortiert
  werden, bei dem das erste Feld die Priorität hat usw.
  </p>

  <p>Die verfügbaren Kriterien/Felder sind
  </p>
  <ul>
  <li> Datum (älteste Partien zuerst)
  <li> Jahr (wie Datum, aber es wird nur das Jahr verwendet)
  <li> Turnierbezeichnung
  <li> Ort
  <li> Land (letzte drei Buchstaben des Ortsnamens)
  <li> Runde
  <li> Name Weiß
  <li> Name Schwarz
  <li> Wertungszahl (Durchschnitt der Wertungszahlen von Weiß und
  Schwarz, höchste zuerst)
  <li> Ergebnis
  <li> Länge (Anzahl der ganzen Züge in der Partie)
  <li> ECO (<a ECO>Encyclopedia of Chess Openings code</a>)
  <li> Varianten (Anzahl der Varianten in der Partie)
  <li> Kommentare (Anzahl der Kommentare in der Partie)
  <li> Zufallsniveau
  </ul>

  <h3>Sortieren ist dauerhaft</h3>
  <p>Wenn Sie eine Datenbank sortieren, die nicht im Nur-Lesen-Zustand
  ist, werden die Ergebnisse sofort gespeichert und die <b>Reihenfolge
  der Partie ist dauerhaft verändert</b>. Wenn dies nicht gewünscht
  ist, dann setzen Sie die Datenbank zuerst
  im <a Maintenance>Wartungsfenster</a> in den <Nur-Lese-Zustand> oder
  Sie sortieren die Partien in der Ablagedatenbank.
  </p>
  <p>Beim Sortieren einer Nur-Lesen-Datenbank (oder eines PGN-Archivs)
  können die Ergebnisse nicht gespeichert werden und die Reihenfolge
  der Partien geht verloren, wenn die Datei geschlossen wird.
  </p>

  <h3>Leistungsfähigkeit der Datenbank</h3>
  <p>Wenn eine Datenbank sortiert ist, dann wird die Indexdatei
  geändert, aber die Partiendatei nicht (dies läßt die Datensätze der
  Partiendatei im Vergleich zur Indexdatei ungeordnet). Dies kann
  langsames <a Searches>Suchen </a> für <a Tree>Zugbaum</a>,
  Stellungen und Material/Muster zur Folge haben. Nach dem Sortieren
  sollte man die Partiendatei durch <a Compact>Komprimieren</a> neu
  organisieren, um eine gute Suchleistung zu behalten.
  </p>
  <p>Außerdem können nur Datenbanken, die nach <a ECO>ECO</a>-Codes
  sortiert (und anschließend komprimiert) sind, die <b>schnelle
  Zugbaumsuche</b> nutzen.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.10 August 2013</footer></p>
}

set helpTitle(D,Flags) "Partiekennzeichen"
set helpText(D,Flags) {<h1>Partiekennzeichen</h1>

<p>Partiekennzeichen sind Hinweise auf besondere Merkmale wie
  "brillantes Spiel" oder "Eröffnung Weiß" und werden verwendet, um
  Partien zu klassifizieren und um schnelles Datenbanksuchen zu
  ermöglichen. Es gibt <b>zwölf Benutzerkennzeichen</b> und <b>sechs
  definierbare Kennzeichen</b>.
  </p>

<p>Kennzeichen werden im <a Maintenance>Wartungfenster</a>
  gesetzt. Wählen Sie die gewünschte Markierung (durch Klicken auf
  "Eröffnung Weiß") und verwenden dann die Schaltfläche "Markiere
  aktuelle Partie". Scid vs. PC ermöglicht auch ein schnelles
  Markieren im Kontextmenü des Partienlistenfensters.
  </p>
  <p>Die möglichen Markierungen sind:
  </p>

  <ul>
  <li>W - Eröffnung Weiß</li>
  <li>B - Eröffnung Schwarz</li>
  <li>M - Mittelspiel</li>
  <li>E - Endspiel</li>
  <li>N - Neuerung</li>
  <li>P - Bauernstruktur</li>
  <li>T - Taktik</li>
  <li>Q - Damenflügel</li>
  <li>K - Königsflügel</li>
  <li>! - Glänzend</li>
  <li>? - Grober Fehler</li>
  <li>U - Benutzer</li>
  </ul>
  <p>Die definierbaren Kennzeichen (1 bis 6) haben bis zu sechs
  Buchstaben lange Bezeichnungen, die im Wartungsfenster geändert
  werden können.
  </p>

  <p>Sie können die <a Searches Header>Partiedatensuche</a>
  verwenden, um Partien mit einem bestimmten Kennzeichen zu finden,
  das gesetzt bzw. nicht gesetzt ist, oder Sie benutzen die
  Markierungen als Teil von komplexeren Suchvorgängen.
  </p>
  <p>Da alle Markierungen (außer Löschen und Taktik) keine besondere
  Bedeutung haben, kann man sie für jeden beliebigen Zweck
  verwenden. Sie könnten beispielsweise die Königsflügelmarkierung (K)
  für einen Bauernsturm am Königsflügel verwenden oder für starke
  Angriffe am Königsflügel oder auch für Endspiele mit allen Bauern
  am Königsflügel.
  </p>
  <p>Weitere Informationen über die Verwendung
  der <b>Taktikmarkierung</b> sind enthalten in
  <ul>
  <li><a Analysis Annotating>Taktische Übungen markieren</a> (setzt
  das T-Kennzeichen)
  <li><a FindBestMove>Menü Spielen--<gt>Training--<gt>Besten Zug
  finden</a> (wertet das T-Kennzeichen aus)
  </ul>

  <p><footer>Aktualisiert: Scid vs. PC 4.19, Jan 2018</footer></p>
}

set helpTitle(D,Analysis) "Analysefenster"
set helpText(D,Analysis) {<h1>Das Analysefenster</h1>

<p>Scid vs. PC hat leistungsstarke Schachanalysefunktionen. Mehrere
  Schachprogramme können gleichzeitig laufen. Sie können in
  einem <a Tourney>Computerturnier</a> gegenseitig antreten und
  Protokolldateien können innerhalb des Programms für eine
  leichtere <a Analysis Debugging>Fehlersuche</a> durchgesehen werden.
</p>

  <h3>Erste Schritte</h3>

<p>Ein paar Schachprogramme sind vorinstalliert, während weitere über
  das Fenster <a Analysis List>Analyse-Engine</a> hinzugefügt werden
  können (siehe unten).</p>

<p>Diese Programme können auf verschiedene Arten gestartet
  werden: durch <run ::startAnalysisWin F2><green>Drücken von
  F2</green></run>, F3 oder F4 oder aus dem
  Menü <green>Werkzeuge--<gt>Starte Engine</green>. Zusätzlich kann das erste
  Schachprogramm durch<b>Doppelklick in der Statusleiste</b> gestartet
  oder angehalten werden.</p>

<p>Die <b>Leertaste</b> startet bzw. beendet das
  Schachprogramm. Drücken der <b>Eingabetaste</b> fügt den besten Zug des
  Schachprogramms hinzu und <b>Strg+Eingabetaste</b> die ganze
  Variante. Die Tasten <b>1 bis 5</b> setzen den Variantenzähler des
  Schachprogramms (MultiPV, multiple principal variations).
  </p>

<p>Oben im Schachprogrammfenster sind einige nützliche
  Schaltflächen. Die <a Analysis Moves>Schachprogrammanalyse</a>
  belegt den meisten Platz und unten werden <a Analysis Info>zusätzliche
  Informationen</a> angezeigt (die verborgen sein können.
  </p>

  <p><i>Das Analyseergebnis hat drei Modi: kein Zeilenumbruch, mit
  Zeilenumbruch und verborgen. Diese werden durch Mittelklick im
  Analysefenster umgeschaltet.</i>
  </p>

  <h3><name Buttons>Schaltflächen</h3>
  <p>Oben finden Sie eine Leiste mit Schaltflächen
  <p>
  <ul>
  <li> <button tb_play 32> <b>Engine starten</b> / <button tb_pause
  32> <b>Engine anhalten</b>. startet bzw. hält das Schachprogramm an.
  <li> <button tb_addmove 32> <b>Zug hinzufügen</b> fügt der aktuellen
  Partie den besten Zug des Schachprogramms hinzu (Rechtsklick fügt
  die Bewertung des Programms hinzu).</li>
  <li> <button tb_addvar 32> <b>Variante hinzufügen</b> fügt die ganze
  Hauptvariante hinzu (Rechtsklick fügt eine zweite Variante hinzu,
  falls Multi-PV aktiviert ist).</li>
  <li> <button tb_addallvars 32> <b>alle Varianten hinzufügen</b> wenn
  das Schachprogramm MultiPV unterstützt, werden alle Varianten
  hinzugefügt.</li>

  <li> <button tb_annotate 32> <b>Automatisch kommentieren</b>
  (siehe <a Analysis Annotating>unten</a>).</li>
  <li> <button tb_lockengine 32> <b>Analyse anbinden</b> an aktuelle
  Stellung. Bewegen Sie den Mauszeiger über diese Schaltfläche, um für
  die gesperrte Analyse Statistiken zu sehen. Um diese Analyse nach
  einer Weile (während der Sie sich in der Partie weiterbewegt haben)
  der Partie hinzuzufügen, kehren Sie zu der gesperrten Stellung
  zurück, drücken Pause, entsperren die Analyse und fügen die Variante hinzu.
</li>
  <li> <button tb_coords 32> <b>Analysebrett anzeigen</b> zeigt ein
  kleines Hilfsschachbrett an. Wenn das Schachprogramm angehalten ist,
  zeigt dieses Brett die gesperrte Stellung. Ein Klick mit der
  mittleren Maustaste schaltet zwischen den Anzeigemodi um.</li>
  <li> <button tb_exclude 32> <b>Zug ausschließen</b> hilft, die
  Suchliste des Schachprogramms zu verfeinern (hauptsächlich nur
  UCI-Programme). Ein Bewegen des Mauszeigers über diese Schaltfläche
  zeigt die aktuell ausgeschlossenen Züge an.</li>
  <li> <button tb_cpu 32> <b>Niedrige CPU-Priorität</b> gibt dem
  Schachprogramm eine niedrige Priorität für die
  CPU-Disposition. Unter Windows laufen die Schachprogramme
  standardmäßig mit niedriger Priorität. Auf Unix-Systemen kann die
  Priorität nicht auf normal zurückgesetzt werden.</li>
  <li> <button tb_info 32> <b>Engine-Informationen anzeigen</b> zeigt
  im Analysefenster unten zusätzliche Informationen des
  Schachprogramms an (Stellungsbewertung, Suchtiefe, Anzahl der Knoten usw.).</li>
  <li> <button autoplay_off 32> <b>Partie beenden</b> (oder
  "Demo") läßt das Schachprogramm außerhalb der Partie
  weiterspielen (die Zeitverzögerung ist die gleiche wie beim
  automatischen Abspielen).</li>
  <li> <button tb_help 32> <b>Hilfeschaltfläche</b> (Rechtsklick
  zeigt das Engine-Protokoll).
  <li> <button tb_training 32> <b>Training</b> (siehe <a Analysis
  Training>unten</a>).</li>
<br>
  <li> Und nur für XBoard-Schachprogramme:</li>
  <li> <button tb_update 32> <b>Aktualisieren</b> veranlaßt das
  Schachprogramm, eine Statistikzeile im Format "stat01: time nodes
  ply mvleft mvtot mvname" anzuzeigen. Die Ergebnisse können in der
  Protokolldatei des Programms eingesehen werden.
  </li>
  </ul>
  </p>

  <h3><name Moves>Züge/Hauptvarianten</name></h3>
  <p>Jede Zeile im Haupttextfenster enthält eine
  <b>Information</b>, die vom Schachprogramm ausgegeben wird. Die
  erste Zahl ist die aktuelle <b>Suchtiefe</b>. Die nächste (mit
  vorangestelltem +/-) ist die <b>Zugbewertung</b>. Sie wird in
  Bauerneinheiten aus der Sicht von Weiß gemessen. Ein positiver Wert
  bedeutet, daß Weiß einen Vorteil hat, ein negativer Wert steht für
  Vorteil für Schwarz. Dann folgen die Züge, auch bekannt
  als <b>Hauptvarianten</b> oder <b>PV</b> (Principal Variation).</p>
  <p>Die meisten UCI-Schachprogramme ermöglichen es, sofort mehrere
  Züge zu analysieren (oder <b>Zugfolgen</b>). Wenn man
  diese <b>MultiPV</b>-Funktion nutzt, kann man die zweit- oder
  drittbesten (usw.) Fortsetzungen erkennen. Die beste Zugfolge wird
  immer zuoberst angezeigt und hervorgehoben. Wenn MultiPV unterstützt
  wird, kann das Auswahlfeld verwendet werden, um die Anzahl der
  angezeigten Hauptfortsetzungen festzulegen. In diesem Fall werden
  anstelle der Berechnungshistorie nur die resultierenden
  Hauptfortsetzungen angezeigt. Dieses Auswahlfeld ist nicht aktiv,
  wenn ein Schachprogramm diese Funktion nicht anbietet.
  </p>

  <h3><name Info>Zusatzinformationen</h3>
  <p>Unten gibt es einige weitere Informationen, die mit der
  Schaltfläche <button tb_info 32> angezeigt oder verborgen
  werden. Diese sind
  <br>
  <br><b>Tiefe</b>  Die Suchtiefe, die bei den
  Schachprogrammberechnungen bereits erreicht wurde (in Halbzügen).
  <br><b>Knoten</b>  Die Anzahl der für das aktuelle Ergebnis
  analysierten Stellungen (und die Anzahl der Stellungen pro Sekunde).
  <br><b>Zeit</b>  Die für die aktuelle Analyse verbrauchte Zeit.
  </p>

  <p>Zusätzliche Informationen können enthalten: die Zahl der Treffer
  in der Endspieldatenbank (TB hits), eine genauere Anzahl der Knoten,
  die pro Sekunde analysiert wurden (NPS), einen Hash-Wert und die
  laufende CPU-Auslastung.
  </p>

  <h1>Funktionen</h1>

  <h3><name Annotating>Partien kommentieren</name></h3>
  <p>Mit der Schaltfläche <button tb_annotate> (in der Werkzeugleiste
  des Analysefensters) können Partien automatisch analysiert
  werden. Diese Funktion fügt den Partien
  Bewertungen, <a Comment>Kommentare</a>, <a Moves
  Informant>Informatorkennzeichen</a> und beste Züge hinzu.

  <p>Es gibt auch die neue Möglichkeit, <b>verpaßte/kürzere
  Mattführungen</b> hinzuzufügen. Dies fügt alle verpaßten und
  kürzeren Mattzüge hinzu, die wenigstens ein paar Halbzüge kürzer
  als die "Tiefe pro Zug" sind (bei einer höheren Anzahl an
  Halbzügen sind die Hauptvarianten des Schachprogramms nicht
  immer zuverlässig). Schließlich kann die hinzugefügte
  Hauptvariante nicht vollständig sein, d.h. sie könnte nicht in
  einem Matt enden. Dies ist der Meldung des Schachprogramms "Matt
  in n" geschuldet, die aber nicht die ganze Zugfolge angibt, was
  gemeinhin eine Eigentümlichkeit der UCI-Programme ist.
  </p>

  <p><i>Die Kommentierungsschaltfläche wird nur
  im </i><b>ersten</b><i> Schachprogrammfenster angezeigt.
  </i></p>

  <p>Nach dem Konfigurieren der Optionen und Drücken von OK ist der
  automatische Abspielmodus aktiviert, die Aktualisierung des
  Zugbaumes ist abgeschaltet und das Schachprogramm beginnt mit seiner
  Analyse. Eine Variante und/oder eine Bewertung werden im weiteren
  Verlauf der Partie für jede Stellung automatisch hinzugefügt. Es
  werden nur Stellungen ab der aktuellen Position bis zum Partieende
  kommentiert, so daß Sie das Kommentieren für Eröffnungszüge
  überspringen können, indem Sie zu einer Mittelspielstellung gehen,
  bevor Sie mit der Analyse starten. Ein erneutes Drücken der
  Kommentierungsschaltfläche beendet das automatische Kommentieren.
  </p>

  <p><b>Optionen</b>
  <ul>
  <li><b>Zugkontrolle</b> Legt fest, ob für jeden Zug nach
  Zeitdauer oder nach Berechnungstiefe (nur UCI) analysiert werden soll.</li>
  <li><b>Tiefe pro Zug</b> Anzahl der Halbzüge, die das
  Schachprogramm für die Analyse bei jedem Partiezug berechnen soll (nur UCI).</li>
  <li><b>Sekunden pro Zug</b> Bedenkzeit in Sekunden, die das
  Schachprogramm für die Analyse bei jedem Partiezug verwenden soll.</li>
  <li><b>Grobe Fehler Schwelle</b> Bewertung in Bauerneinheiten,
  die festlegt, ob es ein schlechter Zug ist oder nicht (d.h., 0,5
  bedeutet einen Wert von einem halben Bauern).</li>
  <li><b>Abschneiden Schwelle</b> Oberhalb dieses Schwellenwertes
  keine Varianten mehr hinzufügen, da die Partie gewonnen ist.</li>
  <li><b>Bewertung/Varianten hinzufügen</b> Wählen Sie, ob
  Bewrtungen und Varianten hinzugefügt werden sollen (Bewertungen
  können dann mit der <a Graphs Score>Wertungsgrafik</a> genutzt werden).</li>
  <li><b>Welche Seite</b> Wählen Sie, welche Seite kommentiert
  werden soll..</li>
  <li><b>Format für die Bewertung</b> Wählen Sie, wie die einzelnen
  Bewertungen aussehen sollen. Wenn im
  Menü <green>PGN--<gt>Ausgabe--<gt>Feld-/Pfeilcodes verbergen</green>
  aktiviert ist, werden die in Klammern gesetzten Bewertungen nicht
  angezeigt.</li>
  <li><b>Kommentarmarkierung hinzufügen</b> Speichert den Namen des
  Schachprogramms in den Partiedaten als "Annotator"-Kennzeichen.</li>
  <li><b>Varianten kommentieren</b> Bearbeitet Varianten rekursiv.</li>
  <li><b>Buch benutzen</b> Züge, die im angegebenen Eröffnungsbuch
  enthalten sind, werden übersprungen und die Kommentierung beginnt
  nach den Buchzügen.</li>
  <li><b>Kommentiere mehrere Partien</b> Kommentiert automatisch
  mehrere Partien und speichert sie.</li>
  <li><b>Eröffnungsfehler finden</b> Nur nach Eröffnungsfehlern suchen
  (bis zur angegebenen Zugzahl)</li>
  <li><b>Taktische Übungen markieren</b> Dies kann benutzt werden, um
  Übungen für die Trainingsfunktion <a FindBestMove>Finde den besten
  Zug</a> zu erstellen (nur UCI).</li>
 </ul>
  <p><i>Informatorwerte sind
  ebenfalls <run configInformant><green>konfigurierbar</green></run>.</i></p>

  <h3><name Training>Training</name></h3>
  <p>Training <button tb_training> ist eine dürftig implementierte
  Funktion Schachprogramm gegen Spieler und nur für das zweite und
  dritte Schachprogramm (in der Schachprogrammliste) verfügbar. Die
  Funktion <a ComputerGame>Gegen den Computer spielen</a> eignet
  sich viel besser.
  </p>

  <p>Von der aktuellen Stellung aus (die das Partieende sein muß)
  zieht das Schachprogramm zuerst und kann durch erneutes Drücken der
  Schaltfläche angehalten werden. Die Zeit für jeden Zug wird
  festgehalten und die Analyseergebnisse werden nicht aktualisiert,
  solange der Trainingsmodus eingeschaltet ist.
  </p>

  <h2><name List>Schachprogramme konfigurieren</name></h2>
  <p>Die Schachprogramme können im
  Fenster <run ::enginelist::choose><green>Werkzeuge--<gt>Analyse-Engine...</green></run> <b>konfiguriert</b>, <b>hinzugefügt</b>
  und <b>gestartet</b> werden.
  </p>

  <p>Scid vs. PC installiert standardäßig ein paar Schachprogramme. Um
  ein neues Programm hinzuzufügen, müssen Sie wissen,
  welcher <b>Befehl</b> und welche etwaigen <b>Parameter</b>
  erforderlich sind, ob es das Protokoll <b>UCI</b> oder <b>XBoard</b>
  benutzt und auch das Verzeichnis, in dem es laufen soll. Dies klingt
  kompliziert, aber es ist nicht zu schwierig ;-). Die Streitfragen
  sind vermutlich, welches Verzeichnis gewählt werden soll und ob es
  UCI ist oder nicht.
  </p>

  <h3>Einzelheiten</h3>
  <p>Viele Schachprogramme erfordern eine Initialisierung oder eine
  Eröffnungsbuchdatei in ihrem Startverzeichnis, um richtig zu
  funktionieren. Andere Programme wie Crafty und Phalanx schreiben
  Protokolldateien in das Verzeichnis, in dem sie starten, so daß hier
  Schreibzugriff erforderlich ist. Falls die Verzeichniseinstellung
  für ein Programm "." ist, startet Scid das Programm im aktuellen
  Verzeichnis.
  </p>

  <p>Wenn ein Programm nicht startet, versuchen Sie, seine
  Verzeichniseinstellung zu ändern. Um zu verhindern, daß
  Schachprogramme Protokolldateien in viele unterschiedliche
  Verzeichnisse schreiben, empfehle ich, die
  Schaltfläche <b>~/.scidvspc</b> auszuprobieren. Schachprogramme, die
  Eröffnungsbücher und/oder ini-Dateien brauchen, benötigen jedoch
  wahrscheinlich ihr eigenes Verzeichnis.
  </p>
  <p>UCI und XBoard (auch bekannt als WinBoard) sind zwei Protokolle
  für die Kommunikation mit Schachprogrammen und es ist notwendig,
  dieses Kennzeichen passend zu setzen. Wenn Sie nicht sicher sind,
  probieren Sie erst das eine, dann das andere, da nichts beschädigt
  wird. Einige Schachprogramme unterstützen beide Formate.
  </p>
  <p>Wenn ein Schachprogramm für den Start zusätzliche
  Parameterangaben braucht (z.B. ein spezielles Eröffnungsbuch), dann
  können diese im Feld <b>Parameter</b> angegeben werden. Bitte sehen
  Sie in der Dokumentation des Schachprogramms nach.
  </p>
  <p>Im Feld <b>Webpage</b> können Sie die Homepage des
  Schachprogramms angeben. Das wird dann bequem, wenn man nach
  Aktualisierungen oder nach neuen Entwicklungen sehen möchte. Drücken
  der Schaltfläche <term>Öffnen...</term> öffnet diese Seite im
  Webbrowser.
  </p>
  <p>Nachdem das Schachprogramm konfiguriert wurde, versieht Scid es
  vs. PC mit einem <b>Datumsstempel</b>, das dem Änderungszeitpunkt
  des Programms entspricht.</p>

  <h2><name UCI>UCI-Konfigurationsoptionen</name></h2>
  <p>UCI-Schachprogramme können durch Drücken der
  Schaltfläche <button uci> oder von <b>Konfigurieren</b> im Fenster
  der Schachprogrammkonfiguration eingerichtet werden, was dann ein
  Dialogfenster mit Schachprogrammparametern aufruft. Scid ignoriert
  allgemein die Optionen des Formats UCI_* gemäß
  dem
  <url http://wbec-ridderkerk.nl/html/UCIProtocol.html>UCI-Standard</url>. Außerdem
  ist die Unterstützung für Chess960 nicht aktiviert, weil die
  Implementierung sehr problematisch ist.</p>

  <h2><name Debugging>Fortgeschrittenes</name></h2>
  <p>Wenn ein Schachprogramm nicht startet oder abstürzt, könnte man
  seine Protokolldatei untersuchen. Es befindet sich im
  Protokollverzeichnis von Scid vs. PC und kann mittels Rechtsklick
  der Schaltfläche <button tb_help> oder über die
  Schaltfläche <button tb_annotate> im
  Fenster <run ::enginelist::choose><green>Analyse-Engine...
  </green></run> angesehen werden.  Die <b>Protokollgröße</b> ist die
  maximale Anzahl an Zeilen im Protokoll. Wenn man sie auf Null setzt,
  wird die Protokollierung insgesamt abgeschaltet.</p>

  <p>Der Standard-UCI-Befehl für <button tb_play> ist "rechne
  endlos". Dies kann aber in der <a Console>Konsole</a> von ScidvsPC
  über eine Änderung von <b>::uci::goCommand</b> geändert werden
  (z.B. "set ::uci::goCommand {go movetime 60}").</p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21, Juli 2019</footer></p>
}

set helpTitle(D,Tourney) "Computerturniere"
set helpText(D,Tourney) {<h1>Computerturniere</h1>

  <p>Automatische <run ::compInit><green>Computerturniere</green></run>
  können mit jedem beliebigen XBoard- oder UCI-Schachprogramm
  durchgeführt werden, das über das Fenster <a Analysis
  List>Analyse-Engine</a> eingerichtet wurde.
  </p>
  <p><i>Die Unterstützung für mehrere Schachprogramme ist gut, aber
  einige ältere XBoard-Programme funktionieren nicht
  richtig. Bezüglich weiteren Informationen über die Kompatibilität
  von Schachprogrammen siehe unten.
  </i></p>

  <h3>Erste Schritte</h3>

  <p>Bestimmen Sie zuerst die Einzelheiten Ihres Turniers. Die
  konfigurierbaren Abschnitte beinhalten: die <b>Anzahl der
  Schachprograme</b>, den <b>Veranstaltungsnamen</b>,
  die <b>Zeitkontrolle</b> und die <b>Spieldauer</b>. Wenn Sie die
  Zeitkontrolle pro Partie wählen, dann wird <b>Zeige Uhren</b> die
  dem Schachprogramm verbleibende Restzeit anzeigen.
</p>
  <p><b>Zeit pro Zug</b> ist die beste Zeitkontrollmethode. Das
  erste Auswahlfeld ist die Grundzeit für die Partie, das zweite
  gibt den Zeitzuschlag pro Zug an (beide Angaben sind in
  Sekunden). Schnellschachpartien können beispielsweise mit einem
  Zeitzuschlag von 0 oder 0,1 Sekunden angezeigt werden, aber auf
  langsameren Rechnern (besonders Mac OS X) können Schachprogramme
  dazu neigen, auf Zeit zu verlieren.
</p>
  <p><b>Zeit pro Zug</b> bietet einen großzügigeren Zeitanteil und
  läßt ein Schachprogramm nur dann aufgeben, wenn es über mehr als 175%
  seiner normalen Zugdauer ist.
</p>
  <p><b>Ständiges Berechnen</b> ermöglicht es den Schachprogrammen, in
  ihrer höchsten Spielstärke zu spielen. Für UCI-Programme wird
  Überlegen zugelassen (während die Gegenseite am Zug ist),
  XBoard-Programme werden auf eine feste Stufe
  eingestellt. <i>Ständiges Berechnen funktioniert nicht mit zu
  Partiebeginn anderen als normalen Startaufstellungen.</i>
</p>
  <p><b>Buch benutzen</b> UCI-Programme greifen auf
  PolyGlot-Eröffnungsbücher zu, die eine abwechslungsreichere
  Spielweise ermöglichen. Buchzüge werden hinsichtlich Häufigkeit
  gemäß ihrer Gewichtung ausgewählt.
</p>
  <p><b>Spielpaarungen</b> hat drei Optionen. Normal ist ein Spiel der
  Schachprogramme in einfacher Reihenfolge, während Carousel ein
  bekanntes System jeder gegen jeden ist. First-plays-others ist nicht
  jeder gegen jeden, sondern für das Testen von nur einem
  Schachprogramm.
</p>
<p>Scids grafische Oberfläche beansprucht mehr Ressourcen als andere
  Turnierverwaltungsprogramme, so daß es für Kurzzeitpartien gute
  Praxis ist, Programmprotokollierung und Zuganimationen abzuschalten
  und Uhren, Partieinformationen und PGN-Fenster zu verbergen.
<i>Die Programmprotokollierung wird im Fenster <a Analysis
  List>Analyse-Engine...</a>  ein- bzw. ausgeschaltet. Eine
  Protokollgrößeneinstellung von Null deaktiviert das
  Protokollieren.</i></p>
  <p>Partien <b>werden nach jeder Beendigung
  gespeichert</b>. Öffnen Sie deshalb eine geeignete Datenbank
  oder benutzen einfach die Ablagedatenbank. Wenn das Turnier
  beendet ist, drücken Sie "Schließen".
  </p>
  <p>Wenn sich eine Partie aus irgendeinem Grund hinzieht, gibt es für
  ein <b>manuelles Urteil</b> drei Schaltflächen. Die
  Schaltfläche <b>Partie anhalten</b> wirkt nicht sofort, sondern
  wartet erst darauf, daß noch der aktuell zu spielende Zug ausgeführt
  wird, bevor der weitere Fortgang angehalten wird.
  </p>
  <p><i>Wenn das Turnier zu Ende ist, schauen Sie in
  der <run ::crosstab::Open><green>Kreuztabelle</green></run> nach, um
  eine Ergebniszusammenfassung zu sehen. Uwe Klimmek hat eine
  alternative Computerturnierfunktion geschrieben, die im Verzeichnis
  "patches" des Quellcodes von Scid vs PC zu finden ist.
  </i></p>

  <h3>Anmerkungen</h3>
<p>Die grafische Oberfläche von Scid vs PC beansprucht die CPU stärker
  als andere Turnierverwaltungsprogramme. Es werden aber Anstrengungen
  unternommen, diese Zeit nicht in den Zeitrahmen eines
  Schachprogramms einfließen zu lassen. Außerdem nimmt die
  Uhrenanzeige eine kleine CPU-Zeitspanne in Anspruch, ungefähr
  0,0005 Sekunden pro Zug auf meinem 2600 MHz Core2Quad.
</p>
  <p> Für einige allgemeine Informationen über Computerturniere siehe
  diese Seite von ChessBase:
  <url http://en.chessbase.com/post/fair-play-in-engine-match>http://en.chessbase.com/post/fair-play-in-engine-match</url>.
</p>

  <h3>Schachprogramme</h3>
  <p>Der Autor hat ziemlich viele Schachprogramme unter Linux getestet
  und eine kleinere Anzahl unter Windows und Macs. Üblicherweise
  arbeiten neuere UCI-Programme besser als die älteren
  XBoard-Programme.:</p>

  <p>Komodo funktioniert gut, aber einige Versionen haben kaputte
  Zeitkontrollen für die "Zeit pro Zug". Einige Versionen von Stockfish
  beanspruchen die CPU sehr stark und brauchen vielleicht eine
  Reduzierung der Anzahl der "Threads". Frühere Versionen von Phalanx
  hatten keine Zeitkontrolle, aber sie funktionieren gut. Gnuchess
  könnte den Parameter "-x" benötigen, um im XBoard-Modus zu laufen
  (aber jüngere Versionen unterstützen auch UCI) und nur Versionen
  größer als 5.07 behandeln die Zeitkontrolle "Zeit pro Partie"
  einwandfrei. Faile scheint mit "Zeit pro Zug" nicht gut zu
  funktionieren. Arasanx UCI in der Version kleiner als 14.1
  funktioniert nicht mit "Ständiges Berechnen".
</p>

<p><footer>Aktualisiert: Scid vs. PC 4.20, Dezember 2018</footer></p>
}

set helpTitle(D,CalVar) "Variantenberechnung"
set helpText(D,CalVar) {<h1>Berechnung von Varianten</h1>
  <p>Die Übung <run ::calvar::config><green>Berechnung von
  Varianten</green></run> (auch als Stoyko-Übung bekannt) umfaßt das
  Analysieren einer komplizierten Stellung und das Finden und Bewerten
  von sovielen Fortsetzungen wie möglich.
  </p>
  <p>Die Konfiguration ist ziemlich einfach und umfaßt
  <ul>
   <li>* Das zu verwendende UCI-Schachprogramm</li>
   <li>* <b>Anfängliche Berechnungszeit</b> - Anzahl der Sekunden
   für das Schachprogramm für die Stellungsanalyse</li>
   <li>* <b>Berechnungszeit Varianten</b> - Anzahl der Sekunden für
   das Schachprogramm, um jede vom Anwender angegebene Variante zu
   analysieren</li>
  </ul></p>
  <p>Ein Klick auf Start beginnt die Übung.
  </p>

  <p>Nach der anfänglichen Berechnungszeit des Schachprogramms wird
  die Schaltfläche "Stellungsanalyse beendet" aktiv und Sie sollten
  auf das Brett klicken, um eine Variante anzugeben.
  <i>Das Brett reagiert nicht, aber die Züge werden stattdessen in das
  Textfeld eingegeben.</i>
  </p>
  <p>Um den Zug zu beenden, sollten Sie auf eines der
  NAG-Code-Schaltflächen klicken. Das Schachprogramm wird den Zug
  bewerten. Danach können Sie weitere gute Züge eingeben. Wenn Sie
  alle Züge angegeben haben, klicken Sie auf <b>Stellungsanalyse
  beendet</b>. Das Schachprogramm wird dann (etwaige) fehlende
  Fortsetzungen an die PGN-Partie anfügen.
  </p>

  <h4>Fehler</h4>
  <p>Diese Übung funktioniert nicht innerhalb einer vorhandenen
  Variante am Ende einer Partie. Vermutlich muß auch der
  Programmablauf verbessert werden.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.7, Januar 2012</footer></p>
}

set helpTitle(D,EPD) "EPD-Dateien"
set helpText(D,EPD) {<h1>EPD-Dateien</h1>

  <p>EPD-Dateien (Extended Position Description) sind ein allgemeiner
  Standard für Schachinformationen und enthalten Schachstellungen, bei
  denen jede mit einem bestimmten Text verbunden ist.</p>

  <p>Die Stellungen sind in einem leicht gekürzten FEN-Format. Der
  Text ist in freier Form, besteht aber normalerweise aus <a EPD
  opcodes>Opcodes</a> oder Feldern, die durch Semikolons getrennt
  sind, die aber in getrennten Zeilen im EPD-Fenster von Scid
  angezeigt werden.</p>

  <p>EPD-Dateien haben mehrere Anwendungszwecke, werden aber
  vermutlich am häufigsten für Sammlungen von Puzzles, Endspielstudien
  und taktischen Aufgaben benutzt.

  <p>Es können bis zu vier EPD-Dateien gleichzeitig geöffnet werden.
  Das Öffnen einer EPD-Datei mit doppelt vorhandenen oder fehlerhaften
  Stellungen wird diese stillschweigend löschen. Mangelhaft gebildete
  oder standardunübliche Operanden werden klaglos akzeptiert.</p>

  <h3>Durch EPD-Dateien navigieren</h3>

  <p>Um durch die Stellungen in einer EPD-Datei zu stöbern, klicken
  Sie einfach auf eine beliebige Stellung oderbenutzen Sie die Tasten
  <b>Strg+Pfeil abwärts</b>, <b>Strg+Pfeil aufwärts</b>,
  <b>Strg+Pos1</b> oder <b>Strg+Ende</b>. Diese Befehle bewegen zur
  nächsten bzw. vorhergehenden oder ersten bzw. letzten Stellung in
  der Datei, verwerfen etwaige Änderungen an der aktuellen Partie und
  setzen die Anfangsstellung der Testpartie.</p>

  <h3>EPD-Dateien analysieren</h3>
	
  <p>EPD-Dateien können im EPD-Fenster über das
  Menü <green><b>Werkzeuge--<gt>Stellungen analysieren</b></green>
  analysiert werden. Ein Dialog fragt nach der Engine, der Analysezeit
  und dem Analysemodus, der gestartet wird. Ein Anhalten der Engine
  beendet die Analyse.</p>

  <p>Die beiden Modi sind <b>Count Best Moves</b> (Beste Züge zählen)
  und <b>Annotate</b> (Kommentieren). Beide Modi bedeuten, daß mit
  einer Engine alle Stellungen analysiert werden. Bei "Beste Züge" -
  die vorhandenen Kommentare werden nach einem "bm"- oder "am"-Feld
  abgesucht - wird geschaut, ob diese mit der Computerbewertung
  übereinstimmen. Es wird dann bei der Ergänzung eine Anzahl von
  korrekten besten Zügen angezeigt. Der Modus "Kommentieren" speichert
  einfach die Engine-Bewertung in verschiedenen Opcodes, ohne daß der
  beste Zug geprüft wird. Die verwendeten Opcodes sind <b>acd</b>,
  <b>acn</b>, <b>ce</b>, <b>dm</b> und <b>pv</b>. Und zu guter Letzt
  können diese beiden Modi auch zusammen laufen. In diesem Fall wird
  ein zusätzlicher "Engine"-Opcode geschrieben. Dieser zeigt folgendes
  an: Test erfolgreich, fehlgeschlagen oder kein Ergebnis sowie das in
  der letzten EPD-Stellung gespeicherte Resultat.</p>

  <p><i>Der Kommentierungsmodus entfernt zuerst obige Opcodes aus
  allen Stellungen. Um irgendwelche durchgeführten Änderungen
  rückgängig zu machen, schließen Sie einfach das Fenster, ohne die
  Datei zu speichern.</i></p>

  <h3>Analysen einfügen</h3>

  <p>Wählen Sie <green><b>Werkzeuge--<gt>Analyse einfügen</b></green>
  (oder Strg-P), um eine einzelne Stellung zu kommentieren. Dies
  überschreibt etwaige vorherige Opcodes. Ein Drücken der Leertaste im
  Listenfeld startet bzw. stoppt das Analyseprogramm.</p>

  <h3>EPD-Opcodes entfernen</h3>

  <p>EPD-Dateien, die Sie im Internet finden, können Felder enthalten,
  die Sie nicht interessieren. Sie können viel Platz in der Datei
  verschwenden. Beispielsweise könnte eine EPD-Datei mit
  Computerbewertungen die Opcodes ce, acd, acn, pm, pv und id
  enthalten, aber Sie bräuchten nur die Felder ce und pv.</p>

  <p>Sie können aus allen Stellungen in der EPD-Datei den EPD-Opcode
  entfernen, indem Sie den Menübefehl <green><b>Werkzeuge--<gt>Opcodes
  entfernen</b></green> benutzen.</p>

  <h3>EPD-Felder sortieren</h3>

  <p>Die EPD-Spezifikation fordert, daß Opcodes sortiert sind. Nach
  einem Editieren von EPD-Feldern können Sie sie mit dem Menübefehl
  <green><b>Werkzeuge--<gt>Opcodes sortieren</b></green>
  sortieren.</p>

  <h3>Eine neue Stellung hinzufügen</h3>

  <p>Mit dem Menübefehl <green><b>Werkzeuge--<gt>Stellung
  hinzufügen</b></green> kann die im Hauptbrett aktuell enthaltene
  Stellung der EPD-Datei hinzugefügt werden. Man kann keine Stellung
  hinzufügen, die in der Datei bereits vorhanden ist. Ein solcher
  Versuch wählt einfach diese Stellung aus.</p>

  <p><i>Aus technischen Gründen gibt es keinen Befehl "Stellung
  löschen". Um dies zu erreichen, muß man die EPD-Datei manuell mit
  einem Texteditor überarbeiten.</i></p>

  <h3>Die tiefste Partiestellung finden</h3>

  <p>Man kann das Schachbrett zum tiefsten Halbzug in der aktuellen
  Partie aktualisieren, das auf eine Stellung in der aktuellen
  EPD-Datei paßt, indem man den Menübefehl
  <green><b>Werkzeuge--<gt>Tiefste Partiestellung finden</b></green>
  auswählt.</p>

  <h3>Die Statusleiste im EPD-Fenster</h3>

  <p>Die Statusleiste in jedem EPD-Fenster zeigt
  <ul>
  <li>- ob die Datei im Nur-Lesen-Zustand ist oder geändert wurde</li>
  <li>- die Anzahl der Stellungen in der Datei </li>
  <li>- gültige Züge ab der aktuellen Stellung, die zu einer anderen
  Stellung in dieser EPD-Datei führen</li>
  </ul>

  <h3>Weitere Hinweise</h3>

  <p>Scid vs. PC stellt eine einfache Funktion <a Export EPD>Export
  nach EPD</a> zur Verfügung.</p>
	
  <p>Semikolons als Text werden als "\s" gespeichert, um sie von
  Semikolonzeichen für das Feldende zu unterscheiden.</p>

  <p>Scid vs PC speichert Änderungen nicht länger automatisch, sondern
  mittels </i><green><b>Datei--<gt>Speichern</b></green> (oder
  control-s).</p>

  <p>Der aktuelle Speicherstatus ist in der EPD-Statusleiste
  sichtbar.</p>

  <h3><name opcodes>Standard von EPD-Opcodes</name></h3>

  <ul>
  <li> <b>acd</b> durchsuchte Tiefe (analysis count: depth
  searched)</li>
  <li> <b>acn</b> Zahl der untersuchten Knoten (analysis count: number
  of nodes searched)</li>
  <li> <b>acs</b> Suchdauer in Sekunden (analysis count: search time
  in seconds)</li>
  <li> <b>am</b> schlechte Züge (avoid move)</li>
  <li> <b>bm</b> beste Züge (best moves): Züge, die aus einem bestimmten
  Grund als am besten eingestuft werden</li>
  <li> <b>ce</b> (Centipawn evaluation) Bewertung in hundertstel
  Bauerneinheiten aus Sicht der
  <b>am Zug befindlichen Seite</b>. Beachten Sie, daß dies anders
  ist als im Analysefenster, das die Bewertungen in Bauerneinheiten
  aus der Sicht von Weiß zeigt. </li>
  <li> <b>cX</b> Kommentar (<b>X</b> ist eine Ziffer von 0 bis 9).</li>
  <li> <b>dm</b> Ganzzugzahl für direktes Matt.</li>
  <li> <b>eco</b> Eröffnungscode nach <a ECO>ECO</a></li>
  <li> <b>id</b> eindeutige Kennzeichnung für diese Stellung</li>
  <li> <b>nic</b> Eröffnungscode nach <i>New In Chess</i>.</li>
  <li> <b>pm</b> erster Zug der Hauptfortsetzung (predicted move)</li>
  <li> <b>pv</b> beste Partiefortsetzung (predicted variation)</li>
  </ul>

  <p> <url
  https://www.chessprogramming.org/Extended_Position_Description#Opcode_mnemonics>Chessprogramming
  Opcodes</url></p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21, Dezember 2019</footer></p>
}

set helpTitle(D,Email) "Das E-Mail-Fenster"
set helpText(D,Email) {<h1>Das E-Mail-Fenster </h1>
  <p><i>Diese Funktion wird nicht oft genutzt oder getestet. Man
  sollte sie auch nicht mit der E-Mail-Unterstützung in
  Scids <a Correspondence>Fernschach</a> verwechseln.</i></p>

  <p>Das <run ::tools::email><green>E-Mail-Fenster</green></run>
  bietet grundlegende Unterstützung für Korrespondenzpartien, die per
  E-Mail gespielt werden. Man kann direkt aus Scid heraus Nachrichten
  senden, aber Sie müssen noch die Spielzüge Ihrer Gegner manuell
  hinzufügen, da es keine Möglichkeit gibt, Ihr E-Mail-Verzeichnis zu
  untersuchen.
  </p>
  <p><i>E-Mail-Einstellungen sind datenbankabhängig und werden mit der
  Dateierweiterung .sem im selben Verzeichnis wie die si4-Datei
  gespeichert.</i></p>
  <p>Um die E-Mail-Verwaltung zu nutzen:
  <ul>
  <li><b>1)</b> Erstellen Sie die Partie(n) für Ihren Gegner in der Datenbank.</li>
  <li><b>2)</b> Im E-Mail-Verwaltungsfenster wählen
  Sie <b>Hinzufügen</b> und geben die Einzelheiten zu Ihrem Gegner an:
  Name, E-Mail-Adresse und die Partienummern (durch Leerzeichen
  getrennt) in der Datenbank.</li>
  <li><b>3)</b> Wählen Sie jedesmal <b>Sende E-Mail...</b> im
  E-Mail-Fenster, wenn Sie den Partien Spielzüge hinzugefügt haben und
  eine Nachricht versenden wollen.</li>
  </ul></p>
  <p>Wenn Sie eine E-Mail-Nachricht versenden, dann erstellt Scid
  eine Nachricht mit den Partien im PGN-Format <b>ohne</b>
  irgendwelche Kommentare oder Varianten, da Sie üblicherweise Ihren
  Gegner nicht Ihre Analysen sehen lassen wollen. Sie können die
  Nachricht vor dem Absenden editieren, um Zwangszüge oder sonstigen
  Text hinzuzufügen.
  </p>
  <p>Für jeden Gegner können Sie mehrere Partien haben, eine oder zwei
  ist sehr häufig. Beachten Sie, daß Scid nicht prüft, wenn sich die
  Partienummern ändern. Nach dem Einrichten der Angaben über Ihren
  Gegner sollten Sie deshalb Vorsicht walten lassen beim Löschen von
  Partien oder beim Sortieren Ihrer Datenbank, da dies die Partien neu
  anordnet und die Partienummern für jeden Gegner nicht mehr stimmend
  sein werden.
  </p>

  <h3>Konfiguration</h3>
  <p>Eine Kopie jeder von Scid abgesandten E-Mail-Nachricht wird in
  der Datei <b>~/.scid/scidmail.log</b> gespeichert.
  </p>
  <p>Scid kann E-Mail-Nachrichten durch Benutzung eines SMTP-Servers
  oder sendmail versenden. Verwenden Sie die
  Schaltfläche <b>Einstellungen</b>, um anzugeben, was Sie benutzen
  wollen.
  </p>

  <p><footer>Aktualisiert: Scid vs 4.12, Dezember 2013</footer></p>
}

set helpTitle(D,Reports) "Berichte"
set helpText(D,Reports) {<h1>Berichte</h1>
  <p>Es gibt zwei Arten von Berichten: Eröffnungs- und <a Reports
  Player>Spielerberichte</a>.
  </p>

  <h2><name Opening>Eröffnungsberichte</name></h2>
  <p>Scids <run ::optable::makeReportWin><green>Eröffnungsbericht</green></run>
  zeigt unterschiedliche Informationen über die aktuelle Stellung.
  </p>
  <p><i>Einige Funktionen sind von einer internen Beschränkung von
  10.000 Partien betroffen. Für große Berichte sind Statistiken
  unvollständig. Ein Klick auf einen Querverweis (beispielsweise) wird
  nicht *alle* passenden Partien anzeigen.
  </i></p>
  <p>Die <b>ersten Abschnitte</b> zeigen passende Partien und
  nachfolgende Partiezüge. Man sieht, ob eine Eröffnung beliebter
  wird, wenn sie viele Kurzremisen aufweist und welche (anderen)
  Zugfolgen benutzt wurden, um sie zu erreichen.
  </p>
  <p>Abschnitt 4 <b>Züge und Themen</b> zeigt die Zugfolgen, die zur
  Stellung führen und auch die Themen innerhalb der ersten zwanzig
  Züge. Um gezählt zu werden, muß eine Partie ein Thema in wenigstens
  vier Stellungen ihrer ersten zwanzig Züge aufweisen. Dies vermeidet
  ein kurzes Auftauchen eines Themas (wie z.B. ein Isolani, der nach
  seinem Entstehen sofort geschlagen wird), was dann die Ergebnisse
  verfälschen würde.
  </p>
  <p>Der letzte und längste Teil des Berichts ist
  die <b>Theorietabelle</b>. Wenn man den Bericht in eine Datei
  speichert, kann man wählen, nur die Tabelle, einen kompakten Bericht
  ohne die Tabelle oder den ganzen Bericht zu speichern. Die
  Querverweise (in rot) beziehen sich auf abweichende Partien.
  </p>
  <p><i>Die Theorietabelle hat standardmäßig eine Begrenzung von
  fünfhundert Partien (in den Berichtsoptionen konfigurierbar). Falls
  die Berichtsstellung öfter auftaucht, werden nur Partien mit der
  höchsten durchschnittlichen Elo-Zahl für die Erstellung der
  Theorietabelle verwendet.
  </i></p>

  <h4>Funktionen</h4>
  <p>Ein Klick auf das Brett dreht dieses um, ein Rechtsklick ändert
  seine Größe. Die meisten farbigen Abschnitte im Berichtsfenster
  sind anklickbar und lösen eine bestimmte Aktion
  aus. Beispielsweise wird ein Klick auf einen Partiehinweis diese
  Partie laden. Oder ein Klick auf ein Thema setzt den Filter für
  passende Partien (Hinweis des Übersetzers: die Suche mit diesem
  Filter erfolgt über das
  Menü <green>Suchen--<gt>Material/Muster</green>, im Bereich
  "Durchführung am aktuellen Filter" das Feld "UND (Beschränke
  Filter)" auswählen und auf "Suchen" klicken).
  </p>
  <p><b>Partien zusammenfügen</b> fügt die fünfzig besten Partien aus dem
  Eröffnungsbericht in die aktuelle Partie als Varianten ein
  einschließlich vollständiger Verweise.
  </p>
  <p><b>Ausgeschlossene Varianten</b> ermöglicht das Entfernen eines
  Zuges aus der Theorietabelle.
  </p>
  <p>Fast alle Berichtsabschnitte können ein- oder ausgeschaltet oder
  in den Optionen angepaßt werden.
  </p>

  <h4><name Favorites>Favoriten</name></h4>
  <p>Das Menü <b>Favoriten</b> im Berichtsfenster ermöglicht es, eine
  Sammlung von bevorzugten Eröffnungsstellungen zu unterhalten.
  </p>
  <p><b>Bericht hinzufügen</b> fügt die aktuelle Stellung als Favorit
  hinzu und <b>Bericht erzeugen</b> erstellt einen Bericht für alle
  diese Favoriten. Ein Dialogfenster erscheint, in welchem Sie Typ und
  Format des Berichts festlegen können und wo die Berichtsdateien
  gespeichert werden sollen. An jeden Berichtsdateinamen wird eine
  passende Dateinamenserweiterung für das von Ihnen ausgewählte Format
  angehängt (z.B. "html" für das HTML-Format).
  </p>

  <h2><name Player>Spielerberichte</name></h2>
  <p>Spielerberichte sind ähnlich zu den <a Reports
  Opening>Eröffnungsberichten</a>, enthalten aber Informationen über
  Partien eines einzelnen Spielers mit Weiß oder Schwarz. Man kann
  über das
  Menü <run ::preport::preportDlg><green>Werkzeuge--<gt>Spielerbericht</green></run>
  oder über das Fenster <a PInfo>Spielerinformationen</a> einen
  Spielerbericht erstellen.
  </p>
  <p>Spielerberichte können für alle Partien erstellt werden (mit dem
  angegebenen Spieler) oder für Partien, die auf die aktuelle Stellung passen.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.13, August 2014</footer></p>
}


set helpTitle(D,PList) "Das Spielersuchfenster"
set helpText(D,PList) {<h1>Das Spielersuchfenster</h1>
  <p>Das <run ::plist::Open><green>Spielersuchfenster</green></run>
  zeigt eine Liste von Spielernamen der aktuellen Datenbank an. Die
  Auswahl eines Spielernamens öffnet das
  Fenster <a PInfo>Spielerinformationen</a>, das über diesen Spieler
  detailliertere Informationen anzeigt.
  </p>
  <p>In fünf Spalten werden angezeigt: Spielername, beste Elo-Zahl,
  Anzahl der gespeicherten Partien und das Jahr der ältesten und
  neuesten Partie. Ein Klick auf einen Spaltentitel sortiert die Liste
  nach dieser Spalte.
  </p>
  <p>Die Eingabefelder unterhalb der Liste ermöglichen das Filtern des
  Listeninhalts. Man kann die maximale Listengröße ändern, den Anfang
  eines Spielernamens (unabhängig von Groß-/Kleinschreibung) eingeben
  (wie z.B. "ada" für eine Suche nach "Adams") und den Bereich der
  Elo-Werte und die Anzahl der Partien beschränken.
  </p>

  <p><footer>Aktualisiert: Scid 3.6.2, Dezember 2006</footer></p>
}

set helpTitle(D,PInfo) "Spielerinformationen"
set helpText(D,PInfo) {<h1>Spielerinformationen</h1>
  <p>Das Spielerinformationsfenster (Anmerkung des Übersetzers: man
  erhält es durch Klick auf einen Spielernamen im
  Partieinformationsbereich unterhalb des Schachbrettes) zeigt, falls
  verfügbar, grundlegende Informationen. Es beruht auf der
  Datei <a Maintenance Spellfile>spelling.ssp</a> und beinhaltet
  Wertungszahlen, Herkunftsland, offizielle Titel und sogar Fotos.</p>

  <p><b>Bitte mit Vorsicht benutzen.</b><i>Die Namen, die enthalten
  sind, könnten nicht eindeutig sein und die Anfangsbuchstaben von
  Spielern könnten nicht richtig bestimmt sein. Scid benutzt
  hauptsächlich einen spezifischeren Namenssuchalgorithmus, der zwar
  weniger hilfreich ist, dafür aber weniger oft falsche Treffer
  erzeugt. Die größere Datei </i><b>ratings.ssp</b><i> (die anstelle
  von spelling.ssp benutzt werden kann) enthält FIDE-IDs und
  biografische Daten, die zu eindeutigen Spielernamen beitragen
  können.</i></p>

  <p>Es werden auch Statistiken angezeigt über den Erfolg mit Schwarz
  und Weiß, bevorzugte Eröffnungen (über den <a ECO>ECO-Code</a>) und
  die Historie der Elo-Werte. Alle angezeigten Prozentangaben sind ein
  erwartetes Ergebnis (Erfolgsrate) aus der Sicht des Spielers. So ist
  höher immer besser für den Spieler, egal ob mit Weiß oder
  Schwarz. Wenn man auf die grünen Zahlen klickt, dann wird
  der <a Filter>Filter</a> gemäß der Statistik gesetzt, die
  dargestellt wird (Hinweis des Übersetzers: die Suche mit diesem
  Filter erfolgt über das
  Menü <green>Suchen--<gt>Partiedaten...</green>, im Bereich
  "Durchführung am aktuellen Filter" das Feld "UND (Beschränke
  Filter)" auswählen und auf "Suchen" klicken).
  </p>

  <h4>Funktionen</h4>
  <p>Man kann die Elo-Entwicklung eines Spielers sehen, wenn man auf
  die Schaltfläche <a Graphs Rating>Ratingveränderung</a> klickt.
  </p>
  <p>Es gibt auch Schaltflächen, um ähnliche Spielernamen zu
  durchsuchen, <a Maintenance Editing>Namensersetzungen</b> in der
  ganzen (oder teilweisen) Datenbank durchzuführen oder den <a Reports
  Player>Spielerbericht</a> zu erstellen.
  </p>
  <p>Ein Rechtsklick innerhalb des Fensters zeigt eine Liste über die
  zuletzt betrachteten Spieler.
  </p>

  <h3><name Photos>Spielerfotos</name></h3>
  <p>Um Spielerfotos zu sehen, platzieren Sie die Scid-Fotodateien
  (wie sie enthalten sind in "FIDE_photos_png.zip" von
  <url https://sourceforge.net/projects/scid/files/Player%20Data/>https://sourceforge.net/projects/scid/files/Player
  Data/</url>) in das Benutzerverzeichnis von Scid vs. PC. In Linux
  und Macs ist dies "$HOME/.scidvspc", in Windows "Scid vs
  PC/bin". Das <a Console>Willkommensfenster</a> zeigt Ihnen diesen
  Ort an. Es zeigt Ihnen auch, ob die Fotodateien korrekt geladen
  wurden.</p>

  <p>Selbsterstellte gif-Fotos können in einem "photos"-Verzeichnis
  unterhalb des Benutzerverzeichnisses platziert werden. Sie sollten
  vorzugsweise 100x100 Pixel groß sein und mit dem Dateinamen versehen
  sein, der dem Namen des abgebildeten Spielers
  entspricht. Beispielsweise sollte ein Foto für Magnus Carlsen in
  'photos/Carlsen, Magnus.gif' abgelegt sein. Diese Fotos gehen den in
  den .spf-Dateien gefundenen Bildern vor.
  </p>
  <p>Einmal installiert werden verfügbare Spielerfotos
  im <a MainWindow GameInfo>Partieinformationsfenster</a>
  angezeigt. Ein Klick auf diese Bilder verkleinert sie. Um sie
  abzuschalten, entfernen Sie das Häkchen im Menüpunkt
  <green>Optionen--<gt>Partieinformationen--<gt>Fotos zeigen</green>
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.17 März 2016</footer></p>
}

set helpTitle(D,Graphs) "Grafikfenster"
set helpText(D,Graphs) {<h1>Grafikfenster</h1>

  <p>Scid hat eine Reihe von Grafikfunktionen,
  die Informationen über Wertungszahlen von Spielern,
  Partiehäufigkeiten und Bewertungen anzeigen.</p>

  <p><i>Die Funktion <green>Grafik--<gt>Speichern als</green> ist von schlechter Qualität. Eine bessere Möglichkeit ist die Benutzung der Funktion "Bildschirmfoto" Ihres Systems.
  </i></p>
  
  <h3><name Filter>Filter Grafikfenster</name></h3>
  <p><b>Relative Filtergrafik</b></p>

  <p>Die <green><run ::tools::graphs::filter::Open>relative
  Filtergrafik</run></green> (siehe Menü <green>Werkzeuge</green>)
  zeigt Trends nach Datum, Elo-Wertung oder Zügen für Partien im
  aktuellen Filter, verglichen mit der ganzen Datenbank. Wenn
  beispielsweise ein <a Tree>Zugbaum</a> geöffnet ist, dann zeigt die
  Grafik an, wie sich für die aktuelle Eröffnung in den vergangenen
  Jahren ihre Beliebtheit verändert hat oder ob sie unter Elo-höheren
  Spielern besonders beliebt ist. Jeder Punkt in der Grafik
  repräsentiert für ein bestimmtes Datum oder für einen Bereich der
  Elo-Wertungszahlen die Anzahl der Filterpartien pro hundert Partien
  in der ganzen Datenbank.
  </p>

  <p><b>Absolute Filtergrafik</b></p>
  <p>Die <green><run ::tools::graphs::absfilter::Open>absolute
  Filtergrafik</run></green> zeigt die Anzahl der Filterpartien
  hinsichtlich der ausgewählten Kriterien an.
  </p>

  <p><b>Anwendung</b></p>
  <p>Die symbolhafte Schaltfläche im unteren Bereich öffnet ein
  Dialogfenster für die Konfigurierung der Grafik. Sie können Bereich
  und Intervall für die X-Achse bestimmen. Das "Dekade"-Kriterium kann
  nicht konfiguriert werden, verwenden Sie stattdessen "Jahr". Wenn
  "Schätzen" ausgewählt ist, dann werden fehlende Wertungszahlen wie
  nachstehend beschrieben geschätzt. Ansonsten erfolgt keine Schätzung
  und fehlende Wertungszahlen werden als Null gezählt. Dies betrifft
  die Minimum-Elo-Bewertung im Statistikfenster.</p>
  <p><i>Hinweis: die Berechnung kann bei großen Bereichen und kleinen
  Intervallen eine gewisse Zeit beanspruchen.</i>.
  </p>
  <p>Wenn die Filtergrafik für Wertungszahlen erstellt wird, dann
  verwendet Scid für jede Partie die durchschnittliche
  Wertungszahl. Wertungszahlenschätzungen (wie in der
  Rechtschreibdatei) werden nicht verwendet. Wenn ein Spieler in einer
  Partie eine Wertungszahl hat, aber der Gegner nicht, dann wird
  angenommen, daß der Gegner bis zu einer Grenze von 2200 die gleiche
  Wertungszahl hat. Beispiel: ein Spieler hat die Wertungszahl 2500
  und der Gegner hat keine Wertungszahl, dann ist die
  durchschnittliche Wertungszahl (2500 + 2200)/2 = 2350.
  </p>

  <h3><name Rating>Grafik Ratingveränderung</name></h3>
  <p>Die Grafik <green><run ::tools::graphs::rating::Refresh
  both>Ratingveränderung</run></green> zeigt die Entwicklung von einem
  oder von mehreren Spielern. Sie erhalten die Grafik durch Drücken
  auf die Schaltfläche "Ratingveränderung" im
  Fenster <a PInfo>Spielerinformationen</a> oder durch Auswahl von
  "Ratingveränderung" im Menü Werkzeuge. Ein Rechtsklick auf die
  Grafik erneuert sie.
  </p>

  <h3><name Score>Grafik für Bewertung/Zeit</name></h3>
  <p>Die <green><run ::tools::graphs::score::Raise>Grafik für Bewertung/Zeit
  </run></green>(Strg-Umschalt-z) zeigt für die Partiezüge die
  Bewertungen oder die benötigte Bedenkzeit an (die in der aktuellen
  Partie als Kommentare gespeichert sind).</p>

  <p>Der Grafiktyp wird im Menü
  <green>Partiebewertungsgrafik--<gt>Optionen</green> geändert. Die
  Daten für die Grafik werden aus den Standard-PGN-Kommentaren
  <b>%eval</b> (Werte) und <b>%emt</b> (Zugzeiten) entnommen.
  <\p>

  <p><b>%clk</b>-Daten werden ebenfalls unterstützt, sie werden aber
  neu berechnet und als %emt angezeigt. Außerdem berechnen sie die
  Gesamtzeiten nicht richtig, da im allgemeinen die Zeitzuschläge und
  die Bedenkzeitzugaben nach (den üblichen) 40 Zügen unbekannt sind.
  </p>

  <p>Andererseits kann Scid vs PC durch Verwendung der <a Analysis
  Annotating>Kommentierungsfunktion</a> Bewertungen hinzufügen. Diese
  Bewertungen haben eines der Formate +0.25, [% +0.25] oder den
  Standard [%eval +0.25]. Die beiden letzteren können im PGN-Fenster
  versteckt werden, indem man im
  Menü <green>PGN--<gt>Ausgabe--<gt>Feld-/Pfeilcodes verbergen</green>
  das Häkchen setzt. Die Bewertungen werden aus Sicht von Weiß
  angezeigt (ein negativer Wert zeigt also, daß Schwarz im Vorteil
  ist). Wenn die Bewertungen nicht aus der Sicht von Weiß sein sollen,
  kann man für eine vertauschte Ansicht eine Option auswählen (im
  Menü <green>Partiebewertungsgrafik--<gt>Optionen</green>).
  </p>

  <h4>Funktionen</h4>

  <p>Ein Klick mit der linken Maustaste innerhalb der Grafik geht zum
  entsprechenden Partiezug.</p>

  <p>Ein Klick mit der rechten Maustaste innerhalb der
  Bewertungsgrafik führt eine Auffrischung der Anzeige durch.</p>

  <p>Der aktuelle Zug wird jetzt in einer anderen Farbe
  hervorgehoben. Dies kann jedoch aus Leistungsgründen (hauptsächlich
  auf OS X) abgeschaltet werden. Man kann auch die Grafikfarbe ändern
  über <green><run SetScoreColour>Optionen--<gt>Farben--<gt>Farbe
  für alle Zugbewertungen</run></green> und
  <green><run SetScoreBarColour>Optionen--<gt>Farben--<gt>Farbe für
  Bewertung aktueller Zug</run></green>.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.20 Juni 2018</footer></p>
}

set helpTitle(D,TB) "Endspieldatenbanken"
set helpText(D,TB) {<h1>Endspieldatenbanken</h1>

  <p><i>Eine Endspieldatenbank ist eine Datei, die </i><b>vollständige
  Ergebnisinformationen</b><i> über alle Stellungen bei bestimmtem
  vorhandenem Material enthält, wie König und Turm gegen König und
  Bauer. Endspieldatenbanken wurden für alle Stellungen mit bis zu
  fünf Spielsteinen erstellt (einschließlich den Königen). Einige
  einfache Endspieldatenbanken mit sechs Steinen sind ebenfalls
  verfügbar.</i>
  </p>
  <p>Scid benutzt die <b>Nalimov</b>-Endspieldatenbanken, die auch von
  vielen Schachprogrammen verwendet werden. Die Dateinamen enden oft
  auf <b>.nbw.emd</b> oder <b>.nbb.emd</b>
  (für <b>N</b>alimov <b>B</b>ases <b>W</b>hite/<b>B</b>lack). In Scid
  können alle Nalimov-Endspieldatenbanken mit drei, vier oder fünf
  Steinen verwendet werden.
  </p>
  <p>Wenn in einer Partie eine Stellung erreicht wird, die in einer
  Endspieldatenbankdatei gefunden wird, dann werden im
  Partieinformationsfenster (unterhalb des Schachbretts) die
  betreffenden Informationen angezeigt.
  </p>
  <p><i>Scid vs. PC kann auch Ergebnisse bei
  <url http://www.lokasoft.nl/tbweb.aspx>www.lokasoft.nl</url>
  nachschlagen, aber diese Informationen sind nicht im
  Partieinformationsfenster verfügbar, sondern nur im
  Endspieldatenbankfenster und sie können Systemverzögerungen mit sich
  bringen.</i></p>

  <h3>Konfiguration</h3>
  <p>Um die Endspieldatenbanken zu laden, wählen Sie Ihr(e)
  Verzeichnis(se) über das
  Menü <green><b>Optionen--<gt>Endspieltabellenverzeichnis</b></green>
  aus. Es können bis zu vier Verzeichnisse ausgewählt werden.
  </p>
  <p>Sie können die Menge an Informationen, die gezeigt werden sollen,
  über das
  Menü <green><b>Optionen--<gt>Partieinformationen</b></green>
  konfigurieren. Die Auswahl von <b>Endspieltabellen: Ergebnis und
  bester Zug</b> liefert die meisten Informationen, sie ist aber oft
  deutlich langsamer als <b>Endspieltabellen: nur Ergebnis</b>.
  </p>

  <h3>Das Fenster Endspieltabellen</h3>
  <p>Sie können
  im <green><run ::tb::Open>Endspieltabellenfenster</run></green>
  (Strg-=) umfangreichere Informationen erhalten. Es zeigt ab der
  aktuellen Stellung bei bestem Spiel mit allen legalen Zügen das
  Ergebnis an.
  </p>
  <p>Das Fenster hat zwei Hauptbereiche. Der Zusammenfassungsteil
  (links) zeigt, welche Endspieldatenbanken Scid gefunden hat sowie
  eine Zusammenfassung für jede Endspieldatenbank. Der Ergebnisbereich
  (rechts) zeigt die besten Resultate für alle Züge ab der aktuellen
  Stellung, die im Hauptfenster angezeigt wird.
  </p>

  <h4>Der Zusammenfassungsteil</h4>
  <p>Im oberen Teil des Bereichs kann man eine einzelne
  Endspieldatenbank auswählen. Diejenigen, die verfügbar sind, werden
  blau angezeigt, die anderen in grau. Man kann aber jede beliebige
  Datenbank auswählen. Der untere Teil zeigt zusammengefaßte
  Informationen für die ausgewählte Endspieldatenbank. <i>In Scid
  haben noch nicht alle Endspieldatenbanken eine Zusammenfassung.</i>
  </p>
  <p>Die Zusammenfassung umfaßt die Häufigkeit (wieviele Partien pro
  Million erreichen eine Stellung mit diesem Material, berechnet aus
  einer Datenbank mit mehr als 600.000 Partien auf Meisterniveau), die
  längste Mattzufolge für eine Seite und die Anzahl der beiderseitigen
  Zugzwangzüge. Ein beiderseitiger Zugzwangzug ist eine Stellung, in
  der <ul><li>Weiß am Zug remisiert und Schwarz am Zug verliert</li>
  oder <li>Weiß am Zug verliert und Schwarz am Zug remisiert</li>
  oder <li>egal wer am Zug ist, verliert.<li></ul>Für einige
  Endspieldatenbanken mit beiderseitigem Zugzwang enthält die
  Zusammenfassung auch eine Liste aller Zugzwangstellungen oder eine
  Auswahl hiervon. Eine vollständige Liste für jede Datenbank ist
  nicht machbar, da einige Endspieldatenbanken tausende von
  beiderseitigen Zugzwangzügen haben.
  </p>

  <h4>Der Ergebnisbereich</h4>
  <p>Die Resultate können von den lokalen Nalimov-Datenbanken
  angezeigt werden (falls installiert) oder über ein
  Online-Nachschlagen bei lokasoft.nl. Der Ergebnisbereich wird immer
  dann aktualisiert, wenn sich das Hauptschachbrett ändert.
  </p>
  <p>Die erste Zeile der lokalen Datenbanken zeigt, wieviele Züge
  gewinnen (+), remis enden (=), verlieren (-) oder ein unbekanntes
  Ergebnis haben (?). Der Rest des Bereichs liefert eine
  detailliertere Ergebnisliste, die sortiert ist vom kürzesten bis zum
  längsten Matt, dann Remis, dann längster bis kürzester Verlust. Alle
  Entfernungen gehen bis zum Schachmatt.
  </p>

  <h4>Das Ergebnisbrett <button tb_coords 32></h4>
  <p>In jeder Endspieldatenbankstellung ist es oft hilfreich zu
  wissen, was die Ergebnisse wären, wenn eine Figur irgendwohin
  gezogen werden würde. Beispielsweise möchten Sie ermitteln wollen,
  wie nah ein König an einem vorgerückten Bauern sein muß, um zu
  gewinnen oder um zu remisieren. In Endspielbüchern wird dies oft
  als <b>Gewinnzone</b> oder <b>Remiszone</b> einer Figur bezeichnet.
  </p>
  <p>Vom Ergebnisbrett aus ist diese Information verfügbar, indem man
  die in Frage kommende Figur anklickt. Dies zeigt Symbole an, die
  darstellen, wie das Ergebnis wäre (mit der in der aktuellen Stellung
  am Zug befindlichen Seite), falls die ausgewählte Figur auf diesem
  Feld wäre.
  </p>
  <p>Es gibt fünf verschiedene Symbole, die ein Feld haben kann:
  <ul>
  <li>weißes # : Weiß gewinnt</li>
  <li>schwarzes # : Schwarz gewinnt</li>
  <li>blaues = : Remisstellung</li>
  <li>rotes X : illegale Stellung (weil die Könige angrenzend stehen
  oder weil die am Zug befindliche Seite Schach bietet)</li>
  <li>rotes ? : Ergebnis unbekannt - die erforderliche
  Endspieldatenbankdatei ist nicht verfügbar.</li>
  </ul>
  <p><i>Das Ergebnisbrett kann nicht die Online-Endspieldatenbanken
  verwenden.</i>
  </p>

  <h3>Endspieldatenbankdateien beziehen</h3>
  <p>Die Endspieldatenbanken sind verfügbar bei
  <url ftp://ftp.cis.uab.edu/pub/hyatt/TB/3-4-5/>Bob Hyatt's Ftp</url>
  und <url http://folk.uib.no/pfvaf/chesslib/Nalimov.htm>Chesslib</url>.
  <br>"Play With Arena" verteilt die Endspieldatenbanken für vier
  Steine als eine einzige Datei
  <url http://www.playwitharena.de/download/4-pieces-tbs.zip>(http://www.playwitharena.de/download/4-pieces-tbs.zip)</url>.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.12, März 2014</footer></p>
}

set helpTitle(D,Bookmarks) "Lesezeichen"
set helpText(D,Bookmarks) {<h1>Lesezeichen</h1>
  <p>Für einen leichten Zugriff können Sie für wichtige Partien
  Lesezeichen setzen. Das Lesezeichenmenü ist
  unter <green>Datei--<gt>Lesezeichen</green> oder in der
  Werkzeugleiste zu finden.
  </p>
  <p>Wenn Sie ein Lesezeichen öffnen, lädt Scid automatisch die
  betreffende Datenbank, Partie und Stellung. Wenn die Datenbank
  jedoch sortiert oder komprimiert wurde, dann könnten die
  Lesezeichendaten veraltet sein. In diesem Fall sucht Scid nach der
  am besten passenden Partie (durch Vergleich von Spielernamen, Ort
  usw.), es kann aber sein, daß eine andere Partie die
  Kriterien erfüllt und fälschlicherweise geladen wird.
  </p>
  <p><i>Es ist eine gute Idee, eine Partie mit einem Lesezeichen neu
  zu versehen, wenn Sie für diese Partie Spielernamen, Ort, Ergebnis,
  Runde oder Jahr bearbeiten.</i></p>
  <p><i>Partien in einer PGN-Datei oder in der Ablagedatenbank können
  nicht mit einem Lesezeichen versehen werden.</i></p>

  <h3>Lesezeichen bearbeiten und anordnen</h3>
  <p>Mit dem Editor für Lesezeichen können Sie die Marke für jedes
  Lesezeichen ändern und für eine bessere Organisation können Sie auch
  Verzeichnisse anlegen. Ein Doppelklick auf einen Eintrag lädt die
  Partie und die Tasten "Löschen", "Pfeil aufwärts" und "Pfeil
  abwärts" können benutzt werden, um ein Lesezeichen zu löschen oder
  in der Liste neu anzuordnen.
  </p>

  <h3>Hinweise</h3>
  <p>Sie können Lesezeichen verwenden, um zu den üblichen Datenbanken
  zu gelangen, indem Sie von jeder Datenbank eine Partie mit einem
  Lesezeichen versehen.
  </p>
  <p>Der Editor für Lesezeichen enthält ein Ankreuzfeld, um die
  Anzeige der Verzeichnisse zu kontrollieren. Diese können als
  Untermenü (hilfreich bei vielen Partien) oder als einfache Liste
  angezeigt werden.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.10, Juli 2013</footer></p>
}

set helpTitle(D,Cmdline) "Command Line Options"
set helpText(D,Cmdline) {<h1>Command Line Options</h1>
  <p>
  <ul>
  <li>-xtb : turn off <a TB>Endspieldatenbanken</a></li>
  <li>-xspell : don't load the <a Maintenance Spellcheck>spelling</a> file.</li>
  <li>-xeco : don't load the <a ECO>ECO openings classification</a> file.</li>
  <li>-fast | -f : Start in fast mode (see below).</li>
  </ul>

  <p>Other args given on the command line are expected to be databases, pgn files or search files.
  For databases, the file suffix ".si4" is optional.
  </p>
  <p> Example: <b>scid -fast mybase newgames.pgn</b>
  will start in fast mode, opening "mybase.si4" and the "newgames.pgn".
  </p>

  <h3>Fast Mode</h3>
  <p>Scid vs. PC's fast mode skips loading the
  spelling (or ratings) file, and recalculating name frequencies (as well as
  flag counts and estimated ratings). Scid vs. PC has recently reduced the bugs in name frequency handling,
  so using fast mode may now be fine, but is still not generally recommended.
  </p>
  <p><footer>Aktualisiert: Scid vs. PC 4.19 Feb 2018</footer></p>
}

set helpTitle(D,Pgnscid) "Pgnscid"
set helpText(D,Pgnscid) {<h1>Pgnscid</h1>
  <p>Pgnscid ist ein Befehlszeilenprogramm (mit Scid mitgeliefert), um
  PGN-Dateien in si4-Datenbanken zu konvertieren. Der Hauptvorteil
  gegenüber dem Import in Scid ist, daß es für große
  PGN-Dateien <b>zuverlässiger</b> ist.
  </p>
  <p>Um eine Datei namens "myfile.pgn" zu konvertieren, schreiben Sie einfach:
  <ul>
  <li><b>pgnscid myfile.pgn</b></li>
  </ul>und eine Scid-Datenbank (bestehend aus "myfile.si4", "myfile.sg4"
  und "myfile.sn4") wird erstellt. Fehler und Warnungen werden nach
  "myfile.err" geschrieben.
  </p>
  <p>Um eine Datenbank mit anderem Namen in einem anderen Verzeichnis
  zu erstellen, kann man den Datenbanknamen der Befehlszeile
  hinzufügen. Zum Beispiel:
  <ul><li><b>pgnscid myfile.pgn mybase</b></li>
  </ul>erstellt eine Datenbank, die aus den Dateien "mybase.si4",
  "mybase.sg4" und "mybase.sn4" besteht.
  </p>
  <p>Scid und Pgnscid können auch <b>gezippte</b> PGN-Dateien direkt
  lesen. So müssen große Dateien, die mit gzip komprimiert wurden (wie
  "mybase.pgn.zip"), nicht zuerst entkomprimiert werden.
  </p>

  <h3>Optionen</h3>
  <p>Es gibt zwei Optionen, die vor dem Dateinamen angegeben werden können:
  </p>
  <p><b>-f</b> erzwingt das Überschreiben einer bestehenden Datenbank
  (pgnscid überschreibt standardmäßig keine bereits bestehende Datenbank).
  </p>
  <p><b>-x</b> veranlaßt pgnscid, alle Kommentare/Texte <b>zwischen
  den Partien</b> zu ignorieren (standardmäßig werden Texte
  zwischen den Partien als Kommentar vor der Partie gespeichert).
  </p>

  <h3>Spielernamen formatieren</h3>
  <p>Einige vernünftige Formatierungen von Spielernamen werden
  automatisch durchgeführt. Diese beinhalten: die Anzahl der
  Leerzeichen nach einem Komma werden auf eines
  standardisiert. Leerzeichen vor und nach Namen sowie anhängende Punkte
  werden entfernt. Holländische Namensteile wie "van den" und "Van
  Der" werden in ein großes "V" und kleines "d" umgewandelt.
  </p>
  <p>Man kann selbstverständlich, nachdem die Partien importiert
  wurden, auch Spielernamen, Turnierbezeichnung, Ort und Rundennamen
  mit dem Wartungsfenster von Scid <a Maintenance Editing>bearbeiten
  und auf Rechtschreibung prüfen</a>.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.8 Mai 2012</footer></p>
}


set helpTitle(D,Formats) "Dateiformate"
set helpText(D,Formats) {<h1>Die Dateiformate von Scid</h1>
  <p>Scid-Datenbanken bestehen aus drei Dateien, einer Indexdatei
  (Namenserweiterung .si4), einer Namensdatei (.sn4) und einer
  Partiendatei (.sg4).
  </p>
  <p><i>Scid weist für einige Datenfelder nur drei Bytes zu. Das
  bedeutet, daß die höchste Partienanzahl 16.777.214 ist.</i>
  </p>

  <h3>Die Indexdatei (.si4)</h3>
  <p>Die Indexdatei enthält eine Beschreibung für die Datenbank und
  für jede Partie einen Eintrag. Jeder Partieeintrag umfaßt
  wesentliche Informationen wie IDs von Ergebnis, Namen von Spielern,
  Turnier, Ort (die tatsächlichen Namen sind in der Namensdatei) und
  einige redundante, aber nützliche Informationen, die verwendet
  werden, um Suchvorgänge zu beschleunigen (siehe unten in <a Formats
  Fast>Schnelle Suchvorgänge</a> für weitere Informationen).
  </p>

  <h3>Die Namensdatei (.sn4)</h3>
  <p>Sie enthält alle Namen von Spielern, Turnieren, Orten und Runden,
  die in der Datenbank verwendet werden. Jeder Name wird nur einmal
  gespeichert, selbst wenn er in vielen Partien vorkommt. Es gibt
  keine Datenbankbeschränkung bezüglich der Anzahl von eindeutigen
  Namen. Die Grenzen sind:
  </p>
  <ul><ul>
  <li>Spielernamen: 2^20 - 1</li>
  <li>Turniernamen: 2^19 - 1</li>
  <li>Ortsnamen: 2^19 - 1</li>
  <li>Rundennamen: 2^18 - 1</li>
  </ul></ul>Sie sind in der Datei <b>namebase.h</b> festgelegt. Die
  Namensdatei ist üblicherweise die kleinste der drei Datenbankdateien.
  </p>

  <h3>Die Partiendatei (.sg4)</h3>
  <p>Diese Datei enthält die aktuellen Züge, Varianten und Kommentare
  jeder Partie.
  </p>
  <p><i>Das Zugverschlüsselungsformat ist sehr kompakt: die meisten
  Züge benötigen nur ein einziges Byte (8 Bits)! Dies geschieht, indem
  der zu ziehende Stein in 4 Bits (2^4 = 16 Steine) und die
  Zugrichtung in weiteren 4 Bits gespeichert werden. Nur Diagonalzüge
  der Dame können nicht in diesem engen Platz gespeichert
  werden. Diese Kompaktheit ist der Grund, weshalb Scid keine
  Schachvarianten unterstützt.
  </i></p>
  <p>Wenn eine Partie "ersetzt" wird, wird tatsächlich eine neue
  Version erstellt, so daß mit der Zeit immer mehr verschwendeter
  Platz entsteht. Die Datenbank kann
  durch <a Compact>Komprimierung</a> auf ihre minimale Größe reduziert
  werden.
  </p>

  <h3>Weitere Dateiformate</h3>
  <p>Eine <a EPD>EPD</a>-Datei (<b>.epd</b>) enthält eine Anzahl an
  Schachstellungen, jede mit einem Textkommentar. Das EPD-Dateiformat
  ist im <a Related>PGN-Standard</a> beschrieben.
  </p>
  <p>Eine E-Mail-Datei (<b>.sems</b>) für eine Datenbank speichert
  Details zu Ihrem Gegner, dem Sie Nachrichten senden.
  </p>
  <p>Eine Suchoptionsdatei (<b>.sso</b>) enthält
  <a Searches Header>Partiedaten</a> oder <a Searches
  Material>Material-/Muster</a>sucheinstellungen.
  </p>

  <h3><name Fast>Schnelle Suchvorgänge in Scid</name></h3>
  <p>Die Indexdatei speichert einige redundante, aber nützliche
  Informationen zu jeder Partie, um Suchvorgänge für Stellungen oder
  Material zu beschleunigen.
  </p>
  <p>Zum Beispiel wird das Material jeder Schlußstellung
  gespeichert. Wenn Sie nach Turm- und Bauernendspielen suchen, dann
  werden alle Partien, die mit Dame, Läufer oder Turm auf dem Brett
  enden (und die keine Bauernumwandlungen haben) schnell übersprungen.
  </p>
  <p>Ein weiteres hilfreiches gespeichertes Informationsdetail ist die
  Reihenfolge, in der Bauern ihr Ausgangsfeld verlassen (durch Ziehen
  oder Schlagen). Dies wird verwendet, um Zugbaumsuchen oder exakte
  Stellungssuchen zu beschleunigen, insbesondere für
  Eröffnungsstellungen. Wenn beispielsweise nach der Anfangsstellung
  der französischen Verteidigung (1. e4 e6) gesucht wird, dann wird
  jede Partie, die mit 1. e4 c5 oder 1. d4 usw. beginnt,
  übersprungen. Partien, die mit 1. e4 e5 beginnen, müssen aber weiter
  durchsucht werden.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.2 November 2010 </footer></p>
}

set helpTitle(D,Options) "Optionen"
set helpText(D,Options) {<h1>Optionen und Einstellungen</h1>

  <p>In Linux und Mac ist das
  Optionenverzeichnis <b>$HOME/.scidvspc/config/</b>. In Windows ist
  dieses Verzeichnis im
  Programminstallationsverzeichnis <b>/bin/config</b>. Darin kann man
  die Hauptoptionsdatei <b>options.dat</b> und ein paar andere Dateien
  finden.
  </p>
  <p>Optionen werden automatisch bei Programmende gespeichert oder
  wenn der Menübefehl <green>Optionen--<gt>Optionen
  speichern</green> ausgewählt wird.
  </p>
  <p>Die <a Docking>Anordnung der Fenster</a> wird nicht automatisch
  gespeichert, man kann sie aber über den
  Menübefehl <green>Optionen--<gt>Layout speichern</green> manuell
  speichern.
  </p>
  <p><green>Datenbanken als Standard speichern</green> öffnet beim
  nächsten Start von Scid alle aktuell geladenen Datenbanken (ohne
  Kommandozeilenoptionen/-dateien).
  </p>

  <h3><name Colours>Farben</name></h3>
  <p>Die Farben und Themen für das Hauptbrett werden im Menü
  <run ::chooseBoardColors><green>Optionen--<gt>Schachbrett</green></run>
  eingestellt, aber ein paar andere Farbeinstellungen sind
  unter <green>Optionen--<gt>Farben</green> verfügbar.
  </p>

  <p><b>Farbe für eine Zeile</b> wird verwendet für die
  Zeilenhervorhebung im Zugbaum, in Büchern, im Finder und in
  Spieler-/Turnierfinderfenstern. Brettpfeile und
  Feldfarben werden im <a Comment Diagrams>Kommentareditor</a>
  eingestellt.
  </p>
  <p>Die Funktion <b>Hintergrundfarbe</b> setzt eine Hintergrundfarbe
  für verschiedene textähnliche Fenster. Ebenso setzt <b>Textfarbe</b>
  eine Vordergrundfarbe für die gleichen/ähnlichen Fenster. Diese
  Änderung erfordert einen Neustart von Scid vs PC.
  </p>

  <h3><name MyPlayerNames>Meine Spielernamen</name></h3>
  <p><green><run editMyPlayerNames>Meine Spielernamen</run></green>
  ermöglicht die Berücksichtigung von besonderen Spielernamen.
  </p>
  <p>Immer wenn eine Partie mit einem Namen aus der Liste geladen
  wird, wird das Schachbrett gedreht (falls notwendig), um die Partie
  aus der Sicht des Spielers zu zeigen.
  </p>
  <p>Der erste eingetragene Spielername wird auch in der Funktion
  Spieler gegen Computer verwendet.
  </p>
  <p>Die Spielernamen werden zeilenweise eingegeben und können die
  Platzhalterzeichen "?" (für genau ein Zeichen) und "*" (für eine
  Folge von Null oder mehr Zeichen) enthalten.
  </p>

  <h3><name Fonts>Schriftarten</name></h3>
  <p>Scid hat vier grundlegende
  Schriftarten: <b>Normal</b>, <b>Menü</b>, <b>Klein</b>
  und <b>Fest</b>, Sie können über das
  Menü <green>Optionen--<gt>Schriftarten</green> ausgewählt werden.
  </p>
  <p><i>In vielen Fenstern kann man die Größe der Schriftart schnell
  durch Strg+Mausrad ändern.</i></p>
  <p>Die Schriftart <b>Fest</b> wird von den
  Fenstern <a Tree>Zugbaum</a> und <a Crosstable>Kreuztabelle</a>
  verwendet. Diese erfordern eine Schriftart mit fester Breite, um die
  Textausrichtung passend zu gestalten.
  </p>

  <h3><name Themes>Themen</name></h3>
  <p>Tk hat eine Funktion, die als "Themen" (oder "Themes Tk - ttk")
  bekannt ist, die angepaßte Grafiken und Farben für einige besondere
  GUI-Elemente ermöglicht. Tk kommt mit ein paar vorinstallierten
  Themen. Diese können
  unter <green>Optionen--<gt>Design</green> ausgewählt werden.
  </p>
  <p>Das Installieren von zusätzlichen Themen kann trickreich sein.
  Die meisten sind nicht besonders ausgereift oder vollständig. Scid
  vs PC macht von den Themenfunktionen keinen ausgiebigen Gebrauch,
  sondern bevorzugt stattdessen (obwohl langweilig) die
  Standard-Tk-Elemente.
  </p>
  <p>Die Basisinstallation hat die Form:
  <ul>
  <li>Kopieren Sie das Thema in eines der Tk-Bibliotheksverzeichnisse (z.B. /usr/lib/tk8.6).</li>
  <li>(oder) source myThemes.tcl</li>
  <li>package require ttk::theme::MyTheme</li>
  <li>ttk::style theme use MyTheme</li>
  </ul>Diese Anweisungen können in Scids GUI eingebunden oder in Scid
  vs PCs Befehlszeilenstartfenster ausgegeben werden.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.20 Nov 2018</footer></p>
}

set helpTitle(D,NAGs) "NAG-Werte"
set helpText(D,NAGs) {<h1>NAG-Werte</h1>
  <h3>Standard-NAGs</h3>
  <p>Die Standard-<b>"Numeric Annotation Glyphs"</b> sind im
  <a Related>PGN-Standard</a> definiert und nachfolgend aufgeführt.
  <br><i>Scids Verwendung von ASCII-Zeichen für die Darstellung von
  Kommentaren ist üblich, entspricht aber nicht dem PGN-Standard.</i>
  </p>
  <cyan>
  <ul>
  <li>  1 Guter Zug: !</li>
  <li>  2 Schlechter Zug: ?</li>
  <li>  3 Ausgezeichneter Zug: !!</li>
  <li>  4 Grober Fehler: ??</li>
  <li>  5 Interessanter Zug: !?</li>
  <li>  6 Zweifelhafter Zug: ?!</li>
  <li>  7 Erzwungender Zug: forced</li>
  <li>  8 Einziger Zug. Keine vernünftige Alternativen.: □</li>
  <li>  9 Schlechtester Zug: worst</li>
  <li> 10 Remisstellung: =</li>
  <li> 11 Gleiche Chancen, ausgeglichene Stellung: =, quiet</li>
  <li> 12 Gleiche Chancen, aktive Stellung: ↹</li>
  <li> 13 Unklare Stellung: ~</li>
  <li> 14 Weiß hat leichten Vorteil: +=</li>
  <li> 15 Schwarz hat leichten Vorteil: =+</li>
  <li> 16 Weiß hat kleinen Vorteil: +/-</li>
  <li> 17 Schwarz hat kleinen Vorteil: -/+</li>
  <li> 18 Weiß hat entscheidenden Vorteil: +-</li>
  <li> 19 Schwarz hat entscheidenden Vorteil: -+</li>
  <li> 20 Weiß hat übergroßen Vorteil: +--</li>
  <li> 21 Schwarz hat übergroßen Vorteil: --+</li>
  <li> 22 Weiß ist im Zugzwang: ⊙</li>
  <li> 23 Schwarz ist im Zugzwang: ⊙</li>
  <li> 24 Weiß hat leichten Raumvorteil: ◯</li>
  <li> 25 Schwarz hat leichten Raumvorteil: ◯</li>
  <li> 26 Weiß hat kleinen Raumvorteil: ◯◯</li>
  <li> 27 Schwarz hat kleinen Raumvorteil: ◯◯</li>
  <li> 28 Weiß hat entscheidenden Raumvorteil: ◯◯◯</li>
  <li> 29 Schwarz hat entscheidenden Raumvorteil: ◯◯◯</li>
  <li> 30 Weiß hat geringen Zeit- (Entwicklungs-)vorteil: ↻</li>
  <li> 31 Schwarz hat geringen Zeit- (Entwicklungs-)vorteil: ↺</li>
  <li> 32 Weiß hat kleinen Zeit-(Entwicklungs-)vorteil: ↻↻</li>
  <li> 33 Schwarz hat kleinen Zeit-(Entwicklungs-)vorteil: ↺↺</li>
  <li> 34 Weiß hat entscheidenden Zeit-(Entwicklungs-)vorteil: ↻↻↻</li>
  <li> 35 Schwarz hat entscheidenden Zeit-(Entwicklungs-)vorteil: ↺↺↺</li>
  <li> 36 Weiß hat die Initiative: ↑</li>
  <li> 37 Schwarz hat  die Initiative: ↓</li>
  <li> 38 Weiß hat nachhaltige Initiative: ⇑</li>
  <li> 39 Schwarz hat nachhaltige Initiative: ⇓</li>
  <li> 40 Weiß hat Angriff: →</li>
  <li> 41 Schwarz hat Angriff: ←</li>
  <li> 42 Weiß hat ungenügende Kompensation für Materialnachteil: &/-</li>
  <li> 43 Schwarz hat ungenügende Kompensation für Materialnachteil: &/+</li>
  <li> 44 Weiß hat ausreichende Kompensation für Materialnachteil: =/&</li>
  <li> 45 Schwarz hat ausreichende Kompensation für Materialnachteil: =/&</li>
  <li> 46 Weiß hat mehr als ausreichende Kompensation für Materialnachteil: +/&</li>
  <li> 47 Schwarz hat mehr als ausreichende Kompensation für Materialnachteil: -/&</li>
  <li> 48 Weiß hat leichten Vorteil in der Zentrumskontrolle: ⊞</li>
  <li> 49 Schwarz hat leichten Vorteil in der Zentrumskontrolle: ⊞</li>
  <li> 50 Weiß hat kleinen Vorteil in der Zentrumskontolle: ⊞⊞</li>
  <li> 51 Schwarz hat  kleinen Vorteil in der Zentrumskontolle: ⊞⊞</li>
  <li> 52 Weiß hat entscheidenden Vorteil in der Zentrumskontrolle: ⊞⊞⊞</li>
  <li> 53 Schwarz hat entscheidenden Vorteil in der Zentrumskontrolle: ⊞⊞⊞</li>
  <li> 54 Weiß hat leichten Vorteil in der Kontrolle des Königsflügels: ⟩</li>
  <li> 55 Schwarz hat leichten Vorteil in der Kontrolle des Königsflügels: ⟩</li>
  <li> 56 Weiß hat kleinen Vorteil in der Kontrolle des Königsflügels: ⟫</li>
  <li> 57 Schwarz hat kleinen Vorteil in der Kontrolle des Königsflügels: ⟫</li>
  <li> 58 Weiß hat entscheidenden Vorteil in der Kontrolle des Königsflügels: ⋙</li>
  <li> 59 Schwarz hat entscheidenden Vorteil in der Kontrolle des Königsflügels: ⋙</li>
  <li> 60 Weiß hat leichten Vorteil in der Kontrolle des Damenflügels: ⟨</li>
  <li> 61 Schwarz hat leichten Vorteil in der Kontrolle des Damenflügels: ⟨</li>
  <li> 62 Weiß hat kleinen Vorteil in der Kontrolle am Damenflügel: ⟪</li>
  <li> 63 Schwarz hat  kleinen Vorteil in der Kontrolle am Damenflügel: ⟪</li>
  <li> 64 Weiß hat entscheidenden Vorteil in der Kontrolle am Damenflügel: ⋘</li>
  <li> 65 Schwarz hat entscheidenden Vorteil in der Kontrolle am Damenflügel: ⋘</li>
  <li> 66 Weiß hat verwundbare erste Reihe</li>
  <li> 67 Schwarz hat verwundbare erste Reihe</li>
  <li> 68 Weiß hat eine gut gesicherte erste Reihe</li>
  <li> 69 Schwarz hat eine gut gesicherte erste Reihe</li>
  <li> 70 Weiß hat einen schwach geschützten König</li>
  <li> 71 Schwarz hat einen schwach geschützten König</li>
  <li> 72 Weiß hat einen gut geschützten König</li>
  <li> 73 Schwarz hat einen gut geschützten König</li>
  <li> 74 Weiß hat einen schlecht platzierten König</li>
  <li> 75 Schwarz hat einen schlecht platzierten König</li>
  <li> 76 Weiß hat einen gut platzierten König</li>
  <li> 77 Schwarz hat einen gut platzierten König</li>
  <li> 78 Weiß hat eine sehr schwache Bauernstruktur</li>
  <li> 79 Schwarz hat eine sehr schwache Bauernstruktur</li>
  <li> 80 Weiß hat eine etwas schwache Bauernstruktur</li>
  <li> 81 Schwarz hat eine etwas schwache Bauernstruktur</li>
  <li> 82 Weiß hat eine etwas bessere Bauernstruktur</li>
  <li> 83 Schwarz hat eine etwas bessere Bauernstruktur</li>
  <li> 84 Weiß hat eine sehr starke Bauernstruktur</li>
  <li> 85 Schwarz hat eine sehr starke Bauernstruktur</li>
  <li> 86 Weiß hat eine schlechte Springerstellung</li>
  <li> 87 Schwarz hat eine schlechte Springerstellung</li>
  <li> 88 Weiß hat eine gute Springerstellung</li>
  <li> 89 Schwarz hat eine gute Springerstellung</li>
  <li> 90 Weiß hat eine schlechte Läuferstellung</li>
  <li> 91 Schwarz hat eine schlechte Läuferstellung</li>
  <li> 92 Weiß hat eine gute Läuferstellung: ↗</li>
  <li> 93 Schwarz hat eine gute Läuferstellung: ↗</li>
  <li> 94 Weiß hat eine schlechte Turmstellung</li>
  <li> 95 Schwarz hat eine schlechte Turmstellung</li>
  <li> 96 Weiß hat eine gute Turmstellung: ⇈</li>
  <li> 97 Schwarz hat eine gute Turmstellung: ⇈</li>
  <li> 98 Weiß hat eine schlechte Damenstellung</li>
  <li> 99 Schwarz hat eine schlechte Damenstellung</li>
  <li>100 Weiß hat eine gute Damenstellung</li>
  <li>101 Schwarz hat eine gute Damenstellung</li>
  <li>102 Weiß hat eine schlechte Figurenkoordination</li>
  <li>103 Schwarz hat eine schlechte Figurenkoordination</li>
  <li>104 Weiß hat eine gute Figurenkoordination</li>
  <li>105 Schwarz hat eine gute Figurenkoordination</li>
  <li>106 Weiß hat die Eröffnung sehr schlecht gespielt</li>
  <li>107 Schwarz hat die Eröffnung sehr schlecht gespielt</li>
  <li>108 Weiß hat die Eröffnung schlecht gespielt</li>
  <li>109 Schwarz hat die Eröffnung schlecht gespielt</li>
  <li>110 Weiß hat die Eröffnung gut gespielt</li>
  <li>111 Schwarz hat die Eröffnung gut gespielt</li>
  <li>112 Weiß hat die Eröffnung sehr gut gespielt</li>
  <li>113 Schwarz hat die Eröffnung sehr gut gespielt</li>
  <li>114 Weiß hat das Mittelspiel sehr schlecht gespielt</li>
  <li>115 Schwarz hat das Mittelspiel sehr schlecht gespielt</li>
  <li>116 Weiß hat das Mittelspiel schlecht gespielt</li>
  <li>117 Schwarz hat das Mittelspiel schlecht gespielt</li>
  <li>118 Weiß hat das Mittelspiel gut gespielt</li>
  <li>119 Schwarz hat das Mittelspiel gut gespielt</li>
  <li>120 Weiß hat das Mittelspiel sehr gut gespielt</li>
  <li>121 Schwarz hat das Mittelspiel sehr gut gespielt</li>
  <li>122 Weiß hat das Endspiel sehr schlecht gespielt</li>
  <li>123 Schwarz hat das Endspiel sehr schlecht gespielt</li>
  <li>124 Weiß hat das Endspiel schlecht gespielt</li>
  <li>125 Schwarz hat das Endspiel schlecht gespielt</li>
  <li>126 Weiß hat das Endspiel gut gespielt</li>
  <li>127 Schwarz hat das Endspiel gut gespielt</li>
  <li>128 Weiß hat das Endspiel sehr gut gespielt</li>
  <li>129 Schwarz hat das Endspiel sehr gut gespielt</li>
  <li>130 Weiß hat kleines Gegenspiel: ⇄</li>
  <li>131 Schwarz hat kleines Gegenspiel: ⇄</li>
  <li>132 Weiß hat moderates Gegenspiel: ⇄⇄</li>
  <li>133 Schwarz hat moderates Gegenspiel: ⇄⇄</li>
  <li>134 Weiß hat entscheidendes Gegenspiel: ⇄⇄⇄</li>
  <li>135 Schwarz hat entscheidendes Gegenspiel: ⇄⇄⇄</li>
  <li>136 Weiß hat kleinen Zeitnachteil: ⊕</li>
  <li>137 Schwarz hat kleinen Zeitnachteil: ⊕</li>
  <li>138 Weiß hat großen Zeitnachteil: ⊕⊕</li>
  <li>139 Schwarz hat großen Zeitnachteil: ⊕⊕</li>
  </ul>
  </cyan>

  <h3>Vorgeschlagene NAGs</h3>
  <p>NAG-Werte, vorgeschlagen von der Publikation Chess Informant.
  </p>
  <cyan>
  <ul>
  <li>140 Weiß mit der Idee ...: △</li>
  <li>141 Gerichtet gegen ...</li>
  <li>142 Besserer Zug: ⌓</li>
  <li>143 Schlechtester Zug</li>
  <li>144 Gleichwertiger Zug: R</li>
  <li>145 Anmerkung des Herausgebers: RR</li>
  <li>146 Neuerung: N</li>
  <li>147 Schwacher Punkt: ×</li>
  <li>148 Endspiel: ⊥</li>
  <li>149 Hauptvariante: ⟺</li>
  <li>150 Diagonale: ⇗</li>
  <li>151 Weiß hat das Läuferpaar: ◫</li>
  <li>152 Schwarz hat das Läuferpaar</li>
  <li>153 Ungleichfarbige Läufer: ◨</li>
  <li>154 Gleichfarbige Läufer: ⊶</li>
  </ul>
  </cyan>

  <h3>Weitere vorgeschlagene Werte</h3>
  <cyan>
  <ul>
  <li>190 usw.: ǁ</li>
  <li>191 Doppelbauer: ⡁</li>
  <li>192 Isolani: ⚯</li>
  <li>193 Verbundene Bauern: ⚮</li>
  <li>194 Hängende Bauern</li>
  <li>195 Rückständige Bauern</li>
  </ul>
  </cyan>

  <h3>NAGs von Scid</h3>
  <p>Von Scid für eigene Zwecke definiert.
  </p>
  <cyan>
  <ul>
  <li>201 Diagramm: D oder #</li>
  <li>210 siehe: —</li>
  <li>211 Matt: #</li>
  <li>212 vorgerückter Bauer: ⚨</li>
  <li>213 Mehrbauern: ></li>
  <li>214 mit: ⌊</li>
  <li>215 ohne: ⌋</li>
  </ul>
  </cyan>

  <p><footer>Aktualisiert: Scid vs. PC 4.10 Juli 2013</footer></p>
}

set helpTitle(D,ECO) "ECO-Führer"
set helpText(D,ECO) {<h1>ECO-Codes</h1>
  <p>ECO steht für <b>Encyclopedia of Chess Openings</b> (Enzyklopädie
  der Schacheröffnungen). Es sind Codes, die Schacheröffnungen
  kennzeichnen. Jeder besteht aus einem Buchstaben von A bis E,
  gefolgt von zwei Ziffern. Zum Beispiel steht <b>C33</b> für das
  angenommene Königsgabmit. Es gibt fünfhundert verschiedene
  ECO-Codes.
  </p>

  <p>Um den ECO-Code einer Partie zu sehen, wählen
  Sie <run IdentifyOpening><green>Partie--<gt>Eröffnung
  identifizieren</green></run> und schauen sich das
  Partieinformationsfenster (unter dem Hauptbrett) an.
  </p>

  <h3>ECO-Erweiterungen von Scid</h3>
  <p>Das ECO-System ist jedoch sehr begrenzt und für moderne Partien
  unzureichend. Einige Codes werden nie gebraucht, während andere
  überaus häufig sind. Um dies zu verbessern, ermöglicht Scid eine
  wahlweise Erweiterung zu den grundlegenden ECO-Codes. Die Codes
  können mit einem Buchstaben von a bis z erweitert werden. Eine
  zusätzliche Erweiterung, eine Ziffer von 1 bis 4, ist möglich, wird
  aber noch nicht genutzt. So kann ein erweiterter Code aussehen
  wie <b>A41e</b> oder <b>E99b2</b>. Viele der in Partien auf
  Meisterebene gebräuchlichen Codes haben Erweiterungen, die in der
  ECO-Datei von Scid festgelegt sind.
  </p>

  <h3><name Browser>Das ECO-Auswertungsfenster</name></h3>
  <p>Scids
  <run ::windows::eco::Open><green>ECO-Auswertung</green></run>
  zeigt für die <b>ECO-klassifizierten Partien</b> in der aktuellen
  Datenbank Informationen über ECO-Codes und ihre Häufigkeit und
  Leistung.
  </p>
  <p>Der obere Bereich zeigt eine Balkengrafik mit drei Abschnitten:
  der untere (hellblau) zeigt die Siege von Weiß, der mittlere stellt
  die Remispartien dar und der obere (dunkelblau) zeigt die Siege von
  Schwarz. Die Grafik zeigt auf einen Blick die
  Eröffnungscharakteristiken - ob Remisen häufig sind oder ob mehr
  Weiß oder ob mehr Schwarz gewinnt. Um in eine tiefere ECO-Ebene
  hineinzugehen, klicken Sie auf einen Balken in der Grafik. Um auf
  eine höhere Ebene zurückzugelangen, führen Sie auf einem solchen
  Balken einen Rechtsklick mit der Maus durch.
  </p>
  <p>Sie können auch mit der Tastatur navigieren, indem Sie den Sie
  interessierenden ECO-Code schreiben. Wenn Sie zum Beispiel den
  ECO-Code B75 (für den jugoslawischen Angriff im sizilianischen
  Drachen) sehen wollen, tippen Sie einfach B75.
  </p>
  <p>Der untere Bereich zeigt die Stellungen für einen bestimmten
  ECO-Code gemäß der geladenen ECO-Datei an.
  </p>
  <p>Die Schaltfläche <b>Partien ECO-klassifizieren</b> im
  Wartungsfenster (unter der Rubrik "Datenbankoperationen") fügt in
  der aktuellen Datenbank den ausgewählten Partien die
  ECO-Klassifizierungen dauerhaft hinzu.
  </p>

  <h3>Eine ECO-Datei laden</h3>
  <p>Scid versucht beim Programmstart, die vorgegebene
  Datei <b>scid.eco</b> zu laden. Falls dies nicht geht oder falls Sie
  eine andere Datei verwenden wollen, kann eine ECO-Datei manuell über
  die Funktion <run ::windows::eco::LoadFile><green>ECO-Datei
  laden</green></run> geladen werden. Danach wird diese Datei
  zukünftig automatisch geladen.
  </p>

  <h3><name Codes>Das System der ECO-Codes</name></h3>
  <p>Die Grundstruktur des ECO-Systems ist:
  </p>
  <p>
  <b><blue><run ::windows::eco::Refresh A>A</run></blue></b>
  1.d4 Nf6 2...;  1.d4 ...;  1.c4;  1.verschiedene
  <ul>
  <li>  <b>A0</b>  1.<i>verschiedene</i>
  (<b>A02-A03</b> 1.f4: <i>Birds Eröffnung</i>,
  <b>A04-A09</b>  1.Nf3: <i>Reti, königsindischer Angriff</i>) </li>
  <li>  <b>A1</b>  1.c4 ...: <i>Englisch</i> </li>
  <li>  <b>A2</b>  1.c4 e5: <i>Sizilianisch im Anzuge</i> </li>
  <li>  <b>A3</b>  1.c4 c5: <i>Englische Symmetrievariante</i> </li>
  <li>  <b>A4</b>  1.d4 ...: <i>Damenbauernspiele</i> </li>
  <li>  <b>A5</b>  1.d4 Nf6 2.c4 ..: <i>Indische Verteidigung </i> </li>
  <li>  <b>A6</b>  1.d4 Nf6 2.c4 c5 3.d5 e6: <i>Moderne Benoni-Verteidigung</i> </li>
  <li>  <b>A7</b>  A6 + 4.Nc3 exd5 5.cxd5 d6 6.e4 g6 7.Nf3 </li>
  <li>  <b>A8</b>  1.d4 f5: <i>Holländische Verteidigung</i> </li>
  <li>  <b>A9</b>  1.d4 f5 2.c4 e6: <i>Holländische Verteidigung</i> </li>
  </ul>

  <p>
  <b><blue><run ::windows::eco::Refresh B>B</run></blue></b>
  1.e4 c5;  1.e4 c6;  1.e4 d6;  1.e4 <i>verschiedene</i>
  <ul>
  <li>  <b>B0</b>  1.e4 ...
  (<b>B02-B05</b>  1.e4 Nf6: <i>Aljechin-Verteidigung</i>;
  <b>B07-B09</b>  1.e4 d6: <i>Pirc-Verteidigung</i>) </li>
  <li>  <b>B1</b>  1.e4 c6: <i>Caro-Kann-Verteidigung</i> </li>
  <li>  <b>B2</b>  1.e4 c5: <i>Sizilianisch </i> </li>
  <li>  <b>B3</b>  1.e4 c5 2.Nf3 Nc6: <i>Sizilianisch</i> </li>
  <li>  <b>B4</b>  1.e4 c5 2.Nf3 e6: <i>Sizilianisch</i> </li>
  <li>  <b>B5</b>  1.e4 c5 2.Nf3 d6: <i>Sizilianisch</i> </li>
  <li>  <b>B6</b>  B5 + 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 Nc6 </li>
  <li>  <b>B7</b>  B5 + 4.Nxd4 Nf6 5.Nc3 g6: <i>Sizilianisch Drachenvariante</i> </li>
  <li>  <b>B8</b>  B5 + 4.Nxd4 Nf6 5.Nc3 e6: <i>Sizilianisch Scheveninger Variante</i> </li>
  <li>  <b>B9</b>  B5 + 4.Nxd4 Nf6 5.Nc3 a6: <i>Sizilianisch Najdorf-Variante</i> </li>
  </ul>

  <p>
  <b><blue><run ::windows::eco::Refresh C>C</run></blue></b>
  1.e4 e5;  1.e4 e6
  <ul>
  <li>  <b>C0</b>  1.e4 e6: <i>Französische Verteidigung</i> </li>
  <li>  <b>C1</b>  1.e4 e6 2.d4 d5 3.Nc3: <i>Französisch, Winawer/klassisch</i> </li>
  <li>  <b>C2</b>  1.e4 e5: <i>Offene Spiele</i> </li>
  <li>  <b>C3</b>  1.e4 e5 2.f4: <i>Königsgambit</i> </li>
  <li>  <b>C4</b>  1.e4 e5 2.Nf3: <i>Königsspringerspiel</i> </li>
  <li>  <b>C5</b>  1.e4 e5 2.Nf3 Nc6 3.Bc4: <i>Italienisch; zwei Springer</i> </li>
  <li>  <b>C6</b>  1.e4 e5 2.Nf3 Nc6 3.Bb5: <i>Spanisch (Ruy Lopez)</i> </li>
  <li>  <b>C7</b>  1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4: <i>Spanisch</i> </li>
  <li>  <b>C8</b>  C7 + 4...Nf6 5.O-O: <i>Spanisch, geschlossen und offen</i>
  (<b>C80-C83</b>  5.O-O Nxe4: <i>Spanisch, offenes System</i>;
  <b>C84-C89</b>  5.O-O Be7: <i>Spanisch, geschlossenes System</i>) </li>
  <li>  <b>C9</b>  C8 + 5...Be7 6.Re1 b5 7.Bb3 d6: <i>Spanish, geschlossen</i> </li>
  </ul>

  <p>
  <b><blue><run ::windows::eco::Refresh D>D</run></blue></b>
  1.d4 d5; 1.d4 Nf6 2.c4 g6 with 3...d5
  <ul>
  <li>  <b>D0</b>   1.d4 d5: <i>Damenbauernspiel</i> </li>
  <li>  <b>D1</b>   1.d4 d5 2.c4 c6: <i>Slawische Verteidigung</i> </li>
  <li>  <b>D2</b>  1.d4 d5 2.c4 dxc4: <i>Angenommenes Damengambit</i> </li>
  <li>  <b>D3</b>  1.d4 d5 2.c4 e6: <i>Abgelehntes Damengambit</i> </li>
  <li>  <b>D4</b>  D3 + 3.Nc3 Nf6 4.Nf3 c5/c6: <i>Tarrasch; halbslawische Verteidigung</i> </li>
  <li>  <b>D5</b>  D3 + 3.Nc3 Nf6 4.Bg5: <i>Abgelehntes Damengambit, moderne Variante</i> </li>
  <li>  <b>D6</b>  D5 + 4...Be7 5.e3 O-O 6.Nf3 Nbd7: <i>Abgelehntes Damengambit, orthodoxe Verteidigung</i> </li>
  <li>  <b>D7</b>  1.d4 Nf6 2.c4 g6 with 3...d5: <i>Grünfeld</i> </li>
  <li>  <b>D8</b>  1.d4 Nf6 2.c4 g6 3.Nc3 d5: <i>Grünfeld</i> </li>
  <li>  <b>D9</b>  1.d4 Nf6 2.c4 g6 3.Nc3 d5 4.Nf3: <i>Grünfeld</i> </li>
  </ul>

  <p>
  <b><blue><run ::windows::eco::Refresh E>E</run></blue></b>
  1.d4 Nf6 2.c4 e6; 1.d4 Nf6 2.c4 g6 </li>
  <ul>
  <li>  <b>E0</b>  1.d4 Nf6 2.c4 e6: <i>Katalanisch</i> </li>
  <li>  <b>E1</b>  1.d4 Nf6 2.c4 e6 3.Nf3 (b6): <i>Damenindisch</i> </li>
  <li>  <b>E2</b>  1.d4 Nf6 2.c4 e6 3.Nc3 (Bb4): <i>Nimzo-Indisch</i> </li>
  <li>  <b>E3</b>  E2 + 4.Bg5 or 4.Qc2: <i>Nimzo-Indisch</i> </li>
  <li>  <b>E4</b>  E2 + 4.e3: <i>Nimzo-Indisch, Rubinstein-Variante</i> </li>
  <li>  <b>E5</b>  E4 + 4...O-O 5.Nf3: <i>Nimzo-Indisch, Hauptfortsetzung</i> </li>
  <li>  <b>E6</b>  1.d4 Nf6 2.c4 g6: <i>Königsindisch</i> </li>
  <li>  <b>E7</b>  1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.e4: <i>Königsindisch</i> </li>
  <li>  <b>E8</b>  E7 + 4...d6 5.f3: <i>Königsindisch, Sämisch-Variante</i> </li>
  <li>  <b>E9</b>  E7 + 4...d6 5.Nf3: <i>Königsindisch, Hauptfortsetzungen</i> </li>
  </ul>

  <p><footer>Aktualisiert: Scid vs. PC 4.18, Dezember 2016</footer></p>
}


set helpTitle(D,Author) "Über Scid vs. PC"
set helpText(D,Author) "<h1>Scid vs. PC</h1>
  <ht><img icon></ht>
  <ul> <ul> <ul> <ul> <ul> <ul> <ul>
  <li>$::scidName  Version $::scidVersion</li>
  <br>
  <li>Basiert auf:</li>
  <li>Shane's Chess Information Database 3.6.26</li>
  <li>(C) Steven Atkinson (stevenaaus@yahoo.com), Shane Hudson,</li>
  <li>Pascal Georges und andere.</li>
  <br>
  <li>Lizenziert unter der GNU General Public License.</li>
  <br>
  <li><url http://scidvspc.sourceforge.net/>http://scidvspc.sourceforge.net/</url></li>
  <li>Mailingliste: <url http://www.mail-archive.com/scidvspc-users@lists.sourceforge.net/>Archiv</url>,
  <url https://lists.sourceforge.net/lists/listinfo/scidvspc-users>abonnieren</url></li>
  <li><url https://www.startpage.com/search?q=Tree+site:scidvspc.sourceforge.net/doc/>Online-Hilfe durchsuchen</url> (z.B.).
  <br>
  <li>Verwendet Tcl/Tk Version [info patchlevel]</li>
  </ul> </ul> </ul>
  <p><footer>(Projekt aktualisiert: $::scidVersionDate)</footer></p>
  </p>
"

set helpTitle(D,Related) "Links"
set helpText(D,Related) {<h1>Links</h1>
  <p>
  <ul>
  <li>Scid vs. PC  <url http://scidvspc.sourceforge.net/>http://scidvspc.sourceforge.net/</url></li>
  <li>Projektseite  <url http://sourceforge.net/projects/scidvspc>http://sourceforge.net/projects/scidvspc</url></li>
  <li>Online-Dokumentation <url http://scidvspc.sourceforge.net/doc/Contents.htm>http://scidvspc.sourceforge.net/doc/Contents.htm</url></li>
  <br>
  <li>Datenbank Kingbase <url http://www.kingbase-chess.net/>http://www.kingbase-chess.net/</url></li>
  <li>Spielerinformationsdaten  <url http://sourceforge.net/projects/scid/files/Player Data/>http://sourceforge.net/projects/scid/files/Player Data/</url></li>
  <li>FICS <url http://www.freechess.org>www.freechess.org</url></li>
  <li>FICS-Partienarchive <url http://ficsgames.org>http://ficsgames.org</url></li>
  <li>Kayvan's Cross platform 'docker' images <url https://github.com/ksylvan/scidvspc>https://github.com/ksylvan/scidvspc</url></li>
  <li>Chess Tech Blog, mit einigen ScidvsPC-Anleitungen <url http://chesstech.info/>http://chesstech.info/</url></li>
  <li>Installationsführer Debian/Mint/Ubuntu <url http://www.linuxx.eu/2012/11/scid-vs-pc-installation-guide-ubuntu.html>http://www.linuxx.eu/2012/11/scid-vs-pc-installation-guide-ubuntu.html</url></li>
  <li>Ed Collins' Seite Scid vs. PC <url http://edcollins.com/chess/scidvspc/index.html>http://edcollins.com/chess/scidvspc/index.html</url></li>
  <li>Gorgonians selbsterstellte Figuren <url http://gorgonian.weebly.com/scid-vs-pc.html>http://gorgonian.weebly.com/scid-vs-pc.html</url></i>
  <li>Die Standards PGN und EPD <url http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm>www.saremba.de/chessgml/standards/pgn...</url></li>
  <li>Verbreitete PGN-Erweiterungen <url http://www.enpassant.dk/chess/palview/enhancedpgn.htm>http://www.enpassant.dk/chess/palview/enhancedpgn.htm</url></li>
  <li>PGN von Spielern <url http://www.pgnmentor.com/files.html#players>www.pgnmentor.com/files.html#players</url></li>
  <li>PGN von Turnieren <url http://www.pgnmentor.com/files.html#events>www.pgnmentor.com/files.html#events</url></li>
  <li><url http://www.jrsoftware.org/isinfo.php>Inno setup</url> (um Windows-Installer zu erstellen)</li>
  <li>Professionelle Schachsymbole  <url http://www.virtualpieces.net>www.virtualpieces.net</url></li>
  <li>Tango-Symbole <url http://tango.freedesktop.org/Tango_Desktop_Project>http://tango.freedesktop.org/Tango_Desktop_Project</url></li>
<br>
  <li>Mailingliste abonnieren (man muß Mitglied sein, um in die Liste zu schreiben) <url https://lists.sourceforge.net/lists/listinfo/scidvspc-users>https://lists.sourceforge.net/lists/listinfo/scidvspc-users</url></li>
  <li>Mailinglistenarchiv <url http://www.mail-archive.com/scidvspc-users@lists.sourceforge.net/>http://www.mail-archive.com/scidvspc-users@lists.sourceforge.net/</url></li>
  <li>Programmeriererreferenz <url http://scidvspc.sourceforge.net/doc/progref.html>http://scidvspc.sourceforge.net/doc/progref.html</url></li>
  <li>Entwicklung von Tcl <url www.tcl.tk/about/history.html>www.tcl.tk/about/history.html</url></li>
  <li>UCI-Protokoll <url http://wbec-ridderkerk.nl/html/UCIProtocol.html>http://wbec-ridderkerk.nl/html/UCIProtocol.html</url></li>
  <li>Xboard.Protokoll <url http://www.open-aurec.com/wbforum/WinBoard/engine-intf.html>http://www.open-aurec.com/wbforum/WinBoard/engine-intf.html</url></li>
  </ul>
<p><footer>Aktualisiert: Scid vs PC 4.19, September 2017</footer></p>
}

# Book window help
set helpTitle(D,Book) "Eröffnungsbuchfenster"
set helpText(D,Book) {<h1>Eröffnungsbuchfenster</h1>
  <p>Eröffnungsbücher sind kleine Datenbanken, die ab Partiebeginn die
  Spielzüge und die Häufigkeit ihres Vorkommens verzeichnen. Scids <run
  ::book::Open><green>Eröffnungsbuchfenster</green></run> ermöglicht
  die Durchsicht von Eröffnungsbüchern mit ein paar zusätzlichen Funktionen.
  </p>
  <p><i>Scid verwendet das bekannte <b>Polyglot</b>-Buchformat und
  kommt mit einigen bereits installierten Datenbanken, einschließlich
  gm2600.bin und Elo2400.bin.</i></p>

  <h2>Funktionen</h2>
  <p>In Scid vs PC können zwei Bücher gleichzeitig betrachtet
  werden. Normalerweise werden die Spielzüge in der Reihenfolge ihrer
  Gewichtung aufgelistet. Durch Auswahl von <b>alphabetisch</b> werden
  diese mit gleichen Zügen nebeneinander sortiert.
  </p>
  <p>Die Schaltfläche <b>andere Züge</b> zeigt Züge, die nicht im Buch
  enthalten sind, die aber zu Buchstellungen führen.
  </p>
  <p>Siehe auch unter <a BookTuning>Eröffnungsbuch anpassen</a>.
  </p>

  <h2><name Polyglot>PolyGlot</name></h2>

  <p><i>Scid kommt mit einer modifizierten Version von PolyGlot. Die
  nachstehenden Funktionen erfordern die volle Version des
  Befehlszeilenwerkzeugs
  (<url http://wbec-ridderkerk.nl/html/details1/PolyGlot.html>http://wbec-ridderkerk.nl/html/details1/PolyGlot.html</url>)</i>
  </p>

  <h4>Eröffnungsbücher erstellen</h4>

  <p>Entfernen Sie zuerst Partien. die keine Standardausgangsposition
  aufweisen. Man kann diese mit der <a Searches
  Header>Partiedatensuche</a> finden, indem das Merkmal
  Standardausgangsposition gesetzt wird (im Bereich "Finde Partien mit
  Markierungen (Flags)"). Dann werden der Filter negiert, die Partien
  nach PGN <a Export>exportiert</a> und auf der Befehlszeile gibt man
  dann an: <br> <b>polyglot make-book -pgn GAMES.PGN -bin BOOK.BIN
  -min-game 1 -max-ply 30</b> <br>Siehe die PolyGlot-Dokumentation für
  weitere Optionen.  </p>

  <h4>Zwei Eröffnungsbücher vermischen</h4>
  <p>
  <b>polyglot merge-book -in1 w.bin -in2 b.bin out book.bin</b>
  </p>
  <p><footer>Aktualisiert: Scid vs. PC 4.19 June, 2018</footer></p>
  }

# Tactical game window help
set helpTitle(D,ComputerGame) "Gegen den Computer spielen"
set helpText(D,ComputerGame) {

  <h1><name PhalanxGame>Gegen den Computer spielen</name></h1>

  <p>Scid bietet zwei Wege, um gegen den Computer zu spielen, nämlich
  gegen <a ComputerGame PhalanxGame>Phalanx</a> oder irgendein
  installiertes <a ComputerGame UCIGame>UCI-Schachprogramm</a>.
  </p>
  <p><i>Andere Computergegner gibt es in den Trainingsfunktionen
  des <a Analysis>Analysefensters</a>, in
  den <a TB>Endspieldatenbanken</a> und im <a Tree>Zugbaum</a></i>.
  </p>
  <p>Um mit Schwarz zu spielen, drehen Sie einfach vor Partiebeginn
  das Schachbrett. Die Uhren können durch Drücken von "x" auf der Uhr
  von Weiß ausgeblendet werden.</p>

  <h2>Spiel gegen Phalanx</h2>
  <p><run ::tacgame::config><green>Phalanx</green></run> ist ein altes
  XBoard-Schachprogramm, das von Dusan Dobes geschrieben wurde. Man
  kann damit normales Schach, Fischer-Schach (Rochaden werden nicht
  unterstützt) oder mit zufälliger Bauernaufstellung spielen.
  </p>
  <p>Dusan hat Phalanx zuletzt mit komplexerem Code auf eine bessere
  Spielstärke gebracht, um auf unterschiedlichen Elo-Ebenen zu
  spielen. Das Niveau kann grob angepaßt werden zwischen 1400
  (Anfänger) bis zu 2400. Es gibt auch einen zuschauenden
  Computertrainer (Toga II), der sich meldet, wenn Phalanx einen
  groben Fehler gemacht hat.
  </p>
  <p><b>Analysezeit der Engine begrenzen</b><i> ist die für den
  Computertrainer die zulässige Zeit für die Prüfung der Spielzüge auf
  Fehler. Wenn diese Zeit nicht begrenzt wird, rechnet der Trainer im
  Hintergrund.</i></p>

  <h2><name UCIGame>Gegen ein UCI-Schachprogramm spielen</name></h2>

  <p>Stärkere Gegner kann man gegen jedes
  installierte <run ::sergame::config><green>UCI-Schachprogramm</green></run>
  finden. Standardmäßig sind dies Stockfish und Toga, man kann aber
  <a Analysis List>weitere Programme hinzufügen</a>.
  </p>
  <p>Die Programmparameter können konfiguriert werden, um die Leistung
  anzupassen oder um Programmfunktionen zu nutzen. In Toga können
  (unter anderem) <b>Engine-Buch verwenden</b>
  und <b>Eröffnungsbuch</b> aktiviert werden.
  </p>
  <p>Andere Konfigurationsabschnitte sind einfach, ausgenommen:
  </p>
  <ul>
  <li><b>Feste Tiefe (Fixed Depth)</b> setzt nicht die Zeit pro
  Partie, sondern die Tiefe, die das Programm in Halbzügen rechnet. Da
  dies die Möglichkeit verhindert, erforderlichenfalls tiefer zu
  rechnen, sieht das Programm bestimmte Mattführungen und
  Kombinationen nicht, das Programm spielt vielleicht schwächer und
  bietet so einen besseren Partner für Trainingszwecke.
  </li>
  <li><b>Knoten (Nodes)</b> ist ähnlich wie die Suchtiefe, aber hier
  muß das Schachprogramm nach der Bewertung einer bestimmten Anzahl an
  Stellungen ziehen (Voreinstellung ist 10.000).
  </li>
  <li><b>Ständiges Berechnen (Permanent thinking)</b> (manchmal auch
  als "nachdenken" (ponder) bezeichnet) ermöglicht dem Schachprogramm
  auch dann zu rechnen, wenn der Gegner am Zug ist. Falls dies
  ausgeschaltet ist, beendet das Schachprogramm die Analyse, wenn der
  Spieler am Zug ist. Falls die Partie auf eine feste Zeit pro Zug
  eingestellt ist, schwächt dies das Schachprogramm. Auf der anderen
  Seite könnte das Programm sofort ziehen, falls der Spieler den Zug
  macht, den es während seiner Bedenkzeit analysiert hatte.</li>

  <li><b>Trainer schaut zu</b> bietet dem Spieler an, einen Zug
  zurückzunehmen, falls der Computer meint, es sei ein grober
  Fehler. Der benutzte Fehlerwert ist derjenige, der vom Informator
  als "Schwacher Zug" (und nicht als "Fehler") bezeichnet wird. Dies
  kann im Informatorfenster konfiguriert werden, wo man auch die
  Einstellung für "Partie wird gewonnen" verändern kann. Oberhalb
  dieser Schwelle werden grobe Fehler nicht mehr beachtet.</li>
  </ul>

  <p><footer>Aktualisiert: Scid vs. PC 4.21 Dezember 2019</footer></p>
}

set helpTitle(D,Correspondence) "Fernschach"
set helpText(D,Correspondence) {<h1>Fernschach</h1>

  <p>Fernschach kann auf zwei Arten gespielt werden:
  </p>
  <ul>
  <li><a CCeMailChess>E-Mail</a>. Sendet die aktuelle Partie (ohne
  Kommentare und Varianten) an Ihren Gegner, wenn Sie Ihren Zug
  ausführen.
  </li>
  <li>Benutzung eines <a CCXfcc>Xfcc</a>-Schachservers. Es werden
  externe Werkzeuge verwendet, um Partien von Ihrem Konto zu holen
  und sie für die Synchronisation an Scid zu übergeben. Nachdem Sie
  Ihren Zug gemacht haben, wird er unter Verwendung von Xfcc
  ebenfalls an Ihren Gegner übermittelt. Holen und senden sind als
  externe Werkzeuge implementiert zwecks leichter Erweiterung, falls
  andere Protokolle erscheinen.
   </li>
  </ul>
  <p>Die Funktionen können über das
  Menü <green><b>Spielen--<gt>Fernschach</b></green> oder über
  das <run ::CorrespondenceChess::CCWindow><green>Fernschach</green></run>-Fenster
  erreicht werden. Dieses Fenster enthält Schaltflächen, um durch
  laufende Partien zu navigieren, Tastenkürzel für das Holen von
  Partien mittels Xfcc-Protokoll und für das Synchronisieren von
  E-Mail-Partien ebenso wie eine Konsole, die anzeigt, welche
  Nachrichten gesendet oder abgerufen wurden. Außerdem enthält es eine
  Liste der laufenden Partien, die von Ihrem Posteingangsverzeichnis
  abgerufen wurden.
  </p>

  <p>Um diese Funktionen zu nutzen, muß eine Datenbank vom Typ
  "Fernschach" geöffnet werden. Falls Sie eine solche Datenbank noch
  nicht haben, dann erstellen Sie eine neue und setzen ihren Typ über
  das <a Maintenance>Wartungsfenster</a> auf "Fernschach" (durch
  Auswahl des Fernschachsymbols mit der Symbolschaltfläche oberhalb
  von "Partien im Filter"). Das Setzen des Typs ist wichtig, da Scid
  anhand dieses Typs die Datenbank für eine Synchronisation erkennt.
  Da die Datenbank bei der Erstellung noch leer ist, behandelt Scid
  bei der ersten Synchronisierung alle erhaltenen Fernschachpartien
  als neue Partien und fügt sie dieser Datenbank hinzu.
  </p>

  <p>Wenn keine Datenbank des Typs "Fernschach" aktuell geöffnet ist,
  dann fordert Scid Sie auf, dies zu tun. Öffnen Sie aber nicht mehr
  als eine Datenbank dieses Typs, da Scid sonst nicht weiß, welche zu
  verwenden ist.
  </p>

  <h3>Grundfunktionalität</h3>

  <p>Wenn einmal alles korrekt eingerichtet ist, dann können die
  Fernschachfunktionen durch folgende Schaltflächen genutzt werden:
  <ul>
  <li><button tb_CC_Retrieve> ruft Fernschachpartien ab. Das externe
  Abrufprogramm wird aufgerufen und die Partien werden
  geholt. Zusätzlich werden andere Partien, die in Scids Posteingang
  gespeichert sind (siehe unten) mit der aktuellen
  Fernschachdatenbank synchronisiert.
  </li>
  <li><button tb_CC_Prev> Geht in Scids Posteingang zur vorherigen
  Partie.
  </li>
  <li><button tb_CC_Next> Geht in Scids Posteingang zur nächsten
  Partie.
  </li>
  <li><button tb_CC_Send> Sendet Ihren Zug an den Gegner entweder
  durch Erstellen einer neuen E-Mail-Nachricht mit Ihrem bevorzugten
  Mail-Programm oder im Falle von Xfcc durch Senden des Zuges an
  einen Schachserver.
  </li>
  <li><button tb_CC_delete> Leert Ihre
  Posteingangs-/-ausgangsverzeichnisse.
  </li>
  <li><button tb_CC_online> wird angezeigt, wenn die Partienliste
  innerhalb der laufenden Scid-Sitzung mit dem Server aktualisiert
  wurde. Die Kurzinformation dieses Symbols zeigt Datum und Uhrzeit
  der letzten Aktualisierung.
   </li>
  <li><button tb_CC_offline> zeigt an, daß die Xfcc-Statussymbole
  aus den gespeicherten Ergebnissen wiederhergestellt wurden. In der
  aktuellen Scid-Sitzung hat keine Aktualisierung stattgefunden. Die
  Kurzinformation dieses Symbols zeigt Datum und Uhrzeit der letzten
  Aktualisierung.
  </li>
  </ul>
  </p>
  <p>Siehe auch unter <a CCIcons>Fernschachsymbole</a>.
  </p>

  <h3>Konfiguration</h3>

  <p>Fernschach in Scid basiert auf einer normalen Scid-Datenbank, die
  die Partien und einige externe Hilfsprogramme für Scid enthält, die
  die "nichtschachlichen Teile" behandeln. Diese Hilfsprogramme und
  Parameter müssen einmal eingerichtet werden und werden danach für
  den weiteren zukünftigen Gebrauch gespeichert.
  </p>

  <p>Der Konfigurationsdialog ist
  in <run ::CorrespondenceChess::config><green>Spielen--</gt>Fernschach>Einstellungen...</green></run>
  zu finden. Einzelheiten werden in <a CCSetupDialog>Fernschach
  konfigurieren</a> beschrieben. Drücken Sie <b>Ok</b>, um Ihre Optionen
  automatisch zu speichern.
  </p>

  <h3>Partien abrufen</h3>
  <p>Abhängig davon, ob Sie Fernschach per E-Mail oder über einen
  Schachserver spielen, unterscheidet sich der Prozeß des Abrufens
  leicht. Üblicherweise resultiert dies in einem Satz von Partien im
  PGN-Format, die in Scids Posteingangsverzeichnis enthalten
  sind. Dies bietet auch die Möglichkeit des automatischen Abrufens
  mittels externer Software.
  </p>
  <p>Wenn die Partien einmal in Scids Posteingang
  sind, dann verarbeitet der Aufruf <green>Posteingang
  synchronisieren</green> aus dem Menü den Posteingang und fügt neue
  Züge den bereits in der Datenbank enthaltenen Partien
  hinzu. Außerdem werden Partien, die nicht in der Fernschachdatenbank
  gefunden werden, als neue Partien hinzugefügt.
  </p>

  <p><a CCeMailChess>Fernschach per E-Mail</a> beschreibt die
  Einzelheiten für die Benutzung von E-Mail,
  während <a CCXfcc>Fernschach über Schachserver</a> das gleiche für
  Fernschachserver beschreibt.
  </p>

  <h3>Partien durchgehen</h3>
  <p>Nachdem Partien abgerufen wurden, sind sie in Scids
  Ablagedatenbank geladen und neue Züge werden in der geöffneten
  Fernschachdatenbank hinzugefügt und gespeichert. Der bequemste Weg,
  um durch die Partien zu gehen, ist mit Hilfe der zwei
  Schaltflächen <button tb_CC_Prev> und <button tb_CC_Next>, die zur
  vorherigen bzw. nächsten Partie gehen.  Der Unterschied zu den
  Funktionen im Menü <green>Spielen</green> ist, daß diese zwei
  Schaltflächen nur zwischen den Partien in Scids Posteingang laufen,
  die als für Ihre aktuell laufenden Partien gehalten werden. Die
  Fernschachdatenbank könnte selbstverständlich viel mehr Partien
  enthalten, aber normalerweise wollen Sie sie nicht alle durchgehen
  um herauszufinden, was Ihr Gegner in einer laufenden Partie gezogen
  hat.
  </p>
  <p>Beachten Sie, daß eine Partiendatensuche erforderlich ist, um
  einige Felder aufzunehmen, die von Scid nicht indiziert
  werden. Deshalb könnte es nicht ratsam sein, Ihre Fernschachpartien
  in einer riesigen Referenzdatenbank zu speichern, da die Suchzeiten
  sehr lang werden könnten. Wenn Sie viel spielen und Ihre eigene
  Datenbank wird sehr umfangreich, dann können die Suchzeiten
  reduziert werden, indem die beendeten Partien in eine
  Archivdatenbank verschoben werden oder einfach durch Erstellen einer
  neuen Datenbank für die laufenden Partien. Scid behandelt alle
  Partien, die nicht in der Fernschachdatenbank vorhanden sind,
  bereits als neue Partien und fügt sie automatisch hinzu. Deshalb
  reicht es aus, eine leere Datenbank vom Typ "Fernschach" zu öffnen
  und <green>"Posteingang synchronisieren"</green> aufzurufen, um alle
  aktuell laufenden Partien zu importieren.
  </p>
  <p>Ein alternativer Weg, um zu einer bestimmten Partie zu springen,
  ist, auf diese innerhalb der Partienliste doppelzuklicken.
  </p>
  <p>Beachten Sie, daß, wenn Sie Ihre Spielernamen korrekt
  eingerichtet haben (mittels <green>Meine Spielernamen...</green> im
  Menü Optionen), Scid das Schachbrett für Sie dreht, damit Sie immr
  von unten nach oben spielen. Siehe auch <a Options
  MyPlayerNames>Meine Spielernamen</a> für Details.
  </p>

  <h3>Einen Zug analysieren und ausführen</h3>
  <p>Für Fernschachpartien können alle Analysefunktionen verwendet
  werden. Varianten, Kommentare usw. können wie in normalen
  Partieanalysen hinzugefügt werden. Wenn man fertig ist, nimmt Scid
  den der Partie hinzugefügten letzten Halbzug und behandelt ihn als
  einen abzusendenden Zug. Es wird hier nicht geprüft, ob nur ein
  Halbzug hinzugefügt wurde oder welche Seite am Zug ist. Deshalb darf
  nur ein Halbzug der Partiefortsetzung hinzugefügt werden! Falls ein
  Schachserver verwendet wird, sendet Scid auch den letzten dem
  Server hinzugefügten Kommentar, was für die Kommunikation mit dem
  Gegner nützlich sein kann. Bei E-Mail-Schach kann dies durch eine
  normale Mail-Nachricht erfolgen, so daß dort alle Kommentare
  entfernt sind.
  </p>
  <p>Wenn man die Sendeschaltfläche <button tb_CC_Send> drückt, muß
  Scid den Typ der Fernschachpartie festlegen (E-Mail- oder
  Server-Partie) und dann entweder Ihr E-Mail-Programm oder das
  externe Sendeprogramm aufrufen, um Ihren Zug zu übermitteln. Der
  Aufruf von <green>Zug senden</green> ist gleichbedeutend mit dieser
  Schaltfläche. Im anderen Fall kann <green>Zug per E-Mail
  senden...</green> verwendet werden, um die aktuelle Partie per
  E-Mail zu senden. Im Falle einer E-Mail-Partie ist diese Funktion
  gleichbedeutend mit <green>Zug senden</green>. Im Falle einer
  serverbasierten Partie wird eine E-Mail-Nachricht erstellt. Beachten
  Sie jedoch, daß sie nicht notwendigerweise einen eindeutigen
  Empfänger enthält, da E-Mail-Adressen im serverbasierten Fernschach
  nicht ausgetauscht werden.
  </p>

  <p><footer>Aktualisiert: Scid 3.6.25, August 2008</footer></p>
  }

set helpTitle(D,CCIcons) "Fernschachsymbole und Statuskennzeichen"
set helpText(D,CCIcons) {
  <h1>Fernschachsymbole und Statuskennzeichen</h1>
  <p>Um die Anzeigen zu verkürzen wird in der Partienliste ein Satz
  von Symbolen verwendet. Einige von ihnen sind nur in bestimmten
  Situationen sichtbar, einige sind nur für Xfcc-Partien gültig und
  einige für E-Mail-Partien. Diese Kennzeichen werden intern
  gespeichert und zum Stand der letzten Serveraktualisierung
  wiederhergestellt, falls keine Internetverbindung verfügbar ist.
  </p>
  <ul>
  <li><button tb_CC_online> wird gezeigt, wenn die Partienliste
  innerhalb der laufenden Scid-Sitzung vom Server erneuert
  wurde. Die Kurzinformation für dieses Symbol zeigt Datum und
  Uhrzeit der letzten Aktualisierung.
   </li>
  <li><button tb_CC_offline> zeigt an, daß die Xfcc-Statusanzeigen
  aus dem gespeicherten Ergebnis wiederhergestellt wurden. In der
  laufenden Scid-Sitzung hat keine Aktualisierung stattgefunden. Die
  Kurzinformation für dieses Symbol zeigt Datum und Uhrzeit der
  letzten Aktualisierung.
  </li>
  <li><button tb_CC_envelope> Dies ist eine E-Mail-Partie. In diesen
  Partien sind aufgrund der Beschränkung dieses Mediums viele der
  Statuskennzeichen von Xfcc-Partien nicht verfügbar.
  </li>
  <li><button tb_CC_yourmove> Sie sind am Zug. Hinweis: dieser
  Status wird nur aktualisiert, wenn Sie Ihre Partien mit dem
  Server synchronisieren, d.h., es bezieht sich immer auf den
  Serverstatus bei der letzten Synchronisation.
  </li>
  <li><button tb_CC_oppmove> Der Gegner ist am Zug. Hinweis: dieser
  Status wird nur aktualisiert, wenn Sie Ihre Partien mit dem
  Server synchronisieren, d.h., es bezieht sich immer auf den
  Serverstatus bei der letzten Synchronisation.
  </li>
  <li><button tb_CC_draw> Partiebeendigung durch Remisvereinbarung.
  </li>
  <li><button tb_CC_book> Für diese Partie ist die Benutzung von
  Eröffnungsbüchern erlaubt.
  </li>
  <li><button tb_CC_database> Für diese Partie ist die Benutzung
  von Datenbanken erlaubt.
  </li>
  <li><button tb_CC_tablebase> Für diese Partie ist die Benutzung
  von Endspieldatenbanken (z.B. Nalimov) erlaubt.
  </li>
  <li><button tb_CC_engine> Für diese Partie ist die Benutzung von
  Schachprogrammen erlaubt. Manchmal werden diese Partien auch als
  "Advanced Chess" bezeichnet.
  </li>
  <li><button tb_CC_outoftime> Ihr Gegner hat die Zeit
  überschritten. Sie könnten Gewinn wegen Zeitüberschreitung
  reklamieren.
  </li>
  <li><button tb_CC_message> Ihr Gegner hat zusammen mit seinem
  letzten Zug eine Nachricht geschickt. Überprüfen Sie die
  Partienotation.
  </li>
  </ul>

  <p>In Xfcc-Partien kann jedes Land des Gegners durch die betreffende
  Flagge angezeigt werden, falls der Server diese Information zur
  Verfügung stellt. Für E-Mail-Partien kann dies durch Hinzufügen von
  zusätzlichen PGN-Kennzeichnungen erreicht werden
  mit <i>whiteCountry</i> und <i>blackCountry</i>, beide gefolgt von
  dem internationalen Drei-Buchstaben-Code gemäß ISO 3166-1 (z.B.
  "EUR" <button flag_eur>, "USA" <button flag_usa>, "GBR"
  <button flag_gbr>, "FRA" <button flag_fra>, "RUS" <button flag_rus>,
  "CHN" <button flag_chn>, ...).
  </p>

  <p>Siehe auch das Kapitel <a Correspondence>Fernschach</a> für
  allgemeine Informationen.
  </p>
  }


set helpTitle(D,CCXfcc) "Fernschachserver"
set helpText(D,CCXfcc) {<h1>Fernschachserver/Xfcc</h1>

  <p>Es gibt über das Internet verteilt verschiedene
  Fernschachserver. Üblicherweise werden sie mittels eines
  Webbrowsers benutzt, so daß keine gesonderte Software erforderlich
  ist. Jedoch bieten viele von ihnen mit einem Protokoll, das Xfcc
  genannt wird, auch eine Schnittstelle für spezielle Schachprogramme
  an. Die Einbindung von Xfcc wird in Scid über externe Hilfsprogramme
  vorgenommen, die im <a CCSetupDialog>Konfigurationsdialog</a> für
  Fernschach vorgenommen wird.
  </p>
  <p><i>Scids Xfcc-Unterstützung hängt von den Tcl-Paketen
  </i><b>http</b><i>, </i><b>tDOM</b><i> und </i><b>TLS</b><i>
  ab. Siehe
  das <green><run raiseSplashWindow>Willkommensfenster</run></green>,
  um festzustellen, ob diese Pakete gefunden wurden.
  </p>

  <h3>Eine neue Partie beginnen</h3>
  <p>Xfcc erlaubt es selbst nicht, eine neue Partie zu beginnen. Nach
  einem Gegner suchen und eine Partie anzufangen wird stattdessen vom
  Schachserver auf dessen Webseite durchgeführt. Wenn die Partie jedoch
  einmal gestartet wurde, kann Scid verwendet werden, um die Züge des
  Gegners abzurufen, sie der internen Datenbank hinzuzufügen, sie zu
  analysieren und so weiter. Alle Funktionen von Scid stehen dem
  Anwender zur Verfügung, obwohl manche Spielmodi dies nicht zulassen
  (z.B. erlauben normale Partien nicht die Nutzung eines
  Schachprogramms für Analysen).
  </p>

  <h3>Partien abrufen</h3>
  <p>Öffnen Sie eine Datenbank, die Fernschachpartien enthält. Diese
  Datenbank muß vom Typ "Fernschach" sein.
  </p>
  <p>Hinweise:
  <ul>
  <li>Wenn Scid keine Fernschachdatenbank findet, werden Sie
   informiert, eine zu öffnen.
   </li>
  <li>Wenn die Datenbank keine Partien enthält, die vom Server geholt
  wurden, dann werden diese als neue Partien behandelt und automatisch
  der Datenbank hinzugefügt.
  </li>
  <li>Scid benutzt die erste Datenbank vom Typ "Fernschach", die
  aktuell geöffnet ist. Aus diesem Grund sollte zu einer Zeit nur eine
  solche Datenbank geöffnet sein.
  </li>
  </ul>
  <p>Xfcc ruft immer sofort alle Partien ab, die unter Ihrer
  Benutzerkennung auf einem speziellen Server zur Verfügung stehen. Um
  die Partien zu holen, drücken Sie einfach die
  Schaltfläche <button tb_CC_Retrieve> oder wählen Sie <green>Partien
  abrufen</green> aus dem Menü <green>Fernschach</green>. Da für einen
  Partienabruf eine Serververbindung erforderlich ist, stellen Sie
  sicher, daß Ihr System Internetzugang hat. Scid startet das
  Hilfsprogramm, welches im
  Dialogfenster <a CCSetupDialog>Einstellungen für Fernschach</a>
  konfiguriert wurde. Dieses legt die Partien im PGN-Format im
  Posteingang von Scid ab. Es kann etwas dauern, die Antwort
  abzurufen, seien Sie deshalb geduldig. Nachdem die Partien abgerufen
  wurden, wird die Fernschachdatenbank entsprechend aktualisiert.
  </p>

  <p><b>Hinweis</b> Durch Verwendung der
  Schaltfläche <button tb_CC_delete> können Sie Ihre gesamten Postein-
  und -ausgangsverzeichnisse leeren.
  </p>

  <p>Nachdem die Partien einmal abgerufen wurden, werden innerhalb der
  Fernschachdatenbank ihre Entsprechungen gesucht und die Partiezüge
  werden hinzugefügt. Da Xfcc-Server verschiedene Wege anbieten
  könnten, um Züge einzufügen (über Webseite, Mobiltelefon oder
  sonstige Programme ...), könnte es gut sein, daß Scid die halbe
  Partie der Datenbank hinzufügen muß. Dies stellt kein Problem
  dar. Scid fügt alle Züge hinzu, die vom Server in den Partien
  zurückgeliefert wurden. Scid wird jedoch nicht die Partie vom Anfang
  an ersetzen, da dann alle Ihre Analysen verloren gehen
  könnten. Daher ist es <b>wichtig zu wissen</b>, daß Sie keine Züge
  zu Ihrer Hauptfortsetzung jenseits Ihres eigenen letzten Zuges
  einfügen dürfen! Um Fortsetzungen hinzuzufügen, benutzen Sie bitte
  Varianten!
  </p>
  
  <p>Xfcc-Datenbankpartien bieten innerhalb der Partienliste
  umfangreiche Statusanzeigen. Diese Information ist jedoch nur
  verfügbar, wenn Scids interne Xfcc-Unterstützung genutzt wird. Die
  folgenden Symbole sind für eine visuelle Anzeige:
  <ul>
  <li><button tb_CC_draw> Mit dem letzten Zug wurde Remis vereinbart.
  </li>
  <li><button tb_CC_yourmove> Sie sind am Zug.
  </li>
  <li><button tb_CC_oppmove> Ihr Gegner ist am Zug.
  </li>
  <li><button tb_CC_book> Diese Partie erlaubt die Verwendung von Eröffnungsbüchern.
  </li>
  <li><button tb_CC_database> Diese Partie erlaubt die Verwendung
  von Datenbanken.
  </li>
  <li><button tb_CC_tablebase> Diese Partie erlaubt die Verwendung von Endspieldatenbanken.
  </li>
  <li><button tb_CC_engine> Diese Partie erlaubt die Verwendung von
  Schachprogrammen.
  </li>
  </ul>
  <p>Des weiteren zeigt Scid sowohl die Uhren für beide Seiten <b>zum
  Zeitpunkt der Synchronisation</b> als auch die gespielte Variante
  an. Beachten Sie jedoch, daß Scid gegenwärtig nur normales Schach
  unterstützt.
  </p>
  <p>Hinweis: nur wenn das passende Symbol (Buch, Datenbank,
  Endspieldatenbank, Schachprogramm) angezeigt wird, ist die Benutzung
  dieser Hilfsmittel erlaubt. Ansonsten ist dies verboten. Seien Sie
  fair und respektieren Sie diese Regeln.
  </p>
  <p>Hinweis: falls andere Quellen Partien in Ihrem Posteingang
  platziert haben (z.B. von Ihrem E-Mail-Fernschach), werden diese im
  Abrufvorgang ebenfalls synchronisiert, da der gesamte Posteingang
  abgearbeitet wird. Dies erlaubt es, E-Mail-Partien dem Posteingang
  hinzuzufügen, dann zu Scid zu wechseln, die
  Schaltfläche <button tb_CC_Retrieve> zu drücken und alle Partien
  sind aktuell. Partien, die noch nicht in der Datenbank gefunden
  wurden, werden als neue Partien behandelt und der Datenbank hinzugefügt.
  </p>

  <p><b>Hinweis für Programmierer:</b> das Abrufprogramm wird mit dem
  Posteingangspfad als Parameter aufgerufen. Es soll alle Serverkonten
  abrufen und korrekt formatierte PGN-Dateien im genannten Pfad
  ablegen. Diese Dateien sollten zusätzliche Partieinformationsfelder
  enthalten, so wie sie vom Hilfsprogramm cmail verwendet werden
  (siehe <a CCeMailChess>Fernschach per E-Mail</a> bezüglich
  Informationen zu den erforderlichen Feldern).
  </p>

  <p><footer>Aktualisiert: Scid 3.6.23, März 2008</footer></p>
  }

set helpTitle(D,CCeMailChess) "Fernschach per E-Mail"
set helpText(D,CCeMailChess) {<h1>Fernschach per E-Mail</h1>

  <p>E-Mail bietet einen bequemen Weg,
  um <a Correspondence>Fernschach</a> zu spielen. Die
  Standard-Unix-Anwendung ist XBoard und sein cmail-Helfer, da es eine
  schnelle E-Mail-Verarbeitung hat und die PGN-Vorgaben einhält. Dies
  ist auch das von Scid verwendete Modell. Solche Partien können unter
  Wahrung der PGN-Kopfdaten mit jedem Gegner gespielt werden, der ein
  Hilfsprogramm für den Umgang mit PGN hat.
  </p>
  <p>Scid kann auch durch Kompatibilität mit cmail und XBoard fast
  automatisch mit E-Mail-Fernschachpartien umgehen. Es funktioniert
  durch Senden der Partien als PGN-Anhang unter Einfügen von
  bestimmten Kopfdaten, die es ermöglichen, die Partien zu erkennen
  und untereinander zu sortieren. Aus diesem Grund muß man beim
  Bearbeiten der Kopfdaten vorsichtig sein. Felder/Kennzeichen mit
  eindeutigen Werten müssen genau auf diese Werte gesetzt werden. Bei
  Beginn einer Partie erledigt Scid dies automatisch, aber
  Sie <b>dürfen sie nicht</b> überschreiben oder löschen.
  </p>
  <p>Wesentliche Kopfdaten sind
  </p>
  <ul>
  <li><term>Event</term>: standardmäßig "Email correspondence game"
  </li>
  <li><term>Site</term>: muß "NET" sein
  </li>
  <li><term>Mode</term>: muß "EM" sein
  </li>
  <li><term>WhiteNA</term>: enthält die E-Mail-Adresse des
  Weißspielers. Beachten Sie, daß nur die reine Adresse in der
  Form <term>user@host.org</term> gespeichert wird.
  </li>
  <li><term>BlackNA</term>: enthält die E-Mail-Adresse des
  Schwarzspieler, ähnlich wie WhiteNA.
  </li>
  <li><term>CmailGameName</term>: enthält eine <b>eindeutige</b>
  Kennung für die Partie. Dies wird verwendet, um Partien
  untereinander zu sortieren.
  <p>Während Scid einige Datenbankindizes nutzen könnte, ist dies
  für nichtdatenbankbasierte Hilfsprogramme wie cmail nicht
  möglich. Aus diesem Grund wird der
  Parameter <term>CmailGameName</term> verwendet. Er muß eindeutig
  sein! Der einfachste Weg ist so etwas wie die
  Form <term>xx-yy-yyyymmdd</term>, wo xx die Kurzform für den
  Weißspieler darstellt, yy für den Schwarzspieler und yyyymmdd für
  das aktuelle Datum.
  </p>
  <p>Für Xfcc-basierte Partien muß dieses Feld ebenfalls auf eine
  eindeutige Kennung gesetzt werden, aber dort können der
  Servername und die eindeutige Partienummer auf diesem Server
  verwendet werden, das ist die Kennung in der
  Form <term>MeinXfccServer-12345</term>.
  </p>
  </li>
  </ul>
  <p>E-Mail-basierte Partien enthalten nicht diese erweiterten
  Statuscodes wie Xfcc. Diese Partien haben das
  Symbol <button tb_CC_envelope>, um anzuzeigen, daß sie auf E-Mail
  beruhen.
  </p>

  <h3>Eine neue Partie beginnen</h3>
  <p>Dies öffnet einen Dialog für die Eingabe des eigenen Namens und
  des Gegners, so wie sie in den Kopfdaten erscheinen sollen wie auch
  in den E-Mail-Adressen beider Parteien. Außerdem muß
  eine <b>eindeutige</b> Partiekennung eingefügt werden. Das
  einfachste hierfür ist so etwas in der Form
  von <term>xx-yy-yyyymmdd</term>, wo xx eine Kurzform für den
  Weißspieler ist, yy eine für den Schwarzspieler und yyyymmdd das
  aktuelle Datum. Diese Kennung ist Text und es ist wichtig, die
  Partien eindeutig zu erkennen. Anwender von cmail kennen diese
  Kennung auch als <i>Partiename</i>. Sie darf nur Buchstaben und
  Ziffern, das Minuszeichen und den Unterstrich enthalten. Bitte
  vermeiden Sie andere Zeichen.
  </p>
  <p>Nachdem der Dialog durch Drücken von <b>[Ok]</b> verlassen wurde,
  wird eine neue Partie an die aktuell geladene Fernschachdatenbank
  angehängt und die PGN-Kopfdaten werden entsprechend gesetzt. Machen
  Sie jetzt einfach Ihren Zug und senden ihn wie unten beschrieben ab.
  </p>

  <h3>Partien abrufen</h3>

  <p>Scid verarbeitet Ihr Postfach nicht automatisch. Dies würde, wenn
  man den großen Umfang an möglichen Einrichtungen für Post
  berücksichtigt, eine riesige Menge an Programmcode erfordern. Aus
  diesem Grund setzt Scid auf Ihr normals E-Mail-Programm, das für
  diesen Zweck weitaus geeigneter ist als Scid es je sein kann. Um
  eine Partie nach Scid zu bekommen, speichern Sie einfach die
  angehängte PGN-Datei in den Posteingang von Scid und und verarbeiten
  diese entweder durch die Menübefehle <green>Partien abrufen</green>
  oder <green>Posteingang synchronisieren</green>. Der Unterschied
  ist, daß im ersten Fall der Posteingang zusätzlich mit Partien aus
  anderen Quellen (z.B. Xfcc) gefüllt wird, entweder durch die interne
  Xfcc-Unterstützung oder durch ein extern aufgerufenes
  Abrufprogramm. Deshalb ist die Schaltfläche <button tb_CC_Retrieve>
  der bequemste Weg, falls Sie beide Arten von Fernschach benutzen.
  </p>
  <p><b>Hinweis</b> Der Menübefehl <green>Partien abrufen</green> oder
  die Schaltfläche <button tb_CC_Retrieve> holen <b>nicht</b> Ihre
  E-Mail-Nachrichten ab! Sie müssen Ihre PGN-Dateien von Hand im
  Posteingang speichern. Wahrscheinlich kann dies durch Ihr
  E-Mail-Programm automatisiert werden (auf Unix-Systemen ist die
  Einrichtung eines Mime-Handlers mittels <term>.mailcap</term>
  einfach genug.)
  </p>
  <p><b>Hinweis</b> Durch Vewendung von <button tb_CC_delete> können
  Sie Ihre gesamten Postein- und -ausgangsverzeichnisse leeren.
  </p>

  <h3>Die Antwort absenden</h3>

  <p>Nachdem Sie Ihren Zug gemacht haben, senden Sie ihn über das Menü
  entweder per <green>Zug per E-Mail senden</green> oder
  durch <green>Zug senden</green>, was gleichbedeutend ist
  mit <button tb_CC_Send>. Letzeres bringt Scid dazu, die Partie als
  E-Mail-Fernschach zu erkennen und sie per E-Mail zu senden, während
  die erstere Methode Scid zwingt, eine E-Mail-Nachricht zu erstellen.
  </p>
  <p>Selbstverständlich entfernt Scid irgendwelche Kommentare und
  Varianten aus der Partie, bevor sie der ausgehenden E-Mail
  hinzugefügt wird, da Sie wahrscheinlich nicht Ihre Analysen
  mitsenden wollen.
  </p>
  <p>Falls ein GUI-Mailprogramm genutzt wird, dann ist sein normales
  Mailerstellungsfenster geöffnet. Die Adresse Ihres Gegners ist
  vorausgefüllt, ebenso wie ein allgemeiner Betreff, der die
  Partiekennung für leichtes Filtern enthält und die BCC-Adresse,
  falls sie im <a CCSetupDialog>Konfigurationsdialog</a> angegeben
  wurde. Der Nachrichtenteil enthält die FEN der Schlußstellung und
  die Liste der Züge, die bis dahin gemacht wurden. Auf diesem Weg
  kann Ihr Gegner schnell Ihren Zug nachsehen. Schlußendlich fügt Scid
  die laufende Partie einschließlich Ihres Zuges im PGN-Format der
  Nachricht hinzu.
  </p>
  <p>Wenn ein mailx-kompatibles Hilfsprogramm verwendet wird, dann
  wird kein Fenster geöffnet und die Nachricht wird durch Aufruf des
  Hilfsprogramms, das im Hintergrund angegeben wurde, unsichtbar
  abgesandt. In diesem Fall enthält die erstellte Nachricht die
  PGN-Notation ebenfalls im Nachrichtentext.
  </p>
  <p>Beachten Sie, daß E-Mail-Schach durch Senden der ganzen PGN-Datei
  funktioniert. Sie müssen deshalb nicht mehr als Ihren Halbzug
  hinzufügen. Scid prüft hier nicht, ob der Hauptfortsetzung mehr als
  ein Halbzug hinzugefügt wurde, einfach, weil Scid nicht weiß,
  welcher Zug es war, wenn Sie Ihren absenden.
  </p>
  <p><footer>Aktualisiert: Scid 3.6.23, März 2008</footer></p>
  }

set helpTitle(D,CCSetupDialog) "Fernschach konfigurieren"
set helpText(D,CCSetupDialog) {<h1>Fernschach konfigurieren</h1>

  <p>Die <run ::CorrespondenceChess::config><green>Einstellungen für
  Fernschach</green></run> kommen mit Systemgrundeinstellungen. Diese
  könnten aber nicht zu Ihrem System passen, so daß Sie sie bitte
  erforderlichenfalls konfigurieren. Scid verwendet diese
  Voreinstellungen, bis dieses Dialogfenster mit <b>OK</b> geschlossen
  wird.
  </p>
  <p>Die Konfigurationsdaten werden in "config/correspondence.dat"
  gespeichert und die voreingestellte Datenbank (und
  Postein-/-ausgang) im Verzeichnis "data" ($HOME/.scidvspc/data/ auf
  Unix-Systemen).
  </p>

  <h3>Einstellungen</h3>

  <p><b>Standarddatenbank:</b> die Standarddatenbank für
  Fernschachpartien, die vom Typ "Fernschach" sein muß. Das Öffnen
  einer Datenbank dieses Typs auf anderem Wege ist ebenfalls in
  Ordnung, so daß Sie diese Einstellung möglicherweise ignorieren
  wollen (z.B. wenn Sie Scid beim Start mit Ihrer Fernschachdatenbank
  aufrufen).
  </p>

  <p><b>Posteingang (Pfad):</b> das Verzeichnis, in welchem Scid nach
  im PGN-Format gespeicherten Partien sucht. Diese Partien werden für
  die Synchronisation mit der Fernschachdatenbank verwendet. Generell
  kümmert sich Scid nicht darum, wie die Partien in dieses Verzeichnis
  kommen. Es werden einfach alle hier vorhandenen Partien
  bearbeitet. Dies bietet die Möglichkeit, einige externe
  Hilfsprogramme zu nutzen, um Partien hierher zu holen. Außerdem
  sollte man bei E-Mail-Schach die vom Gegner erhaltenen Partien
  einfach in diesem Verzeichnis speichern. 
  </p>
  <p>Scid liest kein wie auch immer geartetes Postfach. Es behandelt
  einfach alle PGN-Dateien, die in diesem Verzeichnis platziert
  werden. Beachten Sie auch, daß die Partien mit der aktuellen
  Datenbank synchronisiert werden. Wenn jedoch eine Partie in diesem
  Verzeichnis noch nicht in der Datenbank vorhanden ist, wird sie als
  neue Partie behandelt und an die Datenbank angehängt.
  </p>
  <p>Damit die Synchronisation funktioniert, müssen die PGN-Dateien
  einige zusätzliche Kopfdaten enthalten, die in vollständiger
  Übereinstimmung mit dem PGN-Standard stehen. Bitte sehen Sie
  unter <a CCeMailChess>Fernschach per E-Mail</a> nach, falls Sie Ihr
  eigenes Hilfsprogramm erstellen wollen oder falls Sie Daten von
  einem anderen System migrieren.
  </p>

  <p><b>Postausgang (Pfad):</b> das Gegenstück zum Posteingang. Scid
  platziert hier die PGN-Dateien der ausgehenden Partien. Für
  E-Mail-Schach ist dies wesentlich, da die PGN-Dateien an eine
  E-Mail-Nachricht angehängt werden müssen. Für Xfcc, wo nur Züge
  gesendet werden, wäre dies nicht notwendig. Das
  Postausgangsverzeichnis bietet jedoch einen bequemen Weg, um mit
  Ihrem PDA zu verbinden oder für jeden anderen Zweck, da die
  PGN-Dateien im Postausgangsverzeichnis auch Ihren letzten Zug
  enthalten.
  </p>

  <p><b>Interne Xfcc-Unterstützung verwenden:</b> falls aktiviert,
  verwendet Scid nicht die externen Hilfsprogramme für die externe
  Protokollsteuerung, sondern benutzt seine interne
  Xfcc-Unterstützung, um Partien zu holen und Züge zu senden. Dies ist
  der bequemste Weg, um auf einen Xfcc-Server zuzugreifen und sollte
  als Voreinstellung genutzt werden. <i>Dieser Eintrag ist nicht
  verfügbar, falls die Xfcc-Unterstützung nicht möglich ist.</i>
  </p>
  <p>Diese Funktion erfordert die Installation der http-, TLS- und
  tDOM-Unterstützung für TCL. Siehe
  <a CCXfccSetupDialog>Xfcc-Servereinstellung</a> für weitere
  Informationen.
  </p>
  <p><b>Xfcc-Konfiguration:</b> geben Sie Pfad und Dateiname der
  Konfigurationsdatei für die Xfcc-Protokollsteuerung an. Dieser Pfad
  wird auch an die externen Protokollsteuerungen weitergegeben, um von
  ihnen genutzt zu werden.
  </p>
  <p><b>Hilfsprogramm zum Abholen:</b> dieses Programm wird
  aufgerufen, um Fernschachpartien von einem Fernschachserver
  abzurufen. Dieses Hilfsprogramm muß nur die Partien von irgendeiner
  Quelle holen und eine passende PGN-Datei erstellen, die die
  erforderlichen PGN-Kopfdaten enthält. Hilfsprogramme zum Holen von
  Partien von Xfcc-Servern gibt es als externe Programme und sie sind
  das natürliche Hilfsmittel, um sie hier einzurichten. Für zukünftige
  Protokolle könnte man einfach ein externes Abrufprogramm erstellen,
  das dieses Protokoll handhabt. Auch ist eine Automatisierung
  möglich, falls diese Funktionalität extern durchgeführt wird.
  </p>
  <p>Hinweis: dieses Hilfsmittel dient <b>nicht</b> für den Abruf von
  E-Mail-Schachnachrichten!
  </p>

  <p><b>Hilfsprogramm zum Senden:</b> dies ist das Gegenstück zum
  Abholprogramm und hauptsächlich bestimmt für die Xfcc-Unterstützung
  oder für irgendein zukünftiges Protokoll, das noch kommen
  könnte. Das Sendeprogramm jedoch wird von Scid mit verschiedenen
  Parametern aufgerufen, wo der Aufruf wie folgt aussieht:
  <term>SendTool Outbox Name GameID MoveCount Move "Comment" resign
  claimDraw offerDraw acceptDraw</term>
  </p>

  <p>Die Bedeutung der Parameter ist folgende:
 <ul>
  <li><term>Outbox</term>: der Postausgangspfad wird in diesem
  Dialog gesetzt. Das Sendeprogramm ist dafür bestimmt, dort eine
  korrekt formatierte PGN-Datei zu erstellen.
  </li>
  <li><term>Name</term>: der Name des Spielers, der wie in den
  Kopfdaten angegeben am Zug ist. Für Xfcc wäre dies der
  Anmeldename. Er ist identisch mit dem Spielernamen im
  PGN-Kopfteil.
  </li>
  <li><term>MoveCount</term>: die zu sendende Zugnummer.
  </li>
  <li><term>Move</term>: der aktuelle Zug in der SAN-Notation.
  </li>
  <li><term>"Comment"</term>: ein an den Gegner gesendeter
  Kommentar. Scid fügt den letzten Partiekommentar hinzu. D.h.,
  diese Kommentare werden als Kommentare für den Gegner
  behandelt. Beachten Sie, daß der Kommentar in
  Anführungszeichen gesetzt ist, so daß mehrzeilige Kommentare
  möglich sein sollten.
  </li>
  <li><term>resign</term>: 0 oder 1, gibt an, ob der Anwender
  aufgeben will. Wird auf 1 gesetzt, wenn im
  Menü <green>Fernschach</green> der
  Befehl <green>Aufgeben</green> gewählt wird.
  </li>
  <li><term>claimDraw</term>: 0 oder 1, gibt an, ob der Anwender
  Remis reklamiert.  Wird auf 1 gesetzt, wenn im
  Menü <green>Fernschach</green> der Befehl <green>Remis
  reklamieren</green> gewählt wird.
  </li>
  <li><term>offerDraw</term>: 0 oder 1, gibt an, ob der Anwender
  Remis anbieten will.  Wird auf 1 gesetzt, wenn im
  Menü <green>Fernschach</green> der Befehl <green>Remis
  anbieten</green> gewählt wird.
  </li>
  <li><term>acceptDraw</term>: 0 oder 1, gibt an, ob der Anwender
  ein Remisangebot des Gegners annehmen will.  Wird auf 1 gesetzt, wenn im
  Menü <green>Fernschach</green> der
  Befehl <green>Remis annehmen</green> gewählt wird.
  </li>
 </ul>
  </p>
  <p>Hinweis: dieses Hilfsprogramm wird <b>nicht</b> bei E-Mail-Schach
  aufgerufen!
  </p>

  <p><b>E-Mail-Programm:</b> hier wird der Pfad zu Ihrem bevorzugten
  E-Mail-Programm angegeben. Dieses Programm wird für E-Mail-Schach
  aufgerufen, um eine Nachricht für den Gegner zu verfassen.
  </p>

  <p><b>Adresse für Ausgangskopie:</b> an diese Adresse wird eine
  Kopie der ausgehenden Nachricht als Blindkopie gesendet. Beachten
  Sie jedoch, daß, wenn ein GUI-Mail-Programm genutzt wird, dieses
  dann sein eigenes Verfahren für ausgehende Nachrichten hat. Deshalb
  könnte das Setzen dieser Adresse die Nachrichten duplizieren. Sie
  kann dennoch verwendet werden, um eine Partie zu einer anderen
  Adresse zu senden.
  </p>

  <p><b>Modus</b>: Unglücklicherweise gibt es eine große Anzahl von
  Mail-Programmen und sie nutzen sehr unterschiedliche
  Abrufkonventionen. Einige geläufige Konventionen und
  Beispielprogramme, die diese nutzen, sind hier aufgelistet. Das
  Mail-Programm wird mit der gewählten Konvention gestartet. Falls
  nicht bekannt ist, welche Konvention genutzt wird, könnte eine von
  den angebotenen passen und funktionieren. Beachten Sie jedoch, daß
  eine große Zahl von Mail-Programmen nicht in der Lage ist, Anhänge
  zu senden, wenn sie von einem anderen Programm aus aufgerufen
  werden. In diesem Fall müssen Sie entweder Ihr E-Mail-Programm
  wechseln oder den Anhang, der in Scids Postausgang platziert ist,
  von Hand hinzufügen.
  </p>
  <p>Hinweis: mailx oder eines seiner vielen Nachbauten sollte auf den
  meisten Plattformen als Befehlszeilenanwendung mit einfacher
  Konfigurierung verfügbar sein. Falls keine der Konventionen mit
  Ihrem bevorzugten Programm funktioniert oder dieses Programm nicht
  Mails mit Anhängen durch Aufruf auf der Befehlszeile handhaben kann,
  wäre das Installieren von mailx eine Option.
  </p>
  <p>Hinweis: mutt nutzt den Nachrichtentransport des Systems (auch
  bekannt als sendmail/exim/postfix). Um mit diesen nicht einfach
  einzurichtenden Hilfsprogrammen zu verbinden, ist mutt eine perfekte
  Option. Auf einem geeigneten Unix mit passender Einrichtung sollte
  dies der schmerzloseste Weg sein, um mit E-Mail-Schach umzugehen
  (obwohl nicht viele passend eingerichtete Systeme existieren,
  besonders in der Linux-Welt).
  </p>
  <p><b>Parameter für Anhang:</b> dieser Parameter wird für die Angabe
  eines Anhangs verwendet. Er wird <b>nur</b> im
  Modus <term>mailx</term> verwendet.
  </p>
  <p><b>Parameter für Betreff:</b> dieser Parameter wird für die Angabe
  des Betreffs in der Mail-Nachricht verwendet.  Er wird <b>nur</b> im
  Modus <term>mailx</term> verwendet.
  </p>
  <p><footer>Aktualisiert: Scid 3.6.24, März 2008</footer></p>
  }

set helpTitle(D,CCXfccSetupDialog) "Xfcc-Servereinstellung"
set helpText(D,CCXfccSetupDialog) {<h1>Xfcc-Servereinstellung</h1>
  <p>Der Xfcc-Servereinstellungsdialog (siehe
  unter <run ::CorrespondenceChess::config><green>Einstellungen für
  Fernschach</green></run>, Zeile "Xfcc-Einstellungen" mit der
  Schaltfläche "Einstellungen...") liest die aktuell angegebene
  Xfcc-Konfiguration ein und zeigt alle Server an, die in der
  Konfigurationsdatei aufgeführt sind. Dieser Dialog ist in zwei Teile
  aufgeteilt: die obere Hälfte listet alle definierten Servernamen
  auf, während der untere Teil alle aktuell eingestellten
  Konfigurationswerte für diese Dateien anzeigt.
  </p>
  <p><i>Für Server, die das tls1.2-Protokoll verlangen, muß tls-1.7
  installiert sein und einige Änderungen für die grafische
  Benutzeroberfläche von Scid müssen erfolgt sein: "package require
  tls 1.7" und "::tls::init -ssl3 false -ssl2 false -tls1.2 true".
  </i></p>

  <h2>Notwendige Einträge</h2>
  <ul>
  <li><term>Servername</term>: dies legt den für diesen Server
  verwendeten Namen fest und dient für die Erzeugung eindeutiger
  Partiekennungen. Der Name sollte aus einem einzigen Wort bestehen,
  das nur Buchstaben (a-z und A-Z), Ziffern und und die Zeichen "-"
  und "_" enthält. Groß-/Kleinschreibung wird berücksichtigt.
  </li>
  <li><term>Anmeldename</term>: der Name für die Anmeldung zu einem
  bestimmten Server. Es ist eine sinnvolle Gepflogenheit, hierfür nur
  Buchstaben, Ziffern und "-" sowie "_" zu verwenden.
  </li>
  <li><term>Paßwort</term>: legt das Paßwort für die Anmeldung
  fest. Es gelten die gleichen Regeln wie für den
  Anmeldenamen. <b>Hinweis:</b> Scid speichert aktuell Ihre Paßwörter
  unverschlüsselt auf Ihrer Festplatte. Halten Sie aus diesem Grund
  Ihr Verzeichnis sicher.
  </li>
  <li><term>Xfcc-URL</term>: dies ist die Basis-URL für die
  Xfcc-Schnittstelle des Fernschachservers. Man kann sie auf der
  Homepage des Servers finden. Einige Beispiele für übliche Server
  sind:
  <ul>
  <li>SchemingMind: <url http://www.schemingmind.com/xfcc/xfccbasic.asmx>http://www.schemingmind.com/xfcc/xfccbasic.asmx</url></li>
  <li>ICCF: <url https://www.iccf.com/XfccBasic.asmx>https://www.iccf.com/XfccBasic.asmx</url></li>
  <li>MeinSchach.de/MyChess.de: <url http://www.myChess.de/xfcc/xfccbasic.php4>http://www.myChess.de/xfcc/xfccbasic.php4</url></li>
  </ul>

  <p>Um zwischen den individuellen Servereinstellungen zu wechseln,
  wählen Sie einfach den zu ändernden Server aus der oberen Liste
  aus. Dessen aktuellen Werte werden dann in den Eingabefeldern
  angezeigt und können angepaßt werden. Ein Klick auf einen anderen
  Server in der Liste aktiviert dann die neuen Einstellungen.
  </p>
  <p>Um einen neuen Server hinzuzufügen, drücken Sie einfach die
  Schaltfläche <term>Hinzufügen</term>. Es wird ein neuer Eintrag mit
  Texten erstellt, die zu ersetzen sind. Bitte behalten Sie in
  Erinnerung, daß der Servername in Ihren Einstellungen eindeutig sein
  muß.
  </p>
  <p>Um einen Servereintrag zu löschen, wählen Sie ihn in der Liste
  aus und drücken dann die Schaltfläche <term>Löschen</term>. Alle
  Werte für diesen Server erhalten ein Rautensymbol (#) vorangestellt,
  das sie dann so als gelöscht markiert. Falls deshalb ein Server aus
  Versehen gelöscht wurde, dann entfernen Sie einfach die
  Rautensymbole vor den Einträgen.
  </p>
  <p>Drücken auf <term>OK</term> veranlaßt Scid, Ihre aktuellen
  Einstellungen zu speichern. An dieser Stelle werden alle als
  gelöscht gekennzeichneten Server gelöscht und alle neuen Server
  werden hinzugefügt. Durch Drücken von <term>Abbrechen</term> gehen
  alle Änderungen verloren, die alten Einstellungen bleiben in Kraft.
  </p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21, November 2019</footer></p>
  }

# Tactics Trainer
# Renamed to Puzzles S.A
set helpTitle(D,TacticsTrainer) "Matt in ..n..-Puzzle"
set helpText(D,TacticsTrainer) {<h1>"Matt in ..n.."-Puzzle</h1>

  <p>Scids <run ::tactics::config><green>Matt in ...</green></run> ist
  ein nützliches Mittel, um Ihre Schachfähigkeiten zu verbessern. Die
  Funktion ist einfach geradlinig, obwohl sie nicht besonders
  ausgefeilt ist. Sie wurde eingebaut unter Verwendung von speziellen
  Datenbanken, die Puzzles enthalten. Sie sind in Scids <run
  setTacticsBasesDir><green> Standardverzeichnis für
  Datenbanken</green></run> enthalten.</p>

  <p><i>Beim Start von Matt-in-N öffnet Scid alle Datenbanken in
  diesem Verzeichnis, so daß dies wahrscheinlich kein guter Platz
  ist, um dort Ihre eigenen Datenbanken aufzubewahren. Dies führt
  beim Start zu einem langsamen Ablauf oder das Programm bleibt
  hängen.</i></p>
  
  <h3>Konfiguration</h3>
  <p>Der Schieberegler für die <term>Analysezeit der Engine</term>
  begrenzt die Zeit für Toga, um das Puzzle (das spontan erstellt
  wird) zu lösen. Fünf Sekunden sollten im allgemeinen ausreichen, da
  die meisten Puzzle zwingende Fortsetzungen enthalten. Sie beschreibt
  nicht, wie lange man brauchen muß, um ein Puzzle zu lösen.
  </p>
  <p>Scid speichert die Daten über gelöste Puzzle innerhalb der
  Datenbank. Ein Klick auf die Schaltfläche <term>Punkte
  zurücksetzen</term> setzt diese Information zurück und markiert alle
  Puzzle als nicht gelöst. Wenn man nicht aufpaßt, <b>überschreibt
  eine Neuinstallation von Scid alle gelösten Puzzle!</b>
  </p>

  <h3>Spielen</h3>
  <p>Falls Sie nicht weiterkommen, wählen Sie <term>Lösung
  zeigen</term>, um die Lösung
  als <run ::pgn::Open><green>PGN</green></run> hinzuzufügen (wo sie
  leicht untersucht werden kann). Ein weiterer Klick auf die
  Schaltfläche setzt das Puzzle für einen weiteren Versuch zurück.
  </p>
  <p>Ein Klick auf die <term>Nächste</term>-Schaltfläche ermöglicht
  das Überspringen eines Puzzles und individuelle Übungen können über
  die <run ::windows::gamelist::Open><green>Partienliste</green></run>
  geöffnet werden.
  </p>
  <p>Einige Übungen enden nicht mit einem Matt, sondern nur in einer
  Lösung, die einen klaren Vorteil liefert. Falls man diese Stellungen
  ausspielen möchte und die gelöste Übung nur im Falle eines Gewinns
  zählt, wählen Sie einfach <term>Übungen zu Ende
  spielen</term>. Diese Option hat im Falle einer klaren Mattlösung
  keine Bedeutung.
  </p>
  <p>Die Uhr ist nur um zu prüfen, wie lange man über die Stellung
  nachgedacht hat. Es erfolgt für die Lösung des Problems keine
  Bewertung bezüglich der benötigten Zeit.
  </p>

  <h3>Hinweise</h3>
  <p>Im Gegensatz zu anderen Datenbanken enthalten Puzzle-Datenbanken
  keine vollständigen Partien, sondern nur Anfangspositionen. Jedes
  beliebige Puzzle-Buch kann in eine Trainingsdatenbank konvertiert
  werden, indem man die Stellungen aufbaut und die neue Datenbank im
  <term>Datenbankenverzeichnis</term> speichert. Setzen Sie im <a
  Maintenance>Wartungs</a>fenster den neuen Datenbanktyp auf
  <term>Taktik</term> und ändern Sie die <term>Beschreibung</term>, um
  der Datenbank einen Namen zu geben.</p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21, April 2019</footer></p>
  }

set helpTitle(D,FindBestMove) "Besten Zug finden"
set helpText(D,FindBestMove) {<h1>Besten Zug finden</h1>
  <p>Die Funktion <green>Spielen--<gt>Training--<gt>Besten Zug
  finden</green> verwendet besonders präparierte Datenbanken, um Ihnen
  zu helfen, taktische Spielzüge (d.h., keine naheliegenden und
  eindeutigen Gewinnzüge) zu trainieren.
  </p>
  <p>Scid springt zu Anfang zur ersten relevanten Stellung in der
  aktuellen Datenbank, um dem Spieler die Gelegenheit zu geben, den
  taktischen Spielzug zu studieren. Das PGN-Fenster wird geschlossen
  und die Option "Nächsten Zug verstecken" wird aktiviert.
  </p>
  <p>Eine erneute Auswahl von <green>Spielen--<gt>Training--<gt>Besten
  Zug finden</green> oder durch Doppelklick auf der linken Brettseite
  sucht nach der nächsten Stellung bzw. Partie.
  </p>
  <h2>Kompatible Datenbanken</h2>
  <p>Alle relevanten Partien müssen mit dem Taktikkennzeichen <b>T</b>
  markiert sein. Dabei gibt es zwei Wege, auf denen eine Partie
  markiert werden kann.
  </p><p>Herkömmlicherweise werden Datenbanken durch <a Analysis
  Annotating>Partien kommentieren</a> mit einem UCI-Schachprogramm
  vorbereitet, wobei "Taktische Übungen markieren" aktiviert wird.
  <br><br><i>Dies markiert relevante Züge mit einem speziellen
  Kommentar (beginnend mit <b>****D-<gt></b> und in der Quelldatei
  analysis.tcl kommentiert).
  <br>Um einen Zug als taktischen Zug zu betrachten, muß er ein
  eindeutiger Gewinnzug sein, der nicht offensichtlich ist, d.h. der
  bei einer Tiefe von <lt>=3</i> gefunden wird.
  </p><p>Aber ScidvsPC nimmt auch an, daß die Partie eine taktische
  Übung ist, wenn sie einen Anfang hat, der nicht dem Standard
  entspricht. Ein gutes Beispiel ist die
  <url http://gorgonian.weebly.com/uploads/1/7/2/2/17221082/auerswald.pgn>Auerswald-Sammlung</url>.
  <br>(Hinweis: die Partien müssen zuerst in eine si4-Datenbank
  kopiert und im Wartungsfenster mit dem Taktikkennzeichen <b>T</b>
  markiert werden.)

  <p><footer>Aktualisiert: Scid vs. PC 4.17 Feb 2016</footer></p>
  }

# FICS Login
set helpTitle(D,FICSlogin) "FICS-Anmeldung"
set helpText(D,FICSlogin) {<h1>FICS-Anmeldung</h1>

  <p><i>FICS unterstützt anonyme Anmeldungen, aber Sie finden mehr
  Leute zum Spielen, wenn Sie zuerst
  <url http://www.freechess.org>www.freechess.org</url> besuchen und
  ein Konto erstellen. Falls Sie beim Anmelden Probleme haben,
  versuchen Sie "Timeseal" abzuwählen.</i></p>

  <p>Die nachfolgende Beschreibung bezieht sich auf das
  Konfigurationsfenster
  in <run ::fics::config><green>Spielen--<gt>Internetpartie</green></run>.
  </p>
  
  <ul>
  <li><term>Anmeldename</term> Das ist Ihr Benutzername auf dem
  FICS-Server. Um sich anonym anzumelden, verwenden Sie die
  Schaltfläche "Gastanmeldung". <i>Es ist auch möglich, sich mit
  einem besonderen Namen anonym anzumelden. Geben Sie Ihren
  bevorzugten Namen in das Anmeldefeld ein und löschen das
  Paßwortfeld. Falls dieser Name nicht registriert ist, wird er
  während der Sitzung zu Ihrem Namen. Ansonsten schließen Sie
  bitte FICS und versuchen, sich wieder anzumelden.</i></li>

  <li><term>Paßwort</term> Das Paßwort wird nicht angezeigt, wenn Sie
  es schreiben, es wird aber im Klartext innerhalb der
  Konfigurationsdateien von Scid gespeichert. Falls Sie einen
  öffentlich zugänglichen Computer benutzen, stellen Sie bitte sicher,
  das Leserecht auf diese Dateien einzuschränken oder Sie löschen das
  Paßwort nach Beendigung von FICS.
  </li>

  <li><term>Timeseal</term> Falls aktiviert werden alle Verbindungen
  zum FICS-Server durch ein (optionales) timeseal-Programm
  geleitet. Sein Zweck ist der Umgang mit Netzwerkverzögerungen und
  die Uhren in richtiger Reihenfolge zu halten, was ansonsten bei
  langsamen Netzwerkverbindungen Probleme verursachen kann. Timeseal
  ist auf der <url http://sourceforge.net/projects/scidvspc>Scid
  vs. PC-Projektseite</url> verfügbar.
  </li>

  <li><term>URL</term> Das ist normalerweise "freechess.org", aber bei
  Ausfällen kann man auch "fics2.freechess.org" versuchen.
  </li>

  <li><term>IP-Adresse</term> Falls Sie die URL ändern müssen, drücken
  Sie "Aktualisieren", damit Scid nach einer neuen IP-Adresse
  sucht. Normalerweise sollten Sie sich nicht um dieses Feld
  kümmern. Nachdem FICS einmal verbunden hat, sollte sich die
  IP-Adresse nicht wieder ändern.
  </li>

  <li><term>Serverport</term> Gibt die Portnummer auf dem Server
  an. Die Voreinstellung ist 5000 und sollte für fast alle Zwecke in
  Ordnung sein.</li>
  <li><term>Timeseal Port</term> Gibt die Portnummer an, wo das
  timeseal-Programm lauscht. Die Voreinstellung ist 5001 und sollte
  für fast alle Zwecke in Ordnung sein.</li>
  </ul>

  <p><footer>Aktualisiert: Scid vs. PC 4.10 Juli 2013</footer></p>
  }

  # FICS Find Opponent
set helpTitle(D,FICSfindopp) "FICS: einen Spielpartner finden"
set helpText(D,FICSfindopp) {<h1>Einen Spielpartner finden</h1>
  
  <p>Es gibt mehrere Wege, um eine Partie zu beginnen. Die einfachsten
  sind die Schaltflächen <b>Gegner suchen</b> und <b>Herausforderungen
  Grafik</b>.
  </p>

  <h3>Gegner suchen</h3>

  <p>Mit einem Klick auf die Schaltfläche <b>Gegner suchen</b> sehen
  Sie einen Dialog, von wo aus Sie andere Spieler zu einer Partie
  herausfordern können. Wählen Sie, wie lange Sie spielen möchten
  sowie weitere Optionen und drücken dann auf die
  Schaltfläche <b>Anbieten</b>. Es gibt folgende Optionen:
  <br>
  <ul>
  <li><term>Zeit</term> Normalzeit für die Partie in Minuten.</li>
  <li><term>Inkrement</term> Anzahl Sekunden, die mit jedem Zug zu
  Ihrer Bedenkzeit hinzugefügt werden.</li>
  <li><term>Wertungspartie</term> Das Ergebnis der Partie verändert
  Ihre Wertungszahl. Bei ungewerteten Partien erfolgt keine
  Anpassung.</li>
  <li><term>Manuell bestätigen</term> Ermöglicht Ihnen, eine
  Herausforderung anzunehmen oder abzulehnen.</li>
  <li><term>Seite wählen</term> Wählen Sie, ob Sie mit Weiß oder
  Schwarz spielen wollen oder ob dies automatisch ausgewählt
  wird.</li>
  <li><term>ELO-Spanne</term> Spielen Sie nur gegen diejenigen mit dem
  angegebenen Wertungsbereich.</li>
  <li><term>Filterformel anwenden</term> Auf FICS kann jeder Spieler
  eine Formel setzen, die angibt, welche Herausforderungen automatisch
  abgelehnt werden. Diese Formel kann durch Aktivieren dieses Feldes
  eingeschaltet werden.</li>
  </ul>
  </p>

  <h3>Herausforderungen Grafik</h3>

  <p>Die Schaltfläche <b>Herausforderungen Grafik</b> zeigt alle
  laufenden Spielangebote. Wenn Sie Ihren Mauszeiger über einen
  Eintrag bewegen, werden Einzelheiten angezeigt und ein Klick auf
  einen Eintrag bittet zu einer neuen Partie. Manchmal müssen Sie
  schnell genug sein, da FICS sehr belebt sein kann. Ein Klick mit der
  mittleren Maustaste verbirgt bzw. zeigt die Angebote und die
  Esc-Taste verwirft sie.</p>

  <p>In der Grafik selbst zeigt die Y-Achse den ELO-Wert des Gegners,
  eine höhere Zahl bedeutet einen stärkeren Spieler. Die X-Achse der
  Grafik zeigt die erlaubte Bedenkzeit für die Partie. Die erste graue
  senkrechte Linie markiert die Standardblitzzeit (5 Minuten, ohne
  Zeitzuschlag), während die dritte Linie die Standardzeit für
  Schnellschach markiert (15 Minuten, ohne Zeitzuschlag).</p>

  <p>Zusätzlich verwenden die Angebote folgende Codes:
  <ul>
  <li><green>Grün</green>: Angebote von Computergegnern</li>
  <li><blue>Blau</blue>: Angebote von menschlichen Gegnern</li>
  <li><red>Rot</red>: Partien mit einer Gesamtbedenkzeit von mehr als
  einer Stunde</li>
  <li><gray>Grau</gray>: anonyme Angebote, das sind Angebote von
  Gastanmeldungen</li>
  <li>Quadrate: ungewertete Partien</li>
  <li>Kreise: gewertete Partien</li>
  </ul>
  </p>

  <p><i>Beachten Sie, daß FICS auch ein Bündel an Schachvarianten wie
  Tandemschach (bughouse) oder crazyhouse anbietet. Das Spielen
  solcher Partien wird nicht unterstützt, man kann sie
  aber <a FICSobserve exam>beobachten und untersuchen</a>.</i></p>

  <p><footer>Aktualisiert: Scid vs. PC 4.8 April 2012</footer></p>
  }

  # FICS Find Opponent
set helpTitle(D,FICSobserve) "FICS: weitere Funktionen"
set helpText(D,FICSobserve) {<h1>FICS: weitere Funktionen</h1>

  <h3>Direktübertragung von internationalen Veranstaltungen</h3>

  <p>Von Zeit zu Zeit überträgt FICS größere internationale
  Schachturniere, wo man Partien direkt beobachten kann. Diese
  Veranstaltungen werden über das besondere Konto Relay
  abgewickelt. Um herauszufinden, welche Partien aktuell übertragen
  werden, benutzen Sie <b>tell relay listgames</b>. Relay antwortet
  dann mit einer Tabelle von laufenden Partien. Benutzen Sie <b>tell
  relay notify</b>, falls Sie darüber informiert werden wollen, welche
  Turniere übertragen werden, wenn Sie sich anmelden.</p>

  <h3>Partien beobachten</h3>

  <p>Das Format für das Beobachten von Partien ist "<b>observe</b>
  Partie", wo Partie folgendes sein kann:
  <ul>
  <li>eine bestimmte Partienummer</li>
  <li>die laufende Partie eines bestimmten Spielers</li>
  </ul>
  oder am höchsten gewertete Partien folgender Kategorien:
  <ul>
  <li>/l - Lightning</li>
  <li>/b - Blitz</li>
  <li>/s - Standard</li>
  <li>/S - Suicide</li>
  <li>/w - Wild</li>
  <li>/z - Crazyhouse</li>
  <li>/B - Bughouse</li>
  <li>/L - Losers</li>
  <li>/x - Atomic</li>
  </ul>

  <p>Man kann alle laufenden Partien mittels des Befehls <b>games</b>
  durchsehen oder mit <b>unobserve</b> die Partienbeobachtung beenden.
  </p>
  <p>Beobachtete Partien werden in kleinen Brettern angezeigt (die Größe
  ist in <green>Optionen--<gt>FICS</green> konfigurierbar) und sie
  haben zwei Schaltflächen:
  <ul>
  <li><img arrow_up>  :  Lädt die Partie ins Hauptbrett von Scid und
  ermöglicht das Analysieren und Speichern der Partie.
  <i>Hinweis: dies kann bei Blitzpartien und langsamen
  Internetverbindungen mühsam sein und ist insgesamt für nicht
  unterstützte Varianten abgeschaltet.</li>
  <li><img arrow_close>  :  Beendet die Partie.</li>
  </ul>

  <p>Das Diskutieren von Partien mit anderen wird durch die
  Befehle <b>whisper</b> und <b>kibitz</b> unterstützt.</p>
  
  <p>FICS hat auch das Konzept einer <b>vorrangigen</b> Partie. Wenn
  man mehrere Partien beobachtet, dann macht ein Doppelklick auf ein
  Brett dieses zu Ihrer vorrangigen Partie und die Partienummer wird
  in fett angezeigt (rechts unterhalb des Schachbretts).</p>

  <h3>Spielern folgen</h3>

  <p>Das FICS-Kommand <b>follow</b> erlaubt es, den Partien eines
  bestimmten Spielers zu folgen. Die Verwendung von <b>follow+</b> in
  ScidvsPC ermöglicht das Verfolgen und automatische Speichern der
  Partien.</p>

  <h3><name exam>Partien laden und untersuchen</name></h3>

  <p>FICS und ScidvsPC bieten zwei Wege, um Partien zu analysieren,
  "smoves" und "examine".</p> <p>Der Befehl <b>smoves</b> lädt eine
  zuvor gespielte oder ausgesetzte Partie in das Hauptbrett. Die
  Verwendung von "smoves GMShort -1" (z.B.) ist insofern besser, als
  die ganze Partie in Scid geladen und so Varianten hinzugefügt und
  die Partie gespeichert werden können. Die verbrauchten Bedenkzeiten
  werden als Kommentare gespeichert, falls
  <green>Optionen--<gt>FICS--<gt>Bedenkzeiten speichern</green> aktiv
  ist. Scid vs. PC wird Ihren Spielernamen hinzufügen, falls keiner
  vorhanden ist (z.B. "smoves+ -1").</p>
  
  <p>Das Kommando <b>examine</b> wird jetzt gut unterstützt und ist
  ein bequemer Weg für Gruppen oder Freunde, um Partien zu
  analysieren. Nach dem Absenden von "examine GMShort -1" (z.B.)
  werden die großen Zugschaltflächen von Scid an die
  FICS-Befehle <b>forward</b> und <b>back</b> gebunden.</p>
  
  <p>Man kann mit <b>upload</b> eine Partie zu FICS hochladen. Dieser
  Befehl sendet die laufende Partie als Untersuchungsobjekt zu
  FICS. Andere können dann Ihre Partie begutachten.</p>
  
  <p><i>Partien als Crazyhouse und Bughouse können nur beobachtet oder
  untersucht werden. Sie können aufgrund von Beschränkungen nicht mit
  "smoves" in das Hauptbrett geladen werden. Außerdem haben einige
  Crazyhouse-Stellungen ungültige FEN (z.B. wegen mehr als acht
  Bauern) und es wird nicht empfohlen, hierzu Schachprogramme laufen
  zu lassen.</i></p>

  <h3>Partien herunterladen</h3>

  <p>Um mehr als eine handvoll Partien herunterzuladen, ist
  <url http://www.ficsgames.org>www.ficsgames.org</url> eine sehr gute Quelle.</p>

  <h3>Lektionen</h3>

  <p>FICS bietet für das Schachtraining verschiedene Optionen. Eine
  der beliebteren sind die Lektionsroboter (Bots) <b>LectureBot</b>
  und <b>WesBot</b>. Sie laufen ständig auf FICS und bieten
  verschiedene Trainingslektionen an, die mit Scid angesehen werden
  können. Der Beginn jeder Sitzung wird auf dem FICS-Kanal <b>Channel
  67</b> angekündigt. Um deshalb diese Ankündigungen zu sehen, sollte
  man zuerst diesen Kanal der eigenen Beobachtungsliste
  hinzufügen. Dies kann mit <b>+channel 67</b> erfolgen (wieder
  entfernen geht mit <b>-channel 67</b>). Wenn beispielsweise einmal
  LectureBot eine Trainingssitzung ankündigt, dann kann man
  mittels <b>observe lecturebot</b> teilnehmen. Bitte sehen Sie in der
  Online-Dokumentation von FICS über weitere Funktionen der Bots
  nach und auch welche anderen Bots verfügbar sind.</p>

  <p><footer>Aktualisiert: Scid vs. PC 4.14 Januar 2015</footer></p>
}

set helpTitle(D,FICSwidget) "FICS: Im Internet spielen"
set helpText(D,FICSwidget) {<h1>FICS benutzen</h1>

    <p>Wenn Sie sich <a FICSlogin>angemeldet</a> haben, zeigt das
  Hauptfenster von FICS ein Konsolenfenster, Befehl- und Suchfelder
  und einige Schaltflächen.</p>
  
  <h3>FICS-Konsole</h3>

  <p>Dies ist die Hauptschnittstelle mit dem FICS-Server.</p>
  
  <p>Das Zusammenspiel erfolgt über Befehle, die in das Befehlsfeld
  eingegeben werden oder über die Befehlsschaltflächen. Für einen
  Überblick über beliebte Befehle siehe den Abschnitt
  über <a FICScommands>Befehle</a>.</p>
  
  <h4>Konsolenfarben</h4>

  <p>Normale Nachrichten werden in Grün geschrieben; Nachrichten von
  anderen Spielern erscheinen rot. Es kann etwas verwirrend sein, aber
  das Umschalten der Felder <b>Mitteilungen</b> und <b>Rufe</b> macht
  es ruhiger.</p>

  <p>Man kann auch über das Menü <green>Optionen--<gt>FICS</green>
  die <b>Vorder-/Hintergrundfarben</b> anpassen. Standardmäßig sind
  sie LimeGreen und grey35.</p>

  <h4>FICS-Optionen</h4>

  <p>Rechtsklick im Konsolenfenster liefert ein Menü mit verschiedenen
  Möglichkeiten. "Keine Anfragen" lehnt Rücknahme-, Unterbrechungs-,
  Abbruch- und Remisangebote ab. "Keine Ergebnisse" verhindert Dialoge
  über Partieergebnisse. "Brettgröße" bezieht sich auf die kleinen
  Schachbretter für Beobachtungspartien. "Automatisch heraufsetzen" setzt
  das Schachbrett herauf, wenn Ihr Gegner einen Zug
  macht. "Bedenkzeiten speichern" speichert die Zugzeiten als
  Kommentare (in der <a Graphs Score>Bewertungsgrafik</a> sichtbar).
  </p>
  
  <p>Es gibt auch Optionen, um Initialisierungsbefehle zu
  konfigurieren und um die obersten drei Schaltflächen
  anzupassen. Diese letztere Möglichkeit erfordert ein kleines bißchen
  Tcl-Programmierung und FICS-Befehle sollten wahrscheinlich in
  Anführungszeichen eingeschlossen werden.</p>

  <h3>Schaltflächen</h3>

  <p>Die FICS-Schaltflächen sind ziemlich selbsterklärend, die
  erwähnenswertesten sind <a FICSfindopp>Gegner suchen und
  Herausforderungen Grafik</a>. Andere Schaltflächen enthalten:
  <br>
  <ul>
  <li><term>Mitteilungen</term> Zeigt Nachrichten vom Kanal tells.</li>
  <li><term>Rufe</term> Zeigt Nachrichten von shouts und cshouts.</li>
  <li><term>Leeren</term> Löscht das
  Befehlseingabefeld. <term>Strg+Leeren</term> entfernt alle
  vorhergenden Nachrichten.</li>
  <li><term>Nächste</term> Sendet "next" für die nächste
  Hilfeinformationsseite.</li>
  <li><term>Revanche</term> Fordert zu einer Revanchepartie mit dem
  vorherigen Gegner auf.</li>
  <li><term>Zensor</term> Fügt den Gegner zu Ihrer Zensurliste hinzu
  oder, falls Sie nicht spielen, sendet es "+censor"
  (Strg-Schaltfläche zensiert die Person, die mit Ihnen spricht).</li>
  </ul>

  <h3><name premove>Zugeingabe vorab</name></h3>

  <p>Die Zugeingabe vorab ermöglicht es, schon Ihren nächsten Zug
  festzulegen, bevor Ihr Gegner gezogen hat. Dies ergibt ein sehr
  schnelles Spielen - wesentlich für Blitzpartien.</p>
  
  <p>Die Zugeingabe vorab wird wie jeder andere Zug ausgeführt durch
  Drücken der Start- und Zielfelder. Eine farbige Linie wird
  gezeichnet und, falls legal, wird dieser Zug sofort ausgeführt,
  nachdem Ihr Gegner gezogen hat. Um die Zugeingabe vorab abzubrechen,
  drücken Sie die <b>Esc</b>-Taste.</p>
  
  <br>
  <p><footer>Aktualisiert: Scid vs. PC 4.20 April 2019</footer></p>
}

set helpTitle(D,FICScommands) {FICS-Befehle und -Variablen}
set helpText(D,FICScommands) {<h1>FICS-Befehle und -Variablen</h1>
  
  <p>Die Befehlszeilenschnittstelle von Scid ist ziemlich verwirrend,
  aber nachstehend finden Sie einen Überblick über beliebte Kommandos
  und Variablen.</p>
  
  <p><i>Hilfe kann man sowohl online als auch von der Befehlszeile
  bekommen. Benutzen Sie <term>help BEFEHL</term> oder <term>help
  v_VARIABLE</term> für Informationen über bestimmte Befehle und
  Variablen.</i></p>
  
  <h3>Befehle</h3>
  <ul>
  <li><term>finger</term> SPIELER - Holt Informationen über einen
  bestimmten Spieler</li>
  <li><term>resume</term> Sendet Herausforderungen an Spieler, mit
  denen Sie eine gespeicherte oder unterbrochene Partie haben</li>
  <li><term>abort</term> Verlangt Partieabbruch, Ergebnis wird auf "no
  result" gesetzt</li>
  <li><term>tell</term> KANAL NACHRICHT - Sendet eine Nachricht zu
  diesem Kommunikationskanal</li>
  <li><term>tell</term> SPIELER NACHRICHT - Sendet eine Nachricht an
  einen bestimmten Spieler</li>
  <li><term>.</term> NACHRICHT - Sendet eine Nachricht an die gleiche Person</li>
  <li><term>say</term> NACHRICHT - Sendet eine Nachricht an den Gegner</li>
  <li><term>shout</term> NACHRICHT - Ruft eine Nachricht an jeden</li>
  <li><term>flag</term> Ruft Zeit, wenn Ihr Gegner die Zeit
  überschritten hat und autoflag deaktiviert ist</li>
  <li><term>=channel</term>  Zeigt die Kanäle an, auf denen Sie lauschen</li>
  <li><term>+channel</term> NUMMER - auf dem Kanal NUMMER lauschen</li>
  <li><term>-channel</term> NUMMER - Stoppt das Lauschen auf dem Kanal
  NUMMER</li>
  <li><term>news</term> Zeigt Neuigkeiten von FICS</li>
  <li><term>observe</term> ID - Lädt eine Partie in das Hauptbrett im Beobachtungsmodus</li>
  <li><term>smoves</term> ID - Lädt Züge von einer zuvor gespielten
  Partie nach Scid</li>
  <li><term>=notify</term> - Zeigt die Namen der Spieler, die über Sie
  automatisch benachrichtigt werden.</li>
  <li><term>+notify</term> SPIELER - Fügt SPIELER Ihrer
  Benachrichtigungsliste hinzu</li>
  <li><term>-notify</term> SPIELER - Entfernt SPIELER von Ihrer Benachrichtigungsliste</li>
  <li><term>examine</term> PARTIE/SPIELER - Lädt eine Partie in das
  Hauptbrett im Beobachtungsmodus</li>
  <li><term>play</term> PARTIENUMMER - Antwortet auf eine
  Partieaufforderung eines anderen Spielers</li>
  <li><term>match</term> SPIELER - Sendet an einen bestimmten Spieler
  eine Partieaufforderung</li>
  <li><term>seek</term> Sucht nach einer neuen Partie</li>
  <li><term>moretime</term> NUMMER - Gibt Ihrem Gegner NUMMER mehr Sekunden</li>
  <li><term>help</term> THEMA - Holt Hilfe zu einigen Themen</li>
  </ul>
  
  
  <h3>Variablen</h3>
  
  <p><i>Um Einstellungen zu ändern, benutzen Sie <term>set</term>
  VARIABLE WERT. Oft ist WERT ein boolscher Wert 1 oder 0.</i></p>
  
  <ul>
  <li><term>silence</term> Schaltet shouts, cshouts und channel tells
  ab während Sie eine Partie spielen, untersuchen oder
  beobachten.</li>
  <li><term>gin</term> Benachrichtigung, wenn Partien beginnen oder enden</li>
  <li><term>autoflag</term>	Reklamiert automatisch Zeitüberschreitung
  Ihres Gegners</li>
  <li><term>noescape</term>	Wenn noescape gesetzt ist und der Gegner
  verliert die Verbindung, dann verliert er die Partie sofort.</li>
  <li><term>availinfo</term> Zeigt alle verfügbaren Informationen</li>
  
  <li><term>1</term> Fußnote 1 zu persönlicher Information des Spielers</li>
  <li><term>2</term> Fußnote 2 zu persönlicher Information des
  Spielers ...</li>
  </ul>
  
  <h3>Bots</h3>

  <p>Bots sind spezielle FICS-Konten, die Statistiken sammeln,
  Vorträge, Puzzle und mehr geben. Eine nette Seite kann man bei
  <url http://antiseptic-freechess.blogspot.com.au/2012/04/favorite-fics-bots.html>www.antiseptic-freechess.blogspot.com.au</url>
  finden.
  <ul>
    <li>tell babaschess usageinfo Scid vs. PC (Zeigt
    Benutzungsstatistiken von ScidvsPC)</li>
    <li>tell relay games (Listet kommende Partien auf)</li>
    <li>tell chlog show shout -t 20 (Zeigt die letzten 20 Minuten der shouts)</li>
    <li>tell Sibylle how do I add time to my opponent (Stellt dem Bot Sibylle eine Frage)</li>
  </ul>
  </p>
  
  <h3>Kanäle</h3>
  <p>Beliebte Kanäle sind:</p>
  <ul>
  <li><term>1</term>	Serverhilfe und -unterstützung</li>
  <li><term>2</term>	Allgemeine Diskussionen über FICS</li>
  <li><term>4</term>	Gäste</li>
  <li><term>49</term>	Turnierkanal Mamer</li>
  <li><term>50</term>	Der Kommunikationskanal</li>
  </ul>
  </p>
  
  <h3>Aliase</h3>
  <ul>
  <li><term>f</term>	finger</li>
  <li><term>n</term>	next</li>
  <li><term>t</term>	tell</li>
  <li><term>o</term>	observe</li>
  </ul>
  
  
  <h3>Weitere Informationen</h3>
  
  <p>Besuchen Sie Freechess.org für Informationen über 
  <url http://www.freechess.org/Help/HelpFiles/variables.html>Variablen</url>
  oder
  <url http://www.freechess.org/Help/HelpFiles/commands.html>Befehle</url>.
  <br>
  <p><footer>Aktualisiert: Scid vs. PC 3.4.1, September 2010</footer></p>
}

  # Book tuning
set helpTitle(D,BookTuning) "Eröffnungsbuch anpassen"
set helpText(D,BookTuning) {<h1>Eröffnungsbuch anpassen</h1>

  <p><i>Für allgemeine Informationen zu Polyglot
  siehe <a Book>Eröffnungsbuchfenster</a></i>.</p>

  <p>Bei Verwendung von
  Scids <run ::book::tuning><green>Eröffnungsbuch Tuning</green></run>
  kann man den Wert anpassen, der irgendeinem Zug in einem
  Eröffnungsbuch zugeordnet ist. Um durch die Verästelungen des
  Eröffnungsbuches zu navigieren, kann man auf die Fortsetzung im
  Fenster "Eröffnungsbuch Tuning" klicken oder sich wie üblich in der
  Partie bewegen. Die Wahrscheinlichkeit kann über die Spinbox
  (Drehfeld) angepaßt werden. Die anderen Werte bleiben gleich bis sie
  neu berechnet werden, wenn einmal <b>Speichern</b> gedrückt
  wurde.</p>

  <p><i>Es werden nur Integerwerte angezeigt. Eine Null kann bedeuten,
  daß dieser Zug eine Wahrscheinlichkeit von weniger als 1% hat und
  sehr wahrscheinlich passiert dies mit Büchern, die aus
  Partiensammlungen erstellt wurden. Man sollte auch darauf achten,
  daß sich alle Werte auf 100% aufaddieren sollten.</i></p>

  <h3>Fortsetzungen hinzufügen</h3>

  <p>ScidvsPC enthält die Funktionen <b>Zugfolge hinzufügen</b>
  und <b>Zugfolge entfernen</b>. Erstere fügt alle Züge (oder alle
  Weiß- oder Schwarzzüge) <b>zur</b> aktuellen Stellung
  hinzu. Letztere entfernt alle Züge <b>ab</b> dem aktuellen Zug bis
  zum Partie-/Variantenende.</p>

  <p><i>Anders als beim Hinzufügen und Entfernen einzelner Züge WERDEN
  diese Fortsetzungsmöglichkeiten automatisch im Eröffnungsbuch
  gespeichert. Und - aufgrund der Implementation - sind sie nicht
  besonders optimal und können mit großen Büchern/Zugfolgen langsam
  sein.</i></p>

  <h3>Eröffnungsbücher importieren</h3>

  <p>Wenn man <b>Importieren</b> wählt, dann wird ein Zweig des Buches
  ab der aktuellen Stellung aufwärts <b>in eine einzelne Partie</b>
  importiert (die Fortsetzung mit der höchsten Wahrscheinlichkeit
  bildet die erste Variante oder Hauptfortsetzung, wenn man sie ans
  Ende einer Partie/Variante hinzufügt). Dies erlaubt es, die besten
  Fortsetzungen herauszupicken und ein neues Buch zu erstellen (das
  von PGN exportiert wurde unter Benutzung der vollständigen Version
  von <a Book Polyglot>polyglot</a>).</p>

  <p>Scids Standardlimit für das Importieren von Büchern beträgt 3.000
  Züge. Dieser Wert wird über ::book::exportMax zugewiesen und kann,
  falls gewünscht, von der <a Console>Konsole</a> aus geändert
  werden. Falls man dies macht, ist Vorsicht angebracht, da höhere
  Limits nicht ausreichend getestet sind (todo - noch zu erledigen)
  und PGN-Limits können ebenfalls betroffen sein. Bücher können aus
  zehn- oder hunderttausenden von Stellungen bestehen.</p>

  <p>Außerdem - im Allgemeinen ist es nicht möglich, ein ganzes Buch
  in eine einzelne Partie zu importieren. Polyglot-Bücher sind einfach
  Schachstellungen (und -wahrscheinlichkeiten) ohne Anspruch darauf,
  daß sie fortfolgend oder mitinbegriffen sind. Betrachten Sie ein
  Buch mit Einträgen sowohl für den weißen König als auch für die
  große Rochade. Es gibt offensichtlich keinen Weg, diese beiden
  Stellungen in eine einzelne Partie zu importieren. Zusätzlich - die
  Anzahl der Buchstellungen von irgendeiner Stellung ist nicht einfach
  zu unterscheiden (todo - noch zu erledigen), obwohl die Gesamtzahl
  an Einträgen ihre Größe in Bytes dividiert durch 16 ist.</p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21, Januar 2020 </footer></p>
}

set helpTitle(D,Novag) "Novag Citrine"
set helpText(D,Novag) {<h1>Schachbrett von Novag Citrine</h1>

  <p>Das Novag Citrine ist ein Holzschachbrett, das sich über eine
  serielle Verbindung mit Computern verbinden kann. Es kann mit Scid
  benutzt werden, um Partien einzugeben oder um gegen einen
  Computergegner oder auf FICS zu spielen, indem es eine "natürliche"
  Schachschnittstelle bietet.</p>

  <p>Bevor das Schachbrett genutzt werden kann, muß man seine
  Verbindung über <a HardwareConfig>Externe Hardware-Konfiguration</a>
  konfigurieren. Wenn einmal der richtige Port gesetzt wurde, wählen
  Sie <green><run ::novag::connect>Werkzeuge--<gt>Hardware
  verbinden--<gt>Novag Citrine verbinden</run></green>, um das
  Schachbrett anzuschließen.</p>
  
  <p><footer>Aktualisiert: Scid vs. PC 4.18</footer></p>
}

set helpTitle(D,HardwareConfig) "Mit externer Hardware verbinden"
set helpText(D,HardwareConfig) {<h1>Mit externer Hardware verbinden</h1>

  <p>Scid unterstützt zwei Arten von externer Hardware, die
  im Menü <green><run ::ExtHardware::config>Werkzeuge--<gt>Hardware
  verbinden--<gt>Konfigurieren...</run></green> konfiguriert werden.</p>

  <ul>
  <li><term>Novag Citrine</term> (<a Novag>und kompatible
  Schachbretter</a>) benutzt einen internen Treiber, der extra für das
  Novag Citrine-Schachbrett entwickelt wurde, kann aber auch andere
  Schachbretter unterstützen. Dieser Treiber erlaubt die Eingabe von
  Zügen, aber die Brettlogik erkennt weder den Stellungsaufbau noch
  die Figuren als solche.</li>
  <li><term>Input Engine</term> Die Treiber sind für eine freie,
  offene Schnittstelle bestimmt, um mit jeder Hardware zu grafischen
  Benutzerschnittstellen für Schach zu verbinden. Sie sind nach dem
  üblichen Stil für Schachprogramme entwickelt. Die
  Protokollspezifikationen und auch ein passender Treiber für
  das <b>DGT</b> Electronic Chess Board kann man auf der Seite
  <url http://dgtdrv.sourceforge.net>http://dgtdrv.sourceforge.net</url>
  finden. Abhängig von der Hardware kann das Schachbrett den
  Stellungsaufbau sowie die Figuren durch ihre Gangart erkennen
  (z.B. DGT-Bretter). <b>Hinweis</b>: Scid enthält standardmäßig keine
  Input Engine. Input Engines sind als unabhängige Programme für die
  Verwendung mit einer Vielzahl an grafischen Benutzeroberflächen
  bestimmt.</li>
  </ul>

  <h3>Einstellungen</h3>

  <p>Der Portname hängt vom Betriebssystem und der Hardware
  ab. Üblicherweise wird externe Hardware durch eine serielle, USB-
  oder Bluetooth-Verbindung angeschlossen. Übliche Namen sind,
  abhängig von der Plattform:</p>
  <ul>
  <li><term>Linux</term>: für serielle Ports
  sind <b>/dev/ttyS0</b>, <b>/dev/ttyS1</b> (usw.) geläufige
  Namen. Die symbolischen USB-Gerätenamen sind <b>/dev/ttyUSB0</b>,
  <b>/dev/ttyUSB1</b> (usw.). Weniger geläufige Namen
  enthalten <b>/dev/usb/tts/*</b> oder <b>/dev/usbdev*</b> (wobei
  das Sternchen * für einige weitere Namen
  steht). Bluetooth-Geräte erscheinen allgemein
  als <b>/dev/rfcomm0</b>.</li>
  <li><term>MacOS</term>: (noch zu beschreiben)</li>
  <li><term>MS Windows</term> folgt der üblichen DOS-Konvention, wo
  die seriellen Ports mit <term>COM1:</term>,
  <term>COM2:</term> usw. benannt sind. Diese Benennung betrifft auch
  Konverter, die jedoch manchmal Zahlen über 4 hinaus erhalten.</li>
  </ul>
  <p>Das Auswahlfeld <term>Knopf in Werkzeugleiste anzeigen</term>
  aktiviert die Schaltfläche <a HardwareStatus>Hardware verbinden</a>
  in der Werkzeugleiste.</p>

  <h3>Input Engine/DGT</h3>

  <p>Das Konfigurieren eines für Input Engine kompatiblen Treibers
  erfordert zusätzliche Felder.</p>
  <ul>
  <li><term>Engine-Kommando</term>: der Name des Programms, das als
  Treiber verwendet wird. Zum Beispiel wird der DGT-Treiber in Linux
  üblicherweise als <term>dgtdrv2.i686</term> aufgerufen, obgleich ein
  vollständig qualifizierter Name erforderlich sein kann.</li>
  <li><term>Engine-Parameter</term>: dieses Feld wird als Parameter an
  das Treiberprogramm übergeben. Die Werte hängen vom Treiber ab und
  sollten in dessen Dokumentation angegeben
  sein. Das <b>DGT</b>-Treiberprogramm braucht einen
  Zweibuchstabencode, der die Brettausrichtung und die Züge angibt,
  die zur grafischen Benutzeroberfläche gesendet werden sollen. Der
  erste Buchstabe kann <term>l</term> oder <term>r</term> sein,
  abhängig von der Uhr, die für Weiß links oder rechts sitzt. Der
  zweite Buchstabe kann <term>a</term>, <term>b</term> oder
  <term>w</term> sein, abhängig davon, ob alle Züge oder nur die Züge
  von Weiß oder nur von Schwarz gesendet werden sollen.</li>
  </ul>

  <p>Drücken von <b>OK</b> speichert die Einstellung in der
  Konfiguration von Scid und startet sofort den ausgewählten
  Treiber.</p>

  <p>Der Status des externen Brettes kann über die
  Schaltfläche <a HardwareStatus>Hardware-Status</a> beobachtet
  werden. Diese Schaltfläche kann auch benutzt werden, um bereits
  konfigurierte Hardware sofort zu verbinden, ohne den
  Konfigurationsdialog aufzurufen.</p>

  <p><footer>(Aktualisiert: Scid vs PC 4.18)</footer></p>
}

set helpTitle(D,HardwareStatus) "Status externer Hardware"
set helpText(D,HardwareStatus) {<h1>Status externer Hardware</h1>

  <p>Diese Schaltfläche befindet sich rechts auf der Werkzeugleiste
  von Scid. Abhängig vom Status der externen Hardware werden
  unterschiedliche Symbole angezeigt:</p>
  <ul>
  <li><button tb_eng_disconnected> Dies ist der normale Zustand nach
  Programmstart und zeigt, daß im Augenblick keine externe Hardware
  aktiv ist. Das Drücken dieser Schaltfläche verbindet die
  konfigurierte Hardware.</li>
  <li><button tb_eng_connecting> Scid hat die Kommunikation mit der
  externen Hardware begonnen und die Initialisierung läuft
  noch. Abhängig vom Treiber und der verbundenen Hardware kann es ein
  paar Sekunden dauern, bis alles eingerichtet ist.</li>
  <li><button tb_eng_error> Während der Kommunikation mit der externen
  Hardware ist ein Fehler aufgetreten. Übliche Ursachen sind z.B., daß
  ein anderes Programm versucht, mit der externen Hardware zu
  verbinden, die Hardware ist nicht mit dem PC verbunden oder ist
  einfach nicht eingeschaltet. In seltenen Fällen kann sich externe
  Hardware auch unerwartet verhalten. Ein Versuch einer erneuten
  Verbindung könnte das Problem lösen, da die Hardware üblicherweise
  bei Verbindungsabbruch neu gestartet wird. Auch das Entfernen
  und/oder Ausschalten des Gerätes ist in diesem Fall eine Option. Das
  Drücken der Schaltfläche versucht dann erneut, mit der
  konfigurierten Hardware zu verbinden.</li>
  <li><button tb_eng_ok> Die Kommunikation ist eingerichtet, das Gerät
  ist bereit und kann für Zugeingaben benutzt werden. Das Drücken der
  Schaltfläche unterbricht die Verbindung zur externen Hardware.</li>
  <li><button tb_eng_dgt> Falls ein DGT Electronic Chess Board
  verbunden und bereit ist, erscheint diese Schaltfläche. Das Drücken
  der Schaltfläche beendet die Verbindung zur externen Hardware.</li>
  <li><button tb_eng_query> Der Dialog über
  die <a HardwareConfig>Hardwarekonfiguration</a> ist offen. Beenden
  Sie die Konfiguration, bevor Sie die Hardware verbinden.</li>
  </ul>

  <p><footer>(Aktualisiert: Scid 3.6.27, Oktober 2008)</footer></p>
}

set helpTitle(D,InputEngine) "Konsole DGT/Input Engine"
set helpText(D,InputEngine) {<h1>Konsole DGT/Input Engine</h1>

  <p>Zuoberst im Input Engine-Fenster überwacht eine Konsole die
  Kommunikation zwischen Scid und dem Treiberprogramm. Dies ist
  normalerweise für den Anwender nicht von Interesse, kann aber im
  Falle von Fehlfunktionen hilfreiche Hinweise liefern. Alle von Scid
  gesandten Befehle werden durch einen Rechtspfeil vorangestellt, alle
  vom Treiberprogramm erhaltenen Antworten durch einen
  Linkspfeil. Unterhalb der Konsole wird informatorisch der durch Scid
  erfolgte Aufruf des Treibers angezeigt.</p>
  
  <p><term>Sende Züge für</term> ermöglicht es, die von der externen
  Hardware gesandten Züge zu begrenzen. Für eine Partieerfassung
  sollte das Brett natürlich Züge für beide Seiten senden. Für ein
  aktuelles Spiel jedoch sollten die vom Gegner gemachten Züge
  ignoriert werden, da Scid sie sonst als "illegal moves" meldet.</p>
  
  <p>Das kleine Brett rechts zeigt die aktuelle Stellung.</p>
  
  <p>Wenn ein Zug ausgeführt wurde, wird im Bereich zwischen den
  Schaltflächen und dem kleinen Brett der auf dem externen Brett
  ausgeführte Zug in figuriner langer algebraischer Notation
  angezeigt. Gültige Züge werden auf einem <green>grünen</green>
  Hintergrund, ungültige Züge auf einem <red>roten</red> Hintergrund
  angezeigt. Außerdem werden ungültige Züge durch einen Warnton
  angekündigt, falls für Scid der Ton aktiviert ist. Abhängig von den
  Einstellungen werden die Züge zusätzlich angekündigt.</p>
  
  <p>Die <term>Info</term>-Schaltfläche holt Informationen vom
  Treiberprogramm. Der Umfang dieser Informationen hängt vom Programm
  ab, sollte aber normalerweise soviel wie möglich über die externe
  Hardware und den Treiber selbst anzeigen. Außerdem liefert der
  externe Treiber die aktuelle Stellung auf dem externen Brett
  als <term>FEN</term>, was dann mit Scids interner Darstellung
  verglichen wird. Abweichuungen werden in der Konsole angezeigt und
  lösen einen Warnton aus.</p>
  
  <p>Im Falle daß Scid und externes Brett nicht synchronisieren, kann
  die Schaltfläche <term>Synchronisieren</term> verwendet werden. Eine
  neue Partie wird erstellt und die Ausgangsstellung wird gemäß der
  Stellung auf dem externen Brett gesetzt.</p>
  
  <p>Die Schaltfläche <term>Schließen</term> unterbricht schließlich
  die Verbindung zur externen Hardware und schließt die Konsole.</p>

  <h2>Besondere Funktionen</h2>
  
  <p>Die nachstehenden Funktionen hängen vom Treiberprogramm und der
  verwendeten Hardware ab. Ihre Beschreibung basiert auf den
  Funktionen, die mit <url http://www.dgt-projects.com>DGT Electronic
  Chess Board</url> verfügbar sind und die im
  <url http://dgtdrv.sourceforge.net>Input Engine-Protokoll</url>
  näher beschrieben sind. Einige dieser Funktionen verlassen sich
  jedoch darauf, daß die Hardware in der Lage ist, die Figuren und
  ihre aktuelle Position auf dem Brett zu erkennen.</p>

  <h3>Stellungsaufbau</h3>

  <p>Der Stellungsaufbaumodus wird durch das Entfernen beider Könige
  vom Brett aufgerufen. In diesem Modus ist der <b>Zugbereich</b> gelb
  gefärbt und zeigt den weißen König und den Text <b>Setup</b>.</p>
  
  <p>Im Einrichtungsmodus kann jede gültige Stellung auf dem externen
  Brett aufgebaut werden. Scids interne Darstellung wird jedoch nicht
  aktualisiert, bis sie beendet ist.</p>
  
  <p>Um den Einrichtungsmodus zu beenden, müssen beide Könige auf das
  Brett zurückgestellt werden. Beachten Sie, daß der König der am Zug
  befindlichen Seite <b>zuletzt</b> zurückgestellt werden muß, das
  heißt, wenn Weiß am Zuge sein sollte, dann setzt man zuerst den
  schwarzen König zurück, dann den weißen. Jetzt zeigt
  der <term>Zugbereich</term> die schwarze Dame und den
  Text <b>OK</b>.</p>

  <h3>Eine Partie beenden</h3>

  <p>Man kann bei der Partieeingabe oder beim Spielen die aktuelle
  Partie beenden, indem man beide Könige auf die Zentrumsfelder des
  Brettes setzt. Das Ergebnis wird wie folgt dargestellt:</p>
  <ul>
  <li><term>1-0</term> (Weiß gewinnt): setzen Sie beide Könige auf die
  Felder e4 und d5 in beliebiger Reihenfolge, das heißt auf die weißen
  Felder. Der Zugbereich wird weiß gefärbt und zeigt den weißen König
  und das Ergebnis.</li>
  <li><term>0-1</term> (Schwarz gewinnt): setzen Sie beide Könige auf
  die Felder e5 und d4 in beliebiger Reihenfolge, das heißt auf die
  schwarzen Felder. Der Zugbereich wird grau gefärbt und zeigt den
  schwarzen König und das Ergebnis.</li>
  <li><term>1/2-1/2</term> (Remis): setzen Sie einen König auf ein
  weißes und den anderen auf ein schwarzes Zentrumsfeld in beliebiger
  Reihenfolge. Der Zugbereich wird schwarz und weiß gefärbt und zeigt
  das Ergebnis.</li>
  </ul>

  <p>In jedem Fall erscheint der Dialog <term>Speichern/Partie
  hinzufügen</term>, um die Partiekennzeichen anzugeben und die Partie
  in der aktuellen Datenbank zu speichern.</p>

  <h3>Eine neue Partie beginnen</h3>

  <p>Eine neue Partie kann durch Aufruf des Einrichtungsmodus' (d.h.,
  durch Entfernen beider Könige) und durch Erstellen der
  Anfangsposition begonnen werden. Um anzuzeigen, daß Scid den Aufruf
  zu einer neuen Partie erkannt hat, wird der <term>Zugbereich</term>
  blau gefärbt und zeigt den weißen König und den
  Text <term>OK</term>.
  </p>

  <p><footer>(Aktualisiert: Scid 3.6.27, Oktober 2008)</footer></p>
}


set helpTitle(D,Sound) "Ton"
set helpText(D,Sound) {<h1>Ton</h1>

  <p>Scid hat begrenzte Tonfähigkeiten. Es kann Züge auf Englisch
  sprechen oder mit jedem Zug einen Tackton spielen. Andererseits
  kann <a FICS>FICS</a> auch einen Tackton spielen, um Ihren
  gegnerischen Zug anzukündigen.</p>

  <p>Die Funktion beruht auf einem langsamen und dürftig gewartetem
  Tcl-Paket, <b>Snack</b>, das standardmäßig in Windows und OSX
  installiert sein sollte. In Linux ist dieses Paket als "libsnack"
  und "tcl-snack" bekannt. Für weitere Informationen siehe unten.</p>

  <p>Um zu sehen, ob Ton aktiviert ist, untersuchen Sie
  das <green><run raiseSplashWindow>Startfenster</run></green>. Die
  Tonoptionen werden im
  Menü <run ::utils::sound::OptionsDialog><green>Optionen--<gt>Töne...</green></run>
  konfiguriert.</p>
  
  <p>Der Ton kann durch Auswahl eines ungültigen Verzeichnisses
  deaktiviert werden.</p>
  
  <h2>Linux Snack-Probleme</h2>
  
  <p>Wenn Scid nur jeden zweiten Zug spielt, dann haben Sie ein
   fehlerhaftes libsnack und sollten snack-2.2.10 von
   <url https://sourceforge.net/projects/scidvspc/files/support
   files/>https://sourceforge.net/projects/scidvspc/files/support
   files/</url> kompilieren.</p>
   <ul>
   <li>* Es sollte im gleichen lib-Verzeichnis installiert werden wie
   tcl/tk (im allgemeinen /usr/lib oder /usr/local/lib).</li>
   <li>* Falls Sie einen Kompilierungsfehler in der Datei
   generic/jkFormatMP3.c erhalten, verschieben Sie in dieser Datei die
   Zeile "#include <lt>math.h<gt>" oberhalb von "#define roundf(x)".</li>
   </ul>
   
   <p><footer>Aktualisiert: Scid vs. PC 4.12 Dezember 2013</footer></p>
}

set helpTitle(D,Changelog) "Scid vs PC Änderungshistorie"
set helpText(D,Changelog) {<h1>Änderungshistorie</h1>

<h4>4.21 (Jan 7, 2019)</h4>
<ul>
<li>Gamelist (and Best Games) can now show 'Next Moves' instead of just the 'Opening Moves' if the tree is open and adjusting filter</li>
<li>Text foreground colour option for listboxes and text windows. (and remove the 'global' colour option which is too rough)</li>
<li>Fics: allow moves made by examiners to be seen by other examiners/observers, and fix longstanding init fail</li>
<li>Mac: 64 bit macOS port. Poor performance but mostly working</li>
</ul><br>

<b>Engines</b>
<ul>
<li>Allow multiple engine logs at once, which can be nicely updated in real-time (and bind 'space' to engine stop/start)</li>
<li>Small engine boards now have an alternative display mode: Arrow shows best move</li>
<li>Free up right-click for windows 'copy text'. (Use middle click instead for toggling analysis modes)</li>
<li>Can now always show 'Infos' via an option in the main Engine config widget</li>
<li>Low level support for alternative "GO" modes for UCI engines. (::uci::goCommand)</li>
<li>Give transient engine popup buttons the same bindings as their originals</li>
</ul><br>

<b>EPD Window</b>
<ul>
<li>New annotaion/analyze features (UCI only): Count best moves and (optionally) show/store results.  Allow selecting the engine</li>
<li>New 'find' entrybox searches EPD file for matching text</li>
<li>Basic EPD/FEN export feature</li>
<li>Menu rearranges, including enabling more translations, and changing menubuttons to standard menu widgets</li>
<li>Paste analysis now removes previous analysis opcodes</li>
<li>Bind space in listbox to start/stop engine</li>
</ul><br>

<b>Minor</b>
<ul>
<li>Tree window - options to hide buttonbar, and always 'Adjust' filter</li>
<li>Display a board in the Player Report (if applicable)</li>
<li>Full German help update from Christian</li>
<li>Improve Gamelist 'see' issues</li>
<li>Brazil-Portuguese language update from Gilberto de Almeida Peres</li>
<li>Opening Books - don't clobber existing game mainline with book import (was 'export'). Unneeded 'update -pgn' was slowing everything down too</li>
<li>Refresh score graph at end of fics game</li>
<li>Pressing End key twice always goes to game end</li>
<li>Show Tux in the comment editor, and update the gifs</li>
<li>Update chess 960 patch</li>
<li>New flip board button</li>
<li>scidt reverse sort feature. Also - don't accept empty sort criteria, and accept 'si4' filenames</li>
<li>Don't ask to 'Save Game' if the game length is zero, and try to stop ECO window clobbering (any) game changes (New 'sc_game info halfmoves' command)</li>
</ul><br>

<b>Bug Fixes</b>
<ul>
<li>PGN - Properly handle all level of var indentation.</li>
<li>Windows: Fix extra text in the Player Info windows</li>
<li>Fix Tree cache getting saved with app close</li>
</ul>

<h4>4.20 (April 7, 2019)</h4>
<li>The Score Graph can now display move-times (using "%emt" and "%clk" pgn values)</li>
<li>Option to display a black rectangle for the "selected square" instead of a coloured square (Options-<gt>Moves-<gt>ColorSelected)</li>
<li>Several translation updates including a complete German help file from Christian Opitz</li>
<li>The Setup Board window now has a coordinate axis and a flip button</li>
<li>Computer Tournament - Don't enforce a ten-engine limit, have a new statusbar to show progress and the winner, include Uwe Klimmek's carousel scheduling</li>
<li>EPD rewrite from Bonnie A. - Annotations are now compliant with the EPD specification, Flips the board to side-to-move, other bug fixes</li>
<li>In Game Annotation, don't miss analysing last-move blunders</li>
<li>The ECO finder has a basic "Find Opening by Name" feature</li>
<li>A quick Piece Position Search implemented using CQL</li>
<li>Gameinfo window always shows a rehoned "Material Advantage" value</li>
<li>Board Options window can now display all custom piecesets in a gridded manner, and also highlights the current piece style</li>
<li>FICs - Some changes to the button/font, and don't store adminBOT tells, improve smoves command</li>
<li>Tree Mask - Add 'unfold' option to the Mask window, and fix up some allignment/font issues</li>
<li>Update the Spelling file with Uwe's 2018 update</li>
<li>Pressing 'End' key moves to end-of-variation (if in var) instead of end-of-game</li>
<li>Minor Book Window fixes - enable undo, remove the arrow buttons (use wheelmouse instead), and properly name and document the 'Other Moves' button</li>
<br>

<li>Analysis Engines: pressing keys 1 to 5 sets PV</li>
<li>Set undo point when marking squares</li>
<li>Remove Suggested Moves feature</li>
<li>Update Gregors tktext patch to current (2018-08-13)</li>
<li>Xboard protocol fixes: setboard should come after analyze, send 'nopost' to xboard engines in comp mode, and acknowledge 'my move' in analysis, as sometimes xboard engines (scidlet) dont send any other infos</li>
<li>Relocate a couple of colour option menus to their proper windows (Crosstable and Score Graph)</li>
<li>In PGN import, handle the case when there are two comments for a single move</li>
</ul><br>

<b>Bug Fixes</b>
<ul>
<li>Fix serious built-in-engine and PGN-import errors</li>
<li>Tree - the greying of the tree moves (if the progressbar is hidden) disabled the tree mask's move colouring</li>
<li>Disable gamelist flag/delete menus if read-only</li>
<li>Mate in N fix and hardening</li>
<li>Ignore Country names if they dont look right in the gamelist and database sort</li>
<li>Disable MS Windows screenshot feature (broken in Tk)</li>
</ul>

<li>New 'Default Databases' feature (Options-<gt>Save Bases as Default)</li>
</ul>

<h4>4.19 (März 15, 2018)</h4>
<ul>

<li>New 'Default Databases' feature (Options-<gt>Save Bases as Default)</li>
<li>CQL 5.2 search feature (Search-<gt>CQL). Thanks Lionel and CQL authors</li>
<li>General search can now match any (non-hidden) pre-game or final move Comment</li>
<li>Export Scid Flags feature</li>
<li>Big speed up for bulk Strip Comments/Variations feature. (Also make the 'Stop' button work)</li>
<li>Improvements to loading games at the correct position (resolve a conflict between the tree window and search results), and small Tree speed-up</li>
<li>Remove 'Magnetic' for Paul's chess pieces. New 'Ascii' chess pieces (thanks HGM), and 'Green' colour scheme</li>
<li>New Turkish translation (thanks Ali Sen)</li>
<br>

<li>Right-clicking button bar changes, including right-click Window button shows Splash window</li>
<li>Some tree tweaks and doco updates, and tree Fast+Slow mode now doesn't break the win/lose graph</li>
<li>Tweak progress bar update frequencies (base export, game copy)</li>
<li>OS X has a faster build</li>
<li>New Windows build system from Oz</li>
<li>A new script, 'sc_filter_pgn', which filters multiple PGN files for games matching a certain position</li>
<li>FICS - Offers Graph is disabled while playing a game. Change the censor button a little, and control+censor censors person chatting to you</li>
<li>Escape key in main board cancels piece dragging/move</li>
<li>Input engine fixes (DGT board). Widget now resizes ok, and bitmaps display properly on OS X. Thanks to Davy De Roeck for debugging it on OS X</li>
</ul><br>
<b>Bug Fixes</b>
<ul>
<li>Fixes regarding other language piece letters</li>
<li>Fix up showing the first gamelist/game in searches</li>
<li>Fix up the days of the months in the calender widget</li>
<li>Fix up window placement on multi display desktops</li>
<li>Best games 'Reset Column titles' was broke</li>
<li>sc_game startPos segfaults if !HasNonStandardStart</li>
</ul>

<h4>4.18 (Juli 1, 2017)</h4>
<ul>
<li>New Best Games widget, similar to the Gamelist</li>
<li>Score Graph now highlights the current move</li>
<li>New annotation feature: Show missed/shorter mates</li>
<li>A little new Gamelist button to reveal hidden/squeezed buttons (finally!)</li>
<li>The GameInfo Window has a right-click menu, and other minor menu changes</li>
<li>Basic support for horizontal scrolling (in gamelist, crosstable and bestgames) for mousewheel buttons with horizontal capability.</li>
<li>Finnish translation, from Mika Kaakinen</li>
<br>
<li>Engines: if an engine shows a Mating line, show the whole line in Analysis Window, disregarding Max-Ply variable</li>
<li>Don't show an error message when importing null PGN tags... too verbose</li>
<li>Fics: try to handle case when move is made after run out of time. (We don't want to mark the game as out of sync)</li>
<li>Minor Translation, Mask and Fics tweaks</li>
<li>Hide Board resize buttons in docked mode if auto-resize is enabled</li>
<li>Revert Control-b binding to Book window</li>
<li>Focus the text box of Comment Editor when raised</li>
<li>Show a busy cursor when backing-up databases in the finder</li>
<li>Game Save: also use previous Round with the 'Use Previous' button/feature</li>
<li>Running Engine 1 in the statusbar needs special handling if using docking, as it cannot be withdrawn properly and was confusing before</li>
<li>Show correct position in the pgn window after adding a new var/move</li>
<li>Show PGN scrollbar by default</li>
</ul><br>
<b>Bug Fixes</b>
<ul>
<li>Redock Windows after they have been undocked then destroyed. Before, such windows were remade undocked, and *without* menus</li>
<li>Keep comments when truncating game from start</li>
<li>Fix broken 'Copy' button in Engine's config window</li>
<li>Promoting variations didn't handle precomments</li>
</ul>

<h4>4.17 (Oktober 25, 2016)</h4>
<ul>
<li>Analysis/Engine window</li>
<li>  * Show checkmate/stalemate messages instead of sending 'no-move positions' to engine</li>
<li>  * In engine configuration window the 'Date' field of an engine is now its exe modification time (mtime)</li>
<li>  * Speed enhancements for processing UCI engine moves (pv)</li>
<li>Gregor's improvements to the player and tournament finders (which Shane never implemented properly)</li>
<li>  * Previously - only the *first* 50 tournaments were used (eg) when looking for the 50 tournaments with most players</li>
<li>  * Compilers must now support c++0x / c++11</li>
<br>
<li>Custom player photos (Place correctly named gifs in $HOME/.scidvspc/photos or bin/photos)</li>
<li>Resign button for playing UCI engines and Phalanx, analog clocks can now be hidden ('x' button in the white clock), and add the 'Skill Level' to the pgn header (eg - as used by Stockfish)</li>
<li>A patch to include Gregor's tk::text improvements</li>
<li>New Chess 960 patch! Thanks to Britton Farrar, who now has a project at https://github.com/brittonf/scid-vs-variants</li>
<li>New 'Under Promotion' search item in General Search</li>
<br>
<li>Computer Tournament: when 'First engine plays others', flip board to show games from first engine's view</li>
<li>Flip game browser if matches myPlayerNames</li>
<li>Clipbase game limit is now 5,000,000, and game undo buffer is 20</li>
<li>Chess Pieces: remove 12 piece-set limit, and adventurer and kingdom pieces. Reinstate old Merida1 as Merida3</li>
<li>Row colour is now configurable for Player/Tourney/DB finders and Crosstable rows</li>
<li>Fics</li>
<li>  * Offers graph is updated in a better manner</li>
<li>  * Save game and add message disconnected while playing</li>
<li>  * Top three buttons are now configurable</li>
<li>  * Add a 'follow+' command, which automatically saves followed games</li>
<li>Tweak Find Best Move feature, which now also recognizes non-standard starts</li>
<li>Game Save dialog: extend use of 'Use prev tags' to 'Use previous' (for Names, Site, Event, Elo, dates)</li>
<li>Switcher - replace readonly foreground color with a '(readonly)' message, and add a 'Confirm Copy' option menu</li>
<li>Disable tree updates while annotating games and computer tournament</li>
<li>Tree: Instead of having a 'stop' button, grey the tree text when updating (if progressBar is hidden)</li>
<li>Change a few shortcuts. control-b board colours. control-B setup board. control-G general search</li>
<li>Control-TrialMode button, automatically adds a null move, and tweak the trial mode button pic</li>
<li>Gregors namebase hardening</li>
<li>PGN Import now converts any empty Name/Event/Site/Round tags to '?' (according to pgn standard, these should not be empty)</li>
<li>Minor fixes for Setup Board</li>
<li>Allow Merging Games with non standard starts</li>
<li>Bind pressing 'vv' keys to enter first variation</li>
<li>Remove Crafty specific command 'mn', and it seems unsupported in Crafty 25</li>
<li>In the tree window, when deselecting "Adjust Games", we now keep the current gamelist/filter</li>
<li>Make hideNextMove non-persistent</li>
<li>Right clicking 'Exit Var' button will exit all vars</li>
<br>
<br>
<b>Bug fixes</b>
<li>Fix a nasty memory leak (in PgnParser)</li>
<li>Fix name counts when using globbing in the name editor</li>
<li>Fix Mate-in-N (Tactics) bug</li>
<li>Some  charsetconverter (internationalisation) fixes from Gregor</li>
<li>Removed xdg-open for opening URLs which just doesnt work for me</li>
<li>Tree info button (short display) was broke</li>
<li>Bugfixes for compiling on some linux platforms (including Raspberry Pi 2)</li>
<li>Some clock fixes. Digital clock was busted (counting up). CompTournament clocks are now digital only</li>
<li>Stop tacgame/phalanx from failing to restart</li>
</ul>

<h4>4.16 (Januar 24, 2016)</h4>
<ul>
<li>New Checkmate/Stalemate general search option</li>
<li>Make fics premove work properly, and with promotion</li>
<li>New Switcher menus to Open Tree/Best Games/Change Icon, and negate any open base filter</li>
<li>The Best Games window can now be unsorted (on Elo)</li>
<li>Tree window has a short-display option (default is on)</li>
<li>New Merida1 piece set with large sizes (from Richard)</li>
<li>Change the colours of the switcher current-base, and of book/book-tuning/tree next-moves</li>
<li>Update all Latex export features from Chess12 to the modern Skak (author Richard Ashwell) and add Latex previews for game exports (linux only)</li>
<li>Some Opening-Report and Player-Report fixes, and fix the Opening-Table options window</li>
<li>Show the custom flag names in the statusbar</li>
<li>Player Info: Add an extra 'Filter Games' hyperlink</li>
<li>Tournament finder: Change behaviour re showing tournament crosstable</li>
<li>Portugese update from G. Silva. Spanish update from Benigno</li>
<li>Add 50 move draw detection to Phalanx and UCI computer games</li>
<li>And new fics 'smoves+' command stores move-time (%emt fields)</li>
<br>
<br>
<b>Bug fixes</b>
<li>Export PGN bugfix introduced in 4.15</li>
<li>Properly handle OpenRecentAsTree, if base is already opened</li>
<li>'Round' wasn't getting shown in the gameinfo if Date was unset</li>
<li>Annotation: try to handle zero move games</li>
<li>Work aroud for occasional Tcl issue which affects piece dragging</li>
<li>Game Save dialog didn't have translations</li>
<li>Remove a heap of compiler warnings</li>
<li>Tournament finder was showing incorrect number of games</li>
</ul>

<h4>4.15 (November 20, 2015)</h4>
<br>
<b>Engines</b>
<ul>
<li>Limit engine ply option</li>
<li>Bind Control+Enter to add whole line</li>
<li>Tweak variation creation to avoid occasional var staggering</li>
<li>Show 'Ponder' as a UCI configuration option (now that engines may play with Ponder on)</li>
<li>For the addmove button '+'. If move exists, just move::Forward</li>
</ul><br>

<b>Annotation</b>
<ul>
<li>Options for the score format (which allows them to be hidden in the PGN window)</li>
<li>When finished annotating game, move to last move (instead of sometime staying at second last move)</li>
<li>Dont show out-of-book messages for non-standard starts</li>
<li>Use-book feature didn't work under certain condition</li>
</ul><br>

<b>Gamelist Window</b>
<ul>
<li>Columns can now be reordered, hidden, or right/left alligned (right-click column titles)</li>
<li>Replace the Flag button with context menus</li>
<li>Left/right keys scroll the gamelist view</li>
<li>'Merge Game' menu item (patch only)</li>
</ul><br>

<b>Tree</b>
<ul>
<li>When deselecting 'Adjust Filter', make the current adjusted filter remain</li>
<li>Fix up a few tree translations/text formatting issues</li>
<li>Option to show/hide the progress bar. (On OS X, the progressbar makes searches much slower)</li>
<li>Fix unusual coredump closing unused tree</li>
</ul><br>

<b>Spelling</b>
<ul>
<li>Make Spellcheck interuptible, and remove limit of 2000</li>
<li>Update spelling file against Franz' Juni 2015 release</li>
<li>Skip spelling date check if game has no date</li>
<li>Tweak AddEloRatings feature to work properly with FIDE rating data newer than 2012</li>
<li>Don't ask confirmation of spellchecking clipbase</li>
</ul><br>

<b>UTF-8 support</b> (from Gregor)
<ul>
<li>Databases can now be exported to PGN using either UTF-8 or Latin-1 character sets</li>
<li>Detect correct charset of imported pgn and convert all to utf 'Avoiding a mix of character sets inside a database.'</li>
<li>Support for ChessBase proprietary character set in PGN header</li>
</ul><br>

<b>FICS</b>
<ul>
<li>Add flip-board buttons to the mini observed games</li>
<li>Add a 10 minute line to offers graph</li>
<li>Hack to destroy the results messageBox if we are being 'rematched' or challenged</li>
<li>Unhide fics boards when a new observed game is announced</li>
<li>New takeback code (better, but needs more work)</li>
<li>Add a 'Time' tag</li>
</ul><br>

<b>Computer Tournament</b>
<ul>
<li>Remember selected engines when changing number of engines</li>
<li>Use new is-check routine for stalemate detection (sc_pos analyze could cause core dumps)</li>
<li>Change the tournament per-game time controls from min/secs to secs/secs (base/incr)</li>
<li>Don't add time increment for in-book moves</li>
</ul><br>

<b>Translations</b>
<ul>
<li>Update for French from Dale Cannon</li>
<li>Minor Portugese update from martinus</li>
</ul><br>

<b>Player Info</b>
<ul>
<li>Player Info history feature (right click window)</li>
<li>Add 'Total' separators to the playerinfo stats</li>
<li>Filtering opponent games wasn't working if tree open</li>
</ul><br>

<b>Bug Fixes</b>
<ul>
<li>MS Windows - preempt/fix possible db compaction failure due to inherited engine file descriptors remaining open</li>
<li>OS X Board Options colour buttons were not coloured</li>
<li>OS X and maybe win32 - game import wasn't automatically pasting the text copy buffer</li>
<li>The pgn middle-button board popup could rarely be placed off-screen</li>
<li>Fix occasional (but annoying) bug regarding game truncation and variations</li>
<li>Creating a new database - board wasn't getting refreshed</li>
<li>Browsing a game - autoplay didn't stop straight away when requested</li>
<li>Some EPD fixes. Notably - auto save position</li>
</ul><br>

<b>Also</b>
<ul>
<li>Minor Compact database fixes; create a new game when compacting db (instead of leaving the current game as game 0, which is confusing), and ask for SaveGameChanges before compacting</li>
<li>Autoplaying multiple games - pause at each game end</li>
<li>Database switcher uses font_Tiny, so handle/resize this font a little better</li>
<li>Usual Help updates, including add a help button for the NAG window and Fernschach / Xfcc / email help update</li>
<li>OS X hack to activate shortcuts keys when wm gives app focus</li>
<li>Setup board should always start with the current position</li>
<li>Try to make all base filenames absolute, hoping to fix duplicate file history entries and db opens</li>
<li>Add a string length validation procedure, and use it to limit Custom Flag entry boxes to 8 chars</li>
<li>Dont reload last/first game if already active</li>
<li>Gregor's qsort implementation for player finder sorting (sc_name plist)</li>
<li>Bump player/tourney finder defaults</li>
<li>Make tournament finder respect EventDate tag</li>
<li>Patch to always load last game (ignoring base autoload)</li>
<li>Bind Control+Wheel to font resize in the player and tournament finders</li>
<li>Merge game: move the merge game comment to the start of variation, and simplify comment</li>
</ul><br>


<h4>4.14 (April 7, 2015)</h4>
<br>
<b>Tree Mask</b>
<ul>
<li>Mask auto-load option</li>
<li>Automatically add move to mask instead of showing silly error message</li>
<li>Holding Control while opening the Mask context menu (marker/nags/color) adds a marker to the whole line (etc)</li>
<li>Make Mask moves easier to see, and tweak menus</li>
</ul>
<br>

<b>Board Setup</b>
<ul>
<li>Enable piece dragging</li>
<li>Flip the setup board if main is flipped</li>
<li>Make 'Clear Setup board' have Kings</li>
</ul>
<br>

<b>Searches</b>
<ul>
<li>Add End-Position-Only option to Material Search</li>
<li>Knight+Bishop sanity check was wrong, and we werent saving Knight+Bishop joint totals in saved searches</li>
<li>Tweak the other-base combobox in Board Search</li>
</ul>
<br>

<b>Fics</b>
<ul>
<li>Double clicking an observed game makes it your primary game (number is shown as bold)</li>
<li>Refine Offer Graph layout (most games are short), and add a close button (previously was only escape key)</li>
<li>New 'Censor' button (+censor opponent)</li>
<li>Add a show/hide buttons feature</li>
<li>Control+Wheelmouse alters Fics console font size</li>
<li>Only save games a few moves long</li>
</ul>
<br>

<b>Computer Tournament</b>
<ul>
<li>Automatically adjudicate in simple cases of insufficient material</li>
<li>Make the window more ergonomic</li>
<li>Fix ponder not working with non-standard starts</li>
</ul>
<br>

<b>Game Information</b>
<ul>
<li>Comments now have their own line, and move some infos to the Statusbar</li>
<li>When Gameinfo is hidden, make the mini Player Names clickable</li>
</ul>
<br>

<b>Book Tuning</b>
<ul>
<li>Add/Remove Line features</li>
<li>Clicking on Book Tuning next move (in yellow) moves forward</li>
<li>Bugfix - truncate the polyglot books when using Remove Move</li>
</ul>
<br>

<b>Score Graph</b>
<ul>
<li>Remove the errant rounding up of +10 to +11 in y-axis, and raise border over graph bars</li>
<li>Add backGround colour to graphs</li>
<li>Middle button pops up the game position for any move</li>
</ul>
<br>

<b>Other</b>
<ul>
<li>New Portuguese translation from R. Silva (martinus at FICS)</li>
<li>Update to Phalanx XXIV. The Tactical Game feature is a proper challenge now</li>
<li>Place Best Games window beside Tree window (in docking mode)</li>
<li>Playerinfo: still show Bio info (if available) when there are no games in database</li>
<li>Automatically add the final move if adding a var at game end with the AddVar button</li>
<li>Minor improvements for html/html+javascript Game Exports</li>
<li>Set filter to deleted games prior to compacting game file</li>
</ul>
<br>

<b>Documentation</b>
<ul>
<li>Document how to alter the Game List fields</li>
<li>Update OS X build notes</li>
<li>Update chess960 patch (no code changes), and document known issues</li>
</ul>
<br>

<b>General Bug-fixes</b>
<ul>
<li>Xboard engine annotation was ignoring 'Use Book'</li>
<li>Correspondence chess tls/encryption bugfix (Alexander)</li>
<li>Properly flip comment editor board (if applicable) and other tweaks</li>
<li>'Find Best Move' feature was broke</li>
<li>When saving game, throw error for badly formed extra tags (instead of silently discarding)</li>
<li>When adding a var to end of game, make sure to auto enter *this* variation, in case of vars already existing</li>
<li>Exit trial mode when changing bases</li>
<li>Gamelist sort confirmation column-name was not translated</li>
<li>Change move overwrite behaviour of eco browser and Opening Table moves</li>
<li>Remove superfluous padding from OS X aqua theme</li>
</ul>

<h4>4.13 (Oktober 25, 2014)</h4>
<ul>
<li>Analysis Engine: exclude move(s) feature. Mouse-hover shows excluded moves (UCI only)</li>
<li>Analysis Engine: button to pop-up unrevealed buttons, and redo a few icons</li>
<li>Maintenance: Bulk strip Comments/Variations</li>
<li>Depth-based Engine Annotation improvements</li>
<li>Tweaked Key Bindings (including FilterReset Control-r and GameSave Control-s)</li>
<li>Improved Background Colour feature</li>
<li>Add 'Find' entry boxes to more windows (including spelling corrections).widget can now use regular expressions</li>
<li>Splash widget console now has a simple command history (up-arrow)</li>
<li>Better Repair Base feature (from Gregor)</li>
<li>Include Gregors fast file opening with the windows 32-bit binary</li>
<li>Bind Control-Wheel to alter fixed font size (in some windows)</li>
<li>New Russian translation (from Sergey Nikolaevich Koyankin) and updated German one (from surrim)</li>
<li>Enforce all tags (eg Event names, etc) to be less than 256 chars</li>
<li>Tweak Scid's Linux installer is to properly allow custom SHAREDIR</li>
<li>Windows drag and drop file open wasn't being init properly</li>
<li>Better handle language translations/encoding</li>
<li>Crosstable: bump max-player limit, tweak menus and bind right-click to menu, fix occasional allignment bug, and dont' automatically update (fixing busy cursor bug)</li>
<li>Bump Opening Table limits, and minor bug-fixes</li>
<li>New (Skak) Latex export-games feature (author Mark Dennehy)</li>
<li>Update Xfcc to handle secure connections (thanks to Andrew Hunt)</li>
<li>Fix minor memory leaks, and dont slow game file compaction (we now reset filter)</li>
<li>Bestgames has a game load menu instead of 3 buttons</li>
<li>Refine docked window drag and drop</li>
<li>Many minor OS X tweaks</li>
<li>Trim whitespace from name fields in game save dialog</li>
<li>Add whitespace corrections to spelling.ssp, and also tweak Event spelling corrections</li>
<li>Tooltips for the obscure buttons in main buttonbar</li>
<li>Analysis add move as 'New Mainline' was broke</li>
<li>Always get confirmation for sorting via gamelist</li>
<li>Enforce illegalilty of saving Event Date without Game Date</li>
<li>Phalanx updates and minor tacgame, sergame fixes</li>
<li>Make a few windows have small font buttons</li>
<li>Shift+Wheel(/ left-right wheel) scrolls a few widgets horizontally</li>
<li>Break up the long Book Tuning button menus</li>
<li>Many minor bugfixes and further tree-only filter fixes</li>
</ul>

<h4>4.12 (März 25, 2014)</h4>
<ul>
<li>Gamelist/Filter fixes. Filter works better with Tree</li>
<li>New Crosstable tie-break options and reorder Crosstable menus</li>
<li>Game-result is now shown alongside Player names, at top of GameInfo window</li>
<li>Middle button in main board toggles game info</li>
<li>Databases open faster (Linux/OS X only - "avoid the time consuming file locking". Windows is in testing)</li>
<li>Allow dragging Docked Window tabs to alter their order</li>
</ul>
<br>
<b>Gamelist button/menu</b>
<ul>
<li>Flag button is now context menu, Gamelist Save is moved to tools-<gt>export</li>
<li>Find button removed (use enter in Find entrybox)</li>
</ul>
<br>
<b>Spelling</b>
<ul>
<li>Update spelling file to a custom version of Franz's Jan-5-2014 spellling.ssp</li>
<li>Spell-checking can now remove GM, IM, FM, CM, WGM prefixes from player names</li>
<li>Doing player-name replacements, show how many fail due to age/date considerations</li>
</ul>
<br>
<b>FICS</b>
<ul>
<li>Add user-configurable init commands</li>
<li>Board size slider is now a menu</li>
<li>Game Offers pack over buttons (making it less crowded, use escape/button-2 to cancel)</li>
<li>New find entrybox to search the console</li>
<li>Remove Clear button (as getting crowded)</li>
<li>Remove the never used big clocks</li>
<li>Add start, end sounds (and minor sound fixes - though still buggy)</li>
<li>Dont save FICS aborted games</li>
<li>Disable engines when playing a FICS game</li>
</ul>
<br>
<b>Analysis and Annotation</b>
<ul>
<li>Make 'scoreToMate' work better and faster, which stops occasional incorrect Mate-in-N lines showing up, and works better at near-mate positions</li>
<li>Make the Annotation config window fit on small displays</li>
<li>Stop engine at end of annotating a single game</li>
<li>Try a new approach to Depth-based annotation, which works better, but still needs fine-tuning</li>
</ul>
<ul>
<li>Spanish translation update from Igor Sosa Mayor</li>
<li>Polish translation update from Adam Umiastowski</li>
<li>Add a find entrybox to the splash window</li>
<li>Strip PGN Tags improvements</li>
<li>Right-clicking toolbar Game-Save icon quick saves game</li>
<li>Sound devices can now be selected; mainly useful for Linux systems</li>
<li>Dont insert newlines into PGN copied to text buffer... Some web PGN browsers don't work with newlines following movenum. eg "10. Nxc3"</li>
<li>Save game history when Scid quits</li>
<li>Remove tree status bar. Same info avail in switcher and tree text widget</li>
<li>Booktuning nextmove is now highlighted (same as Book), and padding has been tweaked a bit</li>
<li>Move Maintenance menu from File to Tools menu</li>
<li>Remove the annoying " from myPlayerNames"</li>
</ul>
<br>
<b>Bugfixes</b>
<ul>
<li>When saving PGN to file, disable translating pieces. (Export to PGN was already this way)</li>
<li>FICS Digital clocks didnt appear under some circumstances</li>
<li>Undo/redo refinement/fix for when buffer has been full</li>
<li>Fix import issue - Sometimes first tag is lost (If UTF byte order mark is present)</li>
<li>MSWindows - Board keyboard bindings are were getting lost after Variation window popup is dismissed</li>
<li>Some tooltip refinements, including removing tooltips with board update (mask tooltips were erroneously persistent)</li>
<li>Tablebase window: Results Board was not getting packed (is now below Results Frame). Change the damn awful red, update help, give tbWin the widest paned window</li>
<li>With wish8.6, we cant close undocked windows with a Close button. Fix</li>
<li>Some fixes for javascript and html game exports</li>
<li>Correctly handle plain text crosstables</li>
</ul>

<h4>4.11 (Dezember 1, 2013)</h4>
<ul>
<li> Maximum board size is now twice as big</li>
<li> Gamelist context menu (right-click). Less button crowding</li>
<li> Annotation improvements: Depth based annotation, and cut-off features</li>
<li> Dock a few extra windows (graphs, Endspieldatenbank)</li>
<li> Computer tournament stability/speed fix</li>
<li> Locked Analysis Engines now show the locked position (not the working line)</li>
, and bug-fix the engine lock, which didnt work properly</li>
<li> Add a low CPU priority check box to Engine Configuration window</li>
(especially important for MS Windows - where engines can kill GUI)</li>
<li> Engine configuration window now repsonds to keystrokes to quickly find any engine</li>
<li> Display "(altered)" in statusbar is game has been changed</li>
<li> Fullscreen menu item (Options-<gt>Windows-<gt>Fullscreen)</li>
<li> FICS tweaks, including over-riding takeback/abort request dialogs when game ends</li>
<li> Remove some wasted space around FICS, main button bar, and other widgets</li>
<li> New Greek translation</li>
<li> Read custom chess pieces from ~/.scidvspc/pieces</li>
<li> Docked tabs/menu refinements</li>
<li> OS X - Clicking on URLs will open the link in a browser</li>
<li> Add a command console to the start-up window</li>
<li> Bug-fix: Fix main board rendering anomoly in docked mode with MS Windows</li>
<li> Bug-fix: When tree is open, gamelist filter operations didn't work properly</li>
<li> Bug-fix: Search in variations never matched positions at end-of-line</li>
<li> Bug-fix: Opening Table favourites werent working properly</li>
<li> In Export PGN dialog, add an option for "Space after Move Numbers"</li>
<li> Keyboard short-cuts changes. Control-p (etc) no longer open/close, but open/raise</li>
<li> Tweak Comment Editor and Player Info buttons</li>
</ul>

<h4>4.10 (August 25, 2013)</h4>
<ul>
<li>When sorting databases, don't reset filter and remember current game/gamestate</li>
<li>Game history menu</li>
<li>Implement (and bugfix) SCID's more comprehensive NAG framework</li>
<li>Change a couple of field orders in the gamelist, remember field widths, and remove the icon context menus from the switcher (middle click now toggles show/hide the database icons)</li>
<li>FICS: Allow use of alternative URLs (used during FICS outage) and other minor tweaks</li>
<li>Window focus improvements (mainly for MS Windows and OS X)</li>
<li>Computer Tournament: add 'Engine Scores as comments' option, and make some minor global/:: var changes</li>
<li>Add Book Tuning to dockable windows</li>
<li>Automatically flip board (if applicable) in game browser and analysis miniboards</li>
<li>When diffing twin games, ignore newlines in the comments, which make diffing impossible</li>
<li>Add undo points for user generated addNag events</li>
<li>Bookmarks: add a few key bindings (delete/up/down), and shuffle the gamelist bookmark button up one row</li>
<li>Drag and drop hardening</li>
<li>Windows 7 bugfix: PGN export and Progress bars weren't working in undocked mode</li>
<li>Translation framework updates. Overhaul Dutch translation, and remove (broken) Russian one</li>
<li>Convert braces '{', '}' to '(',')' when exporting PGN comments (against PGN standard). Also tweak various PGN help topics</li>
</ul>

<h4>4.9.2 (Juni 19, 2013)</h4>
<ul>
<li>OS X changes, including docked mode fixes</li>
</ul>

<h4>4.9.1 (May 4, 2013)</h4>
<ul>
<li>Fix promotion bug in non-docked mode</li>
<li>Small pictures allign top/bottom in game info</li>
<li>Clickable crosstable columns</li>
<li>Make an undo point with Setup Board, and disable undo for Trial mode</li>
<li>Add Tournament lookup to Player Info window</li>
<li>PGN import window was not getting mapped</li>
</ul>

<h4>4.9 (April 20, 2013)</h4>
<b>Window Docking</b>
<ul>
<li>Different windows are docked/restored than Scid. Five layout slots with three custom layouts. Bug-fixes. F11 for fullscreen. Tcl 8.6.0 may have issues. Selectable Ttk themes (also for Gamelist)</li>
</ul>
<br>
<b>General</b>
<ul>
<li>Move search feature (eg 'h6 Bxh6')</li>
<li>UCI: replace 'position fen ...' with 'position startpos moves ...' for general analysis</li>
<li>Better Twin Games Checker - highlights missing comments and variations in duplicate games</li>
<li>Windows has a  MSVC makefile (Makefile.vc) and includes Stockfish 2.31 (JA legacy build)</li>
<li>Fix windows stack problem (hopefully)</li>
<li>Text Find widgets in help, crosstable, engine logs</li>
<li>Game Save dialog remembers any custom tags you add to a game, making them easy to recall</li>
<li>Restore drawing arrows and marks from the main board (also used by FICS premove)</li>
<li>Arrow length/widths configurable via comment editor</li>
<li>PGN Figurines now display in bold, and a different font, if applicable (from Gregor)</li>
<li>Some new board textures (from Ed Collins)</li>
<li>Automatically save "bitmaps" directory when exporting to HTML</li>
<li>Player info window shows Photos in a scrollable canvas insead of stuck in top right corner</li>
<li>Delete key deletes moves in game/variation after the current move</li>
<li>Score Graphs are now bargraphs instead of lines</li>
<li>Bind statusbar-<gt>middle button to 'switch base'</li>
<li>FICS context menu, game offers now show more information, and premove</li>
<li>FICS: deiconify/raise window when game starts (nodock mode only)</li>
<li>FICS: stop clock when we make a move (even though we may not have acknowledgemnt from FICS about move)</li>
<li>FICS: 'upload' command for uploading local games to FICS examine mode</li>
<li>Allow the Name editor to glob '*' for Site, Event and Round fields (but not for 'All Games', too dangerous when used by mistake)</li>
<li>The material board can display *all* taken pieces</li>
<li>Gamelist button rows can be hidden by right-clicking the list, and it has a game save icon</li>
<li>Right click V+ button adds the second variation</li>
<li>Windows analysis engines no longer run at low priority</li>
<li>When annotating the score on blunders, show the main score first, var second (eg: +1.00 / +2.50)</li>
<li>Add programmers reference to the help contents/online doc</li>
<li>Bind space-bar to engine start/stop</li>
<li>Update twic2scid.py script</li>
<li>Remember if .board is flipped for each open base</li>
</ul>
<br>
<b>Bug-fixes</b>
<ul>
<li>Make the database switcher icons/frames get smaller if they are cramped (so we can see them all)</li>
<li>Half fix UCI game (sergame.tcl) time issues</li>
<li>Corrospondence Chess now works</li>
<li>Tree Mask bugfix: Checks couldnt be added to mask</li>
<li>Fix Tree 'Fill cache with game/base' feature</li>
<li>Try to handle shortened FENs with Paste FEN</li>
<li>Crosstable: 'Set Filter' now includes deleted games if +deleted</li>
<li>Crosstable: handle games with a year-only date differently for crosstable purposes (Instead of +/-3 months, match any other games in the calender year</li>
<li>FICS: Stop clocks after a takeback request from opponent</li>
<li>FICS: Games with move lengths greater than 1:00:00 would break parse</li>
<li>Add missing FICSLogin translation</li>
<li>New windows Phalanx build. It works better under win7, but has analysis polling issues</li>
<li>OS X: Pad out flag buttons in Header search</li>
<li>base_open_failure was erroneously closing wrong base</li>
<li>Windows Preview HTML for Reports is fixed</li>
</ul>

<h4>4.8 (August 12, 2012)</h4>
<b>General</b>
<ul>
<li>Drag and Drop file open(s) on Windows and Unix</li>
<li>Custom background images (jpegs, gifs and pngs)</li>
<li>Random sort pgn feature</li>
<li>Crosstable now have +/-/= subtotals</li>
<li>(and Player Stats format changed from +/=/- to +/-/=)</li>
<li>General PGN search has ignore case option</li>
<li>Board Search gets it's combobox updated when DBs are opened and closed</li>
<li>Save game before PGN Import</li>
<li>Save game: enable the use of 'prev game tags' for existing games. This allows easy addition of the same tags to consecutive existing games</li>
<li>Remove the 'Scid: ' prefix from several window titles</li>
<li>Update some translations</li>
<li>Show Linux version/distro in the startup window</li>
<li>Add a patch to make toolbar buttons raise only (instead of toggle open/shut)</li>
<li>Add a patch for Chess960 support (from Ben Hague). Unfinished</li>
</ul>

<br>
<b>Analysis</b>
<ul>
<li>UCI: properly handle UCI buttons. Previously they were invoked at every engine restart</li>
<li>Right clicking 'Add Var' button adds Engine Score comment only</li>
<li>Replace ponder on/off with hard/easy for xboard engines</li>
<li>Super quick engine infos can happen before Scid's PV is inited properly. So we have to default to PV = 1</li>
<li>Allow xboard engines to use lowercase 'b' for bishop promotion (eg a7b8b)</li>
<li>Don't send an erroneous 'isready' (with 'uci') to quiet analysis engines</li>
<li>Right clicking the widget allows to disable line wrapping</li>
<li>Don't add a line to analysis history if moves are null</li>
</ul>

<br>
<b>Tree</b>
<ul>
<li>Move ECO stats to the end of line</li>
<li>Several Mask refinements - notably Searches are much more readable and previously clicking on searched lines didn't work</li>
<li>Fix up minor bugs about castling moves (OO, O-O, O-O-O)</li>
</ul>

<br>
<b>Computer Tournament</b>
<ul>
<li>Computer Tournament Book feature</li>
<li>Dont' kill tournament if engine crashes</li>
<li>Only pack the first 10 engine combos (which allows for big tournaments)</li>
<li>Fix up Xboard time/move command order. Xboard engines should behave much better</li>
<li>Various other tweaks</li>
</ul>

<br>
<b>Gamelist</b>
<ul>
<li>Show altered games in red</li>
<li>Control-wheelmouse scrolls up/down one page</li>
<li>Switcher now has text on two lines (if icons are shown)</li>
</ul>

<br>
<b>FICS</b>
<ul>
<li>Digital clocks now (optionally) on the main board</li>
<li>Better integration of FICS "examine" and "observe" features</li>
<li>FICS has it's own options menu</li>
<li>bind F9 to xtell instead of tell</li>
<li>Change the move.wav sound from tick-tock to a short click</li>
</ul>

<br>
<b>OS X</b>
<ul>
<li>Filter graph bugfix</li>
<li>Material Search properly shows the little buttons</li>
<li>Copy and Paste text from disabled OSX text widgets (engines, help, gameinfo)</li>
<li>Buttons 2 and 3 are swapped around</li>
</ul>

<br>
<b>General Bugs</b>
<ul>
<li>Work arounds for wish 8.5.12 and 8.5.8 issues</li>
<li>Analysis logs can badly break autoscroll, so use normal frames and scrollbars</li>
<li>Handle PGN parsing of unspecified promotions (b8 becomes b8=Q , for eg)</li>
</ul>

<h4>4.7 (Januar 20, 2012)</h4>
<ul>
<li>Tree: Add coloured bar-graphs representing win/draw/loss (and remove the old tree graph)</li>
<li>Endspieldatenbanken: Make best Endspieldatenbank moves clickable</li>
<li>Endspieldatenbanken: tidy up config , main window and help items</li>
<li>FICs: Can now play and watch (observe) multiple games at the same time</li>
<li>FICS: Support loading old/interupted games for analysis (using 'smoves' command)</li>
<li>FICs: Add an Abort button. Other minor fixes</li>
<li>Serious Game  overhaul (though still has minor issues) Add pause, resume features and mate, game drawn dialogs</li>
<li>Computer Tournament: Add  'first engine only' feature for testing a single engine against others</li>
<li>Enable material difference display for game browser and fics observed games</li>
<li>Analysis: View engine logs from within Scid, and can also disable logging</li>
<li>Analysis no longer word wraps, and uses fixed font</li>
<li>Analysis: add a xboard/uci protocol column to the engine list</li>
<li>Include updates to SCID's spellchk.c, improving the Elo add-ratings feature</li>
<li>Update spelling.ssp file to Jan 2012</li>
<li>Player info: clicking FIDE ID opens relevant url</li>
<li>New feature: 'Search-<gt>Filter to Last Move'. All filter games will load at the last move (end of game)</li>
<li>Refine the Calculation of Variation (Stoyko Exercise) feature and Help</li>
<li>Toolbar has a 'book window' icon</li>
<li>Tweak PGN context menu: reorder the Strip/Delete move items</li>
<li>Gamelist: replace the Negate button with a Select button</li>
<li>Tree: Include a patch for embedding the Best Games into the Tree window</li>
<li></li>
<li>Bugfixes</li>
<li>Importing PGN, check that Promotion Moves are long enough (otherwise can segfault)</li>
<li>Document CCRL pgn round name problem, and handle errors better when Name limits hit</li>
<li>FICS: remove non-ascii chars from commands if using timeseal</li>
<li>Gamelist: To display unusual characters, convert to unicode before displaying games</li>
<li>Sync html bitmaps with SCID</li>
<li>Book: Only do the second book move lookup if we have too. (slight performance boost)</li>
<li>EPD: Quick fix for epd analysis annotation bug</li>
<li>Hungarian, Swedish and Potugese Spanish were broken if Piece translation enabled (which was default). Fixed</li>
<li>Fix up Tacgame score-isn't-updated bug</li>
</ul>

<h4>4.6 (November 20, 2011)</h4>
<ul>
<li>Undo and Redo features (partly from SCID)</li>
<li>Microsoft Windows has a proper installer</li>
<li>Always loads games at the correct game ply when using the tree and searches</li>
<li>Ratings graph can show multiple players (and there's a minimum Elo feature)</li>
<li>Computer Tournament: Improvements for both Xboard and UCI engines, and implement the 50 move draw rule</li>
<li>Auto-promote feature for FICS</li>
<li>Book tuning 'Remove move' feature</li>
<li>Autoraise button raises all windows</li>
<li>Annotation improvements, and it is now possible to score All moves while only annotating Blunders</li>
<br>
<li>Biographical data for aliases is shown in the player information window</li>
<li>The player info widget has buttons enabling quick player renames and look-up</li>
<li>'Read-Only' context menu in the Database Switcher, and Read-Only bases are greyed out</li>
<li>Fix bug in the opening/theory table</li>
<li>Remember game position when stripping comments and variations from PGN</li>
<li>Change analysis colors for MultiPV to black/grey instead of blue/black</li>
<li>New 'Search in (other) Database' feature to the board search (from SCID)</li>
<li>Variation/Mainline arrows can have custom colours</li>
<li>Crosstable can (optionally) show 3 points for a win</li>
<li>Fix sc_remote (which allows games to be opened in an already running Scid vs PC)</li>
<li>Phalanx tacgame bug-fixes (play brainy, and stop after the correct amount of time)</li>
<li>Tweak the best games widget (make fields line-up)</li>
<li>When handling Import PGN errors, show the game numbers as well as the line in file</li>
<li>Catch a nasty wish8.5.10 bug with the gamelist (Wish-8.5.10 should be avoided)</li>
<li>Remove the broken integer field validation and replace it with something that allows backspace to work</li>
<li>Bind Control-Tab to 'switch to next base', and Control-(quoteleft) to 'switch to clipbase'</li>
<li>Fix a couple of corner cases concerning dates and searches</li>
<li>Analysis widget : small speed improvements , icon changes and bug-fixes</li>
<li>Add a help item for Maintenance 'Check Games' feature</li>
<li>Swap around the 'Next Move' and 'Event' game-information lines</li>
<li>New documentation about making Polyglot books</li>
<li>Make the player Report config widget a bit easier to use</li>
<li>Catch a nasty wish8.5.10 bug with the gamelist (Wish-8.5.10 should be avoided)</li>
<li>New OSX HowTo</li>
<li>Crosstable bugfix: the 'show white first' feature didn't work for two match rounds</li>
<li>Update 'Tips'</li>
<li>Clarify Scid's maximum number of games</li>
<li>Update Spanish and Polish translations</li>
<li>Update FICS , PGN and Menu  language translations</li>
</ul>

<h4>4.5 (August 10, 2011)</h4>
<ul>
<li>PGN chess font support (but font installation on Windows isn't great)</li>
<br>
<li>Computer Tournament:</li>
<ul>
<li>Per-game time control</li>
<li>Clock widgets for remaining time</li>
<li>Manual adjudication buttons, and a Restart button</li>
</ul>
<li>General:</li>
<ul>
<li>Game List remembers it's view when switching between bases</li>
<li>Game Browser has new buttons and functionality</li>
<li>Tournament Finder is more readable</li>
<li>Restore PGN scrollbar (pgn option)</li>
<li>Phalanx now reads enpassant and 50 move field from FEN (thanks Bernhard Prümmer)</li>
<li>FICS console fg and bg colours are now configurable</li>
<li>Name Editor tidy up and documentation review</li>
<li>Player Info: add a 'Refine Filter' result group</li>
<li>Typing 'OO' castles (previously only 'OK','OQ')</li>
<li>Mask Search widget fixes</li>
<li>Annotation: Dont add nags when annotating score. Don't repeat previous nag if annotating all moves</li>
<li>Crosstable shows current game in green</li>
<li>Use translations for Game List column titles (if available)</li>
<li>Add a 'Game Delete' menu</li>
<li>Improve ./configure and Makefile, and CC FLAGS are propagated to all targets</li>
<li>Game Save autocomplete now uses mouse instead of clumsy keyboard bindings</li>
<li>Restrict Game List sort to valid columns, and add a 'confirm sort' widget for bases <gt> 200000 games</li>


</ul>
<li>MS Windows tweaks:</li>
<ul>
<li>Windows Crosstable transparency glitch is fixed</li>
<li>Fix wheelmouse support in a few places</li>
<li>Add a 'make-scidgui.bat' hack for assembling a new 'scid.gui' from subversion</li>
<li>Computer Tournament buttons padding fixed</li>
</ul>
<li>OSX:</li>
<ul>
<li>Make an OSX app with a working ;<gt> version of Tcl (thanks Gilles)</li>
<li>Many OSX wheelmouse and graphical fixes</li>
</ul>
<li>Bug fixes:</li>
<ul>
<li>Null move fixes including - analysis engines can append variations</li>
<li>Tree training feature fixes</li>
<li>Show Progressbar for loading bases with a dot (.) in their name</li>
<li>If Scid crashes, Game List could be left with zero size</li>
<li>PGN middle-click move preview feature fixed for variations</li>
<li>PGN text tabstops are now dynamic to allow for correct column allignment in column mode</li>
<li>Remember position of custom ecoFile if loaded</li>
<li>Change the second book slot to avoid conflict with Annotation feature</li>
<li>Catch unmatched braces in gamelist values</li>
<li>Fix 'Paste FEN' castling sanity check</li>
<li>Browser previously highlighted Next move instead of Current move</li>
<li>Fix scid.eco unicode bug</li>
<li>Remove 'newlines' from Mask Search results</li>
<li>When addAnalysisVariation fails due to bad moves, don't move back N moves</li>
<li>Theory table incorrectly started from start position</li>
</ul>

}

set helpTitle(D,ShortCuts) "Abkürzungen"
set helpText(D,ShortCuts) {<h1>Tastaturkurzbefehle</h1>

<p>Die Tastaturkurzbefehle sind abhängig von der <b>Groß-/Kleinschreibung</b>
  und können durch Ändern der Prozedur standardShortcuts in end.tcl
  überschrieben werden.
<br>Der Fenstermanager kann mit einigen Kurzbefehlen in Konflikt kommen.
<br>
<br>
<a ShortCuts alpha>Alphabetisch sortiert</a>
</p>

<h4>Allgemeines</h4>
<ul>
<li><i>Benutzen Sie die Standardnotation, um Züge mit der Tastatur einzugeben (z.B. <b>e4</b>).</i></li>
<li></li>
<li><b>←</b> - Einen Zug zurück</li>
<li><b>→</b> - Einen Zug vorwärts</li>
<li><b>↑</b> - Fünf Züge zurück/Variante beenden</li>
<li><b>↓</b> - Fünf Züge vorwärts</li>
<li><b>Pos1</b> - Zum Anfang gehen</li>
<li><b>Ende</b> - Zum Partie-/Variantenende gehen</li>
<li><b>Strg-g</b> - Gehe zum Zug Nr.</li>
<li><b>Strg-f</b> - Brett drehen</li>
<li><b>Esc</b> - Zugeintrag löschen</li>
<li><b>Enter</b> - Zug vom Schachprogramm hinzufügen</li>
<li><b>Leertaste</b> - Schachprogramm starten/beenden</li>
<li><b>Entf</b> - nachfolgende Züge aus der Partie oder Variante löschen</li>
<li><b>Strg-Enter</b> - Fortsetzung vom Schachprogramm hinzufügen</li>
<li><b>Strg-Entf</b> - Aktuelle Partie löschen</li>
<li></li>
<li><b>F1</b> - Hilfe</li>
<li><b>Strg-Umschalt-F7</b> - Alle Bilder als base64 ausgeben (nur Entwickler)</li>
<li><b>Strg-Umschalt-F8</b> - Alle Bilder als jpegs ausgeben (nur Entwickler)</li>
<li><b>Strg-Umschalt-F12</b> - Bildschirmkopie</li>
<li><b>Alt-Taste</b> - Menükurzbefehl (nur *nix)</li>
</ul>

<h4>Scid-Fenster</h4>
<ul>
<li><b>Strg-p</b> - PGN-Fenster</li>
<li><b>Strg-l</b> - Partielistenfenster</li>
<li><b>Strg-e</b> - Kommentareditor</li>
<li><b>Strg-m</b> - Wartungsfenster</li>
<li><b>Strg-i</b> - Partieinformationsfenster</li>
<li><b>Strg-t</b> - Zugbaumfenster</li>
<li><b>Strg-X</b> - Kreuztablle</li>
<li><b>Strg-b</b> - Eröffnungsbuchfenster</li>
<li><b>Strg-B</b> - Brett aufstellen</li>
<li><b>Strg-Z</b> - Bewertungsgrafik</li>
<li><b>Esc</b> - Fenster schließen</li>
</ul>

<h4>Schachprogramme</h4>
<ul>
<li><b>Strg-A</b> - Analyseprogramm konfigurieren</li>
<li><b>F2</b> - Programm 1 umschalten</li>
<li><b>F3</b> - Programm 2 umschalten</li>
<li><b>F4</b> - Programm 3 umschalten</li>
<li><b>Enter</b> - Zug vom Schachprogramm hinzufügen</li>
<li><b>Leertaste</b> - Schachprogramm starten/stoppen</li>
<li><b>Strg-Enter</b> - Fortsetzung vom Schachprogramm hinzufügen</li>
<li><b>Strg-Leertaste</b> - Probiermodus umschalten</li>
</ul>

<h4>Kopieren/Einfügen</h4>
<ul>
<li><b>Strg-c</b> - Partie zur Ablagedatenbank kopieren</li>
<li><b>Strg-v</b> - Partie aus der Ablagedatenbank einfügen</li>
<li><b>Strg-C</b> - FEN kopieren</li>
<li><b>Strg-V</b> - FEN einfügen</li>
<li><b>Strg-I</b> - PGN importieren</li>
</ul>

<h4>Partien und Datenbanken</h4>
<ul>
<li><b>Strg-s</b> - Partie speichern</li>
<li><b>Strg-S</b> - Partie hinzufügen</li>
<li></li>
<li><b>Strg-hoch</b> - Vorherige Partie</li>
<li><b>Strg-runter</b> - Nächste Partie</li>
<li><b>Strg-Pos1</b> - Erste Partie</li>
<li><b>Strg-Ende</b> - Letzte Partie</li>
<li><b>Strg-N</b> - Neue Partie</li>
<li><b>Strg-u</b> - Partie Nummer ... laden</li>
<li><b>Strg-?</b> - Zufällige Partie laden</li>
<li></li>
<li><b>Strg-o</b> - Datenbank öffnen</li>
<li><b>Strg-w</b> - Datenbank schließen</li>
<li><b>Strg-/</b> - Finder</li>
<li></li>
<li><b>Strg-1</b> - Zur ersten geöffneten Datenbank wechseln</li>
<li><b>Strg-2</b> - Zur zweiten geöffneten Datenbank wechseln</li>
<li>....</li>
<li><b>Strg-9</b> - Zur Ablagedatenbank wechseln</li>
</ul>

<h4>Suchen/Filtern</h4>
<ul>
<li><b>Strg-G</b> - Allgemeine (Partiedaten-)Suche</li>
<li><b>Strg-M</b> - Materialsuche</li>
<li></li>
<li><b>Strg-r</b> - Filter zurücksetzen</li>
<li><b>Strg-n</b> - Filter umkehren</li>
<li></li>
<li><b>Strg-P</b> - Spielerfinder</li>
<li><b>Strg-T</b> - Turnierfinder</li>
<li><b>Strg-Z</b> - Bewertungsgrafik</li>
</ul>

<h4>Varianten</h4>
<ul>
<li><b>Strg-a</b> - Variante hinzufügen</li>
<li><b>v</b> - Variante beginnen</li>
<li><b>z</b> - Variante beenden</li>
</ul>
-------------------------------------------------------------------------

<h2><name alpha>Alphabetisch</h2>
<ul>

<li><b>Strg-a</b> - Variante hinzufügen</li>
<li><b>Strg-A</b> - Analyseprogramme</li>
<li><b>Strg-b</b> - Eröffnungsbuchfenster</li>
<li><b>Strg-B</b> - Brett aufstellen</li>
<li><b>Strg-c</b> - Partie zur Ablagedatenbank kopieren</li>
<li><b>Strg-C</b> - FEN kopieren</li>
<li><b>Strg-e</b> - Kommentareditor</li>
<li><b>Strg-f</b> - Brett drehen</li>
<li><b>Strg-g</b> - Gehe zum Zug Nr.</li>
<li><b>Strg-G</b> - Allgemeine (Partiedaten-) Suche</li>
<li><b>Strg-i</b> - Partieinformationsfenster</li>
<li><b>Strg-I</b> - PGN importieren</li>
<li><b>Strg-l</b> - Partielistenfenster</li>
<li><b>Strg-m</b> - Wartungsfenster</li>
<li><b>Strg-M</b> - Materialsuche</li>
<li><b>Strg-n</b> - Filter umkehren</li>
<li><b>Strg-N</b> - Neue Partie</li>
<li><b>Strg-o</b> - Datenbank öffnen</li>
<li><b>Strg-p</b> - PGN-Fenster</li>
<li><b>Strg-P</b> - Spielerfinder</li>
<li><b>Strg-r</b> - Filter zurücksetzen</li>
<li><b>Strg-s</b> - Partie speichern</li>
<li><b>Strg-S</b> - Partie hinzufügen</li>
<li><b>Strg-t</b> - Zugbaumfenster</li>
<li><b>Strg-T</b> - Turnierfinder</li>
<li><b>Strg-u</b> - Partie Nummer ... laden</li>
<li><b>Strg-v</b> - Partie aus Ablagedatenbank einfügen</li>
<li><b>Strg-V</b> - FEN einfügen</li>
<li><b>Strg-w</b> - Datenbank schließen</li>
<li><b>Strg-X</b> - Kreuztabelle</li>
<li></li>

<li><b>Strg-/</b> - Finder</li>
<li><b>Strg-?</b> - Zufällige Partie laden</li>
<li><b>Strg-Leertaste</b> - Probiermodus umschalten</li>
<li><b>Strg-Entf</b> - Aktuelle Partie löschen</li>
<li><b>Strg-hoch</b> - Vorherige Partie laden</li>
<li><b>Strg-runter</b> - Nächste Partie laden</li>
<li><b>Strg-Pos1</b> - Erste Partie laden</li>
<li><b>Strg-Ende</b> - Letze Partie laden</li>
<li></li>

<li><b>Strg-1</b> - Zur ersten geöffneten Datenbank wechseln</li>
<li><b>Strg-2</b> - Zur zweiten geöffneten Datenbank wechseln</li>
<li>....</li>
<li><b>Strg-9</b> - Zur Ablagedatenbank wechseln</li>
<li></li>

<li><b>Enter</b> - Zug vom Schachprogramm hinzufügen</li>
<li><b>Leertaste</b> - Schachprogramm starten/stoppen</li>
<li><b>Entf</b> - Nachfolgende Züge aus Partie oder Variante löschen</li>
<li><b>v</b> - Variante beginnen</li>
<li><b>z</b> - Variante beenden</li>
<li><b>links</b> - Einen Zug zurück</li>
<li><b>rechts</b> - Einen Zug vorwärts</li>
<li><b>hoch</b> - Fünf Züge zurück/Variante beenden</li>
<li><b>runter</b> - Fünf Züge vorwärts</li>
<li><b>Pos1</b> - Zum Anfang gehen</li>
<li><b>Ende</b> - Zum Partie-/Variantenende gehen</li>
<li></li>

<li><b>F1</b> - Hilfe</li>
<li><b>F2</b> - Programm 1 umschalten</li>
<li><b>F3</b> - Programm 2 umschalten</li></li>
<li><b>F4</b> - Programm 3 umschalten</li>
<li><b>Strg-Umschalt-F7</b> - Alle Bilder als base64 ausgeben(nur Entwickler)</li>
<li><b>Strg-Umschalt-F8</b> - Alle Bilder als jpegs ausgeben (nur Entwickler)</li>
<li><b>Strg-Umschalt-F12</b> - Bildschirmkopie</li>

</ul>
<p><footer>Aktualisiert: Scid vs. PC 4.9 April 2013</footer></p>
}

set helpTitle(D,Board) "Brett- und Figureneinstellungen"
set helpText(D,Board) {<h1>Brett- und Figureneinstellungen</h1>

  <h3><name Textures>Benutzerspezifische Texturen</name></h3>

  <p>Es können bis zu zehn Bretttexturen geladen werden. Diese müssen
  im Verzeichnis <b>Scid vs PC/bin/textures</b> (Windows)
  oder <b>$HOME/.scidvspc/textures</b> plaziert werden und zum
  Beispiel die Form <b>wood_l.gif</b> / <b>wood_d.gif</b>
  oder <b>steel_l.png</b> / <b>steel_d.png</b> haben.</p>

  <h3><name Textures>Benutzerspezifische Figuren</name></h3>

  <p><i>Die Merida1-Figuren haben jetzt höherwertigere größere
  Größen.</i></p>
  
  <p>Plazieren Sie die Figurensätze im
  Verzeichnis <b>$HOME/.scidvspc/pieces</b> und sie werden zum Fenster
  mit den Brettoptionen hinzugefügt. Man kann sie unter
  <url https://sourceforge.net/projects/scidvspc/files/support
  files/chess
  pieces/>https://sourceforge.net/projects/scidvspc/files/support
  files/chess pieces/</url> finden.</p>

  <p>Einige von ihnen enthalten hochdetaillierte Figuren, die für
  größere Anzeigen passend sind, besonders die Figuren Kens, Pauls und
  FritzSWS auf "Gorgonian's Chess Site"
  <url http://gorgonian.weebly.com/scid-vs-pc.html>http://gorgonian.weebly.com/scid-vs-pc.html</url></p>

  <p>Pauls enthält auch Anweisungen, um hochdetaillierte Figuren von
  svg mit Benutzung von Inkscape zu erstellen. Man kann ältere
  Anweisungen für die Erstellung von Scid-Figuren in
  scid_chess_pieces.tgz finden.</p>

  <p><i>Die Tastenkombination Strg-Umschalt-F7 (oder F8) gibt alle
  Scid-Bilder in Dateien aus. Dies kann für das Editieren von
  Schachfiguren hilfreich sein. Sehen Sie bezüglich des Ladens von
  Texturen und Figuren im <a Console>Willkommensfenster</a>
  nach.</i></p>

  <p><i>Tk 8.5 (von Windows und OS X verwendet) unterstützt
  standardmäßig nur das GIF-Bildformat, aber PNG- und JPG-Bilder (und
  -figuren) werden vom TKImg-Paket unterstützt, das wir mit ScidvsPC
  für diese beiden Betriebssysteme bündeln. Unter Linux verwenden die
  meisten Systeme Tk 8.6 (welches eine eingebaute Bildunterstützung
  hat), aber es ist auch möglich, TkImg aus
  <url https://sourceforge.net/project/downloading.php?group_id=263836&filename=tkimg1.3.tar.bz2>tkimg1.3.tar.bz2</url>
  zu kompilieren und zu installieren.
  </i></p>

  <p><footer>Aktualisiert: Scid vs. PC 4.21 Januar 2020</footer></p>
}

set helpTitle(Console) "Willkommensfenster/Konsole"
set helpText(Console) {<h1>Willkommensfenster und Konsole</h1>
<p>Das <green><run raiseSplashWindow>Willkommens-/Startfenster</run></green>
  zeigt verschiedene technische Informationen über das System und den
  Programmstart. In der unteren rechten Ecke ist ein Eingabefeld für
  eine Textsuche. Geben Sie einfach Ihren Text ein und drücken Sie die
  Return-Taste.</p>

<p>Direkt darüber ist ein weiteres größeres Eingabefeld. Dies ist die
  Konsole von Scid vs PC, die das Eingeben von Tcl/Tk-Befehlen für die
  Fehlersuche sowie weitere Nutzungen ermöglicht. Für weitere
  Informationen über Tcl probieren Sie die Anleitungen in
  <url https://www.tutorialspoint.com/tcl-tk/>Tutorials Point's
  Tcl</url> und
  <url https://www.tutorialspoint.com/tcl-tk/tk_overview.htm>Tk</url>.</p>

<p><footer>Aktualisiert: Scid vs. PC 4.21 Juli 2019</footer></p>
}

global tips

set tips(D) {
  {
   Scid hat mehr als 70 <a Index>Hilfeseiten</a>. Sie können durch Drücken
   von <b>F1</b> aufgerufen werden.
  }
  {
  Durch Rechtsklick auf den Reiter 'Brett' können Sie mehrere
  Brettkomponenten anzeigen oder verbergen.
  }
  {
  Die Fähigkeit von Scid, einzelne Fenster zu lösen oder anzuheften, ist
  trickreich, aber sie erlaubt eine sehr konfigurierbare Oberfläche.
  }
  {
  Ein Rechtsklick auf das <b>Partie speichern</b>-Symbol in der
  Werkzeugleiste speichert sofort die aktuelle Partie.
  }
  {
  Die Eingabe von Partiezügen kann mit Maus oder Tastatur erfolgen.
  <br><br>
  Siehe die <a Moves>Zugeingabe</a>-Hilfe für Einzelheiten,
  }
  {
  Scid hat viele bequeme Kurztastenbefehle. Einige funktionieren
  aber nur, wenn sich der Mauszeiger über dem Hauptbrett befindet.
  <br><br>
  Benutzen Sie Rückgängig (Strg-Z) und Wiederherstellen (Strg-Y),
  um kürzlich durchgeführte Partie-/Zugänderungen zu editieren.
  }
  {
  Wenn man im Randbereich vom Hauptbrett oder der Partienliste die
  mittlere Maustaste drückt, werden zusätzliche Informationen
  angezeigt bzw. unterdrückt.
  }
  {
  Zuletzt geöffnete Partien können unten im <b>Partiemenü</b>
  geladen werden.
  <br><br>
  Passen Sie <b>Optionen--<gt>Aktuelle Dateien</b> an, um die
  Anzahl einzustellen.
  }
  {
  Sie können die Züge, Kommentare und Varianten der aktuellen
  Partie im <a PGN>PGN-Fenster</a> betrachten.
  Das Drücken der mittleren Maustaste auf einem Zug zeigt eine
  Vorschau der betreffenden Stellung.
  }
  {
  Kopieren Sie im <a Switcher>Datenbankwechsler</a> alle Partien
  von einer Datenbank zur anderen durch Ziehen und Fallenlassen
  (unten in der Partienliste). Das Ziehen von gefilterten Partien
  zur Ablagedatenbank erlaubt es, die Partien zu sortieren ohne
  ständig die ganze Datenbank zu sortieren.
  }
  {
  PGN-Dateien mit nur einer Partie können über
  <b>Datei--<gt>Speichere PGN...</b> gespeichert werden. Größere
  PGN-Dateien werden jedoch immer im Nur-Lese-Modus geöffnet.
  <br><br>
  Für weitere Informationen siehe <a BrowsingPGN>PGN-Dateien und
  Scid</a>.
  }
  {
  Ein Doppelklick auf die Statusleiste im Hauptfenster startet die
  (erste) Analyse-Engine.
  }
  {
  Das Anklicken eines Spielernamens im Hauptfenster bringt ein
  Fenster mit Informationen über diesen Spieler (<a
  PInfo>Spielerinformation </a>). Von hier aus kann man leicht alle
  Partien dieses Spielers auswählen, indem man auf die grünen Werte
  in den Spalten Won/Lost/Drawn klickt (bei aktivem
  Partienlistenfenster).
  }
  {
  Wichtige Datenbanken können temporär auf den Modus <b>Nur
  Lesen</b> gesetzt werden, indem man einen Rechtsklick auf
  den <a Switcher>Datenbankwechsler</a> durchführt. Für einen
  dauerhaften Nur-Lese-Modus müssen die Dateirechte auf
  Betriebssystemebene gesetzt werden.
  }
  {
  Der <a Maintenance Editing>Namenseditor</a> ermöglicht es, Namen
  von Spielern und Turnieren (und mehr) zu ändern.
  }
  {
  Wenn Sie eine große Datenbank haben, in der die meisten Partien
  ein Turnierdatum aufweisen, dann denken Sie daran, daß Sie diese
  Partien so nach (Tages-)Datum <a Sorting>sortieren</a> können, daß
  sie innerhalb dieses Turniers beisammen bleiben: zuerst nach
  Turnierdatum und dann nach Turniername sortieren.
  }
  {
  Bevor man nach Dubletten sucht, ist es eine gute Idee, die
  Datenbank hinsichtlich der <a Maintenance
  Spellcheck>Schreibweisen</a> zu überprüfen, da Scid so Dubletten
  besser finden kann.
  }
  {
  <a Flags>Markierungen</a> sind hilfreich, um Datenbankpartien mit
  besonderen Merkmalen wie Bauernstruktur, Taktik usw. zu
  kennzeichnen. Dies kann in der Partienliste erfolgen (durch
  Rechtsklick auf eine Listenzeile). Es gibt auch sechs anpaßbare
  Markierungen, deren Bezeichnung
  im <a Maintenance>Wartungsfenster</a> geändert werden kann.
  }
  {
  Sie können nach markierten oder gelöschten Partien mit
  dem <a Searches Header>Suchfenster</a> suchen. Nach Speichern der
  Suchkriterien mit der <b>Speichern</b>-Schaltfläche können diese
  später wieder mittels <b>Suchen--<gt>Mit
  Suchoptionsdatei...</gt></b> geladen werden.
  }
  {
  Wenn Sie eine Partie durchspielen und zwischendrin kurz einige
  Züge ausprobieren möchten, dann schalten Sie einfach den
  Versuchsmodus ein (mit dem Tastenkürzel <b>Strg-Leertaste</b> oder
  mit dem Symbol für "Züge ausprobieren" auf der
  Schaltflächenleiste). Nach Ausschalten dieses Modus' kehrt die
  Partie zu ihrem Ursprungszustand zurück.
  }
  {
  Um die wichtigsten Partien (mit Gegnern mit hohen Ratingwerten) zu
  finden, die eine bestimmte Position erreichen, öffnen Sie
  das <a Tree>Zugbaumfenster</a> und klicken unten links das Symbol
  'Beste Partien' an. Sie können diese Partien dann sogar auf nur ein
  bestimmtes Ergebnis weiter einschränken.
  }
  {
  Der <a Tmt>Turnierfinder</a> findet nicht nur ein bestimmtes
  Turnier, sondern er kann auch zeigen, an welchen Turnieren ein
  Spieler zuletzt teilgenommen hat oder er kann die
  Spitzenturniere anzeigen, die in einem bestimmten Land gespielt
  wurden.
  }
  {
  Es gibt eine Anzahl an gewöhnlichen Mustern, die im <a Searches
  Material>Material-/Muster-</a>Suchfenster hinterlegt sind und die
  Sie für das Studium von Eröffnungen oder Mittelspiel hilfreich
  finden könnten.
  }
  {
  Wenn Sie im <a Searches Material>Material-/Muster-</a>Suchfenster
  nach Materialunterschieden suchen, achten Sie auf den Wert für die
  Anzahl der "Halbzüge", um diejenigen Partien zu vermeiden, in
  denen der Materialunterschied nur kurzzeitig auftaucht.
  }
  {
  Falls Sie XBoard benutzen, dann ist der schnellste Weg zum
  Kopieren einer Partiestellung nach Scid, indem Sie im Dateimenü
  von XBoard <b>Copy Position</b> auswählen und anschließend in
  Scid im Menü "Bearbeiten" den Befehl "Stellung einfügen" wählen.
  }
  {
  Im <a Searches>Partiensuchfenster</a> sind die Angaben für
  Spielername, Turnier und Ort unabhängig von der
  Groß-/Kleinschreibung. Sie können genauere Suchen durchführen
  durch Verwendung von doppelten Anführungszeichen sowie den
  Platzhalterzeichen '?' (für ein einzelnes Zeichen) und '*' (für
  Null oder mehr Zeichen). So zeigt z.B. eine Suche nach
  <b>belg</b> (im Feld "Ort") viele Treffer, aber
  <b>"*Belgium*"</b> liefert weniger Resultate.
  }
  {
  Wenn Sie in einer Partie einen Zug korrigieren wollen ohne die
  nachfolgenden Züge zu verlieren, dann öffnen Sie über das Menü
  Werkzeuge das <a Import>Importfenster</a> ("Eine PGN-Partie
  importieren..."), klicken die Schaltfläche <b>Aktuelle Partie
  einfügen</b>, korrigieren die fehlerhaften Zug und drücken dann
  <b>Importieren</b>.
  }
  {
  Falls Sie eine ECO-Datei geladen haben, dann können Sie in der
  aktuellen Partie zur tiefsten klassifizierten Stellung gehen durch
  <b>Eröffnung identifizieren</b> im Partiemenü.
  }
  {
  Wenn Sie die Größe einer Datei oder das Datum ihrer letzten
  Änderung überprüfen möchten bevor Sie sie öffnen, dann öffnen Sie
  den  <a Finder>Dateifinder</a> mit <b>Strg-/</b>.
  }
  {
  Ein <a OpReport>Eröffnungsbericht</a> (Menü "Werkzeuge") ist
  hervorragend, um mehr über eine besondere Stellung zu lernen. Man
  kann erkennen, wie erfolgreich sie ist und ob sie häufig zu
  Kurzremisen führt sowie zu allgemeinen strategischen Themen.
  }
  {
  Sie können dem aktuellen Zug oder der aktuellen Stellung die
  gebräuchlichsten Kommentarsymbole (!, !?, += usw.) mittels
  Tastenkürzel hinzufügen, ohne hierfür den <a
  Comment>Kommentareditor<a> zu verwenden. Tippen Sie z.B. "!" und
  drücken anschließend die Enter-Taste, um ein "!"-Kommentarsymbol
  hinzuzufügen. Für mehr Details siehe die Hilfeseite zu <a
  Moves>Eingabe von Partiezügen</a>.
  }
  {
  Das Zugbaumfenster zeigt, wie erfolgreich eine bestimmte
  Eröffnung ist. Für detailliertere Statistiken aktivieren Sie "Filter
  anpassen" und öffnen dann das Statistikfenster. Dieses zeigt das
  Eröffnungsergebnis für Spieler mit hoher Wertungszahl und für die in
  den letzten Jahren gespielten Partien.
  }
  {
  Man kann schnell viele Schriftgrößen anpassen, indem man mit dem
  Mauszeiger über ein Fenster fährt und <b>Strg+Mausrad</b>
  verwendet. Im Hauptfenster kann man mit der Tabulatortaste verdeckte
  Fenster hervorholen.
  }
  {
  Nach einer <a Searches>Suche</a> können Sie durch alle
  gefundenen Partien mit <b>Strg-Pfeil hoch/runter</b> wandern, um die
  vorherige/nächste <a Filter>Filterpartie</a> zu laden.
  }
  {
  Scid vs. PC ermöglicht <a Tourney>Computerturniere</a> zwischen
  zahlreichen Gegnern. Um besondere Gegner auszuwählen, wechseln
  Sie im Menü <b>Spielen--<gt>Turnier</b> die Anzahl der Engines
  und drücken dann die Schaltfläche "Aktualisieren". Kurze Partien
  können gespielt werden, indem man (z.B.) 30 für
  30-Sekunden-Partien angibt.
  }
  {
  Das Abreißmenü (gestrichelte Linie) im Menü
  <b>Datei--<gt>Datenbank wechseln</b> macht es zu einem
  wunderbaren kleinen Datenbankwechsler.
  }
  {
  Das <a Tree>Zugbaumfenster</a> zeigt alle ab der aktuellen
  Stellung gespielten Züge an. Um die Zugreihenfolge zu sehen, die zu
  dieser Stellung führte, erzeugen Sie über das Menü "Werkzeuge" einen
  <a OpReport>Eröffnungsbericht</a>.
  }
  {
  Wenn Sie eine große Datenbank haben, die Sie häufig mit dem <a
  Tree>Zugbaum</a> verwenden, wird das Auswählen von
  <b>Cache-Datei füllen</b> (im Menü des Zugbaumfensters) weitere
  Vorgänge erheblich beschleunigen.
  }
  {
  Beim Eröffnungsstudium kann es hilfreich sein, in einer
  wichtigen Stellung eine <a Searches Board>Brettsuche</a> mit
  Bauern oder Linien durchzuführen, da dies andere Eröffnungen
  ergeben könnte, die die gleiche Bauernstruktur erreichen.
  }
  {
  Der <a Maintenance Cleaner>Bereiniger</a> (Menü
  <b>Fenster--<gt>Wartungsfenster</b>) erlaubt es, verschiedene <a
  Maintenance>Wartungsarbeiten</a> gleichzeitig durchzuführen.
  }
  {
  Ein hervorragender Weg, um unter Verwendung einer großen
  Partiendatenbank Eröffnungen zu studieren, ist, im <a
  Tree>Zugbaumfenster</a> den Trainingsmodus zu aktivieren (Menü
  "Optionen").
  }
}

set tips(E) {
  {
  Scid has over seventy <a Index>Help Pages</a>. They are accessible
  by pressing <b>F1</b> in most windows.
  }
  {
  You can hide (or show) various board components by right-clickng the 'Board' tab (or the whole Main Board in undocked mode).
  }
  {
  Mastering Scid's <a Docking>Docked Windows</a> feature is tricky, but allows for a very configurable desktop.
  }
  {
  Right-clicking the <b>Game Save</b> icon in the toolbar will quickly save the current game.
  }
  {
  Entering moves can be done with the mouse or keyboard
  <br><br>
  See <a Moves>Move Entry</a> help for details.
  }
  {
  Scid has many handy <a ShortCuts>Keyboard shortcuts</a>, though some will only work when the mouse is over the Main Board.
  <br><br>
  Use Undo (Control+Z) and Redo (Control+Y) to edit recent game/move changes.
  }
  {
  Middle clicking the surrounds of the Main Board, and the Gamelist, will hide/show extra information.
  }
  {
  Recently opened games are accessible from the bottom of the <b>Game Menu</b>.
  <br><br>
  Adjust <b>Options--<gt>RecentEntries</b> to configure this menu's size.
  }
  {
  You can see the moves, comments and variations of the current game
  in the <a PGN>PGN Window</a>.
  Pressing middle-mouse on a move will show a preview of that position.
  }
  {
  Copy games from one database to another using drag and drop
  in the <a Switcher>Database Switcher</a> (at the bottom of the gamelist).
  Dragging filtered games to the Clipbase allows one to sort the games without permanently
  sorting the whole base.
  }
  {
  Single-game PGN files can be saved via <b>File--<gt>Save PGN</b>.
  But larger PGN files are always opened read-only.
  <br><br>
  For more information, see <a BrowsingPGN>PGN and Scid</a>
  }
  {
  In the Main Window, double-clicking the Status Bar starts the (first)
  chess engine. Right-clicking docks/undocks the engine.
  }
  {
  Clicking on a player's name shows the <a PInfo>Player Information Window</a>.
  From here, one can easily select all the player's games
  by clicking on the Win/Lose/Filter values (in green).
  }
  {
  Important databases can be made <b>Read-Only</b> temporarily
  by right-clicking in the <a Switcher>Database Switcher</a>, or (permanently) by changing
  the database's file permissions through Windows/Linux/OS X.
  }
  {
   The <a Maintenance Editing>Name Editor</a> allows one to substitute individual
   Player and Event names (and more).
  }
  {
  Here's a sorting hint. If you have a large Database where most games have
  an Event Date To sort the games by date, consider <a
  Sorting>sorting</a> it by Event Date, then Event
  (instead of Date then Event), as
  this keeps games in the same tournament, but with different dates,
  together. (Assuming they all have the same Event Date).
  }
  {
  Before looking for <a Maintenance Twins>Twin Games</a>, it is a good idea
  to <a Maintenance Spellcheck>Spell Check</a> your database, as this
  allows Scid to better find twins.
  }
  {
  <a Flags>Flags</a> are useful for marking database games with
  particular characteristics; such as pawn structure, tactics, etc.
  This can be done in Scid vs. PC's gamelist. There are also six custom flags, whose labels can
  be changed in the <a Maintenance>Maintenance</a> window.
  }
  {
  You can search for flagged or deleted games with the
  <a Searches Header>General Search</a> window.
  After saving Search Criteria with the <b>Save</b> button, these saves can then
  be reloaded later via <b>Search--<gt>Load Search File</b>.
  }
  {
  If you are playing through a game and want to quickly try out some moves
  , simply turn on Trial mode (with the
  <b>Control-Space</b> shortcut or the buttonbar icon). Turning it off
  again returns the game to it's original state.
  }
  {
  To find the most important games (with high-rated opponents)
  reaching a certain position, open the <a Tree>Tree Window</a>
  and then the Best Games widget. You can even restrict
  these games to show only a particular result.
  }
  {
  The <a Tmt>Tournament Finder</a> not only finds
  a particular tournament, but can also show what tournaments
  a player has recently competed in, or browse the top
  tournaments played in a particular country.
  }
  {
  There are a number of common patterns defined in the
  <a Searches Material>Material/Pattern</a> search window that you
  may find useful for openings or middlegame study.
  }
  {
  When searching for material differences in the
  <a Searches Material>Material/Pattern</a> search window, pay attention
  to the "Half moves" entry, to eliminate games where the difference
  only occurs briefly.
  }
  {
  If you use XBoard , the quickest way to copy a  chess position to Scid
  is to select <b>Copy Position</b> from Xboard's File menu
  , then <b>Paste FEN</b> from Scid's Edit menu.
  }
  {
  In a <a Searches Header>General Search</a>, Player/Event/Site/Round
  Names are case-insensitive and match anywhere in a name. You can choose
  to do more precise searches using double-quotes and the wildcards
  '?' (any single character) and '*' (zero or more characters)
  For example, searching for <b>belg</b> (in the site field) shows many matches
  but <b>"*Belgium*"</b> shows fewer matches.
  }
  {
  If you want to correct a move in a game without losing all the moves
  played after it, open the <a Import>Import Window</a>, press the
  <b>Paste current game</b> button, edit the incorrect move and then
  press <b>Import</b>.
  }
  {
  If you have an ECO classification file loaded, you can go to the
  deepest classified position in the current game with
  <b>Identify Opening</b> in the <b>Game</b> menu.
  }
  {
  If you want to check the size of a file or its date of last modification
  before opening it, open the <a Finder>File Finder</a> with <b>Control-/</b>.
  }
  {
  An <a OpReport>Opening Report</a> is great for learning more about
  a particular position. You can see how well it scores, whether it
  leads to frequent short draws, and common positional themes.
  }
  {
  You can add the most common annotation symbols (!, !?, +=, etc) to the
  current move or position with keyboard shortcuts without needing to
  use the <a Comment>comment editor<a> -- for example, type "!" then
  the Return key to add a "!" annotation symbol. See the
  <a Moves>Entering Chess Moves</a> help page for details.
  }
  {
  The Tree Window shows how well a particualr opening scores,
  but for more detailed statistics, enable "Adjust Filter"
  and open the Statistics Window. This will show the opening score
  for highly rated players, and of the most recent games.
  }
  {
  You can quickly adjust many font sizes by moving the mouse over a window, and using
  <b>Control+Wheelmouse</b>. In the main window, press 'Tab' to raise any covered windows.
  }
  {
  After a <a Searches>search</a>, you can browse through all
  matching games with <b>Control-Up/Down</b> to load the previous/next
  <a Filter>filter</a> game.
  }
  {
  Scid vs. PC makes <a Tourney>Computer Tournaments</a> between numerous opponents possible.
  To select extra opponents, change the "Number of Engines", then press "Update".
  Short games can be played by entering (for example) .5 minutes , for 30 second games.
  }
  {
  The cut-off menu (dotted line) in the <green>File-<gt>Switch to Database</green> menu makes it a great little database switcher.
  }
  {
  The <a Tree>Tree Window</a> shows all moves played from the
  current position. To see the move orders
  that reached this position, generate an <a OpReport>Opening Report</a>.
  }
  {
   If you have a large database you often use with the <a Tree>Tree</a>,
   selecting <b>Fill Cache File</b> (from the Tree Menu) will greatly speed
   things up.
  }
  {
  When studying an Opening, it can be useful to peform a
  <a Searches Board>Board Search</a> with the Pawns or
  Files option on an important position, as this may
  reveal other openings reaching the same pawn structure.
  }
  {
   The <a Maintenance Cleaner>Maintenance Cleaner</a> allows
   one to do several <a Maintenance>maintenance</a> jobs at the one time.
  }
  {
  A great way to study an opening using a large database of games is
  to turn on training mode in the <a Tree>Tree Window</a>. Then play
  against the database to see which lines most often occur.
  }
}

### End of file: deutsch.tcl

