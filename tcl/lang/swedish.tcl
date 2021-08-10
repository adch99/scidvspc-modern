# swedish.tcl:
# Text for menu names and status bar help messages in Swedish.
# Part of Scid (Shane's Chess Information Database).
# Contributed by Martin Skj�ldebrand, martin@skjoldebrand.org
# Thanks to: Hans Eriksson, for looking over the translation file

addLanguage W Swedish 1 ;#iso8859-1

proc setLanguage_W {} {

# File menu:
menuText W File "Arkiv" 0
menuText W FileNew "Ny..." 0 {Skapa en ny Scid databas}
menuText W FileOpen "�ppna..." 0 {�ppna en befintlig Scid databas}
menuText W FileClose "St�ng" 0 {St�ng den aktiva Scid databasen}
menuText W FileFinder "S�k filer" 4 {�ppna s�kdialogen}
menuText W FileSavePgn "Spara PGN..." 0 {}
menuText W FileOpenBaseAsTree "�ppna databas som tr�d" 0   {�ppna en databas och anv�nd den i Tr�df�nstret}
menuText W FileOpenRecentBaseAsTree "�ppna senaste databasen som tr�d" 0   {�ppna den senaste databasen och anv�nd den i Tr�df�nstret}
menuText W FileBookmarks "Bokm�rken" 0 {Hantera bokm�rken (kortkommando: Ctrl+B)}
menuText W FileBookmarksAdd "Nytt bokm�rke" 0 \
  {Markera den aktiva st�llningen i partiet}
menuText W FileBookmarksFile "Spara bokm�rke" 0 \
  {Spara bokm�rket f�r den aktiva st�llningen i partiet}
menuText W FileBookmarksEdit "Redigera bokm�rken..." 0 \
  {Redigera bokm�rken}
menuText W FileBookmarksList "Visa bokm�rken som lista" 19 \
  {Visar bokm�rkena som lista, inte undermenyer}
menuText W FileBookmarksSub "Visa bokm�rken i undermenyer" 17 \
  {Visar bokm�rkena som undermenyer, inte lista}
menuText W FileReadOnly "Enbart l�sbar..." 8 \
  {Avl�gsna tempor�rt redigeringsm�jligheterna till databasen}
menuText W FileSwitch "Byt databas" 0 \
  {Byt till en annan �ppnad databas}
menuText W FileExit "Avsluta" 0 {Avsluta Scid}

# Edit menu:
menuText W Edit "Redigera" 0
menuText W EditAdd "L�gg till variant" 0 {Skapa en variant vid denna st�llning}
menuText W EditPasteVar "Klistra Variation" 0
menuText W EditDelete "Radera variant" 0 {Radera en variant vid denna st�llning}
menuText W EditFirst "Skapa huvudvariant" 6 \
  {G�r en av varianterna till huvudvariant}
menuText W EditMain "Skapa nytt textdrag" 11 \
  {G�r en av varianterna till partiforts�ttning}
menuText W EditTrial "Testa variant" 6 \
  {Starta/ stoppa testl�ge, unders�k en id� p� br�det}
menuText W EditStrip "Ta bort" 3 {Avl�gsna kommentarer eller varianter fr�n partiet}
menuText W EditUndo "�ngra" 0 {�ngra senaste �ndring i parti}
menuText W EditRedo "Repetera" 0
menuText W EditStripComments "Kommentarer" 0 \
  {Avl�gsna alla kommentarer och noteringar fr�n partiet}
menuText W EditStripVars "Varianter" 0 {Avl�gsna alla varianter fr�n partiet}
menuText W EditStripBegin "Avl�gsna tidigare drag" 9 \
  {Avl�gsna dragen fram till den aktuella st�llningen}
menuText W EditStripEnd "Avl�gsna resterande drag" 0 \
  {Avl�gsna partiets resterande drag}
# ====== TODO To be translated ======
menuText W EditFlip "Flip Board" 0 {Flip the board}
menuText W EditReset "T�m Clipbase" 1 \
  {T�mmer den tempor�ra databasen}
menuText W EditCopy "Kopiera partiet till Clipbase" 21 \
  {Kopierar det aktuella partiet till Clipbase}
menuText W EditPaste "Klistra in det senaste Clipbasepartiet" 8 \
  {Klistrar in det senaste tillagda i Clipbase i den aktiva databasen}
menuText W EditPastePGN "Klistra in Clipbasetext som PGNparti..." 10 \
  {Tolka Clipbasetexten som ett parti i PGN notation och klistra in det h�r}
menuText W EditSetup "Skapa st�llning..." 0 \
  {Skapa en utg�ngsst�llning f�r aktuellt parti}
menuText W EditCopyBoard "Kopiera st�llning" 0 \
  {Kopiera den aktuella st�llningen i FEN kod till urklippshanteraren}
menuText W EditCopyPGN "Kopiera PGN" 0 {}
menuText W EditPasteBoard "Klistra in utg�ngsst�llning" 10 \
  {Klistra in st�llningen fr�n aktuellt parti i den tempor�ra databasen}

# Game menu:
menuText W Game "Partier" 0
menuText W GameNew "Nytt parti" 0 \
  {�terst�ll br�det inf�r ett nytt parti (raderar alla �ndringar)}
menuText W GameFirst "Ladda det f�rsta partiet" 10 {Laddar det f�rsta partiet i filtret}
menuText W GamePrev "Ladda f�reg�ende parti" 7 {Ladda f�reg�ende parti i filtret}
menuText W GameReload "B�rja om partiet" 0 \
  {�terst�ll partiet (raderar alla �ndringar)}
menuText W GameNext "Ladda n�sta parti" 6 {Ladda n�sta parti i filtret}
menuText W GameLast "Ladda det sista partiet" 10 {Ladda det sista partiet i filtret}
menuText W GameRandom "Ladda parti slumpm�ssigt" 14 \
  {Ladda ett av datorn slumpm�ssigt valt parti}
menuText W GameNumber "Ladda parti nummer..." 6 \
  {Ladda ett parti genom att ange dess nummer}
menuText W GameReplace "Spara: Ers�tt parti..." 7 \
  {Spara partiet och ers�tt tidigare version}
menuText W GameAdd "Spara: Nytt parti..." 1 \
  {Spara ett nytt parti}
menuText W GameInfo "St�ll Spelinformation" 0
menuText W GameBrowse "Bl�ddra bland spel" 0
menuText W GameList "Visa alla spel" 0
# ====== TODO To be translated ======
menuText W GameDelete "Delete Game" 0
menuText W GameDeepest "Identifiera �ppningen" 0 \
  {G� till den mest detaljerade st�llningen i ECO boken}
menuText W GameGotoMove "G� till drag nummer..." 8 \
  {G� till ett specifikt drag i partiet}
menuText W GameNovelty "Hitta nyhet..." 7 \
  {Hitta det f�rsta draget i partiet som inte spelats tidigare}

# Search Menu:
menuText W Search "S�k" 0
menuText W SearchReset "�terst�ll s�kfilter" 0 {�terst�ll s�kfiltret s� att alla partiet ing�r}
menuText W SearchNegate "Omv�nt filter" 0 {Ta med partier som utesluts av filtret}
menuText W SearchEnd "Flytta till sista filter" 0
menuText W SearchCurrent "Aktuell position..." 8 {S�k partier med aktuell position p� br�det}
menuText W SearchHeader "I huvud..." 2 {Anv�nd fast information (spelare, evenemang, plats, mm)}
menuText W SearchMaterial "Material/st�llning..." 0 {S�kning baserad p� material eller st�llning}
menuText W SearchMoves {Drag} 0 {}
menuText W SearchUsing "Anv�nd s�kfil..." 10 {Anv�nd en fil med lagrade s�kvillkor}

# Windows menu:
menuText W Windows "F�nster" 0
menuText W WindowsGameinfo "Visa partiinformation" 0 {Show/hide the game info panel}
menuText W WindowsComment "Kommentarseditor" 0 {�ppna/ st�ng kommentarseditorn}
menuText W WindowsGList "Partilista" 5 {�ppna/ st�ng partilistan}
menuText W WindowsPGN "PGN f�nster" 0 {�ppna/ st�ng PGN f�nstret}
menuText W WindowsCross "Resultattabell" 0 {Visa en resultattabell f�r den aktuella turneringen}
menuText W WindowsPList "Spelarf�rteckning" 7 {�ppna/ st�ng en f�rteckning �ver spelarna i den aktiva databasen}
menuText W WindowsTmt "Turneringar" 0 {Lista turneringar}
menuText W WindowsSwitcher "Databasv�xlaren" 0 \
  {�ppna/ st�ng databasv�xlaren}
menuText W WindowsMaint "Verktygsf�nster" 0 \
  {�ppna/ st�ng verktygsf�nstret}
menuText W WindowsECO "ECO f�nster" 0 {�ppna/ st�ng ECO bl�ddraren}
menuText W WindowsStats "Statistikf�nster" 0 \
  {�ppna/ st�ng statistikf�nstret}
menuText W WindowsTree "Tr�df�nster" 2 {�ppna/ st�ng varianttr�dets f�nster}
menuText W WindowsTB "Slutspelsdatabas" 2 \
  {�ppna/ st�ng slutspelsdatabasf�nstret}
menuText W WindowsBook "Bokf�nster" 0 {�ppna/st�ng Bokf�nstret}
menuText W WindowsCorrChess "Korrespondensf�nster" 0 {�ppna/st�ng Korrespondensf�nstret}
# ====== TODO To be translated ======
menuText W Analyse "Analyse" 0
# ====== TODO To be translated ======
menuText W AnalyseEngineList "Analysis Engines" 0 {Configure analysis engines}
# ====== TODO To be translated ======
menuText W AnalyseRating "Player Ratings" 0 {Graph the rating history of the current game players}
# ====== TODO To be translated ======
menuText W AnalyseScore "Score Graph" 0 {Show the score graph window}
# ====== TODO To be translated ======
menuText W AnalyseStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText W AnalyseStartEngine2 "Start engine 2" 0  {Start engine 2}
# ====== TODO To be translated ======
menuText W AnalysePlayerReport "Player Report" 3 {Generate a player report}
# ====== TODO To be translated ======
menuText W AnalyseOpReport "Opening Report" 0 {Generate an opening report for the current position}

# Tools menu:
menuText W Tools "Verktyg" 0
menuText W ToolsAnalysis "Analysmotor..." 6 \
  {Starta/ stoppa en analysmotor}
menuText W ToolsEmail "Eposthanterare" 0 \
  {�ppna/ st�ng eposthanteraren}
menuText W ToolsFilterGraph "Filterdiagram" 7 \
  {�ppna/ st�ng filterdiagramf�nstret}
menuText W ToolsAbsFilterGraph "Absolut Filtergraf" 7 {�ppna/st�ng filtergraff�nstret f�r absolutv�rden}
menuText W ToolsOpReport "�ppningsrapport" 0 \
  {Skapa en �ppningsrapport utifr�n den aktuella st�llningen}
menuText W ToolsTracker "S�k material"  0 {�ppnar dialog f�r att s�ka efter en viss materiell balans}
menuText W ToolsTraining "Tr�ning"  0 {Tr�ningsverktyg (taktik, �ppningar,...) }
menuText W ToolsComp "Turnering" 2 {Schackmotorturnering}
menuText W ToolsTacticalGame "Taktiskt parti"  0 {Spela ett parti med taktik}
menuText W ToolsSeriousGame "Seri�st parti"  0 {Spela ett seri�st parti}
menuText W ToolsTrainTactics "Taktik"  0 {L�sa taktik}
menuText W ToolsTrainCalvar "Variantber�kning"  0 {Variantber�kningstr�ning}
menuText W ToolsTrainFindBestMove "Hitta b�st drag"  0 {Hitta b�sta draget}
menuText W ToolsTrainFics "Spela p� Internet"  0 {Spela p� freechess.org}
menuText W ToolsBookTuning "Bokfininst�llning" 0 {Bokfininst�llning}
menuText W ToolsMaint "Databasverktyg" 0 {Scids databasverktyg}
menuText W ToolsMaintWin "Verktygsf�nster" 0 \
  {�ppna/ st�ng verktygsf�nstret}
menuText W ToolsMaintCompact "Komprimera databasen..." 0 \
  {Komprimera databasen, avl�gsna raderade partier och oanv�nda namn}
menuText W ToolsMaintClass "Klassificera partier enligt ECO..." 2 \
  {Klassificera om alla partier enligt ECO-systemet}
menuText W ToolsMaintSort "Sortera databasen..." 0 \
  {Sortera partierna i den aktiva databasen}
menuText W ToolsMaintDelete "Radera dubbletter..." 0 \
  {S�k dubbletter och markera dem som raderingsbara}
menuText W ToolsMaintTwin "S�k dubbletter" 0 \
  {�ppna/ st�ng dubblettf�nstret f�r att s�ka dubblettpartier}
menuText W ToolsMaintNameEditor "Redigera namn" 0 \
  {Redigera spelarnamn utifr�n r�ttstavningsfilen}
menuText W ToolsMaintNamePlayer "Stavningskontrollera namn..." 22 \
  {Stavningskontrollera namn utifr�n r�ttstavningsfilen}
menuText W ToolsMaintNameEvent "Stavningskontrollera evenemang..." 21 \
  {Stavningskontrollera evenemang utifr�n r�ttstavningsfilen}
menuText W ToolsMaintNameSite "Stavningskontrollera platser..." 21 \
  {Stavningskontrollera platser utifr�n r�ttstavningsfilen}
menuText W ToolsMaintNameRound "Stavningskontrollera ronder..." 21 \
  {Stavningskontrollera ronder utifr�n r�ttstavningsfilen}
menuText W ToolsMaintFixBase "Fixa trasig databas" 0 {F�rs�k att fixa en trasig databas}
menuText W ToolsConnectHardware "Anslut h�rdvara" 0 {Anslut extern h�rdvara}
menuText W ToolsConnectHardwareConfigure "Konfigurera..." 0 {Konfigurera extern h�rdvara och anslutning}
menuText W ToolsConnectHardwareNovagCitrineConnect "Anslut Novag Citrine" 0 {Anslut Novag Citrine}
menuText W ToolsConnectHardwareInputEngineConnect "Anslut Inmatningsmotor" 0 {Anslut Inmatningsmotor (t ex DGT)}
menuText W ToolsPInfo "Spelarinformation"  0 \
  {�ppna/ uppdatera spelarinformation}
menuText W ToolsPlayerReport "Spelarrapport" 3 \
  {Skapa en spelarrapport}
menuText W ToolsRating "Ratingdiagram" 0 \
  {Skapa ett ratingdiagram f�r spelarna i partiet}
menuText W ToolsScore "Resultatdiagram" 8 {Visa resultatdiagrammet}
menuText W ToolsExpCurrent "Exportera aktuellt parti" 1 \
  {Spara aktuellt parti till en textfil}
menuText W ToolsExpCurrentPGN "Exportera till PGN..." 15 \
  {Spara aktuellt parti till en PGN-fil}
menuText W ToolsExpCurrentHTML "Exportera till HTML..." 15 \
  {Spara aktuellt parti till en HTML-fil}
menuText W ToolsExpCurrentHTMLJS "Exportera till HTML och JavaScript-fil..." 15 {Spara aktuellt parti till en HTML och JavaScript-fil}
menuText W ToolsExpCurrentLaTeX "Exportera till LaTeX..." 15 \
  {Spara aktuellt parti till en LaTeX-fil}
# ====== TODO To be translated ======
menuText W ToolsExpFilter "Exportera alla filtrerade partier" 15 \
  {Spara alla filterade partier till en textfil}
menuText W ToolsExpFilterPGN "Exportera till PGN..." 15 \
  {Spara alla filterade partier till en PGN-fil}
menuText W ToolsExpFilterHTML "Exportera till HTML..." 15 \
  {Spara alla filterade partier till en HTML-fil}
menuText W ToolsExpFilterHTMLJS "Exportera filtrerade till HTML och JavaScript-fil..." 17 {Spara alla filtrerade partier till en HTML och JavaScript-fil}
menuText W ToolsExpFilterLaTeX "Exportera till LaTeX..." 15 \
  {Spara alla filterade partier till en LaTeX-fil}
# ====== TODO To be translated ======
menuText W ToolsExpFilterEPD "Export Filter to EPD/FEN" 17 {Write all filtered games to an EPD File}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
menuText W ToolsExpFilterGames "Export Gamelist to Text" 19 {Print a formatted Gamelist.}
menuText W ToolsImportOne "Importera ett parti i PGN-format..." 0 \
  {Importera ett parti i PGN-format}
menuText W ToolsImportFile "Importera flera partier i PGN-format..." 16 \
  {Importera flera partier i PGN-format fr�n en fil}
menuText W ToolsStartEngine1 "Starta schackmotor 1" 0  {Starta schackmotor 1}
menuText W ToolsStartEngine2 "Starta schackmotor 2" 0  {Starta schackmotor 2}
menuText W ToolsScreenshot "Skapa en Sk�rmdump" 0
menuText W Play "Spela" 0
menuText W CorrespondenceChess "Korrespondensschack" 0 {Funktioner f�r eMail och Xfcc baserad Korrespondensschack}
menuText W CCConfigure "Konfigurera..." 0 {Konfigurera externa verktyg och generella inst�llningar}
menuText W CCConfigRelay "Konfigurera observationer..." 10 {Konfigurera partier att observera}
menuText W CCOpenDB "�ppna Databas..." 0 {�ppna standardkorrespondensdatabasen}
menuText W CCRetrieve "H�mta Partier" 0 {H�mta partier via extern (Xfcc-)hj�lpare}
menuText W CCInbox "Hantera Inkorg" 0 {Hantera alla filer i Scids Inkorg}
menuText W CCSend "Skicka Drag" 0 {Skicka ditt drag via eMail eller extern (Xfcc-)hj�lpare}
menuText W CCResign "Ge upp" 0 {Ge upp (inte via eMail)}
menuText W CCClaimDraw "H�vda Remi" 0 {Skicka drag och h�vda Remi (inte via eMail)}
menuText W CCOfferDraw "Erbjud Remi" 0 {Skicka drag och erbjud Remi (inte via eMail)}
menuText W CCAcceptDraw "Acceptera Remi" 0 {Acceptera en erbjuden Remi (inte via eMail)}
menuText W CCNewMailGame "Nytt eMail-parti..." 0 {Starta ett nytt eMail-parti}
menuText W CCMailMove "Skicka Drag..." 0 {Skicka draget via eMail till motst�ndaren}
menuText W CCGamePage "Partisida..." 0 {Starta upp partiet via webl�saren}
menuText W CCEditCopy "Kopiera partilista till Clipbase" 0 {Kopiera partierna som CSV-lista till Clipbase}


# Options menu:
menuText W Options "Alternativ" 2
menuText W OptionsBoard "Br�det" 0 {�ndra br�dets utseende}
menuText W OptionsColour "Bakgrundsf�rg" 0 {Standardtextf�rg}
# ====== TODO To be translated ======
menuText W OptionsBackColour "Background" 0 {Default text widget color}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
menuText W OptionsMainLineColour "Mainline Arrows" 0 {Mainline arrows}
# ====== TODO To be translated ======
menuText W OptionsVarLineColour "Variation Arrows" 0 {Variation arrows}
# ====== TODO To be translated ======
menuText W OptionsEngineLineColour "Engine Arrows" 0 {Engine arrows}
# ====== TODO To be translated ======
menuText W OptionsRowColour "Rows" 0 {Default tree/book row color}
# ====== TODO To be translated ======
menuText W OptionsHighlightColour "Highlight" 0 {Default text highlight color}
# ====== TODO To be translated ======
menuText W OptionsSwitcherColour "Switcher" 0 {Default db switcher color}
# ====== TODO To be translated ======
menuText W OptionsProgressColour "Progressbar" 0 {Default progressbar color}
# ====== TODO To be translated ======
menuText W OptionsScoreColour "Score Graph" 0 {}
# ====== TODO To be translated ======
menuText W OptionsScoreBarColour "Score Graph current" 0 {}
menuText W OptionsNames "Spelarnamn..." 0 {Redigera spelares namn}
menuText W OptionsExport "Export" 0 {�ndra exportalternativ}
menuText W OptionsFonts "Typsnitt" 0 {�ndra typsnitt}
menuText W OptionsFontsRegular "Normal" 0 {�ndra det normala typsnittet}
menuText W OptionsFontsMenu "Menu" 0 {�ndra menytypsnittet}
menuText W OptionsFontsSmall "Liten" 0 {�ndra det lilla typsnittet}
menuText W OptionsFontsFixed "Fixerad" 0 {�ndra det fixerade typsnittet}
menuText W OptionsGInfo "Partiinformation" 0 {Alternativ f�r partiinformation}
menuText W OptionsFics "FICS" 0
menuText W OptionsFicsAuto "Autopronomera Drottningen" 0
# ====== TODO To be translated ======
menuText W OptionsFicsClk "Store Clock times" 0
# ====== TODO To be translated ======
menuText W OptionsFicsColour "Text Colour" 0
# ====== TODO To be translated ======
menuText W OptionsFicsSize "Board Size" 0
# ====== TODO To be translated ======
menuText W OptionsFicsButtons "User Buttons" 0
# ====== TODO To be translated ======
menuText W OptionsFicsCommands "Init Commands" 0
# ====== TODO To be translated ======
menuText W OptionsFicsNoRes "No Results" 0
# ====== TODO To be translated ======
menuText W OptionsFicsNoReq "No Requests" 0
# ====== TODO To be translated ======
menuText W OptionsFicsPremove "Allow Premove" 0
menuText W OptionsLanguage "Spr�k" 0 {V�lj spr�k}
menuText W OptionsMovesTranslatePieces "�vers�tt pj�ser" 0 {�vers�tt f�rsta bokstaven f�r pj�ser}
menuText W OptionsMovesHighlightLastMove "Markera senaste draget" 0 {Markera senaste draget}
menuText W OptionsMovesHighlightLastMoveDisplay "Visa" 0 {Visa senaste markerade draget}
menuText W OptionsMovesHighlightLastMoveWidth "Bredd" 0 {Tjockhet p� rad}
menuText W OptionsMovesHighlightLastMoveColor "F�rg" 0 {F�rg p� rad}
# ====== TODO To be translated ======
menuText W OptionsMovesColorSelected "Color Selected Square" 0 {Color move}
menuText W OptionsMoves "Drag" 0 {Alternativ f�r dragangivelse}
menuText W OptionsMovesAsk "Fr�ga f�re ers�tt drag" 0 \
  {Fr�ga innan du ers�tter befintliga drag}
menuText W OptionsMovesAnimate "F�rdr�jning vid manuellt spel" 1 \
  {Ange tid mellan varje drag n�r dragen g�rs automatiskt}
menuText W OptionsMovesDelay "F�rdr�jning vid automatspel..." 1 \
  {Ange f�rdr�jning mellan dragen n�r datorn spelar sj�lv}
menuText W OptionsMovesCoord "Koordinater" 0 \
  {Acceptera koordinater ("g1f3") vid dragangivelse}
menuText W OptionsShowVarPopup "Visa Variantf�nster" 0 {Starta/Avsluta visningen av ett Variantf�nster}
menuText W OptionsMovesSpace "L�gg till mellanslag efter dragnummer" 0 {L�gg till mellanslag efter dragnummer}
menuText W OptionsMovesKey "Tangentkomplettering" 0 \
  {Starta/ st�ng av dragkomplettering vid tangentinmatning}
menuText W OptionsMovesShowVarArrows "Visa pilar f�r variationer" 0 {V�xlar p�/av pilar som visar drag i variationer}
menuText W OptionsNumbers "Talformat" 3 {V�lj hur tal visas}
menuText W OptionsStartup "Start" 3 {V�lj vilka f�nster som ska �ppnas vid start}
menuText W OptionsTheme "Tema" 0 {�ndra utseende p� gr�nssnitt}
menuText W OptionsWindows "F�nster" 1 {F�nsteralternativ}
menuText W OptionsWindowsIconify "Minimera automatiskt" 5 \
  {Minimera alla f�nster n�r huvudf�nstret minimeras}
menuText W OptionsWindowsRaise "Autofokus" 0 \
  {Visa �ter vissa f�nster (t ex. resultatr�knare) automatiskt n�r de d�ljs}
menuText W OptionsSounds "Ljud..." 2 {Konfigurera ljud f�r att annonsera drag}
menuText W OptionsWindowsDock "Dockningsf�nster" 0 {Dockningsf�nster}
menuText W OptionsWindowsSaveLayout "Spara layout" 0 {Sparar layout}
menuText W OptionsWindowsRestoreLayout "�terst�ll layout" 0 {�terst�ller layout}
menuText W OptionsWindowsShowGameInfo "Visa partiinformation" 0 {Visar partiinformation}
menuText W OptionsWindowsAutoLoadLayout "Automatiskt �ppna f�rsta layouten" 0 {�ppnar automatiskt f�rsta layouten vid uppstart}
# todo
menuText W OptionsWindowsAutoResize "Auto resize board" 0 {}
# ====== TODO To be translated ======
menuText W OptionsWindowsFullScreen "Fullscreen" 0 {Toggle fullscreen mode}
menuText W OptionsToolbar "Verktygsf�lt" 0 \
  {Visa/ d�lj huvudf�nstrets verktygsf�lt}
menuText W OptionsECO "Ladda ECO fil..." 7 {Ladda ECO-klassificeringen vid start}
menuText W OptionsSpell "Ladda R�ttstavningsfil..." 7 \
  {Ladda r�ttstavningsfilen vid start}
menuText W OptionsTable "Katalog f�r slutspelsdatabaser..." 0 \
  {V�lj en fil som inneh�ller en slutspelsdatabas; alla �vriga filer i samma katalog kommer att anv�ndas}
menuText W OptionsRecent "Senast anv�nda filer..." 16 \
  {�ndra antalet senast anv�nda filer som visas i Arkivmenyn}
menuText W OptionsBooksDir "�ppningsbokskatalog..." 0 {Anger �ppningsbokskatalogen}
menuText W OptionsTacticsBasesDir "Taktikbaskatalog..." 0 {Anger Taktikbaskatalog (f�r tr�ning)}
menuText W OptionsInformant "Konfigurera Informant-parametrar" 0
menuText W OptionsSave "Spara alternativ" 7 \
  "Spara alla alternativ till en inst�llningsfil"
# ====== TODO To be translated ======
menuText W OptionsSaveBases "Save Bases as Default" 0
menuText W OptionsAutoSave "Autospara vid avslut" 1 \
  {Spara alla alternativ n�r du avslutar Scid}

# Help menu:
menuText W Help "Hj�lp" 0
menuText W HelpContents "Inneh�ll" 0 {Visa inneh�ll}
menuText W HelpIndex "Index" 0 {Hj�lpsystemets indexsida}
menuText W HelpGuide "Snabbguide" 0 {Visa snabbguiden}
menuText W HelpHints "Tips" 0 {Visa tips}
menuText W HelpContact "Kontaktinformation" 0 {Visa kontaktinformation}
menuText W HelpTip "Dagens tips" 0 {Anv�ndbara Scid tips}
menuText W HelpStartup "Startf�nster" 5 {Visa startf�nstret}
menuText W HelpAbout "Om Scid" 0 {Information om Scid}

# Game info box popup menu:
menuText W GInfoHideNext "D�lj n�sta drag" 0
# ====== TODO To be translated ======
menuText W GInfoShow "Side to Move" 0
# ====== TODO To be translated ======
menuText W GInfoCoords "Toggle Coords" 0
menuText W GInfoMaterial "Visa materialv�rden" 0
menuText W GInfoFEN "Visa FEN" 5
menuText W GInfoMarks "Visa f�rgade f�lt och pilar" 22
menuText W GInfoWrap "Radbrytning" 0
menuText W GInfoFullComment "Visa fullst�ndiga kommentarer" 18
menuText W GInfoPhotos "Visa bilder" 5 ;
menuText W GInfoTBNothing "Slutspelsdatabaser: inget" 20
menuText W GInfoTBResult "Slutspelsdatabaser: endast resultat" 28
menuText W GInfoTBAll "Slutspelsdatabaser: resultat och b�sta drag" 33
menuText W GInfoDelete "�terta/Radera detta parti" 0
menuText W GInfoMark "(Av-)Markera detta parti" 5
# ====== TODO To be translated ======
menuText W GInfoMenuBar "Menu Bar"  0
# ====== TODO To be translated ======
menuText W GInfoToolBar "Tool Bar"  0
# ====== TODO To be translated ======
menuText W GInfoButtonBar "Button Bar"  0
# ====== TODO To be translated ======
menuText W GInfoStatusBar "Status Bar"  0
# ====== TODO To be translated ======
translate W FlipBoard {Flip board}
# ====== TODO To be translated ======
translate W RaiseWindows {Raise windows}
# ====== TODO To be translated ======
translate W AutoPlay {Autoplay}
# ====== TODO To be translated ======
translate W TrialMode {Trial mode}
# ====== TODO To be translated ======
translate W KeepOpen {Keep open after startup}

# General buttons:
# ====== TODO To be translated ======
translate W Apply {Apply}
translate W Back {Tillbaka}
translate W Browse {Bl�ddra}
translate W Cancel {Avbryt}
translate W Continue {Forts�tt}
translate W Clear {Rensa}
translate W Close {St�ng}
translate W Contents {Inneh�ll}
translate W Defaults {Standard}
translate W Delete {Radera}
translate W Graph {Diagram}
translate W Help {Hj�lp}
translate W Import {Importera}
translate W Index {Index}
translate W LoadGame {Ladda parti}
translate W BrowseGame {Bl�ddra genom partier}
translate W MergeGame {Sl� samman parti}
translate W MergeGames {Sl� samman partier}
translate W Preview {F�rhandsgranska}
translate W Revert {�ngra inmatning}
translate W Save {Spara}
# ====== TODO To be translated ======
translate W DontSave {Don't Save}
translate W Search {S�k}
translate W Stop {Stoppa}
translate W Store {Spara}
translate W Update {Uppdatera}
translate W ChangeOrient {�ndra f�nstrets orientering}
translate W ShowIcons {Visa Ikoner} ;# ***
# ====== TODO To be translated ======
translate W ConfirmCopy {Confirm Copy}
translate W None {Ingen}
translate W First {F�rsta}
translate W Current {Aktuella}
translate W Last {Sista}
# ====== TODO To be translated ======
translate W Font {Font}
# ====== TODO To be translated ======
translate W Change {Change}
# ====== TODO To be translated ======
translate W Random {Random}

# General messages:
translate W game {parti}
translate W games {partier}
translate W move {drag}
translate W moves {drag}
translate W all {alla}
translate W Yes {Ja}
translate W No {Nej}
translate W Both {B�da}
translate W King {Kung}
translate W Queen {Dam}
translate W Rook {Torn}
translate W Bishop {L�pare}
translate W Knight {Springare}
translate W Pawn {Bonde}
translate W White {Vit}
translate W Black {Svart}
translate W Player {Spelare}
translate W Rating {Rating}
translate W RatingDiff {Ratingskillnad (Vit - Svart)}
translate W AverageRating {Medelrating}
translate W Event {Evenemang}
translate W Site {Plats}
translate W Country {Land}
translate W IgnoreColors {Ignorera f�rger}
# ====== TODO To be translated ======
translate W MatchEnd {End pos only}
translate W Date {Datum}
translate W EventDate {Evenemangsdatum}
translate W Decade {Decennium}
translate W Year {�r}
translate W Month {M�nad}
translate W Months {Januari Februari Mars April Maj Juni Juli Augusti September Oktober November December}
translate W Days {S�n M�n Tis Ons Tor Fre L�r}
translate W YearToToday {Idag}
translate W Result {Resultat}
translate W Round {Rond}
translate W Length {L�ngd}
translate W ECOCode {ECO kod}
translate W ECO {ECO}
translate W Deleted {Raderad}
translate W SearchResults {S�kresultat}
translate W OpeningTheDatabase {�ppnar databas}
translate W Database {Databas}
translate W Filter {Filter}
# ====== TODO To be translated ======
translate W Reset {Reset}
translate W IgnoreCase {Ignorera textstorlek}
translate W noGames {inga partier}
translate W allGames {alla partier}
translate W empty {tom}
translate W clipbase {tempor�r databas}
translate W score {resultat}
translate W Start {Start}
translate W StartPos {Utg�ngsst�llning}
translate W Total {Totalt}
translate W readonly {bara l�sbar} ;# ***
# ====== TODO To be translated ======
translate W altered {altered}
# ====== TODO To be translated ======
translate W tagsDescript {Extra tags (eg: Annotator "Anand")}
# ====== TODO To be translated ======
translate W prevTags {Use previous}
# ====== TODO To be translated ======
translate W value {Value}

# Standard error messages:
translate W ErrNotOpen {Databasen �r inte �ppen.}
translate W ErrReadOnly {Databasen �r skrivskyddad. Du kan inte �ndra i den.}
translate W ErrSearchInterrupted {S�kningen avbr�ts; resultatet �r inte fullst�ndigt.}

# Game information:
translate W twin {dubblett}
translate W deleted {raderad}
translate W comment {kommentar}
translate W hidden {dold}
translate W LastMove {Senaste draget}
translate W NextMove {N�sta}
translate W GameStart {Utg�ngsst�llning}
translate W LineStart {Varianten b�rjar}
translate W GameEnd {Slutst�llning}
translate W LineEnd {Varianten slut}

# Player information:
translate W PInfoAll {alla partier}
translate W PInfoFilter {filtrerade partier}
translate W PInfoAgainst {Resultat mot}
translate W PInfoMostWhite {De vanligaste �ppningarna som vit}
translate W PInfoMostBlack {De vanligaste �ppningarna som svart}
translate W PInfoRating {Ratinghistoria}
translate W PInfoBio {Biografisk information}
translate W PInfoEditRatings {Redigera rating}
# ====== TODO To be translated ======
translate W PinfoEditName {Edit Name}
# ====== TODO To be translated ======
translate W PinfoLookupName {Lookup Name}

# Tablebase information:
translate W Draw {Remi}
translate W stalemate {patt}
# ====== TODO To be translated ======
translate W checkmate {checkmate}
translate W withAllMoves {med alla drag}
translate W withAllButOneMove {med alla drag utom ett}
translate W with {med}
translate W only {bara}
translate W lose {f�rlust}
translate W loses {f�rluster}
translate W allOthersLose {alla andra drag f�rlorar}
translate W matesIn {med matt i}
translate W longest {l�ngst}
translate W WinningMoves {Vinstdrag}
translate W DrawingMoves {Remidrag}
translate W LosingMoves {F�rlustdrag}
translate W UnknownMoves {Ok�nt resultat}

# Tip of the day:
translate W Tip {Tips}
translate W TipAtStartup {Tips vid start}

# Tree window menus:
menuText W TreeFile "Fil" 0
menuText W TreeFileFillWithBase "Fyll Cache med databas" 0 {Fyll Cachefilen med alla partier i den aktuella databasen}
menuText W TreeFileFillWithGame "Fyll Cache med parti" 0 {Fyll Cachefilen med aktuellt parti i den aktuella databasen}
menuText W TreeFileCacheInfo "Cacheinformation" 0 {F� information om Cacheanv�ndning}
menuText W TreeFileSave "Spara cachefil" 0 {Spara tr�dcache (*.stc)-filen}
menuText W TreeFileFill "Fyll cachefil" 0 \
{Fyll cachefilen med vanliga �ppningar}
menuText W TreeFileBest "Lista b�sta partier" 0 {Visa lista �ver de b�sta partierna i tr�det}
menuText W TreeFileGraph "Diagramf�nster" 0 {Visa diagrammet f�r denna gren i tr�det}
menuText W TreeFileCopy "Kopiera tr�d till urklipp" 1 \
  {Kopierar tr�drelaterad statistik till urklipp}
menuText W TreeFileClose "St�ng tr�df�nstret" 0 {St�ng tr�df�nstret}
menuText W TreeMask "S�kmask" 0
menuText W TreeMaskNew "Ny" 0 {Ny s�kmask}
menuText W TreeMaskOpen "�ppna" 0 {�ppna s�kmask}
menuText W TreeMaskOpenRecent "�ppna senaste" 0 {�ppna senaste s�kmasken}
menuText W TreeMaskSave "Spara" 0 {Spara s�kmask}
menuText W TreeMaskClose "St�ng" 0 {St�ng s�kmask}
# ====== TODO To be translated ======
menuText W TreeMaskFillWithLine "Fill with line" 0 {Fill mask with all previous moves}
menuText W TreeMaskFillWithGame "Fyll med parti" 0 {Fyll s�kmask med parti}
menuText W TreeMaskFillWithBase "Fyll med databas" 0 {Fyll s�kmask med alla partier i databasen}
menuText W TreeMaskInfo "Info om s�kmask" 0 {Visa statistik f�r aktuell s�kmask}
menuText W TreeMaskDisplay "Visa s�kmaskkarta" 0 {Visa s�kmaskdata i tr�dform}
menuText W TreeMaskSearch "S�k" 0 {S�k i aktuell s�kmask}
menuText W TreeSort "Sortera" 0
menuText W TreeSortAlpha "Alfabetiskt" 0
menuText W TreeSortECO "ECO kod" 0
menuText W TreeSortFreq "Frekvens" 0
menuText W TreeSortScore "Resultat" 0
menuText W TreeOpt "Alternativ" 0
menuText W TreeOptSlowmode "L�ngsam mod" 0 {L�ngsam mod f�r uppdateringar (h�g noggrannhet)}
menuText W TreeOptFastmode "Snabb mod" 0 {Snabb mod f�r uppdateringar (ingen dragtranspositionering)}
menuText W TreeOptFastAndSlowmode "Snabb och l�ngsam mod" 0 {Snabb mod sedan l�ngsam mod f�r uppdateringar}
menuText W TreeOptStartStop "Automatisk uppdatering" 0 {V�xlar automatisk uppdatering av tr�df�nstret}
menuText W TreeOptLock "L�s" 0 {L�s/ l�s upp tr�det f�r den aktuella databasen}
menuText W TreeOptTraining "Tr�na" 0 {Starta/ st�ng av tr�ningsl�ge}
# ====== TODO To be translated ======
menuText W TreeOptShort "Short Display" 0 {Don't show ELO information}
menuText W TreeOptAutosave "Spara cache filen automatiskt" 0 \
  {Spara cachefilen automatiskt n�r tr�df�nstret st�ngs}
# ====== TODO To be translated ======
menuText W TreeOptAutomask "Auto-Load Mask" 0 "Auto-Load most recent mask with a tree open."
menuText W TreeOptCacheSize "Cachestorlek" 0 {Ange Cachestorleken}
# ====== TODO To be translated ======
menuText W TreeOptShowBar "Show Progress Bar" 0 "Show tree progress bar."
# ====== TODO To be translated ======
menuText W TreeOptShowFrame "Show Button Bar" 0 "Show tree button bar."
# ====== TODO To be translated ======
menuText W TreeOptSortBest "Sort Best Games" 0 "Sort Best Games by ELO."
menuText W TreeHelp "Hj�lp" 0
menuText W TreeHelpTree "Tr�dhj�lp" 0
menuText W TreeHelpIndex "Hj�lpindex" 0

translate W SaveCache {Spara cache}
translate W Training {Tr�na}
translate W LockTree {L�s}
translate W TreeLocked {L�st}
translate W TreeBest {B�st}
translate W TreeBestGames {B�sta partier i tr�det}
# ====== TODO To be translated ======
translate W TreeAdjust {Adjust Filter}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate W TreeTitleRow      { Drag       Frekvens         Res. Remi Elo~  Niv�   �r~ ECO}
translate W TreeTitleRowShort { Drag       Frekvens         Res. Remi}
translate W TreeTotal: {TOTALT:}
translate W DoYouWantToSaveFirst {Vill du spara f�rst}
translate W AddToMask {L�gg till i S�kmask}
translate W RemoveFromMask {Ta bort fr�n S�kmask}
# TODO
translate W AddThisMoveToMask {Add Move to Mask}
translate W SearchMask {S�k i s�kmask}
translate W DisplayMask {Visa s�kmask}
translate W Nag {NAG-kod}
translate W Marker {Markera}
translate W Include {Inkludera}
translate W Exclude {Exkludera}
translate W MainLine {Huvudvariant}
translate W Bookmark {Bokm�rke}
translate W NewLine {Ny variant}
translate W ToBeVerified {Att bli verifierad}
translate W ToTrain {Att tr�na}
translate W Dubious {Tveksam}
translate W ToRemove {Att ta bort}
translate W NoMarker {Ingen markering}
translate W ColorMarker {F�rg}
translate W WhiteMark {Vit}
translate W GreenMark {Gr�n}
translate W YellowMark {Gul}
translate W BlueMark {Bl�}
translate W RedMark {R�d}
translate W CommentMove {Kommentera drag}
translate W CommentPosition {Kommentera position}
translate W AddMoveToMaskFirst {L�gg till drag till s�kmask f�rst}
translate W OpenAMaskFileFirst {�ppna en s�kmaskmaskfil f�rst}
# ====== TODO To be translated ======
translate W positions {positions}
translate W Moves {Drag}

# Finder window:
menuText W FinderFile "Fil" 0
menuText W FinderFileSubdirs "S�k i underkataloger" 0
menuText W FinderFileClose "St�ng Fils�karen" 0
menuText W FinderSort "Sortera" 0
menuText W FinderSortType "Typ" 0
menuText W FinderSortSize "Storlek" 0
menuText W FinderSortMod "F�r�ndrad" 0
menuText W FinderSortName "Namn" 0
menuText W FinderSortPath "S�kv�g" 0
menuText W FinderTypes "Typer" 0
menuText W FinderTypesScid "Sciddatabaser" 0
menuText W FinderTypesOld "Sciddatabaser i �ldre format" 0
menuText W FinderTypesPGN "PGN-filer" 0
menuText W FinderTypesEPD "EPD-filer" 0
menuText W FinderHelp "Hj�lp" 0
menuText W FinderHelpFinder "Hj�lp f�r Fils�karen" 0
menuText W FinderHelpIndex "Hj�lpindex" 0
translate W FileFinder {Fils�karen}
translate W FinderDir {Katalog}
translate W FinderDirs {Kataloger}
translate W FinderFiles {Filer}
translate W FinderUpDir {upp}
translate W FinderCtxOpen {�ppna}
translate W FinderCtxBackup {Spara}
translate W FinderCtxCopy {Kopiera}
translate W FinderCtxMove {Flytta}
translate W FinderCtxDelete {Ta bort}
# ====== TODO To be translated ======
translate W FinderDirOpen {Open Directory}

# Player finder:
menuText W PListFile "Fil" 0
menuText W PListFileUpdate "Uppdatera" 0
menuText W PListFileClose "St�ng spelarf�rteckningen" 1
menuText W PListSort "Sortera" 0
menuText W PListSortName "Namn" 0
menuText W PListSortElo "Elo" 0
menuText W PListSortGames "Partier" 0
menuText W PListSortOldest "�ldst" 0
menuText W PListSortNewest "Yngst" 0

# Tournament finder:
menuText W TmtFile "Fil" 0
menuText W TmtFileUpdate "Uppdatera" 0
menuText W TmtFileClose "St�ng turneringshanteraren" 0
menuText W TmtSort "Sortera" 0
menuText W TmtSortDate "Datum" 0
menuText W TmtSortPlayers "Spelare" 0
menuText W TmtSortGames "Partier" 0
menuText W TmtSortElo "Elo" 0
menuText W TmtSortSite "Plats" 0
menuText W TmtSortEvent "Evenemang" 1
menuText W TmtSortWinner "Vinnare" 0
translate W TmtLimit "Listbegr�nsningar"
translate W TmtMeanElo "L�gsta snitt Elo"
translate W TmtNone "Inga turneringar hittades."

# Graph windows:
menuText W GraphFile "Fil" 0
menuText W GraphFileColor "Spara som Postscript (i f�rg)" 8
menuText W GraphFileGrey "Spara som Postscript (i gr�skala)" 8
menuText W GraphFileClose "St�ng f�nster" 6
menuText W GraphOptions "Alternativ" 0
menuText W GraphOptionsWhite "Vit" 0
menuText W GraphOptionsBlack "Svart" 0
# ====== TODO To be translated ======
menuText W GraphOptionsDots "Show Dots" 0
# ====== TODO To be translated ======
menuText W GraphOptionsBar "Highlight Current Move" 0
menuText W GraphOptionsBoth "B�da" 1
menuText W GraphOptionsPInfo "Spelarinformation" 0
translate W GraphFilterTitle "Filterdiagram: antal per 1000 partier"
translate W GraphAbsFilterTitle "Filtergraf: frekvens f�r partierna"
translate W ConfigureFilter {Konfigurera X-axlar f�r �r, Rating och Drag}
translate W FilterEstimate "Uppskatta"
translate W TitleFilterGraph "Scid: Filtergraf"

# Analysis window:
translate W AddVariation {L�gg till variation}
translate W AddAllVariations {L�gg till alla variationer}
translate W AddMove {L�gg till drag}
translate W Annotate {Kommentera}
translate W ShowAnalysisBoard {Visa Analysbr�de}
translate W ShowInfo {Visa schackmotorinformation}
translate W FinishGame {Avsluta parti}
translate W StopEngine {Stoppa schackmotor}
translate W StartEngine {Starta schackmotor}
# ====== TODO To be translated ======
translate W ExcludeMove {Exclude Move}
translate W LockEngine {L�s schackmotor vid nuvarande position}
translate W AnalysisCommand {Analysera}
translate W PreviousChoices {F�reg�ende val}
translate W AnnotateTime {Ange tid mellan drag i sekunder}
translate W AnnotateWhich {L�gg till variationer}
translate W AnnotateAll {F�r b�da sidors drag}
translate W AnnotateAllMoves {Kommentera alla drag}
translate W AnnotateWhite {Endast vits drag}
translate W AnnotateBlack {Endast svarts drag}
translate W AnnotateNotBest {N�r partidraget inte �r det b�sta}
translate W AnnotateBlundersOnly {N�r partidraget �r en uppenbar blunder}
# ====== TODO To be translated ======
translate W BlundersNotBest {Blunders/Not Best}
translate W AnnotateTitle {Konfigurera Anteckningar}
# ====== TODO To be translated ======
translate W AnnotateMissedMates {Missed/shorter mates}
# ====== TODO To be translated ======
translate W AnnotateEnd {At end of game}
translate W BlundersThreshold {Tr�skelv�rde}
# ====== TODO To be translated ======
translate W ScoreFormat {Score format}
# ====== TODO To be translated ======
translate W CutOff {Cut Off}
translate W LowPriority {K�r som l�gprioriterad process}
# ====== TODO To be translated ======
translate W LogEngines {Log Size}
# ====== TODO To be translated ======
translate W LogName {Add Name}
# ====== TODO To be translated ======
translate W MaxPly {Max Ply}
translate W ClickHereToSeeMoves {Klicka h�r f�r att se drag}
translate W ConfigureInformant {Konfigurera Informant-parametrar}
translate W Informant!? {Intressant drag}
translate W Informant? {D�ligt drag}
translate W Informant?? {Blunder}
translate W Informant?! {Tveksamt drag}
translate W Informant+= {Vit har en mindre f�rdel}
translate W Informant+/- {Vit har en liten f�rdel}
translate W Informant+- {Vit har en avg�rande f�rdel}
translate W Informant++- {Partiet anses vara vunnet}
translate W Book {Bok}
# ====== TODO To be translated ======
translate W OtherBook {Other Moves}
# ====== TODO To be translated ======
translate W Alphabetical {Alphabetical}
# ====== TODO To be translated ======
translate W TwoBooks {Two Books}

# Analysis Engine open dialog:
translate W EngineList {Lista �ver schackprogram}
# ====== TODO To be translated ======
translate W EngineKey {Key}
# ====== TODO To be translated ======
translate W EngineType {Type}
translate W EngineName {Namn}
translate W EngineCmd {Startkommando}
translate W EngineArgs {Parametrar}
translate W EngineDir {Katalog}
translate W EngineElo {Elo}
translate W EngineTime {Datum}
translate W EngineNew {Ny}
translate W EngineEdit {Redigera}
translate W EngineRequired {Fet stil indikerar obligatoriska f�lt; �vriga f�lt �r frivilliga}

# Stats window menus:
menuText W StatsFile "Fil" 0
menuText W StatsFilePrint "Skriv ut till fil..." 0
menuText W StatsFileClose "St�ng f�nster" 0
menuText W StatsOpt "Alternativ" 0

# PGN window menus:
menuText W PgnFile "Fil" 0
menuText W PgnFileCopy "Kopiera partiet till Clipbase" 0
menuText W PgnFilePrint "Skriv ut till..." 0
menuText W PgnFileClose "St�ng PGN-f�nster" 0
menuText W PgnOpt "Presentation" 0
menuText W PgnOptColor "F�rg" 0
menuText W PgnOptShort "Kort (3-raders) huvud" 0
menuText W PgnOptSymbols "Symbolbaserad kommentar" 1
menuText W PgnOptIndentC "Indragna kommentarer" 0
menuText W PgnOptIndentV "Indragna variationer" 7
menuText W PgnOptColumn "Spaltstil (ett drag per rad)" 1
menuText W PgnOptSpace "Utrymme efter dragnummer" 1
menuText W PgnOptStripMarks "Avl�gsna koder f�r f�rgade f�lt och pilar" 1
menuText W PgnOptChess "Schack Pieces" 0
menuText W PgnOptScrollbar "Rullningslist" 0
menuText W PgnOptBoldMainLine "Anv�nd Fet Text f�r Huvudvariationsdrag" 4
menuText W PgnColor "F�rger" 0
menuText W PgnColorHeader "Huvud..." 0
menuText W PgnColorAnno "Noteringar..." 0
menuText W PgnColorComments "Kommentarer..." 0
menuText W PgnColorVars "Variationer..." 0
menuText W PgnColorBackground "Bakgrund..." 0
menuText W PgnColorMain "Huvudvariation..." 0
menuText W PgnColorCurrent "Aktuellt drag bakgrund..." 1
menuText W PgnColorNextMove "N�sta drag bakgrund..." 0
menuText W PgnHelp "Hj�lp" 0
menuText W PgnHelpPgn "PGN-hj�lp" 0
menuText W PgnHelpIndex "Index" 0
translate W PgnWindowTitle {PGN-version av partiet %u}

# Crosstable window menus:
menuText W CrosstabFile "Fil" 0
menuText W CrosstabFileText "Skriv ut till textfil..." 9
menuText W CrosstabFileHtml "Skriv ut till HTML-fil..." 9
menuText W CrosstabFileLaTeX "Skriv ut till LaTeX-fil..." 9
menuText W CrosstabFileClose "St�ng resultattabellsf�nstret" 0
menuText W CrosstabEdit "Redigera" 0
menuText W CrosstabEditEvent "Evenemang" 0
menuText W CrosstabEditSite "Plats" 0
menuText W CrosstabEditDate "Datum" 0
menuText W CrosstabOpt "Presentation" 0
menuText W CrosstabOptColorPlain "Ren text" 0
menuText W CrosstabOptColorHyper "Hypertext" 0
# ====== TODO To be translated ======
menuText W CrosstabOptTieWin "Tie-Break by wins" 1
# ====== TODO To be translated ======
menuText W CrosstabOptTieHead "Tie-Break by head-head" 1
menuText W CrosstabOptThreeWin "3 po�ng f�r vinst" 1
menuText W CrosstabOptAges "�lder i �r" 8
menuText W CrosstabOptNats "Nationalitet" 0
# todo
menuText W CrosstabOptTallies "Win/Loss/Draw" 0
menuText W CrosstabOptRatings "Rating" 0
menuText W CrosstabOptTitles "Titlar" 0
menuText W CrosstabOptBreaks "Tie-break po�ng" 4
menuText W CrosstabOptDeleted "Inkludera raderade partier" 8
menuText W CrosstabOptColors "F�rg (endast Schweizer)" 0
# ====== TODO To be translated ======
menuText W CrosstabOptColorRows "Color Rows" 0
# ====== TODO To be translated ======
menuText W CrosstabOptRowsColor "Row Color" 0 {Default crosstable row color}
menuText W CrosstabOptColumnNumbers "Numrerade kolumner (Endast alla-mot-alla)" 2
menuText W CrosstabOptGroup "Gruppresultat" 0
menuText W CrosstabSort "Sortera" 0
menuText W CrosstabSortName "Namn" 0
menuText W CrosstabSortRating "Rating" 0
menuText W CrosstabSortScore "Resultat" 0
menuText W CrosstabSortCountry "Land" 0
# todo
menuText W CrosstabType "Format" 0
menuText W CrosstabTypeAll "Alla-m�ter-alla" 0
menuText W CrosstabTypeSwiss "Schweizer" 0
menuText W CrosstabTypeKnockout "Knock Out" 0
menuText W CrosstabTypeAuto "Auto" 1
menuText W CrosstabHelp "Hj�lp" 0
menuText W CrosstabHelpCross "Hj�lp f�r resultattabell" 0
menuText W CrosstabHelpIndex "Hj�lpindex" 0
translate W SetFilter {Best�m filter}
translate W AddToFilter {Ut�ka filter}
translate W Swiss {Schweizer}
translate W Category {Kategori}

# Opening report window menus:
menuText W OprepFile "Fil" 0
menuText W OprepFileText "Skriv ut till textfil..." 9
menuText W OprepFileHtml "Skriv ut till HTML-fil..." 9
menuText W OprepFileLaTeX "Skriv ut till LaTeX-fil..." 9
menuText W OprepFileOptions "Alternativ..." 0
menuText W OprepFileClose "St�ng rapportf�nstret" 0
menuText W OprepFavorites "Favoriter" 1
menuText W OprepFavoritesAdd "L�gg till rapport..." 0
menuText W OprepFavoritesEdit "Redigera favoritrapport..." 0
menuText W OprepFavoritesGenerate "Skapa rapport..." 0
menuText W OprepHelp "Hj�lp" 0
menuText W OprepHelpReport "Hj�lp f�r �ppningsrapporter" 0
menuText W OprepHelpIndex "Hj�lpindex" 0

# Header search:
translate W HeaderSearch {S�k i partihuvud}
translate W EndSideToMove {Sida vid draget vid slutet av partiet}
translate W GamesWithNoECO {Partier utan ECO-kod?}
translate W GameLength {Partil�ngd}
translate W FindGamesWith {Hitta flaggade partier}
translate W StdStart {Normal utg�ngsst�llning}
translate W Promotions {F�rvandlingar}
# ====== TODO To be translated ======
translate W UnderPromo {Under Prom.}
translate W Comments {Kommentarer}
translate W Variations {Variationer}
translate W Annotations {Noteringar}
translate W DeleteFlag {Raderingsflagga}
translate W WhiteOpFlag {Vits �ppning}
translate W BlackOpFlag {Svarts �ppning}
translate W MiddlegameFlag {Mittspel}
translate W EndgameFlag {Slutspel}
translate W NoveltyFlag {Nyhet}
translate W PawnFlag {Bondestruktur}
translate W TacticsFlag {Taktiska st�llningar}
translate W QsideFlag {Damflygelsinitiativ}
translate W KsideFlag {Kungsflygelsinitiativ}
translate W BrilliancyFlag {Utm�rkt parti}
translate W BlunderFlag {Borts�ttningar}
translate W UserFlag {Anv�ndare}
translate W PgnContains {PGN inneh�ller text}
# ====== TODO To be translated ======
translate W PreComment {Pre-game Comment}
# ====== TODO To be translated ======
translate W PostComment {End Comment}

# Game list window:
translate W GlistNumber {Nummer}
translate W GlistWhite {Vit}
translate W GlistBlack {Svart}
translate W GlistWElo {Elo, vit}
translate W GlistBElo {Elo, svart}
translate W GlistEvent {Evenemang}
translate W GlistSite {Plats}
translate W GlistRound {Rond}
translate W GlistDate {Datum}
translate W GlistYear {�r}
translate W GlistEventDate {Startdatum}
translate W GlistResult {Resultat}
translate W GlistLength {L�ngd}
translate W GlistCountry {Land}
translate W GlistECO {ECO}
translate W GlistOpening {Drag}
translate W GlistEndMaterial {Slutmaterial}
translate W GlistDeleted {Raderad}
translate W GlistFlags {Flaggor}
translate W GlistVariations {Variationer}
translate W GlistComments {Kommentarer}
translate W GlistAnnos {Noteringar}
translate W GlistStart {Start}
translate W GlistGameNumber {Partinummer}
translate W GlistFindText {S�k text}
translate W GlistMoveField {Drag}
translate W GlistEditField {Konfiguration}
translate W GlistAddField {L�gg till}
translate W GlistDeleteField {Ta bort}
translate W GlistColor {F�rg}
# ====== TODO To be translated ======
translate W GlistSort {Sort database}
translate W GlistRemoveThisGameFromFilter  {Ta bort}
translate W GlistRemoveGameAndAboveFromFilter  {Ta bort parti (och alla ovanf�r det)}
translate W GlistRemoveGameAndBelowFromFilter  {Ta bort parti (och alla nedanf�r det)}
translate W GlistDeleteGame {Ta tillbaka detta parti}
translate W GlistDeleteAllGames {Ta bort alla partier i filtret}
translate W GlistUndeleteAllGames {Ta tillbaka alla partier i filtret}
# ====== TODO To be translated ======
translate W GlistAlignL {Align left}
# ====== TODO To be translated ======
translate W GlistAlignR {Align right}
# ====== TODO To be translated ======
translate W GlistAlignC {Align center}

# Maintenance window:
translate W DatabaseName {Databasnamn:}
translate W TypeIcon {Ikontyp}
translate W NumOfGames {Partier:}
translate W NumDeletedGames {Raderade partier:}
translate W NumFilterGames {Partier i filter:}
translate W YearRange {Tidsperiod:}
translate W RatingRange {Ratingintervall:}
translate W Description {Beskrivning}
translate W Flag {Flagga}
translate W CustomFlags {Anpassade flaggor}
translate W DeleteCurrent {Ta bort aktuellt parti}
translate W DeleteFilter {Ta bort partierna i filtret}
translate W DeleteAll {Ta bort alla partier}
translate W UndeleteCurrent {�terta aktuellt parti}
translate W UndeleteFilter {�terta partierna i filtret}
translate W UndeleteAll {�terta alla partier}
translate W DeleteTwins {Ta bort dubbletter}
translate W MarkCurrent {Markera aktuellt parti}
translate W MarkFilter {Markera partierna i filtret}
translate W MarkAll {Markera alla partier}
translate W UnmarkCurrent {Avmarkera aktuellt parti}
translate W UnmarkFilter {Avmarkera partierna i filtret}
translate W UnmarkAll {Avmarkera alla partier}
translate W Spellchecking {R�ttstava}
# ====== TODO To be translated ======
translate W MakeCorrections {Make Corrections}
# ====== TODO To be translated ======
translate W Ambiguous {Ambiguous}
# ====== TODO To be translated ======
translate W Surnames {Surnames}
translate W Players {Spelare}
translate W Events {Evenemang}
translate W Sites {Platser}
translate W Rounds {Ronder}
translate W DatabaseOps {Databashantering}
translate W ReclassifyGames {ECO-klassificera partier}
translate W CompactDatabase {Komprimera databasen}
translate W SortDatabase {Sortera databasen}
translate W AddEloRatings {L�gg till Elorating}
translate W AutoloadGame {Ladda partinummer automatiskt}
translate W StripTags {Avl�gsna PGN-taggar}
translate W StripTag {Avl�gsna taggar}
translate W CheckGames {Kontrollera partier}
translate W Cleaner {Snygga till databasen}
translate W CleanerHelp {
Databasst�daren i Scid genomf�r allt det underh�ll av databasen du v�ljer nedan p� den aktiva databasen.

De nuvarande inst�llningarna i ECO-klassificering och Radera dubbletter kommer att appliceras om du v�ljer dessa �tg�rder.
}
translate W CleanerConfirm {
N�r du v�l startat Databasst�daren kan du inte avbryta den!

P� en stor databas kan detta ta ett bra tag. Tids�tg�ngen beror p� valda �tg�rder och deras inst�llningar.

�r du s�ker p� att du vill p�b�rja databasunderh�llet nu?
}
translate W TwinCheckUndelete {att v�xla; "u" tar tillbaka b�da)}
translate W TwinCheckprevPair {Tidigare par}
translate W TwinChecknextPair {N�sta par}
translate W TwinChecker {Scid: Dublettpartikontrollerare}
translate W TwinCheckTournament {Partier i turnering:}
translate W TwinCheckNoTwin {Ingen dublett  }
translate W TwinCheckNoTwinfound {Ingen dublett detekterades f�r detta parti.\nF�r att visa dubletter med detta f�nster, m�ste du f�rst anv�nda "Ta bort dublettpartier..."-funktionen. }
translate W TwinCheckTag {Dela taggar...}
translate W TwinCheckFound1 {Scid hittade $result dublettpartier}
translate W TwinCheckFound2 { och ange deras borttagningsflaggor}
translate W TwinCheckNoDelete {Det finns inga partier i denna databas att ta bort.}
translate W TwinCriteria1 { Dina inst�llningar f�r att hitta dublettpartier �r potentiellt sannorlika att\norsaka att icke-dublettpartier med liknande drag blir markerade som dubletter.}
translate W TwinCriteria2 {Det �r rekommenderat att om du v�ljer "Nej" f�r "samma drag" och att du v�ljer "Ja" f�r F�rger, Evenemang, Plats, Runda, �r och M�nads inst�llningar.\nVill du forts�tta och ta bort dubletter �nd�? }
translate W TwinCriteria3 {Det �r rekommenderat att du specificerar "Ja" f�r �tminstonde tv� av "samma plats", "samma runda" och "samma �r" inst�llningar.\nVill du forts�tta och ta bort dubletter �nd�?}
translate W TwinCriteriaConfirm {Scid: Bekr�fta dublettinst�llningar}
translate W TwinChangeTag "�ndra f�ljande partitaggar:\n\n"
translate W AllocRatingDescription "Detta kommando kommer att anv�nda den aktuella stavningskontrollfilen f�r att l�gga till Elo-rating till partier i denna databas. D�r en spelare inte har en aktuell rating men hans/hennes rating vid tiden f�r partiet �r listat i stavningskontrollfilen, kommer denna rating att l�ggas till."
translate W RatingOverride "Skriv �ver existerande inte-noll rating?"
translate W AddRatings "L�gg till rating till:"
translate W AddedRatings {Scid lade till $r Elo-ratingar i $g partier.}
translate W NewSubmenu "Ny undermeny"

# Comment editor:
translate W AnnotationSymbols  {Symboler:}
translate W Comment {Kommentar:}
translate W InsertMark {Infoga symbol}
translate W InsertMarkHelp {
Infoga/ta bort markering: V�lj f�rg, typ av markering samt ruta.
Infoga/ta bort pil: H�ger-klicka tv� rutor.
}

# Nag buttons in comment editor:
translate W GoodMove {Bra drag}
translate W PoorMove {D�ligt drag}
translate W ExcellentMove {Utm�rkt drag}
translate W Blunder {Blunder}
translate W InterestingMove {Intressant drag}
translate W DubiousMove {Tveksamt drag}
translate W WhiteDecisiveAdvantage {Vit har en avg�rande f�rdel}
translate W BlackDecisiveAdvantage {Svart har en avg�rande f�rdel}
translate W WhiteClearAdvantage {Vit har en klar f�rdel}
translate W BlackClearAdvantage {Svart har en klar f�rdel}
translate W WhiteSlightAdvantage {Vit har en liten f�rdel}
translate W BlackSlightAdvantage {Svart har en liten f�rdel}
translate W Equality {J�mnvikt}
translate W Unclear {Oklar}
translate W Diagram {Diagram}

# Board search:
translate W BoardSearch {Positionss�kningar}
translate W FilterOperation {Hantering av aktuellt filter:}
translate W FilterAnd {AND (Restriktivt filter)}
translate W FilterOr {OR (Ackumulativt filter)}
translate W FilterIgnore {IGNORE (Anv�nd ej filter)}
translate W SearchType {S�ktyp:}
translate W SearchBoardExact {Exakt position (alla pj�ser p� samma rutor)}
translate W SearchBoardPawns {B�nder (samma material, alla b�nder p� samma rutor)}
translate W SearchBoardFiles {Filer (samma material, alla b�nder p� samma filer)}
translate W SearchBoardAny {Obest�mt (samma material, b�nder och pj�ser p� valfria rutor)}
translate W SearchInRefDatabase {S�k i databas}
translate W LookInVars {S�k i variationer}
# ====== TODO To be translated ======
translate W CQLLabel {CQL Script}
# ====== TODO To be translated ======
translate W CQLComments {Allow Comments}
# ====== TODO To be translated ======
translate W CQLStrip {Strip Match Comments}

# Material search:
translate W MaterialSearch {Materials�kning}
translate W Material {Material}
translate W Patterns {St�llningar}
translate W Zero {Inga/-en}
translate W Any {Flera}
translate W CurrentBoard {Aktuell st�llning}
translate W CommonEndings {Vanliga slutspel}
translate W CommonPatterns {Vanliga st�llningar}
translate W MaterialDiff {Skillnad i material}
translate W squares {rutor}
translate W SameColor {Samma f�rg}
translate W OppColor {Motsatt f�rg}
translate W Either {Antingen eller}
translate W MoveNumberRange {Dragintervall}
translate W MatchForAtLeast {Tr�ffa minst}
translate W HalfMoves {halvdrag}

# Common endings in material search:
translate W EndingPawns {Bondeslutspel}
translate W EndingRookVsPawns {Torn mot Bonde (B�nder)}
translate W EndingRookPawnVsRook {Torn och 1 Bonde mot Torn}
translate W EndingRookPawnsVsRook {Torn och Bonde (B�nder) mot Torn}
translate W EndingRooks {Torn mot Torn slutspel}
translate W EndingRooksPassedA {Torn mot Torn slutspel med en fri a-bonde}
translate W EndingRooksDouble {Dubbla Torn slutspel}
translate W EndingBishops {L�pare mot L�pare slutspel}
translate W EndingBishopVsKnight {L�pare mot Springare slutspel}
translate W EndingKnights {Springare mot Springare slutspel}
translate W EndingQueens {Dam mot Dam slutspel}
translate W EndingQueenPawnVsQueen {Dam och 1 Bonde mot Dam}
translate W BishopPairVsKnightPair {Tv� L�pare mot Tv� Springare mittspel}

# Common patterns in material search:
translate W PatternWhiteIQP {Vit Isolerad dambonde}
translate W PatternWhiteIQPBreakE6 {Vit Isolerad dambonde: d4-d5 brott mot e6}
translate W PatternWhiteIQPBreakC6 {Vit Isolerad dambonde: d4-d5 brott mot c6}
translate W PatternBlackIQP {Svart Isolerad dambonde}
translate W PatternWhiteBlackIQP {Vit Isolerad dambonde mot Svart Isolerad dambonde}
translate W PatternCoupleC3D4 {Vit c3+d4 Isolaterat Bondepar}
translate W PatternHangingC5D5 {Svart H�ngande B�nder p� c5 och d5}
translate W PatternMaroczy {Maroczycenter (med B�nder p� c4 och e4)}
translate W PatternRookSacC3 {Tornoffer p� c3}
translate W PatternKc1Kg8 {O-O-O mot O-O (Kc1 mot Kg8)}
translate W PatternKg1Kc8 {O-O mot O-O-O (Kg1 mot Kc8)}
translate W PatternLightFian {Ljus-Ruta Fianchetton (L�pare-g2 mot L�pare-b7)}
translate W PatternDarkFian {M�rk-Ruta Fianchetton (L�pare-b2 mot L�pare-g7)}
translate W PatternFourFian {Fyra Fianchetton (L�pare p� b2,g2,b7,g7)}

# Game saving:
translate W Today {Idag}
translate W ClassifyGame {Klassificera parti}

# Setup position:
translate W EmptyBoard {T�m br�det}
translate W InitialBoard {Utg�ngsst�llning}
translate W SideToMove {F�rg vid draget}
translate W MoveNumber {Antal drag}
translate W Castling {Rockad}
translate W EnPassantFile {En Passant fil}
translate W ClearFen {Rensa FEN}
translate W PasteFen {Klistra in FEN}
translate W SaveAndContinue {Spara och forts�tt}
translate W DiscardChangesAndContinue {Ignorera �ndringar}
translate W GoBack {G� tillbaka}

# Replace move dialog:
translate W ReplaceMove {Ers�tt drag}
translate W AddNewVar {L�gg till ny variation}
translate W NewMainLine {Ny huvudvariation}
translate W ReplaceMoveMessage {Det finns redan ett drag i denna st�llning.

Du kan ers�tta detta drag, och f�rlora samtliga f�ljande, eller l�gga till ditt drag som en ny variation.

(Om du st�nger av "Fr�ga f�re ers�tt drag" i Alternativ:Drag menyn slipper du denna fr�ga i framtiden.)}

# Make database read-only dialog:
translate W ReadOnlyDialog {Om du ger denna databas endast l�sbar kan du inte g�ra n�gra �ndringar i den.
Inga partier kan sparas eller ers�ttas, och du kan inte �ndra flaggor f�r raderbara partier.
Alla sorteringsinst�llningar eller ECO-klassificeringar kommer att vara tempor�ra.

Du kan g�ra den skrivbar igen genom att helt enkelt st�nga och �ppna den igen.

Vill du verkligen ange att databasen endast ska vara l�sbar?}

# Exit dialog:
translate W ExitDialog {Vill du verkligen avsluta Scid?}
# ====== TODO To be translated ======
translate W ClearGameDialog {This game has been altered.\nDo you wish to save it?}
translate W ExitUnsaved {De f�ljande databaserna har osparade f�r�ndringar. Om du avslutar nu, kommer dessa f�r�ndringar att g� f�rlorade.}
# ====== TODO To be translated ======
translate W ChangeTextDialog {Enabling text colour globally requires restart.}
# ====== TODO To be translated ======
translate W ChangeDockDialog {Changing Docking requires a restart.}
# ====== TODO To be translated ======
translate W FontSelectDialog "This is some sample text\nDouble click above to change font, then select 'ok'\nAaBbCcDdEeFfGgHhIiJjKkLlMm 0123456789. +=-"
# ====== TODO To be translated ======
translate W ExitNow {Exit now ?}

# Import window:
translate W PasteCurrentGame {Klistra in aktuellt parti}
translate W ImportHelp1 {Ange eller klistra in ett parti i PGN-format i omr�det ovan.}
translate W ImportHelp2 {Eventuella felaktigheter kommer att anges h�r.}
translate W OverwriteExistingMoves {Skriv �ver existerande drag ?}

# ECO Browser:
translate W ECOAllSections {alla ECO avdelningar}
translate W ECOSection {ECO avdelning}
translate W ECOSummary {Sammanfattning f�r}
translate W ECOFrequency {Underkodsfrekvens f�r}

# Opening Report:
translate W OprepTitle {�ppningsrapport}
translate W OprepReport {Rapport}
translate W OprepGenerated {Skapad av}
translate W OprepStatsHist {Statistik och historik}
translate W OprepStats {Statistik}
translate W OprepStatAll {Rapporterade partier}
translate W OprepStatBoth {B�da med rating}
translate W OprepStatSince {Sedan}
translate W OprepOldest {De �ldsta partierna}
translate W OprepNewest {De yngsta partierna}
translate W OprepPopular {Aktuell popularitet}
translate W OprepFreqAll {Frekvens totalt:   }
translate W OprepFreq1   {Under det senaste �ret: }
translate W OprepFreq5   {Under de 5 senaste �ren: }
translate W OprepFreq10  {Under de 10 senaste �ren: }
translate W OprepEvery {en g�ng var %u parti}
translate W OprepUp {�kat %u%s gentemot samtliga �r}
translate W OprepDown {minskat %u%s gentemot samtliga �r}
translate W OprepSame {ingen f�r�ndring gentemot samtliga �r}
translate W OprepMostFrequent {Spelas mest av}
translate W OprepMostFrequentOpponents {Vanligaste motst�ndaren}
translate W OprepRatingsPerf {Rating och resultat}
translate W OprepAvgPerf {Genomsnittrating och resultat}
translate W OprepWRating {Vits rating}
translate W OprepBRating {Svarts rating}
translate W OprepWPerf {Vits resultat}
translate W OprepBPerf {Svarts resultat}
translate W OprepHighRating {Partierna med h�gst genomsnittsrating}
translate W OprepTrends {Resultattrender}
translate W OprepResults {L�ngd och frekvens}
translate W OprepLength {Partiets l�ngd}
translate W OprepFrequency {Frekvens}
translate W OprepWWins {Vita vinster: }
translate W OprepBWins {Svarta vinster: }
translate W OprepDraws {Remier:      }
translate W OprepWholeDB {Hela databasen}
translate W OprepShortest {Kortaste vinster}
# translate W OprepShortWhite {De kortaste vita vinsterna}
# translate W OprepShortBlack {De kortaste svarta vinsterna}
translate W OprepMovesThemes {Drag och teman}
translate W OprepMoveOrders {Dragordning f�r att n� rapportst�llningen}
translate W OprepMoveOrdersOne \
  {St�llningen n�ddes bara genom en dragordning:}
translate W OprepMoveOrdersAll \
  {Det fanns %u dragordningar som ledde fram denna st�llning:}
translate W OprepMoveOrdersMany \
  {Det fanns %u dragordningar som ledde fram denna st�llning. De %u vanligaste �r:}
translate W OprepMovesFrom {Drag fr�n rapportst�llningen}
translate W OprepMostFrequentEcoCodes {De mest f�rekommande ECO-koderna}
translate W OprepThemes {Positionella teman}
translate W OprepThemeDescription {Temanfrekvens de f�rsta %u dragen av varje parti}
# translate W OprepThemeDescription {Antal teman vid drag %u}
translate W OprepThemeSameCastling {Rockad p� samma flygel}
translate W OprepThemeOppCastling {Rockad p� olika flyglar}
translate W OprepThemeNoCastling {Ingen har gjort rockad}
translate W OprepThemeKPawnStorm {Bondestorm p� kungsflygeln}
translate W OprepThemeQueenswap {Dambyte}
translate W OprepThemeWIQP {Isolerad vit dambonde}
translate W OprepThemeBIQP {Isolerad svart dambonde}
translate W OprepThemeWP567 {Vit bonde p� 5e/6e/7e raden}
translate W OprepThemeBP234 {Svart bonde p� 2a/3e/4e raden}
translate W OprepThemeOpenCDE {�ppen c/d/e linje}
translate W OprepTheme1BishopPair {Endast den ena sidan har l�parparet}
translate W OprepEndgames {Slutspel}
translate W OprepReportGames {Antal partier i rapporten}
translate W OprepAllGames    {Samtliga partier}
translate W OprepEndClass {Material i slutst�llningen}
translate W OprepTheoryTable {Teorisammanst�llning}
translate W OprepTableComment {Skapad fr�n de %u h�gst rankade partierna.}
translate W OprepExtraMoves {Ytterligare antal drag i notf�rteckningen}
translate W OprepMaxGames {Maximalt antal partier i sammanst�llningen}
# ====== TODO To be translated ======
translate W OprepMaxLines {Maximum games for statistics}
translate W OprepViewHTML {Visa HTML}
translate W OprepViewLaTeX {Visa LaTeX}

# Player Report:
translate W PReportTitle {Spelarrapport}
translate W PReportColorWhite {med de vita pj�serna}
translate W PReportColorBlack {med de svarta pj�serna}
# ====== TODO To be translated ======
translate W PReportBeginning {Beginning with}
translate W PReportMoves {efter %s}
translate W PReportOpenings {�ppningar}
translate W PReportClipbase {T�m Clipbase och kopiera liknande partier dit}


# Piece Tracker window:
translate W TrackerSelectSingle {V�nsterklicka f�r att v�lja denna pj�s.}
translate W TrackerSelectPair {V�nsterklicka f�r att v�lja denna pj�s; anv�nd h�ger musknapp f�r att ocks� v�lja den relaterade pj�sen.}
translate W TrackerSelectPawn {V�nsterklicka f�r att v�lja denna pj�s; anv�nd h�ger musknapp f�r att v�lja alla �tta b�nder.}
translate W TrackerStat {Statistik}
translate W TrackerGames {% partier med drag till rutan}
translate W TrackerTime {% tid p� varje ruta}
translate W TrackerMoves {Drag}
translate W TrackerMovesStart {Ange vid vilket drag s�kningen ska b�rja.}
translate W TrackerMovesStop {Ange vid vilket drag s�kningen ska sluta.}

# Game selection dialogs:
translate W SelectAllGames {Alla partier i databasen}
translate W SelectFilterGames {Endast partierna i filtret}
translate W SelectTournamentGames {Endast partierna i den aktuella turneringen}
translate W SelectOlderGames {Endast �ldre partier}

# Delete Twins window:
translate W TwinsNote {Partier m�ste minst ha samma spelare f�r att kunna identifieras som dubbletter samt uppfylla andra kriterier du kan ange nedan. N�r dubbletter hittas raderas det kortare partiet. Tips: det b�sta �r att anv�nda r�ttstavningen innan dubblettj�mf�relsen eftersom detta f�rb�ttrar m�jligheten f�r uppt�ckt av dubbletter.}
translate W TwinsCriteria {Kriterium: Dubbletter m�ste ha...}
translate W TwinsWhich {Ange vilka partier som ska j�mf�ras}
translate W TwinsColors {Samma f�rger?}
translate W TwinsEvent {Samma evenemang?}
translate W TwinsSite {Samma plats?}
translate W TwinsRound {Samma rond?}
translate W TwinsYear {Samma �r?}
translate W TwinsMonth {Samma m�nad?}
translate W TwinsDay {Samma dag?}
translate W TwinsResult {Samma resultat?}
translate W TwinsECO {Samma ECO-kod?}
translate W TwinsMoves {Samma drag?}
translate W TwinsPlayers {J�mf�r spelarnas namn:}
translate W TwinsPlayersExact {Exakt kopia}
translate W TwinsPlayersPrefix {Endast de 4 f�rsta bokst�verna}
translate W TwinsWhen {N�r dubbletter tas bort}
translate W TwinsSkipShort {Ignorera alla partier som �r kortare �n 5 drag?}
translate W TwinsUndelete {�terta alla partier f�rst?}
translate W TwinsSetFilter {Filtrera alla borttagna dubbletter?}
translate W TwinsComments {Spara alltid partier med kommentarer?}
translate W TwinsVars {Spara alltid partier med variationer?}
translate W TwinsDeleteWhich {Ange vilket parti som ska tas bort:}
translate W TwinsDeleteShorter {Det kortare partiet}
translate W TwinsDeleteOlder {Partiet med l�gst nummer}
translate W TwinsDeleteNewer {Partiet med h�gst nummer}
translate W TwinsDelete {Ta bort partier}

# Name editor window:
translate W NameEditType {Typ av namn att redigera}
translate W NameEditSelect {Partier att redigera}
translate W NameEditReplace {Ers�tt}
translate W NameEditWith {med}
translate W NameEditMatches {Matchar: Tryck Ctrl+1 till Ctrl+9 f�r att v�lja}

# Classify window:
translate W Classify {Klassificera}
translate W ClassifyWhich {ECO-klassificera vilka partier?}
translate W ClassifyAll {Alla partier (skriv �ver gamla ECO-koder)}
translate W ClassifyYear {Alla partier spelade under det senaste �ret}
translate W ClassifyMonth {Alla partier spelade den senaste m�naden}
translate W ClassifyNew {Endast partier som �nnu ej klassificerats}
translate W ClassifyCodes {ECO-koder som ska anv�ndas}
translate W ClassifyBasic {Enbart standardkoder ("B12", ...)}
translate W ClassifyExtended {Scidextensioner ("B12j", ...)}

# Compaction:
translate W NameFile {Namnfil}
translate W GameFile {Partifil}
translate W Names {Namn}
translate W Unused {Ej anv�nd}
translate W SizeKb {Storlek (kb)}
translate W CurrentState {Aktuell status}
translate W AfterCompaction {Efter komprimering}
translate W CompactNames {Namn, komprimera namnfil}
translate W CompactGames {Partier, komprimera partifil}
translate W NoUnusedNames "Det finns inga oanv�nda namn, s� namnfilen �r redan fullt komprimerad."
translate W NoUnusedGames "Partifilen �r redan fullt komprimerad."
translate W NameFileCompacted {Namnfilen f�r databasen "[file tail [sc_base filename]]" blev komprimerad.}
translate W GameFileCompacted {Partifilen f�r databasen "[file tail [sc_base filename]]" blev komprimerad.}

# Sorting:
translate W SortCriteria {Kriterium}
translate W AddCriteria {L�gg till kriterium}
translate W CommonSorts {Normal sortering}
translate W Sort {Sortering}

# Exporting:
translate W AddToExistingFile {L�gg till partier till en existerande fil?}
translate W ExportComments {Exportera kommentarer?}
translate W ExportVariations {Exportera variationer?}
translate W IndentComments {Dra in kommentarer?}
translate W IndentVariations {Dra in variationer?}
# ====== TODO To be translated ======
translate W InsertNewlines {Insert newlines every 80 chars?}
translate W ExportColumnStyle {Kolumnstil (ett drag per rad)?}
translate W ExportSymbolStyle {Symbolbaserade kommentarer:}
translate W ExportStripMarks {Avl�gsna koder f�r f�lt och pilar fr�n kommentarerna?}
# ====== TODO To be translated ======
translate W ExportFlags {Export Scid Flags}

# Goto game/move dialogs:
translate W LoadGameNumber {Ange partiets nummer:}
translate W GotoMoveNumber {G� till drag nummer:}

# Copy games dialog:
translate W CopyGames {kopiera partier}
translate W CopyConfirm {
Vill du verkligen kopiera
de [::utils::thousands $nGamesToCopy] filtrerade partierna
ur databasen "$fromName"
till databasen "$targetName"?
}
translate W CopyErr {Kan ej kopiera partier}
translate W CopyErrSource {k�lldatabasen}
translate W CopyErrTarget {m�ldatabasen}
translate W CopyErrNoGames {har inga partier i filtret}
translate W CopyErrReadOnly {kan bara l�sas}
translate W CopyErrNotOpen {�r ej �ppen}

# Colors:
translate W LightSquares {Ljusa f�lt}
translate W DarkSquares {M�rka f�lt}
translate W SelectedSquares {Valda f�lt}
translate W Grid {Ruta}
translate W Previous {F�reg�ende}
translate W WhitePieces {Vita pj�ser}
translate W BlackPieces {Svarta pj�ser}
translate W WhiteBorder {Vit kantlinje}
translate W BlackBorder {Svart kantlinje}
translate W ArrowMain   {Huvudpil}
translate W ArrowVar    {Variantpilar}
# ====== TODO To be translated ======
translate W ShowArrows  {Show Arrows}

# Novelty window:
translate W FindNovelty {Hitta nyhet}
translate W Novelty {Nyhet}
translate W NoveltyInterrupt {Nyhetss�kningen avbr�ts}
translate W NoveltyNone {Inga nyheter hittades i detta parti}
translate W NoveltyHelp {
Scid kommer att f�rs�ka hitta det f�rsta draget som leder till en position som inte annars finns i denna databas eller i spel�ppingsboken baserad p� ECO.
}

# Sounds configuration:
translate W SoundsFolder {Ljudfilskatalog}
translate W SoundsFolderHelp {Katalogen ska ha filerna King.wav, a.wav, 1.wav, etc}
translate W SoundsAnnounceOptions {Inst�llningar f�r Dragannonsering}
translate W SoundsAnnounceNew {Annonsera nya drag n�r de g�rs}
translate W SoundsAnnounceForward {Annonsera drag n�r du g�r fram ett drag}
translate W SoundsAnnounceBack {Annonsera drag n�r du g�r fram eller tillbaka ett drag}

# Upgrading databases:
translate W Upgrading {Uppdaterar}
translate W ConfirmOpenNew {
Denna databas �r i ett gammal format (Scid 2) och kan inte �ppnas i Scid 3, men en databas i det nya formatet (Scid 3) har redan skapats.

Vill du �ppna den senare databasen ist�llet?
}
translate W ConfirmUpgrade {
Denna databas �r i ett gammal format (Scid 2). En databas i det nyare formatet m�ste skapas innan den kan anv�ndas i Scid 3.

Genom att uppdatera skapas en databas i det nya formatet med samma inneh�ll; uppdateringen �ndrar ingenting i den gamla databasen.

Detta kan ta ett tag men beh�ver bara g�ras en g�ng. Om du tycker det tar alltf�r l�ng tid kan du avbryta processen.

Vill du uppdatera denna databas nu?
}

# Recent files options:
translate W RecentFilesMenu {Antal senast �ppnade filer i Arkivmenyn}
translate W RecentFilesExtra {Antal senast �ppnade filer i extra undermeny}

# My Player Names options:
translate W MyPlayerNamesDescription {
Ange en lista p� dina favoritspelare h�r nedanf�r. Skriv ett namn per rad. Jokertecken ("?", t ex, motsvarar ett enstaka tecken medan "*" st�r f�r flera tecken) �r till�tna.

Varje g�ng ett parti med en spelare vars namn st�r i denna lista �ppnas kommer br�det automatiskt att vridas s� att partiet visas fr�n spelarens perspektiv.
}
translate W showblunderexists {visa blunder finns}
translate W showblundervalue {visa blunderv�rde}
translate W showscore {visa v�rdering}
translate W coachgame {tr�narparti}
translate W configurecoachgame {konfigurera tr�narparti}
translate W configuregame {Konfigurera parti}
translate W Phalanxengine {Phalanx schackmotor}
translate W Coachengine {Tr�narschackmotor}
translate W difficulty {sv�righetsgrad}
translate W hard {sv�r}
translate W easy {l�tt}
translate W Playwith {Spela med}
translate W white {vit}
translate W black {svart}
translate W both {b�da}
translate W Play {Spela}
translate W Noblunder {Ingen blunder}
translate W blunder {blunder}
translate W Noinfo {-- Ingen information --}
translate W moveblunderthreshold {drag �r en blunder om f�rlust �r st�rre �n}
translate W limitanalysis {begr�nsa schackmotors analystid}
translate W seconds {sekunder}
translate W Abort {Avbryt}
translate W Resume {Forts�tt}
# TODO
translate W Restart {Restart}
translate W OutOfOpening {utanf�r �ppning}
translate W NotFollowedLine {Du f�ljde inte variationen}
translate W DoYouWantContinue {Vill du forts�tta ?}
translate W CoachIsWatching {Tr�naren observerar}
translate W Ponder {Permanent t�nkande}
translate W LimitELO {Begr�nsa ELO-styrka}
translate W DubiousMovePlayedTakeBack {Ett tveksamt drag spelades, vill du ta tillbaka det ?}
translate W WeakMovePlayedTakeBack {Ett svagt drag spelades, vill du ta tillbaka det ?}
translate W BadMovePlayedTakeBack {Ett d�ligt drag spelades, vill du ta tillbaka det ?}
translate W Iresign {Jag ger upp}
translate W yourmoveisnotgood {ditt drag �r inte bra}
translate W EndOfVar {Slut p� variation}
translate W Openingtrainer {�ppningstr�nare}
translate W DisplayCM {Visa kandidatdrag}
translate W DisplayCMValue {Visa kandidatdragens v�rden}
translate W DisplayOpeningStats {Visa statistik}
translate W ShowReport {Visa rapport}
translate W NumberOfGoodMovesPlayed {bra drag spelade}
translate W NumberOfDubiousMovesPlayed {tveksamma drag spelade}
translate W NumberOfTimesPositionEncountered {g�nger positionen p�tr�ffats}
translate W PlayerBestMove  {Till�t bara b�sta dragen}
translate W OpponentBestMove {Motst�ndare spelar b�sta dragen}
translate W OnlyFlaggedLines {Bara markerade variationer}
translate W resetStats {Nollst�ll statistik}
translate W Movesloaded {�ppnat drag}
translate W PositionsNotPlayed {Positioner inte spelade}
translate W PositionsPlayed {Positioner spelade}
translate W Success {Framg�ng}
translate W DubiousMoves {Tveksamma drag}
translate W ConfigureTactics {Konfigurera taktik}
translate W ResetScores {Nollst�ll po�ng}
translate W LoadingBase {�ppnar bas}
translate W Tactics {Taktik}
translate W ShowSolution {Visa l�sning}
translate W Next {N�sta}
translate W ResettingScore {Nollst�ller po�ng}
translate W LoadingGame {�ppnar parti}
translate W MateFound {Matt hittad}
translate W BestSolutionNotFound {B�sta l�sningen hittades INTE !}
translate W MateNotFound {Matt hittades inte}
translate W ShorterMateExists {En kortare matt finns}
translate W ScorePlayed {Po�ng spelad}
translate W Expected {f�rv�ntat}
translate W ChooseTrainingBase {V�lj tr�ningsbas}
translate W Thinking {T�nker}
translate W AnalyzeDone {Analys klar}
translate W WinWonGame {Vinn vunnet parti}
translate W Lines {Variationer}
translate W ConfigureUCIengine {Konfigurera UCI-schackmotor}
translate W SpecificOpening {Specifik �ppning}
# ====== TODO To be translated ======
translate W ImportECO {Import ECO}
translate W StartNewGame {Starta nytt parti}
translate W FixedLevel {Fast niv�}
translate W Opening {�ppning}
translate W RandomLevel {Slumpm�ssig niv�}
translate W StartFromCurrentPosition {Starta fr�n den aktuella positionen}
translate W FixedDepth {Fast s�kdjup}
translate W Nodes {Noder}
translate W Depth {S�kdjup}
translate W Time {Tid}
# ====== TODO To be translated ======
translate W Auto {Auto}
# ====== TODO To be translated ======
translate W Score {Score}
# ====== TODO To be translated ======
translate W {Score Combo} {Score Combo}
# ====== TODO To be translated ======
translate W {Time Combo} {Time Combo}
translate W SecondsPerMove {Sekunder per drag}
# ====== TODO To be translated ======
translate W DepthPerMove {Depth per move}
# ====== TODO To be translated ======
translate W MoveControl {Move Control}
# TODO
translate W TimeLabel {Time per move}
# ====== TODO To be translated ======
translate W AddVars {Add Variations}
# ====== TODO To be translated ======
translate W AddScores {Add Score}
translate W Engine {Schackmotor}
translate W TimeMode {Tidsmod}
translate W TimeBonus {Tid + bonus}
translate W TimeMin {min}
translate W TimeSec {sek}
translate W AllExercisesDone {Alla �vningar gjorda}
translate W MoveOutOfBook {Drag utanf�r bok}
translate W LastBookMove {Sista bokdrag}
translate W AnnotateSeveralGames {Kommentera flera partier\nfr�n aktuellt till :}
translate W FindOpeningErrors {Hitta �ppningsfel}
translate W MarkTacticalExercises {Markera taktiska �vningar}
translate W UseBook {Anv�nd bok}
translate W MultiPV {Flera variationer}
translate W Hash {Hashminne}
translate W OwnBook {Anv�nd schackmotorbok}
translate W BookFile {�ppningsbok}
translate W AnnotateVariations {Kommentera variationer}
translate W ShortAnnotations {Korta kommentarer}
translate W addAnnotatorTag {L�gg till kommentator-tagg}
translate W AddScoreToShortAnnotations {L�gg till v�rdering till korta kommentarer}
translate W Export {Exportera}
translate W BookPartiallyLoaded {Bok delvis �ppnad}
# ====== TODO To be translated ======
translate W AddLine {Add Line}
# ====== TODO To be translated ======
translate W RemLine {Remove Line}
translate W Calvar {Ber�kning av variationer}
translate W ConfigureCalvar {Konfiguration}
translate W Reti {Reti}
translate W English {Engelsk}
translate W d4Nf6Miscellaneous {1.d4 Nf6 Diverse}
translate W Trompowsky {Trompowsky}
translate W Budapest {Budapest}
translate W OldIndian {Gammalindisk}
translate W BenkoGambit {Benko-gambit}
translate W ModernBenoni {Modern Benoni}
translate W DutchDefence {Holl�ndskt f�rsvar}
translate W Scandinavian {Skandinaviskt}
translate W AlekhineDefence {Alekhines f�rsvar}
translate W Pirc {Pirc}
translate W CaroKann {Caro-Kann}
translate W CaroKannAdvance {Caro-Kann Avancemang}
translate W Sicilian {Siciliansk}
translate W SicilianAlapin {Siciliansk Alapin}
translate W SicilianClosed {St�ngd Siciliansk}
translate W SicilianRauzer {Siciliansk Rauzer}
translate W SicilianDragon {Siciliansk Drake}
translate W SicilianScheveningen {Siciliansk Scheveningen}
translate W SicilianNajdorf {Siciliansk Najdorf}
translate W OpenGame {�ppet parti}
translate W Vienna {Wiener}
translate W KingsGambit {Kungsgambit}
translate W RussianGame {Ryskt parti}
translate W ItalianTwoKnights {Italianskt/Tv�springar}
translate W Spanish {Spanskt}
translate W SpanishExchange {Spanskt Avbytesvariant}
translate W SpanishOpen {�pett Spanskt}
translate W SpanishClosed {St�ngt Spanskt}
translate W FrenchDefence {Franskt F�rsvar}
translate W FrenchAdvance {Fransk Avancemang}
translate W FrenchTarrasch {Fransk Tarrasch}
translate W FrenchWinawer {Fransk Winawer}
translate W FrenchExchange {Fransk Avbytesvariant}
translate W QueensPawn {Dambonde}
translate W Slav {Slav}
translate W QGA {Antagen Damgambit}
translate W QGD {Avb�jd Damgambit}
translate W QGDExchange {Avb�jd Damgambit Avbytesvariant}
translate W SemiSlav {Semi-Slav}
translate W QGDwithBg5 {Avb�jd Damgambit med Bg5}
translate W QGDOrthodox {Avb�jd Damgambit Ortodox}
translate W Grunfeld {Gr�nfeld}
translate W GrunfeldExchange {Gr�nfeld Avbytesvariant}
translate W GrunfeldRussian {Gr�nfeld Ryskt}
translate W Catalan {Catalan}
translate W CatalanOpen {�ppen Catalan}
translate W CatalanClosed {St�ngd Catalan}
translate W QueensIndian {Damindiskt}
translate W NimzoIndian {Nimzo-Indiskt}
translate W NimzoIndianClassical {Nimzo-Indiskt Klassiskt}
translate W NimzoIndianRubinstein {Nimzo-Indiskt Rubinstein}
translate W KingsIndian {Kungsindiskt}
translate W KingsIndianSamisch {Kungsindiskt S�misch}
translate W KingsIndianMainLine {Kungsindiskt Huvudvariation}

# FICS
translate W ConfigureFics {Konfigurera FICS}
translate W FICSLogin {Logga in}
translate W FICSGuest {Logga in som G�st}
translate W FICSServerPort {Serverport}
translate W FICSServerAddress {IP-address}
translate W FICSRefresh {Uppdatera}
translate W FICSTimeseal {Timeseal}
translate W FICSTimesealPort {Timeseal-port}
translate W FICSSilence {Konsolfilter}
translate W FICSOffers {Erbjudanden}
# ====== TODO To be translated ======
translate W FICSMakeOffer {Make Offer}
translate W FICSGames {Partier}
translate W FICSFindOpponent {S�k motst�ndare}
translate W FICSTakeback {Ta tillbaka}
translate W FICSTakeback2 {Ta tillbaka 2}
translate W FICSInitTime {Tid (min)}
translate W FICSIncrement {�kning (sek)}
translate W FICSRatedGame {Ratat parti}
translate W FICSAutoColour {Automatisk}
translate W FICSManualConfirm {Bekr�fta manuellt}
translate W FICSFilterFormula {Filtrera med format}
translate W FICSIssueSeek {S�k Issue}
translate W FICSAccept {Acceptera}
translate W FICSDecline {Avb�j}
translate W FICSColour {F�rg}
translate W FICSSend {Skicka}
translate W FICSConnect {Anslut}
# ====== TODO To be translated ======
translate W FICSShouts {Shouts}
# ====== TODO To be translated ======
translate W FICSTells {Tells}
# ====== TODO To be translated ======
translate W FICSOpponent {Opponent Info}
# ====== TODO To be translated ======
translate W FICSInfo {Info}
# ====== TODO To be translated ======
translate W FICSDraw {Offer Draw}
# ====== TODO To be translated ======
translate W FICSRematch {Rematch}
# ====== TODO To be translated ======
translate W FICSQuit {Quit FICS}
# ====== TODO To be translated ======
translate W FICSCensor {Censor}

translate W CCDlgConfigureWindowTitle {Konfigurera Korrespondensschack}
translate W CCDlgCGeneraloptions {Generella inst�llningar}
translate W CCDlgDefaultDB {Standarddatabas:}
translate W CCDlgInbox {Inkorg (s�kv�g):}
translate W CCDlgOutbox {Utkorg (s�kv�g):}
translate W CCDlgXfcc {Xfcc-Konfiguration:}
translate W CCDlgExternalProtocol {Extern Protokollhanterare (t.ex. Xfcc)}
translate W CCDlgFetchTool {H�mtningsverktyg:}
translate W CCDlgSendTool {S�ndverktyg:}
translate W CCDlgEmailCommunication {eMail-kommunikation}
translate W CCDlgMailPrg {eMail-program:}
translate W CCDlgBCCAddr {(B)CC-address:}
translate W CCDlgMailerMode {Mod:}
translate W CCDlgThunderbirdEg {t.ex. Thunderbird, Mozilla Mail, Icedove...}
translate W CCDlgMailUrlEg {t.ex. Evolution}
translate W CCDlgClawsEg {t.ex Sylpheed Claws}
translate W CCDlgmailxEg {t.ex. mailx, mutt, nail...}
translate W CCDlgAttachementPar {Bilage-parameter:}
translate W CCDlgInternalXfcc {Anv�nd internt Xfcc-st�d}
translate W CCDlgConfirmXfcc {Bekr�fta drag}
translate W CCDlgSubjectPar {�mnes-parameter:}
translate W CCDlgDeleteBoxes {T�m In-/Utkorg}
translate W CCDlgDeleteBoxesText {Vill du verkligen t�mma dina In- och Utkorgskataloger f�r Korrespondensschack? Detta kr�ver en ny synkronisering f�r att visa den seanaste statusen p� dina partier}
translate W CCDlgConfirmMove {Bekr�fta drag}
translate W CCDlgConfirmMoveText {Om du bekr�ftar, kommer f�ljande drag och kommentar att skickas till servern:}
translate W CCDlgDBGameToLong {Inkonsekvent huvudvariation}
translate W CCDlgDBGameToLongError {Huvudvariationen i din databas �r l�ngre �n partiet i din Inkorg. Om Inkorgen inneh�ller aktuella partier, dvs precis efter en synkronisering, lades n�gra drag felaktigt till i huvudvariationen i databasen.\nI detta fall var god och f�rkorta huvudvariationen till (maximalt) drag\n}
translate W CCDlgStartEmail {Starta ett nytt eMail-parti}
translate W CCDlgYourName {Ditt Namn:}
translate W CCDlgYourMail {Din eMail-address:}
translate W CCDlgOpponentName {Motst�ndarnamn:}
translate W CCDlgOpponentMail {Motst�ndarens eMail-address:}
translate W CCDlgGameID {Parti-ID (unikt):}
translate W CCDlgTitNoOutbox {Scid: Korrespondensschackutkorg}
translate W CCDlgTitNoInbox {Scid: Korrespondensschackinkorg}
translate W CCDlgTitNoGames {Scid: Inga Korrespondensschackpartier}
translate W CCErrInboxDir {Korrespondensschacksinkorgskatalog:}
translate W CCErrOutboxDir {Korrespondensschacksutkorgskatalog:}
translate W CCErrDirNotUsable {finns inte eller �r inte m�jlig att anv�nda!\nVar god och kontrollera och korrigera inst�llningarna.}
translate W CCErrNoGames {inneh�ller inga partier!\nVar god och h�mta dem f�rst.}
translate W CCDlgTitNoCCDB {Scid: Ingen Korrespondensdatabas}
translate W CCErrNoCCDB {Ingen Databas av typ 'Korrespondens' �r �ppnad. Var god och �ppna en innan du anv�nder Korrespondensschackfunktioner.}
translate W CCFetchBtn {H�mta partier fr�n servern och bearbeta Inkorgen}
translate W CCPrevBtn {G� till tidigare parti}
translate W CCNextBtn {G� till n�sta parti}
translate W CCSendBtn {Skicka drag}
translate W CCEmptyBtn {T�m Inkorgen och Utkorgen}
translate W CCHelpBtn {Hj�lp med ikoner och statusindikatorer.\nF�r generell Hj�lp tryck p� F1!}
translate W CCDlgServerName {Servernamn:}
translate W CCDlgLoginName  {Inloggningsnamn:}
translate W CCDlgPassword   {L�senord:}
translate W CCDlgURL        {Xfcc-URL:}
translate W CCDlgRatingType {Ratingtyp:}
translate W CCDlgDuplicateGame {Icke unikt parti-ID}
translate W CCDlgDuplicateGameError {Detta parti finns fler �n en g�ng i din databas. Var god och ta bort alla dubbletter och komprimera din partifil (Arkiv/Underh�ll/Komprimera Databas).}
translate W CCDlgSortOption {Sorterar:}
translate W CCDlgListOnlyOwnMove {Bara partier d�r jag �r vid draget}
translate W CCOrderClassicTxt {Plats, Evenemang, Runda, Resultat, Vit, Svart}
translate W CCOrderMyTimeTxt {Min klocka}
translate W CCOrderTimePerMoveTxt {Tid per drag till n�sta tidskontroll}
translate W CCOrderStartDate {Startdatum}
translate W CCOrderOppTimeTxt {Motst�ndarens klocka}
translate W CCDlgConfigRelay {Konfigurera ICCF-observationer}
translate W CCDlgConfigRelayHelp {G� till partisidan p� http://www.iccf-webchess.com och visa partiet att observera.  Om du ser schackbr�der kopiera webadressen fr�n din webl�sare till listan nedanf�r. Bara en webadress per rad!\nExempel: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}

translate W ExtHWConfigConnection {Konfigurera extern h�rdvara}
translate W ExtHWPort {Port}
translate W ExtHWEngineCmd {Schackmotorkommando}
translate W ExtHWEngineParam {Schackmotorparameter}
translate W ExtHWShowButton {Visa knapp}
translate W ExtHWHardware {H�rdvara}
translate W ExtHWNovag {Novag Citrine}
translate W ExtHWInputEngine {Inmatningsmotor}
translate W ExtHWNoBoard {Inget br�de}
translate W IEConsole {Inmatningsmotorkonsol}
translate W IESending {Drag skickade f�r}
translate W IESynchronise {Synkronisera}
translate W IERotate  {Rotera}
translate W IEUnableToStart {Kan inte starta Inmatningsmotor:}
translate W DoneWithPosition {Klar med position}
translate W Board {Br�de}
translate W showGameInfo {Visa partiinformation}
translate W autoResizeBoard {�ndra storleken p� br�det automatiskt}
translate W DockTop {Drag �verst}
translate W DockBottom {Drag nederst}
translate W DockLeft {Drag till v�nster}
translate W DockRight {Drag till h�ger}
translate W Undock {Avdocka}
translate W ChangeIcon {�ndra ikon...}
# ====== TODO To be translated ======
translate W More {More}

# Drag & Drop
translate W CannotOpenUri {�tkomst nekad f�r foldern '%s'.}
translate W InvalidUri {Inneh�ll som sl�pps �r inte en giltig URI-lista.}
translate W UriRejected	{F�ljande filer �r f�rkastade:}
translate W UriRejectedDetail {Bara listade filtyper kan behandlas:}
translate W EmptyUriList {Inneh�ll som sl�pps �r tomt.}
# ====== TODO To be translated ======
translate W SelectionOwnerDidntRespond {Timeout during drop action: selection owner didn't respond.}
# ====== TODO To be translated ======
translate W PasteAnal {Paste Analysis}
# ====== TODO To be translated ======
translate W SortOpcodes {Sort Opcodes}
# ====== TODO To be translated ======
translate W AddPosition {Add Position}
# ====== TODO To be translated ======
translate W FindPos {Find Deepest Game Position}
# ====== TODO To be translated ======
translate W AnalPosition {Analyze Positions}
# ====== TODO To be translated ======
translate W StripOpcodes {Strip Opcodes}
# ====== TODO To be translated ======
translate W NoMoves {No moves from this position}
# ====== TODO To be translated ======
translate W CountBestMoves {Count Best Moves}

}

##########
#
# ECO Opening name translations:

translateECO W {
  Accelerated {, Accelererad}
  {: Accelerated} Accelererad
  Accepted {, Antagen}
  {: Accepted} Antagen
  Advance Avancemang
  {as Black} {som Svart}
  Attack Angrepp
  Bishop L�pare
  Bishop's L�par
  Classical Klassisk
  Closed St�ngd
  {Closed System} {St�ngt system}
  Counterattack Motangrepp
  Countergambit Motgambit
  Declined {, Avb�jd}
  Defence F�rsvar
  deferred f�rv�grad
  Deferred {, f�rv�grad}
  Early Tidig
  Exchange Avbyte
  Game Parti
  Improved f�rb�ttrad
  King's Kung
  Knight Springar
  Line Variant
  {Main Line} Huvudvariant
  Open �ppen
  Opening �ppning
  Queen's Dam
  Queenswap Damavbyte
  Symmetrical Symmetrisk
  Variation Variation
  Wing Flygel
  with med
  without utan

  Alekhine Aljechin
  Averbakh Averbach
  Botvinnik Botvinnik
  Chigorin Chigorin
  Polugaevsky Polugajevski
  Rauzer Rauzer
  Sveshnikov Sveschnikov

  Austrian �sterrikisk
  Berlin Berlin
  Bremen Bremen
  Catalan Katalansk
  Czech Tjeckisk
  Dutch Holl�ndsk
  English Engelsk
  French Fransk
  Hungarian Ungersk
  Indian Indisk
  Italian Italiensk
  Latvian Lettisk
  Meran Meran
  Moscow Moskva
  Polish Polsk
  Prague Prag
  Russian Rysk
  Scandinavian Skandinavisk
  Scheveningen Scheveningen
  Scotch Skottsk
  Sicilian Siciliansk
  Slav Slavisk
  Spanish Spansk
  Swedish Svensk
  Swiss Schweizisk
  Vienna Wiener
  Yugoslav Jugoslavisk

  {Accelerated Fianchetto} {Accelererad Fianchetto}
  {Accelerated Pterodactyl} {Accelererad Pterodactyl}
  {Alekhine Defence} Aljechins F�rsvar
  {Alekhine Variation} Aljechin-Variant
  {Alekhine: S�misch Attack} {Aljechin: Wiener-system (S�misch-Angrepp)}
  {Anderssen Opening} Anderssen-�ppning
  {Anti-King's Indian} Anti-Kungsindisk
  {Austrian Attack} {�sterrikiskt Angrepp}
  {Benko Gambit} Volga-Gambit
  {Benko Opening} Benk�-�ppning
  {Berlin Defence} {Berlinf�rsvar}
  Chameleon Chamaleon
  Chelyabinsk Chelyabinsk
  {Classical Defence} {Klassiskt f�rsvar}
  {Spanish: Classical Defence} {Spanskt: Klassiskt (Cordel-) f�rsvar}
  {Classical Exchange} {Klassiskt Avbyte}
  {Classical Variation} {Klassisk Variant}
  {Closed Berlin} {St�ngd Berlin}
  {Open Berlin} {�ppen Berlin}
  {Bird's,} {Bird,}
  {Bird's Defence} Birds f�rsvar
  {Bird's Deferred} {F�rv�grad Bird}
  {Bishop's Opening} L�parspel
  {Botvinnik System} Botvinnik-system
  {Central Variation} Centralvariant
  {Centre Attack} Centrumsangrepp
  {Centre Game} Mittgambit
  {Danish Gambit} {Nordisk Gambit}
  Dragon Drake
  {Dutch Variation} {Holl�ndsk Variant}
  {Early Exchange} {Tidigt Avbyte}
  {Early Queenswap} {Tidigt Dambyte}
  {English Attack} {Engelskt Angrepp}
  {English: King's} {Engelskt: Kungsbonde}
  {English Variation} {Engelsk Variant}
  {Englund Gambit} Englunds Gambit
  {Exchange Variation} Avbytesvariant
  {Fianchetto Variation} Fianchettovariant
  {Flohr Variation} Flohr-Variant
  {Four Knights} Fyrspringar
  {Four Knights Game} Fyrspringarspel
  {Four Pawns} Fyrbonde
  {Four Pawns Attack} Fyrbondeangrepp
  {French Variation} {Fransk Variant}
  {From Gambit} {From-Gambit}
  {Goring Gambit} {G�ring-Gambit}
  {Grob Gambit} {Grobs Gambit}
  {Hungarian Defence} {Ungerskt f�rsvar}
  {Indian Variation} {Indisk Variant}
  {Italian Game} {Italienskt Parti}
  KGD {Avb�jd Kungssgambit}
  {Classical KGD} {Klassisk avb�jd Kungsgambit}
  {Keres Variation} Keres-Variant
  KGA {Antagen Kungsgambit}
  {KGA: Bishop's Gambit} Kungsl�pargambit
  {KGA: King's Knight Gambit} Kungsspringargambit
  {King's Gambit} Kungsgambit
  {King's Gambit Accepted} {Antagen Kungsgambit}
  {King's Gambit Accepted (KGA)} {Antagen Kungsgambit}
  {King's Indian} Kungsindisk
  KIA {Kungsindiskt Angrepp}
  {King's Knight Gambit} Kungsspringargambit
  {King's Pawn} Kungsbonde
  {Lasker Variation} {Lasker-Variant}
  {Latvian Gambit} {Lettisk Gambit}
  {Maroczy Bind} {Maroczy-bindning}
  {Marshall Variation} Marshall-Variant
  {Modern Attack} {Modernt Angrepp}
  {Modern Steinitz} {Modern Steinitz}
  {Modern Variation} {Modern Variant}
  {Moscow Variation} {Moskva-variant}
  Nimzo-Indian Nimzoindisk
  {Old Benoni} {Klassisk Benoni}
  {Old Indian} Gammalindisk
  {Old Indian Attack} {Gammalindisk Indisk attack}
  {Old Steinitz} Gammal Steinitz-�ppning
  {Open Game} {�ppet Parti}
  {Poisoned Pawn} {F�rgiftad Bonde}
  {Polish Variation} {Polsk Variant}
  {Polugaevsky Variation} {Polugajevski-Variant}
  {Queen's Gambit} Damgambit
  {Queen's Gambit Accepted} {Antagen Damgambit}
  QGA {Antagen Damgambit}
  {Queen's Gambit Accepted (QGA)} {Antagen Damgambit}
  {Reversed QGA} {Omv�nd antagen Damgambit}
  QGD {Avb�jd Damgambit}
  {Queen's Gambit Declined (QGD)} {Avb�jd Damgambit}
  {Reversed QGD} {Omv�nd avb�jd Damgambit}
  {Queen's Indian} Damindisk
  {Queen's Pawn} Dambonde
  {Queen's Pawn Game} Dambondespel
  {Reversed Slav} {Omv�nd Slavisk}
  {Rubinstein Variation} Rubinstein-Variant
  {Russian Game} {Ryskt Parti}
  {Russian Game (Petroff Defence)} {Ryskt Parti}
  {Russian-Three Knights Game} {Ryskt trespringarspel}
  {Scandinavian (Centre Counter)} Skandinavisk
  Schliemann J�nisch
  {Schliemann (J�nisch)} {J�nisch-Gambit (Schliemann)}
  {Scotch Opening} {Skottsk �ppning}
  {Sicilian Defence} {Sicilianskt f�rsvar}
  {Sicilian Variation} {Siciliansk Variant}
  {Slav Defence} {Slaviskt f�rsvar}
  Smith-Morra Morra
  {Smith-Morra Accepted} {Antagen Morra-Gambit}
  {Smith-Morra Gambit} Morra-Gambit
  {Spanish (Ruy Lopez)} {Spanskt Parti}
  {Start position} Utg�ngsst�llning
  {Steinitz Deferred} F�rv�grad Rubinstein
  {Swedish Variation} {Svensk Variant}
  {Swiss Variation} {Schweizisk Variant}
  {Tarrasch's Gambit} {Tarrasch-Gambit}
  {Three Knights} Trespringar
  {3 Knights} Trespringar
  {Three Knights Game} Trespringarspel
  {Three Pawns Attack} Trebondeangrepp
  {Two Knights} Tv�springar
  {Two Knights Defence} Tv�springar-f�rsvar
  {Two Knights Variation} Tv�springar-variant
  {Two Pawns} Tv�bonde
  {Two Pawns Attack} Tv�bondeangrepp
  {Wing Gambit} Flygel-Gambit
  {Yugoslav Attack} {Jugoslaviskt Angrepp}
}

### Swedish help pages: removed because

### Swedish tip of the day:

set tips(W) {
  {
    Scid har �ver 30 <a Index>Hj�lpsidor</a>, och i de flesta f�nster kan du
    genom att trycka <b>F1</b> f� hj�lp om det f�nster du f�r tillf�llet har
    aktivt.
  }
  {
    Vissa f�nster (t ex Partiinformation och <a Switcher>Databasv�ljaren</a>)
    har en meny f�r h�ger musknapp. Prova att h�gerklicka i varje f�nster s�
    ser du vilka som har det och vilka funktioner du kommer �t den v�gen.
  }
  {
    Du kan ange drag p� mer �n ett s�tt, s� du kan v�lja vilket som passar dig
    b�st. Du kan anv�nda musen (med eller utan dragf�rslag) eller tangentbordet
    (med eller utan autokomplettering). L�s hj�lpsidan f�r
    <a Moves>Att ange drag</a> f�r mer information.
  }
  {
    Om du har databaser du ofta �ppnar s� kan du l�gga till ett
    <a Bookmarks>Bokm�rke</a> f�r varje databas. Du kommer d� att kunna �ppna
    databaserna snabbare via bokm�rkesmenyn.
  }
  {
    Du kan se alla drag i det aktuella partiet (inklusive varianter och kommentarer)
    genom att �ppna <a PGN>PGN-f�nstret</a>.
    Du navigerar igenom partiet i PGN-f�nstret genom att klicka p� valfritt drag med
    v�nster musknapp. Genom att klicka p� draget med mellan- eller h�germusknapp s�
    f�r du en f�rhandsvisning av just den st�llningen.
  }
  {
    Du kan kopiera partier mellan databaserna i <a Switcher>Databasv�ljaren</a> genom
    att dra-och-sl�ppa dem mellan respektive databas.
  }
  {
    Om du ofta anv�nder <a Tree>Tr�df�nstret</a> med stora databaser, �r det v�rt att v�lja
    <b>Fyll cachefil</b> fr�n Arkivmenyn i Tr�df�nstret. Detta inneb�r att tr�dstatistik f�r
    m�nga av de vanligare st�llningarna sparas, vilket ger en snabbare tr�d�tkomst f�r databasen
    ifr�ga.
  }
  {
    <a Tree>Tr�df�nstret</a> kan visa alla drag fr�n den aktuella st�llningen. Men om ocks� vill
    se alla dragf�ljder som har lett till denna st�llning kan du f� fram det genom att skapa en
   <a OpReport>�ppningsrapport</a>.
  }
  {
    Du kan v�nster- eller h�gerklicka i en kolumn i <a GameList>Partilistan</a> f�r att �ndra
    dess bredd.
  }
  {
    Med <a PInfo>Spelarinformationen</a> aktuell (klicka p� endera spelarens namn under br�det i
    huvudf�nstret f�r att f� fram den) �r det enkelt att <a Searches filtret>Filtrera</a> fram partier
    av en s�rskild spelares enskilda resultat. Klicka bara p� valfritt v�rde som har angivits med
    <red>r�d text</red>.
  }
  {
    N�r du studerar �ppningar kan det vara en po�ng att markera valen <b>B�nder</b> eller <b>Filer</b> i
    <a Searches Board>S�k aktuell position</a>. Genom dessa val kan du hitta andra �ppningar som ger
    liknande bondestrukturer.
  }
  {
    Du kan h�gerklicka i partiinformationsdelen av huvudf�nstret (under br�det) f�r att f� fram en
    kontextmeny. Du kan t ex g�ra s� att Scid d�ljer n�sta drag i ett parti, vilket kan vara anv�ndbart
    om du vill tr�na genom att "gissa" n�sta drag.
  }
  {
    Om du ofta <a Maintenance>Underh�ller</a> stora databaser kan du utf�ra flera underh�llsuppgifter
    vid samma tillf�lle via <a Maintenance Cleaner>Databasverktyget</a>.
  }
  {
    Om du har en stor databas d�r de flesta partierna har ett evenemangsdatum och du vill ha partierna i
    datumordning b�r du �verv�ga att <a Sorting>Sortera</a> den p� evenemangsdatum i f�rsta hand och
    evenemang i andra hand, ist�llet f�r datum och evenemang, d� detta kommer att h�lla turneringspartierna
    fr�n olika datum samman. (Under f�ruts�ttning att alla partier har samma evenemangsdatum naturligtvis).
    Alternativt kan du se till att f�lten evenemang, rond och datum �r s� enhetliga och korrekta som m�jligt.
    (ms).
  }
  {
    Det kan vara en bra id� att <a Maintenance Spellcheck>Stavningskontrollera</a> din databas innan du
    <a Maintenance Twins>Tar bort dubbletter</a> d� Scid har st�rre m�jlighet att hitta dubbletterna och
    markera dessa f�r borttagning.
  }
  {
    <a Flags>Flaggor</a> �r anv�ndbara f�r att markera upp partier med karakt�ristika du vill s�ka p� senare,
    s�som bondest�llning, taktiska finesser, osv. Du kan s�ka p� flaggor n�r du s�ker p� f�lt i partihuvudet.
  }
  {
    Om du g�r igenom ett parti, och helt enkelt vill testa en ny variant utan att f�r�ndra partiet i sig, kan
    du sl� p� F�rs�ksl�get (Trial mode) genom att trycka <b>Ctrl+Mellanslag</b> eller fr�n verktygsraden. �terg� till
    ursprungspartiet n�r du �r klar.
  }
  {
    Om du vill hitta det mest betydelsefulla partiet (med h�gst rankade spelare) i en viss position kan du
    �ppna <a Tree>Tr�df�nstret</a> och i denna �ppna listan med de b�sta partierna. I tr�df�nstret kan du till
    och med begr�nsa partierna till endast ett s�rskilt resultat.
  }
  {
    Ett bra s�tt att studera en �ppning �r att i en stor databas sl� p� tr�ningsl�get i <a Tree>Tr�df�nstret</a>,
    och sedan spela igenom databasen f�r att se vilka varianter som f�rekommer oftast.
  }
  {
    Om du har tv� databaser �ppna, och vill ha ett varianttr�d att studera medan du g�r igenom ett parti
    i den andra databasen kan du <b>L�sa</b> tr�det i den databasen och sedan byta till den andra.
  }
  {
    <a Tmt>Turneringss�karen</a> �r inte bara anv�ndbar f�r att lokalisera en s�rskild
    turnering. Du kan ocks� anv�nda den f�r att s�ka efter turneringar en specifik spelare nyligen deltagit
    i, eller att bl�ddra genom turneringar som genomf�rts i ett visst land.
  }
  {
    Det finns ett antal vanliga st�llningstyper definierade i <a Searches Material>S�k Material/St�llning</a>
    f�nstret som du kan ha nytta av n�r du studerar �ppningar och mittspel.
  }
  {
    N�r du s�ker p� <a Searches Material>Material eller St�llning</a> kan det ofta vara f�rdelaktigt att begr�nsa
    s�kningen till s�dana partier d�r st�llningen eller materialet f�rekommit i �tminstone n�gra drag. Du slipper
    du f� med tr�ffar d�r situationen du s�ker uppkom helt tillf�lligt.
  }
  {
    Om du har en viktig databas du inte vill radera av misstag kan du v�lja  <b>Enbart l�sbar</b> fr�n <b>Arkiv</b>
    menyn efter att du har �ppnat den. Alternativt kan du s�tta dess filr�ttigheter till enbart l�sr�ttigheter.
  }
  {
    Om du anv�nder XBoard eller WinBoard (eller n�got annat program som kan hantera FEN-notation via Urklippshanteraren)
    och vill kopiera den aktuella st�llningen fr�n ditt program �r det snabbaste s�ttet att g�ra det s� h�r:
    V�lj <b>Kopiera position</b> fr�n <b>Arkiv</b>-menyn i Xboard/Winboard, v�lj sedan <b>Klistra i utg�ngsst�llning</b>
    i Redigera menyn i Scid.
  }
  {
    I <a Searches Header>S�k i huvud</a>, �r spelare-, evenemang-, plats-, och rondnamn ok�nsliga f�r VERSALER och
    gemener och ger tr�ffar varhelst de finns i ett namn. Om du vill kan du ange att du ist�llet vill att s�kningen <b>ska</b>
    ta VERSALER/gemener i beaktande. Genom att anv�nda jokertecken inom citationstecken (d�r "?" = motsvarar obest�mt
    enskilt tecken och "*" = noll eller flera tecken). Om du exempelvis anger "*BEL" (med citationstecken) i det platsf�ltet
    hittar du alla partier spelade i Belgien, men exkluderar de som spelats i Belgrad.
  }
  {
    Om du vill redigera ett drag i ett parti utan att f�rlora alla de drag som spelats efter detta kan du �ppna
    <a Import>Importera ett parti i PGN-format</a> f�nstret i Verktygsmenyn. Klicka d�r p� <b>Klistra i aktuellt parti</b>
    , redigera partiet och avsluta med <b>Importera</b>.
  }
  {
    Om du har en ECO klassificeringsfil laddad, kan du n� den mest exakt klassificerade st�llningen f�r det aktuella partiet
    genom att v�lja <b>Identifiera �ppning</b> i <b>Partier</b> menyn (kortkommando: <b>Ctrl+Shift+D</b>).
  }
  {
    N�r du vill se hur stor en fil �r, eller vill se n�r den senast redigerades innan du �ppnar den kan du anv�nda
    <a Finder>S�k filer</a> (Arkiv - S�k filer).
  }
  {
    En <a repetoire>Repetoarfil</a> �r ett utm�rkt s�tt att h�lla koll p� dina favorit�ppningar, eller hitta partier d�r
    d�r de har spelats. N�r du v�l har skapat en repetoarfil kan du genoms�ka nya filer utifr�n repetoarfilen, och titta
    igenom alla partier med just dina �ppningar.
  }
  {
    Genom att skapa en <a OpReport>�ppningsrapport</a> har du en utm�rkt m�jlighet att l�ra dig en ny spel�ppning. Du kan f�
    information om resultat, hur remiaktig den �r, vilka vanliga positionella teman som dyker upp, och mycket mer.
  }
  {
    Du kan kommentera den aktuella st�llningen med de vanligaste symbolerna (!, !?, +=, etc) utan att beh�va anv�nda
    <a Comment>Kommentarseditorn<a>. D�r du exempelvis vill ange ett bra drag skriver du "!" och trycker sedan ENTER
    s� l�ggs "!" symbolen till draget. Se �ven hj�lpsidan <a Moves>Ange drag</a> f�r mer detaljerad information.
  }
  {
    Om du bl�ddrar igenom �ppningarna i en databas i <a Tree>Tr�df�nstret</a>, f�r du en anv�ndbar �verblick �ver hur
    v�l �ppningen fungerar i sentida partier mellan h�gratade spelare om du �ppnar statistikf�nstret (kortkommando: Ctrl+I).
  }
  {
    Du �ndrar enkelt huvudf�nstrets br�dstorlek genom att h�lla nere <b>Ctrl</b> och <b>Shift</b> tangenterna, samtidigt
    som du trycker h�ger- eller v�nster piltangent.
  }
  {
    Efter genomf�rd <a Searches>S�kning</a>, �r det enkelt att navigera genom urvalet genom att h�lla nere <b>Ctrl</b>
    tangenten samtidigt som du trycker upp- eller nerpiltangenterna f�r att g� till f�reg�ende eller n�sta parti i
    <a Searches filtret>Urvalet</a>.
  }
{
  Du kan relativt enkelt rita pilar och f�rga rutor till dina kommentarer. �ppna <b>Kommentarseditorn</b>, klicka p� <b>Infoga symbol</b> och v�lj �nskad f�rg. Om du nu klickar p� en f�rsta ruta, och d�refter klickar p� en andra s� dras en pil i �nskad f�rg fr�n den f�rsta till den andra rutan. Klickar du bara p� en ruta, blir den f�rgad.
  }
}

# end of swedish.tcl
