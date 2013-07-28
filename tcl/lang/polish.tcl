
### Polish menus for Scid.
# Contributed by Michal Rudolf and Adam Umiastowski.

addLanguage P Polish 0 iso8859-2

proc setLanguage_P {} {

menuText P File "Plik" 0
menuText P FileNew "Nowy..." 0 {Twórz nowa bazê Scid}
menuText P FileOpen "Otwórz..." 0 {Otwórz istniej±c± bazê Scid}
menuText P FileClose "Zamknij" 0 {Zamknij aktywn± bazê Scid}
menuText P FileFinder "Poszukiwacz plików" 0 {Otwórz okno poszukiwacza plików}
menuText P FileSavePgn "Zapisz PGN" 0 {Zapisz bazê w formacie PGN}
menuText P FileBookmarks "Zak³adki" 2 {Menu zak³adek (klawisz: Ctrl+B)}
menuText P FileBookmarksAdd "Dodaj zak³adkê" 0 \
  {Dodaj zak³adkê do aktualnej bazy i pozycji}
menuText P FileBookmarksFile "Wstaw zak³adkê" 0 \
  {Wstaw do wybranego katalogu zak³adkê do aktualnej bazy i pozycji}
menuText P FileBookmarksEdit "Edycja zak³adek..." 0 \
  {Edytuj menu zak³adek}
menuText P FileBookmarksList "Wy¶wietlaj katalogi jako listê" 0 \
  {Wy¶wietlaj katalogi zak³adek jako listê, nie jako zagnie¿d¿one menu}
menuText P FileBookmarksSub "Wy¶wietl katalogi jako menu" 0 \
  {Wy¶wietlaj katalogi zak³adek jako zagnie¿d¿one menu, nie jako listê}
menuText P FileMaint "Obs³uga" 1 {Narzêdzia obs³ugi bazy Scid}
menuText P FileMaintWin "Obs³uga" 0 \
  {Otwórz/zamknij obs³ugê bazy Scid}
menuText P FileMaintCompact "Porz±dkuj bazê..." 0 \
  {Porz±dkuj bazê, usuwaj±c skasowane partie i nieu¿ywane nazwiska}
menuText P FileMaintClass "Klasyfikacja debiutowa partii..." 0 \
  {Przelicz klasyfikacjê debiutowa wszystkich partii}
menuText P FileMaintSort "Sortuj bazê..." 0 \
  {Sortuj wszystkie partie w bazie}
menuText P FileMaintDelete "Usuñ podwójne partie..." 0 \
  {Szukaj podwójnych partii i oznacz je do skasowania}
menuText P FileMaintTwin "Wyszukiwanie podwójnych partii" 0 \
  {Otwórz/uaktualnij wyszukiwanie podwójnych partii}
menuText P FileMaintName "Pisownia" 0 \
  {Edycja nazw/nazwisk i kontrola pisowni}
menuText P FileMaintNameEditor "Edytor nazwisk" 0 \
  {Otwórz/zamknij edytor nazwisk}
menuText P FileMaintNamePlayer "Sprawd¼ pisowniê nazwisk..." 17 \
  {Sprawd¼ pisowniê nazwisk przy pomocy pliku nazwisk}
menuText P FileMaintNameEvent "Sprawd¼ pisowniê nazw zawodów..." 22 \
  {Sprawd¼ pisowniê nazw zawodów przy pomocy pliku turniejów}
menuText P FileMaintNameSite "Sprawd¼ pisowniê nazw miejscowo¶ci..." 22 \
  {Sprawd¼ pisowniê nazw miejscowo¶ci przy pomocy pliku miejscowo¶ci}
menuText P FileMaintNameRound "Sprawd¼ numery rund..." 15 \
  {Sprawd¼ numery rund przy pomocy pliku}
menuText P FileReadOnly "Tylko do odczytu..." 0 \
  {Zabezpiecz bazê przed zapisem}
menuText P FileSwitch "Prze³±cz bazê" 1 \
  {Prze³±cz na inn± otwart± bazê} 
menuText P FileExit "Koniec" 0 {Zamknij Scida}
menuText P FileMaintFixBase "Napraw bazê" 0 {Spróbuj naprawiæ uszkodzon± bazê}

menuText P Edit "Edytuj" 0
menuText P EditAdd "Dodaj wariant" 0 {Dodaj wariant do ruchu w partii}
menuText P EditPasteVar "Wklej wariant" 0
menuText P EditDelete "Usuñ wariant" 0 {Usuñ wariant dla tego posuniêcia}
menuText P EditFirst "Twórz pierwszy wariant" 0 \
  {Przesuñ wariant na pierwsze miejsce na li¶cie}
menuText P EditMain "Zmieñ wariant na tekst partii" 0 \
   {Zamieñ wariant i tekst partii}
menuText P EditTrial "Sprawd¼ wariant" 0 \
  {W³±cz/wy³±cz tryb sprawdzania wariantów}
menuText P EditStrip "Usuñ" 2 \
  {Usuñ komentatarze i warianty}
# ====== TODO To be translated ======
menuText P EditUndo "Undo" 0 {Undo last game change}
menuText P EditRedo "Redo" 0
menuText P EditStripComments "Komentarze" 0 \
  {Usuñ wszystkie komentarze z aktualnej partii}
menuText P EditStripVars "Warianty" 0 \
  {Usuñ wszystkie warianty z aktualnej partii}
menuText P EditStripBegin "Poprzednie posuniêcia" 0 \
  {Usuñ wszystkie posuniêcia do bie¿±cej pozycji}
menuText P EditStripEnd "Nastêpne posuniêcia" 0 \
  {Usuñ wszystkie posuniêcia od bie¿±cej pozycji do koñca partii}
menuText P EditReset "Opró¿nij schowek" 0 \
  {Opró¿nij schowek bazy}
menuText P EditCopy "Kopiuj partiê do schowka" 0 \
  {Kopiuj partiê do schowka}
menuText P EditPaste "Wklej aktywn± partiê ze schowka" 0 \
  {Wklej aktywn± partiê ze schowka}
menuText P EditPastePGN "Wklej tekst ze schowka jako partiê PGN..." 10 \
  {Zinterpretuj zawarto¶æ schowka jako partiê w formacie PGN i wklej j± tutaj}
menuText P EditSetup "Ustaw pozycjê pocz±tkow±..." 6 \
  {Ustaw pozycjê pocz±tkow± partii}
menuText P EditCopyBoard "Kopiuj pozycjê" 7 \
  {Kopiuj aktualn± pozycjê w notacji FEN do schowka}
menuText P EditCopyPGN "Kopiuj PGN" 0 {}
menuText P EditPasteBoard "Ustaw pozycjê ze schowka" 3 \
  {Ustaw pozycjê ze schowka}

menuText P Game "Partia" 1
menuText P GameNew "Opu¶æ partiê" 0 \
  {Opu¶æ partiê, rezygnuj±c z wszelkich zmian}
menuText P GameFirst "Pierwsza partia" 2 {Wczytaj pierwsz± partiê z filtra}
menuText P GamePrev "Poka¿ poprzedni± partiê" 0 \
  {Wczytaj poprzedni± wyszukan± partiê}
menuText P GameReload "Wczytaj ponownie aktualn± partiê"  10 \
  {Wczytaj partiê ponownie, rezygnuj±c z wszelkich zmian}
menuText P GameNext "Nastêpna partia" 0 \
  {Wczytaj nastêpn± wyszukan± partiê}
menuText P GameLast "Ostatnia partia" 5 {Wczytaj ostatni± partiê z filtra}
menuText P GameRandom "Losowa partia z filtra" 8 {Wczytaj losow± partiê z filtra}
menuText P GameNumber "Wczytaj partiê numer..." 17 \
  {Wczytaj partiê wprowadzaj±c jej numer}
menuText P GameReplace "Zapisz: zast±p partiê..." 3 \
  {Zapisz partiê, zast±p poprzedni± wersjê}
menuText P GameAdd "Zapisz: dodaj now± partiê..." 8 \
  {Zapisz tê partiê jako nowa partiê w bazie}
menuText P GameInfo "Ustaw informacje o partii" 0
menuText P GameBrowse "Przegl±daj partie" 0
menuText P GameList "Lista partii" 0
# ====== TODO To be translated ======
menuText P GameDelete "Delete Game" 0
menuText P GameDeepest "Rozpoznaj debiut" 0 \
  {Przejd¼ do najd³u¿szego wariantu z ksi±¿ki debiutowej}
menuText P GameGotoMove "Przejd¼ do posuniêcia nr..." 13 \
  {Przejd¼ do posuniêcia o podanym numerze}
menuText P GameNovelty "Znajd¼ nowinkê..." 7 \
  {Znajd¼ pierwsze posuniêcie partii niegrane wcze¶niej}

menuText P Search "Szukaj" 0
menuText P SearchReset "Resetuj filtr" 0 \
  {Wstaw wszystkie partie do filtra}
menuText P SearchNegate "Odwróæ filtr" 0 {Zamieñ partie w filtrze i poza nim}
menuText P SearchEnd "Przejdz do ostatniego filtra" 0
menuText P SearchCurrent "Aktualna pozycja..." 0 \
  {Szukaj aktualnej pozycji}
menuText P SearchHeader "Nag³ówek..." 0 \
  {Szukaj informacji o nag³ówkach (nazwiska, nazwy turnieju itp.)}
menuText P SearchMaterial "Materia³/wzorzec..." 0 \
  {Szukaj wed³ug materia³u lub wzorca}
menuText P SearchMoves {Posuniêcia} 0 {}
menuText P SearchUsing "Stosuj plik poszukiwania..." 0 \
  {Szukaj stosuj±c plik z opcjami poszukiwania}

menuText P Windows "Okna" 1
menuText P WindowsGameinfo {Poka¿ informacje o partii} 0 {Otwórz/zamknij okno informacji o partii}
menuText P WindowsComment "Edytor komentarzy" 0 \
  {Otwórz/zamknij edytor komentarzy}
menuText P WindowsGList "Lista partii" 0 {Otwórz/zamknij listê partii}
menuText P WindowsPGN "Okno PGN" 0 {Otwórz/zamknij (zapis partii) PGN }
menuText P WindowsCross "Tabela turniejowa" 0 {Poka¿ tabelê turniejow± dla aktualnej partii}
menuText P WindowsPList "Zawodnicy" 2 {Otwórz/zamknij przegl±darkê zawodników}
menuText P WindowsTmt "Turnieje" 0 {Otwórz/zamknij przegl±darkê turniejów}
menuText P WindowsSwitcher "Prze³±cznik baz" 12 \
  {Otwórz/zamknij prze³±cznik baz}
menuText P WindowsMaint "Zarz±dzanie baz±" 0 \
  {Otwórz/zamknij okno zarz±dzania baz±}
menuText P WindowsECO "Przegl±darka kodów debiutowych" 0 \
  {Otwórz/zamknij przegl±darkê kodów debiutowych}
menuText P WindowsStats "Statystyka" 0 \
  {Otwórz/zamknij statystykê}
menuText P WindowsTree "Drzewo wariantów" 0 {Otwórz/zamknij drzewo wariantów}
menuText P WindowsTB "Tablica koñcówek" 8 \
  {Otwórz/zamknij okno tablicy koñcówek}
menuText P WindowsBook "Ksi±¿ka debiutowa" 0 {Otwórz/zamknij ksi±¿kê debiutow±}
menuText P WindowsCorrChess "Gra korespondencyjna" 0 {Otwórz/zamknij okno gry korespondencyjnej}

menuText P Tools "Narzêdzia" 0
menuText P ToolsAnalysis "Program analizuj±cy..." 8 \
  {Uruchom/zatrzymaj program analizuj±cy}
menuText P ToolsEmail "Zarz±dzanie poczt± e-mail" 0 \
  {Otwórz/zamknij zarz±dzanie adresami e-mail}
menuText P ToolsFilterGraph "U¶redniony wykres filtra" 7 \
  {Otwórz/zamknij wykres filtra w przeliczeniu na 1000 partii}
menuText P ToolsAbsFilterGraph "Wykres filtra" 7 {Otwórz/zamknij wykres filtra}
menuText P ToolsOpReport "Raport debiutowy" 0 \
  {Utwórz raport debiutowy dla aktualnej pozycji}
menuText P ToolsOpenBaseAsTree "Otwórz bazê jako drzewo" 0   {Otwórz bazê i u¿yj jej jako drzewa}
menuText P ToolsOpenRecentBaseAsTree "Otwórz ostatnio otwieran± bazê jako drzewo" 0   {Otwórz ostatnio otwieran± bazê i u¿yj jej jako drzewa}
menuText P ToolsTracker "¦ledzenie figur"  1 {Otwórz/zamknij okno ¶ledzenia figur} 
menuText P ToolsTraining "Trening"  0 {Narzêdzia do treningu taktyki i debiutów}
menuText P ToolsComp "Turniej komputerowy" 2 {Turniej programów komputerowych}
menuText P ToolsTacticalGame "Partia taktyczna"  0 {Rozegraj partiê z taktyk±}
menuText P ToolsSeriousGame "Partia turniejowa"  1 {Rozegraj partiê turniejow±}
menuText P ToolsTrainTactics "Taktyka"  0 {Rozwi±zuj zadania taktyczne}
menuText P ToolsTrainCalvar "Liczenie wariantów"  0 {Æwicz liczenie wariantów}
menuText P ToolsTrainFindBestMove "Znajd¼ najlepszy ruch"  0 {Znajd¼ najlepszy ruch}
menuText P ToolsTrainFics "Internet"  0 {Graj w szachy na freechess.org}
menuText P ToolsBookTuning "Konfiguracja ksi±¿ki debiutowej" 0 {Konfiguruj ksi±¿kê debiutow±}

menuText P ToolsConnectHardware "Pod³±cz urz±dzenie" 0 {Pod³±cz zewnêtrzne urz±dzenie}
menuText P ToolsConnectHardwareConfigure "Konfiguruj..." 0 {Konfiguruj zewnêtrzne urz±dzenie i po³±czenie}
menuText P ToolsConnectHardwareNovagCitrineConnect "Pod³±cz Novag Citrine" 0 {Pod³±cz Novag Citrine}
menuText P ToolsConnectHardwareInputEngineConnect "Pod³±cz urz±dzenie wej¶ciowe" 0 {Pod³±cz urz±dzenie wej¶ciowe, na przyk³ad DGT}
menuText P ToolsNovagCitrine "Novag Citrine" 0 {Novag Citrine}
menuText P ToolsNovagCitrineConfig "Konfiguracja" 0 {Konfiguracja Novag Citrine}
menuText P ToolsNovagCitrineConnect "Pod³±cz" 0 {Pod³±cz Novag Citrine}
menuText P ToolsPInfo "Informacje o zawodniku"  0 \
  {Otwórz/od¶wie¿ okno informacji o zawodniku}
menuText P ToolsPlayerReport "Raport o graczu" 9 \
  {Utwórz raport o graczu} 
menuText P ToolsRating "Wykres rankingu" 0 \
  {Wykres historii rankingu graj±cych partiê}
menuText P ToolsScore "Wykres wyników" 1 {Poka¿ wykres wyników}
menuText P ToolsExpCurrent "Eksportuj partiê" 0 \
  {Zapisz partiê do pliku tekstowego}
menuText P ToolsExpCurrentPGN "Do pliku PGN..." 9 \
  {Zapisz partiê do pliku PGN}
menuText P ToolsExpCurrentHTML "Do pliku HTML..." 9 \
  {Zapisz partiê do pliku HTML}
menuText P ToolsExpCurrentHTMLJS "Eksportuj partiê do HTML z JavaScriptem..." 15 {Zapisz aktualn± partiê do pliku HTML z JavaScriptem}  
menuText P ToolsExpCurrentLaTeX "Do pliku LaTeX-a..." 9 \
  {Zapisz partiê do pliku LaTeX-a}
menuText P ToolsExpFilter "Eksportuj wyszukane partie" 1 \
  {Zapisz wyszukane partie do pliku tekstowego}
menuText P ToolsExpFilterPGN "Do pliku PGN..." 9 \
  {Zapisz wyszukane partie do pliku PGN}
menuText P ToolsExpFilterHTML "Do pliku HTML..." 9 \
  {Zapisz wyszukane partie do pliku HTML}
menuText P ToolsExpFilterHTMLJS "Eksportuj filtr do HTML z Javascriptem..." 17 {Zapisz wszystkie partie w filtrze do pliku HTML z Javascriptem}  
menuText P ToolsExpFilterLaTeX "Do pliku LaTeX..." 9 \
  {Zapisz wyszukane partie do pliku LaTeX}
menuText P ToolsImportOne "Wklej partiê w formacie PGN..." 0 \
  {Pobierz partiê z pliku PGN}
menuText P ToolsImportFile "Importuj plik PGN..." 2 \
  {Pobierz partie z pliku PGN}
menuText P ToolsStartEngine1 "Uruchom program 1" 0  {Uruchom program 1}
menuText P ToolsStartEngine2 "Uruchom program 2" 0  {Uruchom program 2}
menuText P ToolsScreenshot "Zrzut ekranu" 0

menuText P Play "Gra" 0
menuText P CorrespondenceChess "Szachy korespondencyjne" 0 {Funkcje do gry korespondencyjnej przez e-mail i Xfcc}
menuText P CCConfigure "Konfiguruj..." 0 {Konfiguruj ustawienia i narzêdzia zewnêtrzne}
menuText P CCConfigRelay "Konfiguruj obserwowane..." 1 {Konfiguruj obserwowane partie}
menuText P CCOpenDB "Otwórz bazê..." 0 {Otwórz domy¶ln± bazê korespondencyjn±}
menuText P CCRetrieve "Pobierz partie" 0 {Pobierz partie zewnêtrznym narzêdziem Xfcc}
menuText P CCInbox "Przetwórz skrzynkê wej¶ciow±" 0 {Przetwórz wszystkie pliki w skrzynce wej¶ciowej}
menuText P CCSend "Wy¶lij posuniêcie" 0 {Wy¶lij posuniêcie przez e-mail lub zewnêtrzne narzêdzie Xfcc}
menuText P CCResign "Poddaj siê" 0 {Poddaj siê (nie przez e-mail)}
menuText P CCClaimDraw "Reklamuj remis" 0 {Wy¶lij posuniêcie i reklamuj remis (nie przez e-mail)}
menuText P CCOfferDraw "Zaproponuj remis" 0 {Wy¶lij posuniêcie i zaproponuj remis (nie przez e-mail)}
menuText P CCAcceptDraw "Przyjmij remis" 0 {Przyjmij propozycjê remisu (nie przez e-mail)}
menuText P CCNewMailGame "Nowa partia e-mail..." 0 {Rozpocznij now± partiê e-mail}
menuText P CCMailMove "Wy¶lij posuniêcie przez e-mail..." 0 {Wy¶lij posuniêcie przez e-mail}
menuText P CCGamePage "Strona partii..." 0 {Otwórz stronê partii w przegl±darce}
menuText P CCEditCopy "Kopiuj listê partii do schowka" 0 {Skopiuj listê partii w formacie CSV do schowka}

menuText P Options "Opcje" 0
menuText P OptionsBoard "Szachownica" 0 {Konfiguracja wygl±du szachownicy}
menuText P OptionsColour "Kolor t³a" 0 {Domy¶lny kolor t³a}
menuText P OptionsNames "Moje nazwiska" 0 {Modyfikuj listê moich graczy}
menuText P OptionsExport "Eksport" 0 {Zmieñ opcje eksportu tekstu}
menuText P OptionsFonts "Czcionka" 0 {Zmieñ czcionkê}
menuText P OptionsFontsRegular "Podstawowa" 0 {Zmieñ podstawow± czcionkê}
menuText P OptionsFontsMenu "Menu" 0 {Zmieñ czcionkê menu} 
menuText P OptionsFontsSmall "Ma³a" 0 {Zmieñ ma³± czcionkê}
menuText P OptionsFontsFixed "Sta³a" 0 {Zmieñ czcionkê sta³ej szeroko¶ci}
menuText P OptionsGInfo "Informacje o partii" 0 {Sposób wy¶wietlania informacji o partii}
menuText P OptionsFics "FICS" 0
menuText P OptionsFicsAuto "Autopromote Królowa" 0
menuText P OptionsFicsClock "Zegar Cyfrowy" 0
# ====== TODO To be translated ======
menuText P OptionsFicsColour "Text Colour" 0
# ====== TODO To be translated ======
menuText P OptionsFicsNoRes "No Results" 0
# ====== TODO To be translated ======
menuText P OptionsFicsNoReq "No Requests" 0
menuText P OptionsLanguage "Jêzyk" 0 {Wybierz jêzyk}
menuText P OptionsMovesTranslatePieces "T³umacz oznaczenia figur" 0 {T³umacz pierwsze litery figur}
menuText P OptionsMovesHighlightLastMove "Pod¶wietl ostatnie posuniêcie" 0 {Pod¶wietl ostatnie posuniêcie}
menuText P OptionsMovesHighlightLastMoveDisplay "Poka¿" 0 {Poka¿ ostatnie posuniêcie}
menuText P OptionsMovesHighlightLastMoveWidth "Width" 0 {Grubo¶æ linii}
menuText P OptionsMovesHighlightLastMoveColor "Kolor" 0 {Kolor linii}
menuText P OptionsMoves "Posuniêcia" 0 {Wprowadzanie posuniêæ}
menuText P OptionsMovesAsk "Zapytaj przed zast±pieniem posuniêæ" 0 \
  {Zapytaj przed zast±pieniem aktualnych posuniêæ}
menuText P OptionsMovesAnimate "Szybko¶æ animacji" 1 \
  {Ustaw czas przeznaczony na animacjê jednego posuniêcia} 
menuText P OptionsMovesDelay "Automatyczne przegl±danie..." 0 \
  {Ustaw opó¼nienie przy automatycznym przegl±daniu partii}
menuText P OptionsMovesCoord "Posuniêcia w formacie \"g1f3\"" 0 \
  {Akceptuj posuniêcia wprowadzone w formacie "g1f3"}
menuText P OptionsMovesSuggest "Poka¿ proponowane posuniêcia" 1 \
  {W³±cz/wy³±cz proponowanie posuniêæ}
menuText P OptionsShowVarPopup "Poka¿ okno wariantów" 0 {W³±cz/wy³±cz wy¶wietlanie okna wariantów}  
menuText P OptionsMovesSpace "Dodaj spacjê po numerze posuniêcia" 0 {Dodawaj spacjê po numerze posuniêcia}  
menuText P OptionsMovesKey "Automatyczne dope³nianie posuniêæ" 1 \
  {W³±cz/wy³±cz automatyczne dope³nianie posuniêæ wprowadzanych z klawiatury}
menuText P OptionsMovesShowVarArrows "Poka¿ strza³ki wariantów" 0 {W³±cz/wy³±cz strza³ki pokazuj±ce ruchy wariantów}
menuText P OptionsNumbers "Format zapisu liczb" 0 {Wybierz format zapisu liczb}
menuText P OptionsStartup "Start" 0 {Wybierz okna, które maj± byæ widoczne po uruchomieniu programu}
# ====== TODO To be translated ======
menuText P OptionsTheme "Theme" 0 {Change look of interface}
menuText P OptionsWindows "Okna" 0 {Opcje okien}
menuText P OptionsWindowsIconify "Minimalizuj wszystkie okna" 0 \
  {Schowaj wszystkie okna przy minimalizacji g³ównego okna}
menuText P OptionsWindowsRaise "Automatyczne uaktywnianie" 0 \
  {Automatycznie uaktywniaj niektóre okna (np. pasek postêpu), gdy s± zas³oniête}
menuText P OptionsSounds "D¼wiêki..." 0 {Konfiguruj d¼wiêki zapowiadaj±ce ruchy}
# ====== TODO To be translated ======
menuText P OptionsWindowsDock "Dock windows" 0 {Dock windows}
# ====== TODO To be translated ======
menuText P OptionsWindowsSaveLayout "Save layout" 0 {Save layout}
# ====== TODO To be translated ======
menuText P OptionsWindowsRestoreLayout "Restore layout" 0 {Restore layout}
# ====== TODO To be translated ======
menuText P OptionsWindowsShowGameInfo "Show game info" 0 {Show game info}
# ====== TODO To be translated ======
menuText P OptionsWindowsAutoLoadLayout "Auto load first layout" 0 {Auto load first layout at startup}
# todo
menuText P OptionsWindowsAutoResize "Auto resize board" 0 {}
menuText P OptionsToolbar "Pasek narzêdziowy" 6 \
  {Schowaj/poka¿ pasek narzêdziowy}
menuText P OptionsECO "Wczytaj ksi±¿kê debiutow±..." 16 \
  {Wczytaj plik z klasyfikacja debiutów}
menuText P OptionsSpell "Wczytaj plik sprawdzania pisowni..." 13 \
  {Wczytaj plik do sprawdzania pisowni nazwisk i nazw}
menuText P OptionsTable "Katalog z baz± koñcówek..." 10 \
  {Wybierz bazê koñcówek; u¿yte zostan± wszystkie bazy z tego katalogu}
menuText P OptionsRecent "Ostatnie pliki..." 0 \
  {Zmieñ liczbê ostatnio otwartych plików, wy¶wietlanych w menu Plik} 

menuText P OptionsBooksDir "Katalog ksi±¿ek debiutowych..." 0 {Ustaw katalog ksi±¿ek debiutowych}
menuText P OptionsTacticsBasesDir "Katalog baz..." 0 {Ustaw katalog baz treningowych}
menuText P OptionsSave "Zapamiêtaj opcje" 0 \
  "Zapamiêtaj wszystkie ustawienia w pliku $::optionsFile"
menuText P OptionsAutoSave "Automatycznie zapisuj opcje" 0 \
  {Automatycznie zapisz opcje przy zamykaniu programu}

menuText P Help "Pomoc" 2
menuText P HelpContents "Spis tre¶ci" 0 {Poka¿ spis tre¶ci pomocy} 
menuText P HelpIndex "Spis tre¶ci" 0 {Poka¿ indeks pomocy}
menuText P HelpGuide "Krótki przewodnik" 0 {Poka¿ krótki przewodnik}
menuText P HelpHints "Podpowiedzi" 0 {Poka¿ podpowiedzi}
menuText P HelpContact "Informacja o autorze" 0 \
  {Poka¿ informacjê o autorze i stronie Scid-a}
menuText P HelpTip "Porada dnia" 0 {Poka¿ poradê Scida}
menuText P HelpStartup "Okno powitalne" 2 {Pokazuj okno startowe}
menuText P HelpAbout "O programie" 0 {Informacje o programie Scid}

# Game info box popup menu:
menuText P GInfoHideNext "Ukryj nastêpne posuniêcie" 0
# ====== TODO To be translated ======
menuText P GInfoShow "Side to Move" 0
# ====== TODO To be translated ======
menuText P GInfoCoords "Toggle Coords" 0
menuText P GInfoMaterial "Poka¿ materia³" 0
menuText P GInfoFEN "Poka¿ pozycjê w formacie FEN" 16
menuText P GInfoMarks "Pokazuj kolorowe pola i strza³ki" 5 
menuText P GInfoWrap "Zawijaj d³ugie linie" 0
menuText P GInfoFullComment "Poka¿ ca³y komentarz" 6
menuText P GInfoPhotos "Poka¿ zdjêcia" 5
menuText P GInfoTBNothing "Tablica koñcówek: nic" 0
menuText P GInfoTBResult "Tablica koñcówek: tylko wynik" 18
menuText P GInfoTBAll "Tablica koñcówek: wszystko" 18
menuText P GInfoDelete "Usuñ/przywróæ tê partiê" 0
menuText P GInfoMark "W³±cz/wy³±cz zaznaczenie tej partii" 0
menuText P GInfoInformant "Konfiguruj oceny Informatora" 0

# General buttons:
# ====== TODO To be translated ======
translate P Apply {Apply}
translate P Back {Z powrotem}
translate P Browse {Przegl±daj}
translate P Cancel {Anuluj}
translate P Continue {Kontynuuj}
translate P Clear {Wyczy¶æ}
translate P Close {Zamknij}
translate P Contents {Spis tre¶ci}
translate P Defaults {Domy¶lne}
translate P Delete {Usuñ}
translate P Graph {Wykres}
translate P Help {Pomoc}
translate P Import {Pobierz}
translate P Index {Indeks}
translate P LoadGame {Wczytaj partiê}
translate P BrowseGame {Przegl±daj partiê}
translate P MergeGame {Do³±cz partiê}
translate P MergeGames {Po³±cz partie}
translate P Preview {Podgl±d}
translate P Revert {Odwróæ}
translate P Save {Zapisz}
translate P Search {Szukaj}
translate P Stop {Stop}
translate P Store {Zapamiêtaj}
translate P Update {Uaktualnij}
translate P ChangeOrient {Zmieñ po³o¿enie okna}
translate P ShowIcons {Poka¿ ikony}
translate P None {Brak}
translate P First {Pierwsza}
translate P Current {Aktualn±}
translate P Last {Ostatni±}

# General messages:
translate P game {partia}
translate P games {partie}
translate P move {posuniêcie}
translate P moves {pos.}
translate P all {wszystkie}
translate P Yes {Tak}
translate P No {Nie}
translate P Both {Oba}
translate P King {Król}
translate P Queen {Hetman}
translate P Rook {Wie¿a}
translate P Bishop {Goniec}
translate P Knight {Skoczek}
translate P Pawn {Pion}
translate P White {Bia³e}
translate P Black {Czarne}
translate P Player {Gracz}
translate P Rating {Ranking}
translate P RatingDiff {Ró¿nica rankingów}
translate P AverageRating {¦redni ranking}
translate P Event {Turniej}
translate P Site {Miejsce}
translate P Country {Kraj}
translate P IgnoreColors {Ignoruj kolory}
translate P Date {Data}
translate P EventDate {Turniej data}
translate P Decade {Dekada} 
translate P Year {Rok}
translate P Month {Miesi±c}
translate P Months {Styczeñ Luty Marzec Kwiecieñ Maj Czerwiec Lipiec Sierpieñ Wrzesieñ Pa¼dziernik Listopad Grudzieñ}
translate P Days {N Pn Wt ¦r Cz Pt So}
translate P YearToToday {Ostatni rok}
translate P Result {Wynik}
translate P Round {Runda}
translate P Length {D³ugo¶æ}
translate P ECOCode {Kod ECO}
translate P ECO {ECO}
translate P Deleted {Usuniêta}
translate P SearchResults {Wyniki wyszukiwania}
translate P OpeningTheDatabase "Otwieranie bazy"
translate P Database {Bazy}
translate P Filter {Filtr}
# todo
translate P IgnoreCase {Ignorowac Case}
translate P noGames {brak partii}
translate P allGames {wszystkie partie}
translate P empty {brak}
translate P clipbase {schowek}
translate P score {punkty}
translate P Start {Pozycja}
translate P StartPos {Pozycja pocz±tkowa}
translate P Total {Razem}
translate P readonly {tylko do odczytu}

# Standard error messages:
translate P ErrNotOpen {To nie jest otwarta baza.} 
translate P ErrReadOnly {Ta baza jest tylko do odczytu; nie mo¿na jej zmieniæ.}
translate P ErrSearchInterrupted {Wyszukiwanie zosta³o przerwane. Wyniki bêd± niepe³ne.}

# Game information:
translate P twin {powtórzona}
translate P deleted {usuniêta}
translate P comment {komentarz}
translate P hidden {ukryte}
translate P LastMove {Poprzednie}
translate P NextMove {nastêpne}
translate P GameStart {Pocz±tek partii}
translate P LineStart {Pocz±tek wariantu}
translate P GameEnd {Koniec partii}
translate P LineEnd {Koniec wariantu}

# Player information:
translate P PInfoAll {Wyniki - <b>wszystkie</b> partie}
translate P PInfoFilter {Wyniki - partie z <b>filtra</b>}
translate P PInfoAgainst {Wyniki - }
translate P PInfoMostWhite {Najczêstsze debiuty bia³ymi}
translate P PInfoMostBlack {Najczêstsze debiuty czarnymi}
translate P PInfoRating {Historia rankingu}
translate P PInfoBio {Biografia}
translate P PInfoEditRatings {Modyfikuj rankingi} 

# Tablebase information:
translate P Draw {remis}
translate P stalemate {pat}
translate P withAllMoves {po dowolnym posuniêciu}
translate P withAllButOneMove {po dowolnym posuniêciu oprócz}
translate P with {po}
translate P only {tylko}
translate P lose {przegrywaj±}
translate P loses {przegrywa}
translate P allOthersLose {inne posuniêcia przegrywaj±}
translate P matesIn {matuj± w}
translate P hasCheckmated {matuj±}
translate P longest {najlepsze}
translate P WinningMoves {Wygrywaj±ce posuniêcia}
translate P DrawingMoves {Remisuj±ce posuniêcia} 
translate P LosingMoves {Przegrywaj±ce posuniêcia} 
translate P UnknownMoves {Posuniêcia o nieznanej ocenie} 

# Tip of the day:
translate P Tip {Porada}
translate P TipAtStartup {Poka¿ poradê przy starcie}

# Tree window menus:
menuText P TreeFile "Plik" 0
menuText P TreeFileFillWithBase "Wype³nij bufor baz±" 0 {Wype³nij plik bufora wszystkimi partiami w aktualnej bazie}
menuText P TreeFileFillWithGame "Wype³nij bufor parti±" 0 {Wype³nij plik bufora aktualn± parti±}
menuText P TreeFileSetCacheSize "Wielko¶æ bufora" 0 {Ustaw wielko¶æ bufora}
menuText P TreeFileCacheInfo "Informacje o buforze" 0 {Wy¶wietl informacje o wykorzystaniu bufora}
menuText P TreeFileSave "Zapisz bufor" 7 {Zapisz plik bufora (.stc)}
menuText P TreeFileFill "Twórz standardowy plik cache" 0 {Wstaw typowe pozycje debiutowe do bufora}
menuText P TreeFileBest "Najlepsze partie" 0 {Poka¿ listê najlepszych partii}
menuText P TreeFileGraph "Poka¿ wykres" 0 {Poka¿ wykres dla tej ga³êzi drzewa}
menuText P TreeFileCopy "Kopiuj drzewo do schowka" 0 \
  {Skopiuj drzewo ze statystykami do schowka}
menuText P TreeFileClose "Zamknij" 0 {Zamknij okno drzewa}
menuText P TreeMask "Maska" 0
menuText P TreeMaskNew "Nowa" 0 {Nowa maska}
menuText P TreeMaskOpen "Otwórz" 0 {Otwórz maskê}
menuText P TreeMaskOpenRecent "Otwórz ostatni± maskê" 0 {Otwórz ostatni± maskê}
menuText P TreeMaskSave "Zapisz" 0 {Zapisz maskê}
menuText P TreeMaskClose "Zamknij" 0 {Zamknij maskê}
menuText P TreeMaskFillWithGame "Wype³nij maskê parti±" 0 {Wype³nij maskê parti±}
menuText P TreeMaskFillWithBase "Wype³nij maskê baz±" 0 {Wype³nij maskê wszystkimi partiami w bazie}
menuText P TreeMaskInfo "Informacje" 0 {Poka¿ statystykê aktualnej maski}
menuText P TreeMaskDisplay "Poka¿ mapê maski" 0 {Poka¿ dane maski jako drzewo}
menuText P TreeMaskSearch "Znajd¼" 0 {Znajd¼ w aktualnej masce}
menuText P TreeSort "Sortowanie" 0
menuText P TreeSortAlpha "Alfabetycznie" 0
menuText P TreeSortECO "Kod ECO" 0
menuText P TreeSortFreq "Czêsto¶æ" 0
menuText P TreeSortScore "Punkty" 0
menuText P TreeOpt "Opcje" 0
menuText P TreeOptSlowmode "Tryb dok³adny" 0 {Wolne uaktualnianie (du¿a dok³adno¶æ)}
menuText P TreeOptFastmode "Tryb szybki" 0 {Tryb szybki (bez transpozycji)}
menuText P TreeOptFastAndSlowmode "Tryb mieszany" 0 {Tryb szybki, a potem dok³adne uaktualnienie}
menuText P TreeOptStartStop "Automatyczne od¶wie¿anie" 0 {W³±cz/wy³±cz automatyczne od¶wie¿anie drzewa}
menuText P TreeOptLock "Blokada" 0 {Zablokuj/odblokuj drzewo na aktualnej bazie}
menuText P TreeOptTraining "Trening" 0 {W³±cz/wy³±cz tryb treningowy}
menuText P TreeOptAutosave "Automatyczny zapis bufora" 0 \
  {Automatycznie zapisz plik bufora przy wyj¶ciu}
menuText P TreeHelp "Pomoc" 2
menuText P TreeHelpTree "Drzewo" 0
menuText P TreeHelpIndex "Spis tre¶ci" 0

translate P SaveCache {Zapisz bufor}
translate P Training {Trening}
translate P LockTree {Blokada}
translate P TreeLocked {zablokowane}
translate P TreeBest {Najlepsze}
translate P TreeBestGames {Najlepsze partie}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate P TreeTitleRow \
  {    Pos.      Czêsto¶æ     Wynik  Rav   Rperf Rok   Remis ECO}
translate P TreeTotal {RAZEM}
translate P DoYouWantToSaveFirst {Zapisaæ najpierw}
translate P AddToMask {Dodaj do maski}
translate P RemoveFromMask {Usuñ z maski}
# TODO
translate P AddThisMoveToMask {Add Move to Mask}
# ====== TODO To be translated ======
translate P SearchMask {Search in Mask}
# ====== TODO To be translated ======
translate P DisplayMask {Display Mask}
translate P Nag {Kod NAG}
translate P Marker {Znacznik}
translate P Include {Do³±cz}
translate P Exclude {Wyklucz}
translate P MainLine {Wariant g³ówny}
translate P Bookmark {Zak³adka}
translate P NewLine {Nowy wariant}
translate P ToBeVerified {Do sprawdzenia}
translate P ToTrain {Do przeæwiczenia}
translate P Dubious {W±tpliwe}
translate P ToRemove {Do usuniêcia}
translate P NoMarker {Bez znacznika}
translate P ColorMarker {Kolor}
translate P WhiteMark {Bia³y}
translate P GreenMark {Zielony}
translate P YellowMark {¯ó³ty}
translate P BlueMark {Niebieski}
translate P RedMark {Czerwony}
translate P CommentMove {Komentuj posuniêcie}
translate P CommentPosition {Komentuj pozycjê}
translate P AddMoveToMaskFirst {Najpierw dodaj posuniêcie do maski}
translate P OpenAMaskFileFirst {Najpierw otwórz plik maski}
translate P Positions {Pozycje}
translate P Moves {Posuniêcia}

# Finder window:
menuText P FinderFile "Plik" 0
menuText P FinderFileSubdirs "Przeszukuj podkatalogi" 0
menuText P FinderFileClose "Zamknij wyszukiwacza plików" 0
menuText P FinderSort "Sortowanie" 0
menuText P FinderSortType "Typ" 0
menuText P FinderSortSize "Rozmiar" 0
menuText P FinderSortMod "Zmieniony" 0
menuText P FinderSortName "Nazwa" 0
menuText P FinderSortPath "¦cie¿ka" 0
menuText P FinderTypes "Typy" 0
menuText P FinderTypesScid "Bazy Scid-a" 0
menuText P FinderTypesOld "Bazy Scid-a (stary format)" 1
menuText P FinderTypesPGN "Pliki PGN" 0
menuText P FinderTypesEPD "Ksi±¿ki debiutowe EPD" 0
menuText P FinderHelp "Pomoc" 2
menuText P FinderHelpFinder "Pomoc poszukiwacza plików" 1
menuText P FinderHelpIndex "Spis tre¶ci" 0
translate P FileFinder {Poszukiwacz plików}
translate P FinderDir {Katalog}
translate P FinderDirs {Katalogi}
translate P FinderFiles {Pliki}
translate P FinderUpDir {wy¿ej}
translate P FinderCtxOpen {Otwórz}
translate P FinderCtxBackup {Utwórz kopiê}
translate P FinderCtxCopy {Kopiuj}
translate P FinderCtxMove {Przenie¶}
translate P FinderCtxDelete {Usuñ}

# Player finder:
menuText P PListFile "Plik" 0
menuText P PListFileUpdate "Uaktualnij" 0
menuText P PListFileClose "Zamknij przegl±darkê zawodników" 0
menuText P PListSort "Sortowanie" 0
menuText P PListSortName "Nazwisko" 0
menuText P PListSortElo "Elo" 0
menuText P PListSortGames "Partie" 0
menuText P PListSortOldest "Najstarsza" 0
menuText P PListSortNewest "Najnowsza" 0

# Tournament finder:
menuText P TmtFile "Plik" 0
menuText P TmtFileUpdate "Uaktualnij" 0
menuText P TmtFileClose "Zamknij turnieje" 0
menuText P TmtSort "Sortowanie" 0
menuText P TmtSortDate "Data" 0
menuText P TmtSortPlayers "Zawodnicy" 0
menuText P TmtSortGames "Partie" 0
menuText P TmtSortElo "Elo" 0
menuText P TmtSortSite "Miejsce" 0
menuText P TmtSortEvent "Turniej" 0
menuText P TmtSortWinner "Zwyciêzca" 0
translate P TmtLimit "Wielko¶æ listy"
translate P TmtMeanElo "Min. ¶rednie ELO"
translate P TmtNone "Nie znaleziono turniejów."

# Graph windows:
menuText P GraphFile "Plik" 0
menuText P GraphFileColor "Zapisz jako kolorowy PostScript" 12
menuText P GraphFileGrey "Zapisz jako zwyk³y PostScript..." 0
menuText P GraphFileClose "Zamknij okno" 6
menuText P GraphOptions "Opcje" 0
menuText P GraphOptionsWhite "Bia³e" 0
menuText P GraphOptionsBlack "Czarne" 0
menuText P GraphOptionsBoth "Oba kolory" 1
menuText P GraphOptionsPInfo "Gracz z Informacji o graczu" 0
translate P GraphFilterTitle "Filtr: czêsto¶æ na 1000 partii" 
translate P GraphAbsFilterTitle "Wykres filtra: czêsto¶æ partii"
translate P ConfigureFilter {Konfiguruj o¶ X: rok, ranking i posuniêcia}
translate P FilterEstimate "Oszacuj"
translate P TitleFilterGraph "Scid: wykres filtra"

# Analysis window:
translate P AddVariation {Dodaj wariant}
translate P AddAllVariations {Dodaj wszystkie warianty}
translate P AddMove {Dodaj posuniêcie}
translate P Annotate {Komentuj}
translate P ShowAnalysisBoard {Poka¿ pozycjê koñcow±}
translate P ShowInfo {Poka¿ informacje o programie}
translate P FinishGame {Zakoñcz partiê}
translate P StopEngine {Zatrzymaj program}
translate P StartEngine {Uruchom program}
translate P LockEngine {Zablokuj program na analizie aktualnej pozycji}
translate P AnalysisCommand {Program do analizy}
translate P PreviousChoices {Poprzednie programy}
translate P AnnotateTime {Czas miêdzy ruchami (w sekundach)}
translate P AnnotateWhich {Dodaj warianty}
translate P AnnotateAll {Dla obu stron}
translate P AnnotateAllMoves {Wszystkie}
translate P AnnotateWhite {Dla bia³ych}
translate P AnnotateBlack {Dla czarnych}
translate P AnnotateNotBest {Tylko posuniêcia lepsze ni¿ w partii}
translate P AnnotateBlundersOnly {Tylko oczywiste b³êdy}
translate P AnnotateBlundersOnlyScoreChange {Tylko b³êdy ze zmian± oceny z/na: }
# ====== TODO To be translated ======
translate P AnnotateTitle {Konfiguracja komentarza}
translate P AnnotateWith {Format komentarza}
translate P AnnotateWhichMoves {Komentowane posuniêcia}
translate P AnnotateComment {Dodaj pole komentatora}
translate P BlundersThreshold {Granica b³êdu}
translate P LowPriority {Niski priorytet CPU} 
translate P ClickHereToSeeMoves {Kliknij, by zobaczyæ posuniêcia}
translate P ConfigureInformant {Konfiguruj oceny Informatora}
translate P Informant!? {Ciekawe posuniêcie}
translate P Informant? {B³±d}
translate P Informant?? {Powa¿ny b³±d}
translate P Informant?! {W±tpliwe posuniêcie}
translate P Informant+= {Niewielka przewaga}
translate P Informant+/- {Wyra¼na przewaga}
translate P Informant+- {Rozstrzygaj±ca przewaga}
translate P Informant++- {Wygrana}
translate P Book {Ksi±¿ka debiutowa}

# Analysis Engine open dialog:
translate P EngineList {Programy szachowe}
translate P EngineName {Nazwa}
translate P EngineCmd {Polecenie}
translate P EngineArgs {Parametry} 
translate P EngineDir {Katalog}
translate P EngineElo {Elo}
translate P EngineTime {Data}
translate P EngineNew {Dodaj}
translate P EngineEdit {Edytuj}
translate P EngineRequired {Pola wyt³uszczone s± konieczne; reszta opcjonalna} 

# Stats window menus:
menuText P StatsFile "Plik" 0
menuText P StatsFilePrint "Zapisz do pliku..." 7
menuText P StatsFileClose "Zamknij" 0
menuText P StatsOpt "Opcje" 0

# PGN window menus:
menuText P PgnFile "Plik" 0
menuText P PgnFileCopy "Kopiuj partiê do schowka" 0
menuText P PgnFilePrint "Zapisz do pliku..." 7
menuText P PgnFileClose "Zamknij" 0
menuText P PgnOpt "Wygl±d" 0
menuText P PgnOptColor "Wy¶wietlanie w kolorach" 0
menuText P PgnOptShort "Krótki (3-wierszowy) nag³ówek" 0
menuText P PgnOptSymbols "Symbole Informatora" 0
menuText P PgnOptIndentC "Wcinaj komentarze" 7
menuText P PgnOptIndentV "Wcinaj warianty" 7
menuText P PgnOptColumn "Kolumny (jedno posuniêcie w wierszu)" 0
menuText P PgnOptSpace "Spacja po numerze ruchu" 0
menuText P PgnOptStripMarks "Usuñ kody kolorowych pól i strza³ek" 0
menuText P PgnOptChess "U¿yj czcionki szachowej" 0
menuText P PgnOptScrollbar "Pasek przewijania" 0
menuText P PgnOptBoldMainLine "Wyt³u¶æ tekst partii" 2
menuText P PgnColor "Kolory" 0
menuText P PgnColorHeader "Nag³ówek..." 0
menuText P PgnColorAnno "Uwagi..." 3
menuText P PgnColorComments "Komentarze..." 0
menuText P PgnColorVars "Warianty..." 0
menuText P PgnColorBackground "T³o..." 0
menuText P PgnColorMain "G³ówny wariant..." 0
menuText P PgnColorCurrent "T³o aktualnego posuniêcia..." 1
menuText P PgnColorNextMove "T³o nastêpnego posuniêcia..." 0
menuText P PgnHelp "Pomoc" 2
menuText P PgnHelpPgn "PGN" 0
menuText P PgnHelpIndex "Spis tre¶ci" 0
translate P PgnWindowTitle {Tekst partii - partia  %u}

# Crosstable window menus:
menuText P CrosstabFile "Plik" 0
menuText P CrosstabFileText "Zapisz w pliku tekstowym..." 15
menuText P CrosstabFileHtml "Zapisz w pliku HTML..." 15
menuText P CrosstabFileLaTeX "Zapisz w pliku LaTeX-a..." 15
menuText P CrosstabFileClose "Zamknij" 0
menuText P CrosstabEdit "Edytuj" 0
menuText P CrosstabEditEvent "Turniej" 0
menuText P CrosstabEditSite "Miejsce" 0
menuText P CrosstabEditDate "Data" 0
menuText P CrosstabOpt "Wy¶wietlanie" 0
menuText P CrosstabOptAll "Turniej ko³owy" 0
menuText P CrosstabOptSwiss "Szwajcar" 0
menuText P CrosstabOptKnockout "Knockout" 0
menuText P CrosstabOptAuto "Automatycznie" 0
# todo
menuText P CrosstabOptThreeWin "3 Points for Win" 1
menuText P CrosstabOptAges "Wiek" 0
menuText P CrosstabOptNats "Narodowo¶æ" 0
# todo
menuText P CrosstabOptTallies "Win/Loss/Draw" 0
menuText P CrosstabOptRatings "Ranking" 0
menuText P CrosstabOptTitles "Tytu³" 0
menuText P CrosstabOptBreaks "Punkty pomocnicze" 1
menuText P CrosstabOptDeleted "Uwzglêdniaj usuniête partie" 0
menuText P CrosstabOptColors "Kolory (tylko szwajcar)" 0
menuText P CrosstabOptColumnNumbers "Numerowane kolumny (tylko turniej ko³owy)" 0
menuText P CrosstabOptGroup "Grupuj po liczbie punktów" 0
menuText P CrosstabSort "Sortowanie" 0
menuText P CrosstabSortName "Nazwisko" 0
menuText P CrosstabSortRating "Ranking" 0
menuText P CrosstabSortScore "Punkty" 0
menuText P CrosstabSortCountry "Kraj" 0
menuText P CrosstabColor "Kolor" 0
menuText P CrosstabColorPlain "Zwyk³y tekst" 0
menuText P CrosstabColorHyper "Hipertekst" 0
menuText P CrosstabHelp "Pomoc" 2
menuText P CrosstabHelpCross "Tabela turniejowa" 0
menuText P CrosstabHelpIndex "Spis tre¶ci" 0
translate P SetFilter {Ustaw filtr}
translate P AddToFilter {Dodaj do filtra}
translate P Swiss {Szwajcar}
translate P Category {Kategoria} 

# Opening report window menus:
menuText P OprepFile "Plik" 0
menuText P OprepFileText "Zapisz w pliku tekstowym..." 15
menuText P OprepFileHtml "Zapisz w pliku HTML..." 15
menuText P OprepFileLaTeX "Zapisz w pliku LaTeX-a..." 15
menuText P OprepFileOptions "Opcje" 2
menuText P OprepFileClose "Zamknij okno raportu" 0
menuText P OprepFavorites "Ulubione" 1 
menuText P OprepFavoritesAdd "Dodaj raport..." 0 
menuText P OprepFavoritesEdit "Modyfikuj ulubione..." 0
menuText P OprepFavoritesGenerate "Twórz raporty..." 0 
menuText P OprepHelp "Pomoc" 2
menuText P OprepHelpReport "Pomoc raportu debiutowego" 0
menuText P OprepHelpIndex "Spis tre¶ci" 0

# Header search:
translate P HeaderSearch {Wyszukiwanie wg nag³ówka}
translate P EndSideToMove {Strona na posuniêciu po zakoñczeniu partii}
translate P GamesWithNoECO {Partie bez ECO?}
translate P GameLength {D³ugo¶æ}
translate P FindGamesWith {Znajd¼ partie}
translate P StdStart {ca³a partia}
translate P Promotions {z promocj±}
translate P Comments {Komentarze}
translate P Variations {Warianty}
translate P Annotations {Uwagi}
translate P DeleteFlag {Usuwanie}
translate P WhiteOpFlag {Debiut - bia³e}
translate P BlackOpFlag {Debiut - czarne}
translate P MiddlegameFlag {Gra ¶rodkowa}
translate P EndgameFlag {Koñcówka}
translate P NoveltyFlag {Nowinka}
translate P PawnFlag {Struktura pionowa}
translate P TacticsFlag {Taktyka}
translate P QsideFlag {Gra na skrzydle hetmañskim}
translate P KsideFlag {Gra na skrzydle królewskim}
translate P BrilliancyFlag {Nagroda za piêkno¶æ}
translate P BlunderFlag {Podstawka}
translate P UserFlag {Inne}
translate P PgnContains {PGN zawiera tekst}

# Game list window:
translate P GlistNumber {Numer}
translate P GlistWhite {Bia³e}
translate P GlistBlack {Czarne}
translate P GlistWElo {B-Elo}
translate P GlistBElo {C-Elo}
translate P GlistEvent {Turniej}
translate P GlistSite {Miejsce}
translate P GlistRound {Runda}
translate P GlistDate {Data}
translate P GlistYear {Rok}
translate P GlistEDate {Turniej-Data}
translate P GlistResult {Wynik}
translate P GlistLength {D³ugo¶æ}
translate P GlistCountry {Kraj}
translate P GlistECO {ECO}
translate P GlistOpening {Debiut}
translate P GlistEndMaterial {Materia³}
translate P GlistDeleted {Usuniêta}
translate P GlistFlags {Oznaczenie}
translate P GlistVars {Warianty}
translate P GlistComments {Komentarze}
translate P GlistAnnos {Uwagi}
translate P GlistStart {Pozycja pocz±tkowa}
translate P GlistGameNumber {Numer partii}
translate P GlistFindText {Znajd¼ tekst}
translate P GlistMoveField {Przesuñ}
translate P GlistEditField {Konfiguruj}
translate P GlistAddField {Dodaj}
translate P GlistDeleteField {Usuñ}
translate P GlistWidth {Szeroko¶æ}
translate P GlistAlign {Wyrównanie}
translate P GlistColor {Kolor}
translate P GlistSep {Separator}
translate P GlistRemoveThisGameFromFilter  {Usuñ tê partiê z filtra}
translate P GlistRemoveGameAndAboveFromFilter  {Usuñ tê i poprzednie partie z filtra}
translate P GlistRemoveGameAndBelowFromFilter  {Usuñ tê i nastêpne partie z filtra}
translate P GlistDeleteGame {Usuñ/przywróæ tê partiê} 
translate P GlistDeleteAllGames {Usuñ wszystkie partie z filtra} 
translate P GlistUndeleteAllGames {Przywróæ wszystkie partie z filtra} 

# Maintenance window:
translate P DatabaseName {Nazwa bazy:}
translate P TypeIcon {Ikona:}
translate P NumOfGames {Liczba partii:}
translate P NumDeletedGames {Liczba usuniêtych partii:}
translate P NumFilterGames {Liczba partii w filtrze:}
translate P YearRange {Data:}
translate P RatingRange {Ranking:}
translate P Description {Opis} 
translate P Flag {Oznaczenie:}
translate P CustomFlags {Flagi u¿ytkownika}
translate P DeleteCurrent {Usuñ aktualn± partiê}
translate P DeleteFilter {Usuñ partie z filtra}
translate P DeleteAll {Usuñ wszystkie partie}
translate P UndeleteCurrent {Odzyskaj aktualn± partiê}
translate P UndeleteFilter {Odzyskaj partie z filtra}
translate P UndeleteAll {Odzyskaj wszystkie partie}
translate P DeleteTwins {Usuñ powtórzone partie}
translate P MarkCurrent {Zaznacz aktualn± partiê}
translate P MarkFilter {Zaznacz partie z filtra}
translate P MarkAll {Zaznacz wszystkie partie z filtra}
translate P UnmarkCurrent {Usuñ zaznaczenie aktualnej partii}
translate P UnmarkFilter {Usuñ zaznaczenie partii z filtra}
translate P UnmarkAll {Usuñ zaznaczenie wszystkich partii}
translate P Spellchecking {Pisownia}
translate P Players {Zawodnicy}
translate P Events {Turnieje}
translate P Sites {Miejsca}
translate P Rounds {Rundy}
translate P DatabaseOps {Operacje bazodanowe}
translate P ReclassifyGames {Klasyfikacja debiutowa}
translate P CompactDatabase {Uporz±dkuj bazê}
translate P SortDatabase {Sortuj bazê}
translate P AddEloRatings {Dodaj rankingi ELO}
translate P AutoloadGame {Domy¶lna partia}
translate P StripTags {Usuñ znaczniki PGN} 
translate P StripTag {Usuñ znacznik}
translate P CheckGames {Sprawd¼ partie}
translate P Cleaner {Zestaw zadañ}
translate P CleanerHelp {
Zestaw zadañ pozwala wykonaæ od razu kilka operacji porz±dkowania bazy. Operacje wybrane z listy
zostan± wykonane na aktualnej bazie.

Do klasyfikacji debiutowej i usuwania powtórzonych partii u¿yte zostan± aktualne ustawienia.
}
translate P CleanerConfirm {
Kiedy wykonanie zestawu zadañ zostanie rozpoczête, nie bêdzie mo¿na ju¿ go przerwaæ.

Na du¿ej bazie mo¿e to zaj±æ du¿o czasu (zale¿y to równie¿ od wybranego zestawu zadañ i ich
ustawieñ).

Na pewno wykonaæ wybrane zadania?
}
translate P TwinCheckUndelete {¿eby prze³±czyæ; "u" przywraca obie)}
translate P TwinCheckprevPair {Poprzednia para}
translate P TwinChecknextPair {Nastêpna para}
translate P TwinChecker {Scid: wyszukiwarka powtórzonych partii}
translate P TwinCheckTournament {Partie w turnieju:}
translate P TwinCheckNoTwin {Bez powtórzeñ  }
translate P TwinCheckNoTwinfound {Brak powtórzeñ tej partii.\n¯eby zobaczyæ powtórzone partie, u¿yj najpierw funkcji "Znajd¼ powtórzone partie...". }
translate P TwinCheckTag {Dziel znaczniki...}
translate P TwinCheckFound1 {Scid znalaz³ $result powtórzonych partii}
translate P TwinCheckFound2 { i ustawi³ ich flagê usuniêcia}
translate P TwinCheckNoDelete {W tej bazie brak partii do usuniêcia.}
translate P TwinCriteria1 { Aktualne ustawienia do wyszukiwania powtórzeñ mog± spowodowaæ\noznaczenie ró¿nych partii o podobnym przebiegu jako powtórzeñ.}
translate P TwinCriteria2 {Przy ustawieniu "Nie" dla "tych samych posuniêæ", zaleca siê wybranie "Tak" dla koloru, turnieju, miejsca, rundy, roku i miesi±ca.\nCzy kontynuowaæ i usun±æ powtórzone partie? }
translate P TwinCriteria3 {Zaleca siê wybranie "Tak" przynajmniej dla dwóch z opcji: "to samo miejsce", "ta sama runda" i "ten sam rok".\nCzy kontynuowaæ i usun±æ powtórzone partie?}
translate P TwinCriteriaConfirm {Scid: potwierd¼ ustawienia wyszukiwania powtórzeñ}
translate P TwinChangeTag "Zmieñ nastêpuj±ce znaczniki:\n\n"
translate P AllocRatingDescription "To polecenie u¿ywa aktualnego pliku do sprawdzania pisowni, ¿eby dodaæ rankingi Elo do partii w bazie. Je¶li gracz nie ma przypisanego rankingu, ale plik pisowni zawiera potrzebne informacje, ranking zostanie dodany."
translate P RatingOverride "Zast±piæ istniej±ce rankingi?"
translate P AddRatings "Dodaj rankingi do:"
translate P AddedRatings {Scid doda³ $r rankingów Elo w $g partiach.}
translate P NewSubmenu "Nowe podmenu"

# Comment editor:
translate P AnnotationSymbols  {Symbole:}
translate P Comment {Komentarz:}
translate P InsertMark {Wstaw znak}
translate P InsertMarkHelp {
Dodaj/usuñ znacznik: wybierz kolor, typ i pole.
Dodaj/usuñ strza³kê: kliknij prawym przyciskiem na dwóch polach.
} 

# Nag buttons in comment editor:
translate P GoodMove {Silne posuniêcie}
translate P PoorMove {S³abe posuniêcie}
translate P ExcellentMove {Znakomite posuniêcie}
translate P Blunder {Podstawka}
translate P InterestingMove {Ciekawe posuniêcie}
translate P DubiousMove {W±tpliwe posuniêcie}
translate P WhiteDecisiveAdvantage {Bia³e maj± decyduj±c± przewagê} 
translate P BlackDecisiveAdvantage {Czarne maj± decyduj±c± przewagê} 
translate P WhiteClearAdvantage {Bia³e maj± wyra¼n± przewagê} 
translate P BlackClearAdvantage {Czarne  maj± wyra¼n± przewagê} 
translate P WhiteSlightAdvantage {Bia³e maj± niewielk± przewagê} 
translate P BlackSlightAdvantage {Czarne maj± niewielk± przewagê}
translate P Equality {Równowaga} 
translate P Unclear {Niejasna pozycja}
translate P Diagram {Diagram}

# Board search:
translate P BoardSearch {Wyszukiwanie wg pozycji}
translate P FilterOperation {Operacje na aktualnym filtrze:}
translate P FilterAnd {I (ogranicz filtr)}
translate P FilterOr {LUB (dodaj do filtra)}
translate P FilterIgnore {NOWY (ignoruj poprzedni filtr)}
translate P SearchType {Typ wyszukiwania:}
translate P SearchBoardExact {Identyczna pozycja (bierki na tych samych polach)}
translate P SearchBoardPawns {Pionki (ten sam materia³, pionki na tych samych polach)}
translate P SearchBoardFiles {Kolumny (ten sam materia³, pionki na tych samych kolumnach)}
translate P SearchBoardAny {Materia³ (ten sam materia³, pozycja dowolna)}
# ====== TODO To be translated ======
translate P SearchInRefDatabase { Search in base }
translate P LookInVars {Przeszukuj warianty}

# Material search:
translate P MaterialSearch {Wyszukiwanie wg materia³u}
translate P Material {Materia³}
translate P Patterns {Wzorce}
translate P Zero {Brak}
translate P Any {Dowolny}
translate P CurrentBoard {Aktualna pozycja}
translate P CommonEndings {Typowe koñcówki}
translate P CommonPatterns {Typowe wzorce}
translate P MaterialDiff {Przewaga materialna}
translate P squares {pola}
translate P SameColor {jednopolowe}
translate P OppColor {ró¿nopolowe}
translate P Either {dowolne}
translate P MoveNumberRange {Zakres posuniêæ}
translate P MatchForAtLeast {Pasuje min.}
translate P HalfMoves {pó³ruchy}

# Common endings in material search:
translate P EndingPawns {Koñcówki pionowe} 
translate P EndingRookVsPawns {Wie¿a na pion(y)} 
translate P EndingRookPawnVsRook {Wie¿a i pion na wie¿ê}
translate P EndingRookPawnsVsRook {Wie¿a i pion(y) na wie¿ê}
translate P EndingRooks {Koñcówki wie¿owe}
translate P EndingRooksPassedA {Koñcówki wie¿owe z wolnym pionem a}
translate P EndingRooksDouble {Koñcówki czterowie¿owe}
translate P EndingBishops {Koñcówki goñcowe}
translate P EndingBishopVsKnight {Koñcówki goniec na skoczka}
translate P EndingKnights {Koñcówki skoczkowe}
translate P EndingQueens {Koñcówki hetmañskie}
translate P EndingQueenPawnVsQueen {Hetman i pion na hetmana}
translate P BishopPairVsKnightPair {Dwa goñce na dwa skoczki w grze ¶rodkowej}

# Common patterns in material search:
translate P PatternWhiteIQP {Izolowany pion u bia³ych} 
translate P PatternWhiteIQPBreakE6 {Izolowowany pion u bia³ych: prze³om d4-d5 przy pionku e6}
translate P PatternWhiteIQPBreakC6 {Izolowowany pion u bia³ych: prze³om d4-d5 przy pionku c6}
translate P PatternBlackIQP {Izolowany pion u czarnych}
translate P PatternWhiteBlackIQP {Izolowane piony u obu stron}
translate P PatternCoupleC3D4 {Wisz±ce bia³e piony c3+d4}
translate P PatternHangingC5D5 {Wisz±ce czarne piony c5+d5}
translate P PatternMaroczy {Struktura Maroczego (piony na c4 i e4)} 
translate P PatternRookSacC3 {Ofiara wie¿y na c3}
translate P PatternKc1Kg8 {Ró¿nostronne roszady (Kc1 i Kg8)}
translate P PatternKg1Kc8 {Ró¿nostronne roszady (Kg1 i Kc8)}
translate P PatternLightFian {Bia³opolowe fianchetto (Gg2 i Gb7)}
translate P PatternDarkFian {Czarnopolowe fianchetto (Gb2 i Gg7)}
translate P PatternFourFian {Poczwórne fianchetto (goñce na b2, g2, b7, g7)}

# Game saving:
translate P Today {Dzisiaj}
translate P ClassifyGame {Klasyfikacja debiutowa}

# Setup position:
translate P EmptyBoard {Pusta szachownica}
translate P InitialBoard {Pozycja pocz±tkowa}
translate P SideToMove {Na posuniêciu}
translate P MoveNumber {Posuniêcie nr}
translate P Castling {Roszada}
translate P EnPassantFile {Bicie w przelocie}
translate P ClearFen {Kopiuj FEN}
translate P PasteFen {Wklej pozycjê FEN}
translate P SaveAndContinue {Zapisz i kontynuuj}
translate P DiscardChangesAndContinue {Porzuæ Zmiany}
translate P GoBack {Anuluj}

# Replace move dialog:
translate P ReplaceMove {Zmieñ posuniêcie}
translate P AddNewVar {Dodaj wariant}
translate P NewMainLine {Nowy wariant g³ówny}
translate P ReplaceMoveMessage {Posuniêcie ju¿ istnieje.

Mo¿esz je zast±piæ, usuwaj±c dalszy ci±g partii lub dodaæ nowy wariant.

(Mo¿na wy³±czyæ to ostrze¿enie, wy³±czaj±c opcjê  "Zapytaj przed zast±pieniem posuniêæ" w menu
Opcje:Posuniêcia)}

# Make database read-only dialog:
translate P ReadOnlyDialog {Je¶li zabezpieczysz tê bazê przed zapisem, zmiany bêd± zablokowane
¯adna partia nie bêdzie zapisana ani zmodyfikowana, ¿adne flagi nie bêd± zmienione.
Sortowanie i klasyfikacja debiutowa bêd± tylko tymczasowe.

¯eby usun±æ zabezpieczenie przez zapisem, wystarczy zamkn±æ bazê i otworzyæ j± ponownie.

Na pewno zabezpieczyæ bazê przed zapisem?}

# Clear game dialog:
translate P ClearGameDialog {Partia zosta³a zmieniona.

Na pewno kontynuowaæ, rezygnuj±c z wszelkich zmian?
}

# Exit dialog:
translate P ExitDialog {Na pewno zakoñczyæ pracê z programem?}
translate P ExitUnsaved {Nastêpuj±ce bazy zawieraj± niezapisane zmiany. Je¶li zamkniesz program teraz, zmiany zostan± utracone.} 

# Import window:
translate P PasteCurrentGame {Wklej aktualn± partiê}
translate P ImportHelp1 {Wprowad¼ lub wklej partiê w formacie PGN w poni¿sz± ramkê.}
translate P ImportHelp2 {Tu bêd± wy¶wietlane b³êdy przy importowaniu partii.}
translate P OverwriteExistingMoves {Zast±piæ istniej±ce posuniêcia?}

# ECO Browser:
translate P ECOAllSections {Wszystkie kody ECO}
translate P ECOSection {Czê¶æ ECO}
translate P ECOSummary {Podsumowanie dla}
translate P ECOFrequency {Czêsto¶ci kodów dla}

# Opening Report:
translate P OprepTitle {Raport debiutowy}
translate P OprepReport {Raport}
translate P OprepGenerated {Utworzony przez}
translate P OprepStatsHist {Statystyka i historia}
translate P OprepStats {Statystyka}
translate P OprepStatAll {Wszystkie partie}
translate P OprepStatBoth {Obaj zawodnicy z Elo}
translate P OprepStatSince {Od}
translate P OprepOldest {Najdawniejsze partie}
translate P OprepNewest {Ostatnie partie}
translate P OprepPopular {Popularno¶æ}
translate P OprepFreqAll {Czêsto¶æ w ca³ej bazie:         }
translate P OprepFreq1   {W ostatnim roku:                }
translate P OprepFreq5   {W ostatnich piêciu latach:      }
translate P OprepFreq10  {W ostatnich dziesiêciu latach:  }
translate P OprepEvery {co %u partii}
translate P OprepUp {wiêcej o %u%s ni¿ w ca³ej bazie}
translate P OprepDown {mniej o %u%s ni¿ w ca³ej bazie}
translate P OprepSame {jak w ca³ej bazie}
translate P OprepMostFrequent {Gracze najczê¶ciej stosuj±cy wariant}
translate P OprepMostFrequentOpponents {Przeciwnicy} 
translate P OprepRatingsPerf {Rankingi i wyniki}
translate P OprepAvgPerf {¦rednie rankingi i wyniki}
translate P OprepWRating {Ranking bia³ych}
translate P OprepBRating {Ranking czarnych}
translate P OprepWPerf {Wynik bia³ych}
translate P OprepBPerf {Wynik czarnych}
translate P OprepHighRating {Partie graczy o najwy¿szym ¶rednim rankingu}
translate P OprepTrends {Wyniki}
translate P OprepResults {D³ugo¶æ partii i czêsto¶ci}
translate P OprepLength {D³ugo¶æ partii}
translate P OprepFrequency {Czêsto¶æ}
translate P OprepWWins {Zwyciêstwa bia³ych:  }
translate P OprepBWins {Zwyciêstwa czarnych: }
translate P OprepDraws {Remisy:              }
translate P OprepWholeDB {ca³a baza}
translate P OprepShortest {Najkrótsze zwyciêstwa}
translate P OprepMovesThemes {Posuniêcia i motywy}
translate P OprepMoveOrders {Posuniêcia prowadz±ce do badanej pozycji}
translate P OprepMoveOrdersOne \
  {Badana pozycja powstawa³a jedynie po posuniêciach:}
translate P OprepMoveOrdersAll \
  {Badana pozycja powstawa³a na %u sposobów:}
translate P OprepMoveOrdersMany \
  {Badana pozycja powstawa³a na %u sposobów. Najczêstsze %u to:}
translate P OprepMovesFrom {Posuniêcia w badanej pozycji}
translate P OprepMostFrequentEcoCodes {Najczêstsze kody ECO} 
translate P OprepThemes {Motywy pozycyjne}
translate P OprepThemeDescription {Czêsto¶æ motywów w pierwszych %u posuniêciach partii} 
translate P OprepThemeSameCastling {Jednostronne roszady}
translate P OprepThemeOppCastling {Ró¿nostronne roszady}
translate P OprepThemeNoCastling {Obie strony bez roszady}
translate P OprepThemeKPawnStorm {Atak pionowy na skrzydle królewskim}
translate P OprepThemeQueenswap {Wymiana hetmanów}
translate P OprepThemeWIQP {Izolowany pion bia³ych} 
translate P OprepThemeBIQP {Izolowany pion czarnych}
translate P OprepThemeWP567 {Bia³y pion na 5/6/7 linii}
translate P OprepThemeBP234 {Czarny pion na 2/3/4 linii}
translate P OprepThemeOpenCDE {Otwarta kolumna c/d/e}
translate P OprepTheme1BishopPair {Jedna ze stron ma parê goñców}
translate P OprepEndgames {Koñcówki}
translate P OprepReportGames {Partie raportu}
translate P OprepAllGames {Wszystkie partie}
translate P OprepEndClass {Materia³ w pozycji koñcowej}
translate P OprepTheoryTable {Teoria}
translate P OprepTableComment {Utworzono z %u partii o najwy¿szym ¶rednim rankingu.}
translate P OprepExtraMoves {Dodatkowe posuniêcia w przypisach}
translate P OprepMaxGames {Maksymalna liczba partii w teorii}
translate P OprepViewHTML {¬ród³o HTML} 
translate P OprepViewLaTeX {¬ród³o LaTeX} 

# Player Report:
translate P PReportTitle {Raport o graczu}
translate P PReportColorWhite {bia³ymi}
translate P PReportColorBlack {czarnymi}
translate P PReportMoves {po %s}
translate P PReportOpenings {Debiuty}
translate P PReportClipbase {Wyczy¶æ schowek i skopiuj do niego wybrane partie}

# Piece Tracker window:
translate P TrackerSelectSingle {Lewy przycisk wybiera tê figurê.}
translate P TrackerSelectPair {Lewy przycisk wybiera tê figurê; prawy obie takie figury.}
translate P TrackerSelectPawn {Lewy przycisk wybiera tego piona; prawy wszystkie 8 pionów.}
translate P TrackerStat {Statystyka}
translate P TrackerGames {% partie z posuniêciem na tym pole}
translate P TrackerTime {% czasu na tym polu}
translate P TrackerMoves {Posuniêcia}
translate P TrackerMovesStart {Podaj numer posuniêcia, od którego zacz±æ ¶ledzenie.}
translate P TrackerMovesStop {Podaj numer posuniêcia, na którym skoñczyæ ¶ledzenie.}

# Game selection dialogs:
translate P SelectAllGames {Wszystkie partie w bazie}
translate P SelectFilterGames {Partie w filtrze}
translate P SelectTournamentGames {Tylko partie z aktualnego turnieju}
translate P SelectOlderGames {Tylko wcze¶niejsze partie}

# Delete Twins window:
translate P TwinsNote {Partie zostan± uznane za identyczne, je¶li zosta³y rozegrane przez tych samych graczy i spe³niaj± ustawione poni¿ej kryteria. Krótsza z partii zostanie usuniêta. Uwaga: dobrze przez wyszukaniem powtórzonych partii sprawdziæ pisowniê nazwisk.}
translate P TwinsCriteria {Kryteria: co musi byæ jednakowe w obu partiach?}
translate P TwinsWhich {Przeszukiwane partie}
translate P TwinsColors {Kolory}
translate P TwinsEvent {Turniej:}
translate P TwinsSite {Miejsce:}
translate P TwinsRound {Runda:}
translate P TwinsYear {Rok:}
translate P TwinsMonth {Miesi±c:}
translate P TwinsDay {Dzieñ:}
translate P TwinsResult {Wynik:}
translate P TwinsECO {Kod ECO:}
translate P TwinsMoves {Posuniêcia:}
translate P TwinsPlayers {Porównywanie nazwisk:}
translate P TwinsPlayersExact {Dok³adne}
translate P TwinsPlayersPrefix {Tylko pierwsze 4 litery}
translate P TwinsWhen {Usuwanie znalezionych powtórzonych partii}
translate P TwinsSkipShort {Pomijaæ partie krótsze ni¿ 5 posuniêæ?}
translate P TwinsUndelete {Odzyskaæ wszystkie partie przed poszukiwaniem?}
translate P TwinsSetFilter {Wstawiæ wszystkie usuniête partie do filtra?}
translate P TwinsComments {Zawsze zachowywaæ partie komentowane?}
translate P TwinsVars {Zawsze zachowywaæ partie z wariantami?}
translate P TwinsDeleteWhich {Któr± partiê usun±æ:} 
translate P TwinsDeleteShorter {Krótsz±} 
translate P TwinsDeleteOlder {O ni¿szym numerze}
translate P TwinsDeleteNewer {O wy¿szym numerze}
translate P TwinsDelete {Usuñ partie}

# Name editor window:
translate P NameEditType {Nazwa do wyboru}
translate P NameEditSelect {Partie do edycji}
translate P NameEditReplace {Zast±p}
translate P NameEditWith {przez}
translate P NameEditMatches {Pasuj±ce: Ctrl+1 do Ctrl+9 wybiera}
translate P CheckGamesWhich {Sprawd¼ partie}
translate P CheckAll {Wszystkie}
translate P CheckSelectFilterGames {Tylko partie z filtra}

# Classify window:
translate P Classify {Przyporz±dkowanie ECO}
translate P ClassifyWhich {Partie do przyporz±dkowania ECO}
translate P ClassifyAll {Wszystkie partie (zmiana starych kodów ECO)}
translate P ClassifyYear {Wszystkie partie z ostatniego roku}
translate P ClassifyMonth {Wszystkie partie z ostatniego miesi±ca}
translate P ClassifyNew {Tylko partie bez kodu ECO}
translate P ClassifyCodes {Kody ECO}
translate P ClassifyBasic {Tylko podstawowe ("B12", ...)}
translate P ClassifyExtended {Rozszerzone kody Scida ("B12j", ...)}

# Compaction:
translate P NameFile {Plik nazw}
translate P GameFile {Plik z partiami}
translate P Names {Nazwy}
translate P Unused {Nieu¿ywane}
translate P SizeKb {Rozmiar (kb)}
translate P CurrentState {Status}
translate P AfterCompaction {Po uporz±dkowaniu}
translate P CompactNames {Uporz±dkuj nazwy}
translate P CompactGames {Uporz±dkuj partie}
translate P NoUnusedNames "Brak nieu¿ywanych nazw, plik nazw jest ju¿ uporz±dkowany."
translate P NoUnusedGames "Plik partii jest ju¿ uporz±dkowany."
translate P NameFileCompacted {Plik nazw dla bazy "[file tail [sc_base filename]]" zosta³ uporz±dkowany.}
translate P GameFileCompacted {Plik partii dla bazy "[file tail [sc_base filename]]" zosta³ uporz±dkowany.}

# Sorting:
translate P SortCriteria {Kryteria sortowania}
translate P AddCriteria {Dodaj kryteria}
translate P CommonSorts {Standardowe kryteria}
translate P Sort {Sortuj}

# Exporting:
translate P AddToExistingFile {Dodaæ partie do pliku?}
translate P ExportComments {Eksportowaæ komentarze?}
translate P ExportVariations {Eksportowaæ warianty?}
translate P IndentComments {Wcinaj komentarze?}
translate P IndentVariations {Wcinaj warianty?}
translate P ExportColumnStyle {Kolumny (jedno posuniêcie w wierszu)?}
translate P ExportSymbolStyle {Styl znaków komentarza:}
translate P ExportStripMarks {Usuwaæ z komentarzy kody kolorowania pól/strza³ek?} 

# Goto game/move dialogs:
translate P LoadGameNumber {Podaj numer partii do wczytania:}
translate P GotoMoveNumber {Id¼ do posuniêcia nr:}

# Copy games dialog:
translate P CopyGames {Kopiuj partie}
translate P CopyConfirm {
 Czy na pewno skopiowaæ
 [::utils::thousands $nGamesToCopy] partii z filtra
 w bazie "$fromName"
 do bazy "$targetName"?
}
translate P CopyErr {Nie mo¿na skopiowaæ partii}
translate P CopyErrSource {baza ¼ród³owa}
translate P CopyErrTarget {baza docelowa}
translate P CopyErrNoGames {nie ma partii w filtrze}
translate P CopyErrReadOnly {jest tylko do odczytu}
translate P CopyErrNotOpen {nie jest otwarta}

# Colors:
translate P LightSquares {Jasne pola}
translate P DarkSquares {Ciemne pola}
translate P SelectedSquares {Wybrane pola}
translate P SuggestedSquares {Wybrane posuniêcie}
# todo
translate P Grid {Grid}
translate P Previous {Poprzednie}
translate P WhitePieces {Bia³e figury}
translate P BlackPieces {Czarne figury}
translate P WhiteBorder {Kontur bia³ych figur}
translate P BlackBorder {Kontur czarnych figur}
translate P ArrowMain   {Main Arrow}
translate P ArrowVar    {Var Arrows}

# Novelty window:
translate P FindNovelty {Znajd¼ nowinkê}
translate P Novelty {Nowinka}
translate P NoveltyInterrupt {Poszukiwanie nowinki przerwano}
translate P NoveltyNone {Nie znaleziono nowinki w partii}
translate P NoveltyHelp {
Scid znajdzie pierwsze posuniêcie w partii, po którym powstanie pozycja niewystêpuj±ca ani w bazie, ani w ksi±¿ce debiutowej.
}

# Sounds configuration:
translate P SoundsFolder {Katalog plików d¼wiêkowych}
translate P SoundsFolderHelp {Katalog powinien zawieraæ pliki King.wav, a.wav, 1.wav itd.}
translate P SoundsAnnounceOptions {Ustawienia og³aszania posuniêæ}
translate P SoundsAnnounceNew {Og³aszaj nowe posuniêcia}
translate P SoundsAnnounceForward {Og³aszaj posuniêcia przy przegl±daniu}
translate P SoundsAnnounceBack {Og³aszaj posuniêcia przy cofaniu}

# Upgrading databases:
translate P Upgrading {Konwersja}
translate P ConfirmOpenNew {
Ta baza jest zapisana w starym formacie (Scid 2) i nie mo¿e zostaæ otwarta w nowszej wersji
Scid-a. Baza zosta³a ju¿ automatycznie przekonwertowana do nowego formatu.

Czy otworzyæ now± wersjê bazy?
}
translate P ConfirmUpgrade {
Ta baza jest zapisana w starym formacie (Scid 2) i nie mo¿e zostaæ otwarta w nowszej wersji Scid-a. ¯eby móc otworzyæ bazê, trzeba przekonwertowaæ j± do nowego formatu.

Konwersja utworzy now± wersjê bazy - stara wersja nie zostanie zmieniona ani usuniêta.

Mo¿e to zaj±æ trochê czasu, ale jest to operacja jednorazowa. Mo¿esz j± przerwaæ, je¶li potrwa za d³ugo.

Przekonwertowaæ bazê?
}

# Recent files options:
translate P RecentFilesMenu {Liczba ostatnich plików w menu Plik} 
translate P RecentFilesExtra {Liczba ostatnich plików w dodatkowym podmenu} 

# My Player Names options:
translate P MyPlayerNamesDescription {
Podaj listê preferowanych nazwisk graczy, po jednym w wierszu. W nazwiskach mo¿na stosowaæ znaki specjalne (np. "?" - dowolny znak, "*" - dowolna sekwencja znaków).

Wszystkie partie grane przez jednego z graczy z listy bêd± wy¶wietlane z jego perspektywy.
}
translate P showblunderexists {poka¿ b³±d}
translate P showblundervalue {poka¿ wagê b³êdu}
translate P showscore {poka¿ ocenê}
translate P coachgame {partia treningowa}
translate P configurecoachgame {konfiguruj partiê treningow±}
translate P configuregame {Konfiguracja partii}
translate P Phalanxengine {Program Phalanx}
translate P Coachengine {Program treningowy}
translate P difficulty {poziom trudno¶ci}
translate P hard {wysoki}
translate P easy {niski}
translate P Playwith {Graj}
translate P white {bia³ymi}
translate P black {czarnymi}
translate P both {oboma kolorami}
translate P Play {Gra}
translate P Noblunder {Bez b³êdów}
translate P blunder {b³±d}
translate P Noinfo {-- Brak informacji --}
translate P PhalanxOrTogaMissing {Brak programu Phalanx lub Toga}
translate P moveblunderthreshold {move is a blunder if loss is greater than}
translate P limitanalysis {ogranicz czas analizy}
translate P seconds {sekund}
translate P Abort {Przerwij}
translate P Resume {Wznów}
# TODO
translate P Restart {Restart}
translate P OutOfOpening {Po debiucie}
translate P NotFollowedLine {Nie gra³e¶ wariantu}
translate P DoYouWantContinue {Na pewno kontynuowaæ?}
translate P CoachIsWatching {Trener siê przygl±da}
translate P Ponder {Ci±g³e my¶lenie}
translate P LimitELO {Ogranicz si³ê Elo}
translate P DubiousMovePlayedTakeBack {Zagra³e¶ w±tpliwe posuniêcie, chcesz je cofn±æ?}
translate P WeakMovePlayedTakeBack {Zagra³e¶ s³abe posuniêcie, chcesz je cofn±æ?}
translate P BadMovePlayedTakeBack {Zagra³e¶ bardzo s³abe posuniêcie, chcesz je cofn±æ?}
translate P Iresign {Poddajê siê}
translate P yourmoveisnotgood {twoje posuniêcie nie jest dobre}
translate P EndOfVar {Koniec wariantu}
translate P Openingtrainer {Trening debiutowy}
translate P DisplayCM {Poka¿ ruchy-kandydaty}
translate P DisplayCMValue {Poka¿ ocenê ruchów-kandydatów}
translate P DisplayOpeningStats {Poka¿ statystykê}
translate P ShowReport {Poka¿ raport}
translate P NumberOfGoodMovesPlayed {liczba dobrych posuniêæ}
translate P NumberOfDubiousMovesPlayed {liczba w±tpliwych posuniêæ}
translate P NumberOfTimesPositionEncountered {liczba wyst±pieñ pozycji}
translate P PlayerBestMove  {Tylko najlepsze posuniêcia}
translate P OpponentBestMove {Przeciwnik gra najlepsze posuniêcia}
translate P OnlyFlaggedLines {Tylko zaznaczone warianty}
translate P resetStats {Wyczy¶æ statystykê}
translate P Movesloaded {Posuniêcia wczytane}
translate P PositionsNotPlayed {Pozycje nie rozgrywane}
translate P PositionsPlayed {Pozycje rozgrywane}
translate P Success {Sukces}
translate P DubiousMoves {W±tpliwe posuniêcia}
translate P ConfigureTactics {Konfiguruj taktykê}
translate P ResetScores {Wyczy¶æ punkty}
translate P LoadingBase {Wczytaj bazê}
translate P Tactics {Taktyka}
translate P ShowSolution {Poka¿ rozwi±zanie}
translate P Next {Nastêpne}
translate P ResettingScore {Czyszczenie punktów}
translate P LoadingGame {Wczytywanie partii}
translate P MateFound {Znaleziono mata}
translate P BestSolutionNotFound {Nie znaleziono rozwi±zania!}
translate P MateNotFound {Nie znaleziono mata}
translate P ShorterMateExists {Istnieje krótsze rozwi±zanie}
translate P ScorePlayed {Ocena zagranego posuniêcia}
translate P Expected {oczekiwana ocena}
translate P ChooseTrainingBase {Wybierz bazê treningow±}
translate P Thinking {Analiza}
translate P AnalyzeDone {Analiza zakoñczona}
translate P WinWonGame {Wygraj wygran± partiê}
translate P Lines {Warianty}
translate P ConfigureUCIengine {Konfiguruj program UCI}
translate P SpecificOpening {Wybrany program}
translate P StartNewGame {Rozpocznij now± partiê}
translate P FixedLevel {Sta³y poziom}
translate P Opening {Debiut}
translate P RandomLevel {Losowy poziom}
translate P StartFromCurrentPosition {Rozpocznij od aktualnej pozycji}
translate P FixedDepth {Sta³a g³êboko¶æ}
translate P Nodes {Pozycje} 
translate P Depth {G³êboko¶æ}
translate P Time {Czas} 
translate P SecondsPerMove {Sekundy na posuniêcie}
# TODO
translate P TimeLabel {Time per move}
translate P Engine {Program}
translate P TimeMode {Tempo gry}
translate P TimeBonus {Czas + inkrement}
translate P TimeMin {min}
translate P TimeSec {s}
translate P AllExercisesDone {Wszystkie zadania zakoñczone}
translate P MoveOutOfBook {Posuniêcie spoza ksi±¿ki debiutowej}
translate P LastBookMove {Ostatnie posuniêcie w ksi±¿ce debiutowej}
translate P AnnotateSeveralGames {Komentuj kilka partii\nod aktualnej do:}
translate P FindOpeningErrors {Znajd¼ b³êdy debiutowe}
translate P MarkTacticalExercises {Oznacz zadania taktyczne}
translate P UseBook {U¿yj ksi±¿ki debiutowej}
translate P MultiPV {Wiele wariantów}
translate P Hash {Pamiêæ bufora}
translate P OwnBook {U¿yj ksi±¿ki debiutowej programu}
translate P BookFile {Ksi±¿ka debiutowa}
translate P AnnotateVariations {Komentuj warianty}
translate P ShortAnnotations {Skrócone komentarze}
translate P addAnnotatorTag {Dodaj znacznik komentatora}
translate P AddScoreToShortAnnotations {Dodaj ocenê do skróconych komentarzy}
translate P Export {Eksportuj}
translate P BookPartiallyLoaded {Ksi±¿ka czê¶ciowo wczytana}
translate P Calvar {Liczenie wariantów}
translate P ConfigureCalvar {Konfiguracja}
translate P Reti {Debiut Reti}
translate P English {Partia angielska}
translate P d4Nf6Miscellaneous {1.d4 Nf6 inne}
translate P Trompowsky {Trompowsky}
translate P Budapest {Gambit budapeszteñski}
translate P OldIndian {Obrona staroindyjska}
translate P BenkoGambit {Gambit wo³¿añski}
translate P ModernBenoni {Modern Benoni}
translate P DutchDefence {Obrona holenderska}
translate P Scandinavian {Obrona skandynawska}
translate P AlekhineDefence {Obrona Alechina}
translate P Pirc {Obrona Pirca}
translate P CaroKann {Obrona Caro-Kann}
translate P CaroKannAdvance {Obrona Caro-Kann, 3.e5}
translate P Sicilian {Obrona sycylijska}
translate P SicilianAlapin {Obrona sycylijska, wariant A³apina}
translate P SicilianClosed {Obrona sycylijska, wariant zamkniêty}
translate P SicilianRauzer {Obrona sycylijska, wariant Rauzera}
translate P SicilianDragon {Obrona sycylijska, wariant smoczy}
translate P SicilianScheveningen {Obrona sycylijska, wariant Scheveningen}
translate P SicilianNajdorf {Obrona sycylijska, wariant Najdorfa}
translate P OpenGame {Debiuty otwarte}
translate P Vienna {Partia wiedeñska}
translate P KingsGambit {Gambit królewski}
translate P RussianGame {Partia rosyjska}
translate P ItalianTwoKnights {Partia w³oska/obrona dwóch skoczków}
translate P Spanish {Partia hiszpañska}
translate P SpanishExchange {Partia hiszpañska, wariant wymienny}
translate P SpanishOpen {Partia hiszpañska, wariant otwarty}
translate P SpanishClosed {Partia hiszpañska, wariant zamkniêty}
translate P FrenchDefence {Obrona francuska}
translate P FrenchAdvance {Obrona francuska, 3.e5}
translate P FrenchTarrasch {Obrona francuska, wariant Tarrascha}
translate P FrenchWinawer {Obrona francuska, wariant Winawera}
translate P FrenchExchange {Obrona francuska, wariant wymienny}
translate P QueensPawn {Debiut piona hetmañskiego}
translate P Slav {Obrona s³owiañska}
translate P QGA {Przyjêty gambit hetmañski}
translate P QGD {Nieprzyjêty gabit hetmañski}
translate P QGDExchange {Gambit hetmañski, wariant wymienny}
translate P SemiSlav {Obrona pó³s³owiañska}
translate P QGDwithBg5 {Gambit hetmañski z Bg5}
translate P QGDOrthodox {Gambit hetmañski, wariant ortodoksalny}
translate P Grunfeld {Obrona Grünfelda}
translate P GrunfeldExchange {Obrona Grünfeld, wariant wymienny}
translate P GrunfeldRussian {Obrona Grünfelda, wariant rosyjski}
translate P Catalan {Partia kataloñska}
translate P CatalanOpen {Partia kataloñska, wariant otwarty}
translate P CatalanClosed {Partia kataloñska, wariant zamkniêty}
translate P QueensIndian {Obrona hetmañsko-indyjska}
translate P NimzoIndian {Obrona Nimzowitscha}
translate P NimzoIndianClassical {Obrona Nimzowitscha, wariant klasyczny}
translate P NimzoIndianRubinstein {Obrona Nimzowitscha, wariant Rubinsteina}
translate P KingsIndian {Obrona królewsko-indyjska}
translate P KingsIndianSamisch {Obrona królewsko-indyjska, wariant Sämischa}
translate P KingsIndianMainLine {Obrona królewsko-indyjska, wariant g³ówny}

# FICS todo
translate P ConfigureFics {Konfiguruj FICS}
translate P FICSLogin {Zaloguj siê}
translate P FICSGuest {Zaloguj siê jako go¶æ}
translate P FICSServerPort {Port serwera}
translate P FICSServerAddress {Adres IP}
translate P FICSRefresh {Od¶wie¿}
translate P FICSTimeseal {Timeseal}
translate P FICSTimesealPort {Port Timeseal}
translate P FICSSilence {Filtr konsoli}
translate P FICSOffers {Propozycje}
translate P FICSGames {Partie}
translate P FICSFindOpponent {Znajd¼ przeciwnika}
translate P FICSTakeback {Cofnij}
translate P FICSTakeback2 {Cofnij 2}
translate P FICSInitTime {Czas (min)}
translate P FICSIncrement {Inkrement (sec)}
translate P FICSRatedGame {Partia liczona do rankingu}
translate P FICSAutoColour {Automatycznie}
translate P FICSManualConfirm {Potwierd¼ rêcznie}
translate P FICSFilterFormula {Filtruj przy u¿yciu formu³y}
translate P FICSIssueSeek {Szukaj przeciwnika}
translate P FICSAccept {Akceptuj}
translate P FICSDecline {Odrzuæ}
translate P FICSColour {Kolor}
translate P FICSSend {Wy¶lij}
translate P FICSConnect {Po³±cz}

translate P CCDlgConfigureWindowTitle {Konfiguruj grê korespondencyjn±}
translate P CCDlgCGeneraloptions {Ustawienia ogólne}
translate P CCDlgDefaultDB {Domy¶lna baza:}
translate P CCDlgInbox {Skrzynka odbiorcza (¶cie¿ka):}
translate P CCDlgOutbox {Skrzynka nadawcza (¶cie¿ka):}
translate P CCDlgXfcc {Konfiguracja Xfcx:}
translate P CCDlgExternalProtocol {Zewnêtrzna obs³uga protoko³ów (np. Xfcc)}
translate P CCDlgFetchTool {Narzêdzie pobierania:}
translate P CCDlgSendTool {Narzêdzie wysy³ania:}
translate P CCDlgEmailCommunication {Komunikacja e-mail}
translate P CCDlgMailPrg {Program pocztowy:}
translate P CCDlgBCCAddr {Adres (U)DW:}
translate P CCDlgMailerMode {Tryb:}
translate P CCDlgThunderbirdEg {np. Thunderbird, Mozilla Mail, Icedove...}
translate P CCDlgMailUrlEg {np. Evolution}
translate P CCDlgClawsEg {np Sylpheed Claws}
translate P CCDlgmailxEg {np. mailx, mutt, nail...}
translate P CCDlgAttachementPar {Parametr za³±cznika:}
translate P CCDlgInternalXfcc {U¿yj wbudowanej obs³ugi Xfcc}
translate P CCDlgConfirmXfcc {Potwierd¼ posuniêcia}
translate P CCDlgSubjectPar {Parametr tematu:}
translate P CCDlgDeleteBoxes {Opró¿nij skrzynki nadawcz± i odbiorcz±}
translate P CCDlgDeleteBoxesText {Na pewno opró¿niæ foldery nadawczy i odbiorczy dla szachów korespondencyjnych? To wymaga synchronizacji, by wy¶wietliæ aktualny stan Twoich partii}
translate P CCDlgConfirmMove {Potwierd¼ posuniêcie}
translate P CCDlgConfirmMoveText {Je¶li potwierdzisz, nastêpuj±ce posuniêcie i komentarz zostan± wys³ane na serwer:}
translate P CCDlgDBGameToLong {Niezgodny wariant g³ówny}
translate P CCDlgDBGameToLongError {Wariant g³ówny w Twojej bazie jest d³u¿szy ni¿ w skrzynce odbiorczej. Je¶li skrzynka odbiorcza zawiera aktualny stan partii, posuniêcia zosta³y b³êdnie dodanoe do g³ównej bazy.\nW takim wypadku proszê skróciæ wariant g³ówny co najmniej do posuniêcia\n}
translate P CCDlgStartEmail {Rozpocznij now± partiê e-mail}
translate P CCDlgYourName {Imiê i nazwisko:}
translate P CCDlgYourMail {Adres e-mail:}
translate P CCDlgOpponentName {Imiê i nazwisko przeciwnika:}
translate P CCDlgOpponentMail {Adres e-mail przeciwnika:}
translate P CCDlgGameID {Unikatowy identyfikator partii:}
translate P CCDlgTitNoOutbox {Scid: skrzynka nadawcza}
translate P CCDlgTitNoInbox {Scid: skrzynka odbiorcza}
translate P CCDlgTitNoGames {Scid: brak partii korespondencyjnych}
translate P CCErrInboxDir {Katalog odbiorczy szachów korespondencyjnych:}
translate P CCErrOutboxDir {Katalog nadawczy szachów korespondencyjnych:}
translate P CCErrDirNotUsable {nie istnieje lub jest niedostêpny.\nProszê sprawdziæ i poprawiæ ustawienia.}
translate P CCErrNoGames {nie zawiera ¿adnych partii!\nProszê najpierw je pobraæ.}
translate P CCDlgTitNoCCDB {Scid: brak bazy korespondencyjnej}
translate P CCErrNoCCDB {Nie otwarto bazy typu 'Szachy korespondencyjne'. Proszê otworzyæ j± przed u¿yciem funkcji do gry korespondencyjnej.}
translate P CCFetchBtn {Pobierz partie z serwera i przetwórz skrzynkê odbiorcz±}
translate P CCPrevBtn {Przejd¼ do poprzedniej partii}
translate P CCNextBtn {Przejd¼ do nastêpnej partii}
translate P CCSendBtn {Wy¶lij posuniêcie}
translate P CCEmptyBtn {Opró¿nij skrzynkê odbiorcz± i nadawcz±}
translate P CCHelpBtn {Pomoc dla ikon i znaczników stanu.\nProszê wcisn±æ F1, by zobaczyæ ogóln± pomoc.}
translate P CCDlgServerName {Nazwa serwera:}
translate P CCDlgLoginName  {Nazwa u¿ytkownika:}
translate P CCDlgPassword   {Has³o:}
translate P CCDlgURL        {Adres Xfcc:}
translate P CCDlgRatingType {Typ rankingu:}
translate P CCDlgDuplicateGame {Nieunikatowy identyfikator partii}
translate P CCDlgDuplicateGameError {Ta partia jest powtórzona w bazie danych. Proszê usun±æ wszystkie powtórzenia i uporz±dkowaæ plik bazy  delete (Plik/Obs³uga/Uporz±dkuj).}
translate P CCDlgSortOption {Sortowanie:}
translate P CCDlgListOnlyOwnMove {Tylko partie, gdzie jestem na posuniêciu}
translate P CCOrderClassicTxt {Miejsce, turniej, runda, wynik, bia³e, czarne}
translate P CCOrderMyTimeTxt {Mój czas}
translate P CCOrderTimePerMoveTxt {Czas na posuniêcie do nastêpnej kontroli}
translate P CCOrderStartDate {Data rozpoczêcia}
translate P CCOrderOppTimeTxt {Czas przeciwnika}
translate P CCDlgConfigRelay {Konfiguruj obserwowanie ICCF}
translate P CCDlgConfigRelayHelp {Przejd¼ na stronê partii na http://www.iccf-webchess.com i wy¶wietl partiê do obserwowania. Je¶li widzisz szachownicê, skopiuj adres z przegl±darki do listy poni¿ej (jeden adres na wiersz).\nPrzyk³ad: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}
translate P ExtHWConfigConnection {Konfiguruj urz±dzenie zewnêtrzne}
translate P ExtHWPort {Port}
translate P ExtHWEngineCmd {Polecenie programu}
translate P ExtHWEngineParam {Parametr programu}
translate P ExtHWShowButton {Poka¿ przycisk}
translate P ExtHWHardware {Sprzêt}
translate P ExtHWNovag {Novag Citrine}
translate P ExtHWInputEngine {Program wej¶ciowy}
translate P ExtHWNoBoard {Brak szachownicy}
translate P IEConsole {Terminal programu wej¶ciowego}
translate P IESending {Posuniêcia wys³ane do}
translate P IESynchronise {Synchronizuj}
translate P IERotate  {Obróæ}
translate P IEUnableToStart {Nie mo¿na uruchomiæ programu wej¶ciowego:}
translate P DoneWithPosition {Pozycja zakoñczona}
# ====== TODO To be translated ======
translate P Board {Board}
# ====== TODO To be translated ======
translate P showGameInfo {Show game info}
# ====== TODO To be translated ======
translate P autoResizeBoard {Automatic resize of board}
# ====== TODO To be translated ======
translate P DockTop {Move to top}
# ====== TODO To be translated ======
translate P DockBottom {Move to bottom}
# ====== TODO To be translated ======
translate P DockLeft {Move to left}
# ====== TODO To be translated ======
translate P DockRight {Move to right}
# ====== TODO To be translated ======
translate P Undock {Undock}
# ====== TODO To be translated ======
translate P ChangeIcon {Change icon}
# ====== TODO To be translated ======

# Drag & Drop
# ====== TODO To be translated ======
translate P CannotOpenUri {Cannot open the following URI:}
# ====== TODO To be translated ======
translate P InvalidUri {Drop content is not a valid URI list.}
# ====== TODO To be translated ======
translate P UriRejected	{The following files are rejected:}
# ====== TODO To be translated ======
translate P UriRejectedDetail {Only the listed file types can be handled:}
# ====== TODO To be translated ======
translate P EmptyUriList {Drop content is empty.}
# ====== TODO To be translated ======
translate P SelectionOwnerDidntRespond {Timeout during drop action: selection owner didn't respond.}

}

### Tips of the day in Polish:

set tips(P) {
  {
    Scid ma ponad 30 <a Index>stron pomocy</a> i w wiêkszo¶ci okien Scida
    naci¶niêcie klawisza <b>F1</b> spowoduje wy¶wietlenie odpowiedniej
    strony.
  }
  {
    Niektóre okna Scida (np. informacje pod szachownic±,
    <a Switcher>prze³±cznik baz</a>) maj± menu przywo³ywane prawym przyciskiem
    myszy. Spróbuj nacisn±æ prawy przycisk myszy w ka¿dym oknie, by
    sprawdziæ, czy menu jest dostêpne i jakie funkcje zawiera.
  }
  {
    Scid pozwala wprowadzaæ posuniêcia na kilka ró¿nych sposobów.
    Mo¿esz u¿yæ myszy (z wy¶wietlaniem mo¿liwych posuniêæ lub bez)
    albo klawiatury (z opcjonalnym automatycznym dope³nianiem).
    Wiêcej informacji mo¿na znale¼æ na stronie pomocy
    <a Moves>Wprowadzenie posuniêæ</a>.
  }
  {
    Je¶li masz kilka baz, które otwierasz czêsto, dodaj
    <a Bookmarks>zak³adkê</a> dla ka¿dej z nich. Umo¿liwi to ³atwe
    otwieranie baz z menu.
  }
  {
    Mo¿esz obejrzeæ wszystkie posuniêcia w aktualnej partii
    (z wariantami i komentarzami lub bez) w <a PGN>Oknie PGN</a>.
    W oknie PGN mo¿esz przej¶æ do dowolnego posuniêcia, klikaj±c
    na nim lewym przyciskiem myszy oraz u¿yæ ¶rodkowego lub prawego
    przycisku myszy do obejrzenia aktualnej pozycji.
  }
  {
    Mo¿esz kopiowaæ partie z bazy do bazy przeci±gaj±c je lewym
    przyciskiem myszy w oknie <a Switcher>Prze³±cznika baz</a>.
  }
  {
    Scid mo¿e otwieraæ pliki PGN, nawet je¶li s± one skompresowane
    Gzip-em (z rozszerzeniem .gz). Pliki PGN mog± byæ jedynie
    czytane, wiêc je¶li chcesz co¶ zmieniæ, utwórz now± bazê Scida
    i skopiuj do niej partie z pliku PGN.
  }
  {
    Je¶li masz du¿± bazê i czêsto u¿ywasz okna <a Tree>Drzewa wariantów</a>,
    warto wybraæ polecenie <b>Twórz standardowy plik cache/b>
    z menu Plik okna Drzewo wariantów. Statystyki dla najpopularniejszych
    pozycji debiutowych zostan± zapamiêtane w pliku, co przyspieszy
    dzia³anie drzewa.
  }
  {
    <a Tree>Drzewo wariantów</a> mo¿e pokazaæ wszystkie posuniêcia
    z aktualnej pozycji, ale je¶li chcesz zobaczyæ wszystkie kolejno¶ci
    posuniêæ prowadz±ce do aktualnej pozycji, mo¿esz u¿yæ
    <a OpReport>Raportu debiutowego</a>.
  }
  {
    W <a GameList>li¶cie partii</a> kliknij lewym lub prawym przyciskiem
    myszy na nag³ówku wybranej kolumny, by zmieniæ jej szeroko¶æ.
  }
  {
    W oknie <a PInfo>Informacja o graczu</a> (kliknij na nazwisku gracza
    w polu pod szachownic±, by je otworzyæ) mo¿esz ³atwo ustawiæ
    <a Searches Filter>filtr</a> zawieraj±cy wszystkie partie danego
    gracza zakoñczeone wybranym wynikiem, klikaj±c na dowolnej warto¶ci
    wy¶wietlanej na <red>czerowono</red>.
  }
  {
    Podczas pracy nad debiutem warto u¿yæ funkcji
    <a Searches Board>wyszukiwania pozycji</a> z opcj± <b>Pionki</b> lub
    <b>Kolumny</b>. Pozowli to znale¼æ inne warianty debiutowe z t±
    sam± struktur± pionow±.
  }
  {
    W polu informacji o partii (pod szachownic±) mo¿na u¿yæ prawego
    przycisku myszy, by wy¶wietliæ menu konfiguracji pola. Mo¿na
    np. ukryæ nastêpne posuniêcie, co jest przydatne przy rozwi±zywaniu
    zadañ.
  }
  {
    Je¶li czêsto u¿ywasz funkcji <a Maintenance>obs³ugi</a> na du¿ej
    bazie, mo¿esz u¿yæ okna <a Maintenance Cleaner>Zestaw zadañ</a>
    do wykonania kilka funkcji naraz.
  }
  {
    Je¶li masz du¿± bazê, w której wiêkszo¶æ partii ma ustawiony
    znacznik EventDate, mo¿esz <a Sorting>posortowaæ</a> j±
    wg tego znacznika (zamiast Daty). Dziêki temu wszystkie partie
    z jednego turnieju znajd± siê ko³o siebie.
  }
  {
    Przed u¿yciem funkcji <a Maintenance Twins>usuwania podwójnych partii</a>
    dobrze jest <a Maintenance Spellcheck>sprawdziæ pisowniê</a>
    nazwisk w bazie, co usprawni wyszukiwanie powtórzeñ.
  }
  {
    <a Flags>Flagi</a> s± przydatne do oznaczania partii, które
    zawieraj± wa¿ne motywy taktyczne, strkutury pionowe, nowinki itd.
    Potem mo¿esz znale¼æ takie partie
    <a Searches Header>wyszukiwaniem wg nag³ówka</a>.
  }
  {
    Je¶li przegl±dasz partiê i chcesz sprawdziæ jaki¶ wariant nie
    zmieniaj±c partii, mo¿esz w³±czyæ tryb testowania wariantu
    (klawisz <b>Ctrl+spacja</b> lub ikona na pasku narzêdziowym).
    Po wy³±czeniu trybu testowania powrócisz do pozycji z partii.
  }
  {
    ¯eby znale¼æ najwa¿niejsze partie (z najsilniejszymi przeciwnikami),
    w których powsta³a aktualna pozycja, otwórz <a Tree>Drzewo wariantów</a>
    i wybierz listê najlepszych partii. Mo¿esz nawet wybraæ tylko
    partie zakoñczone konkretnym wynikiem.
  }
  {
    Dobr± metod± na naukê debiutu przy u¿yciu du¿ej bazy jest
    w³±czenie trybu treningu w <a Tree>Drzewie wariantów</a>
    i gra z programem. Pozwala to sprawdziæ, które posuniêcia s±
    grane najczê¶ciej.
  }
  {
    Je¶li masz otwarte dwie bazy i chcesz obejrzeæ
    <a Tree>Drzewo wariantów</a> dla pierwszej bazy, przegl±daj±c
    partiê z drugiej, kliknij przycisk <b>Blokada</b> na drzewie,
    by zablokowaæ je na pierwszej bazie, a nastêpnie prze³±cz siê
    do drugiej bazy.
  }
  {
    Okno <a Tmt>Turnieje</a> jest przydatne nie tylko do znajdowania
    turniejów, ale pozwala tak¿e sprawdziæ, w jakich turniejach gra³
    ostatnio dany zawodnik i jakie turnieje s± rozgrywane w wybranym
    kraju.
  }
  {
    Mo¿esz u¿yæ jednego z wielu typowych wzorców w oknie
    <a Searches Material>Wyszukiwania wg materia³u</a> do znalezienia
    partii do studiowania debiutów lub gry ¶rodkowej.
  }
  {
    W oknie <a Searches Material>Wyszukiwanie wg materia³u</a>, mo¿esz
    ograniczyæ liczbê znajdowanych partii przez warunek, by
    podany stosunek materia³u utrzymywa³ siê przynajmniej przez
    kilka pó³ruchów.
  }
  {
    Je¶li masz wa¿n± bazê, której nie chcesz przez przypadek zmieniæ,
    w³±cz <b>Tylko do odczytu...</b> w menu <b>Plik</b> po jej otwarciu
    (albo zmieñ prawa dostêpu do pliku).
  }
  {
    Je¶li u¿ywasz XBoard-a lub WinBoard-a (albo programu szachowego,
    który pozwala na skopiowania pozycji w notacji FEN do schowka)
    i chcesz skopiowaæ aktualn± pozycjê do Scid-a, wybierz
    <b>Copy position</b> w menu File programu XBoard/Winboard, a potem
    <b>Wklej aktywn± partiê ze schowka</b> z menu Edycja Scid-a.
  }
  {
    W oknie <a Searches Header>Wyszukiwanie wg nag³ówka</a>,
    szukane nazwy graczy/turnieju/miejsca/rundy s± znajdowane niezale¿nie
    od wielko¶ci liter i równie¿ wewn±trz nazw.
    Zamiast tego mo¿esz u¿yæ poszukiwania z symbolami wieloznacznymi
    (gdzie "?" oznacza dowolny znak, za¶ "*" - 0 lub wiêcej znaków),
    wpisuj±c szukany tekst w cudzys³owie. Wielko¶æ liter zostanie
    uwzglêdniona. Na przyk³ad "*BEL" znajdzie wszystkie turnieje grane
    w Belgii (ale nie w Belgradzie).
  }
  {
    Je¶li chcesz poprawiæ posuniêcie nie zmieniaj±c nastêpnych,
    otwórz okno <a Import>Pobierz partiê</a>, wci¶nij
    <b>Wklej aktualn± partiê</b>, zmieñ b³êdne posuniêcie i wci¶nij
    <b>Pobierz</b>.
  }
  {
    Je¶li plik klasyfikacji debiutowej ECO jest wczytany, mo¿esz przej¶æ
    do ostatniej sklasyfikowanej pozycji w partii za pomoc± polecenia
    <b>Rozpoznaj debiut</b> w menu <b>Partia</b> (klawisz Ctrl+Shift+D).
  }
  {
    Je¶li chcesz sprawdziæ wielko¶æ lub datê modyfikacji pliku
    przed jego otwarciem, u¿yj okna <a Finder>Poszukiwacza plików</a>.
  }
  {
    <a OpReport>Raport debiutowy</a> pozwala dowiedzieæ siê wiêcej
    o konkretnej pozycji. Mo¿esz zobaczyæ wyniki, nazwiska najczê¶ciej
    graj±cych j± zawodników, typowe motywy pozycyjne itd.
  }
  {
    Mo¿esz dodaæ wiêkszo¶æ typowych symboli (!, !?, += itd.) do
    aktualnego posuniêcia lub pozycji za pomoc± skrótów klawiszowych,
    bez potrzeby otwierania okna <a Comment>Edytora komentarzy</a>
    -- np. wci¶niêcie "!" i Enter spowoduje dodanie symbolu "!".
    Na stronie <a Moves>Wprowadzanie posuniêæ</a> mo¿na znale¼æ
    wiêcej informacji.
  }
  {
    Mo¿esz ³atwo przegl±daæ debiuty w bazie w oknie
    <a Tree>Drzewo wariantów</a>. W oknie Statystyka (klawisz Ctrl+I)
    mo¿na znale¼æ informacje o ostatnich wynikach w wariancie oraz
    o partiach granych przez silnych graczy.
  }
  {
    Mo¿esz zmieniæ wielko¶æ szachownicy, naciskaj±c <b>lewo</b> lub <b>prawo</b>
    przy wci¶niêtych klawiszach <b>Ctrl</b> i <b>Shift</b>.
  }
  {
    Po <a Searches>wyszukiwaniu</a> mo¿esz ³atwo przegl±daæ wszystkie
    znalezione partie, naciskaj±c klawisz <b>góra</b> lub <b>dó³</b>
    przy wci¶niêtym <b>Ctrl</b> by obejrzeæ poprzedni±/nastêpn± partiê
    w filtrze.
  }
}

# end of polish.tcl




