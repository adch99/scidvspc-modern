# czech.tcl: Czech menus and help for Scid.
# Contributed by Pavel Hanak and Vlastimil Babula
# Untranslated messages are marked with a "***" comment.

addLanguage C Czech 0 iso8859-2

proc setLanguage_C {} {

# File menu:
menuText C File "Soubor" 0
menuText C FileNew "Nov�..." 0 {Vytvo�it novou Scid datab�zi}
menuText C FileOpen "Otev��t..." 0 {Otev��t existuj�c� Scid datab�zi}
menuText C FileClose "Zav��t" 0 {Zav��t aktivn� Scid datab�zi}
menuText C FileFinder "Vyhled�va�" 2 {Otev��t okno vyhled�va�e soubor�}
menuText C FileSavePgn "Save Pgn..." 0 {}
# ====== TODO To be translated ======
menuText C FileOpenBaseAsTree "Open Base as Tree" 13   {Open a base and use it in Tree window}
# ====== TODO To be translated ======
menuText C FileOpenRecentBaseAsTree "Open Recent as Tree" 0   {Open a recent base and use it in Tree window}
menuText C FileBookmarks "Z�lo�ky" 2 {Menu z�lo�ek (kl�vesa: Ctrl+B)}
menuText C FileBookmarksAdd "P�idat z�lo�ku" 0 \
  {Z�lo�ka aktu�ln� pozice a partie z datab�ze}
menuText C FileBookmarksFile "Za�adit z�lo�ku" 0 \
  {Za�adit z�lo�ku pro aktu�ln� partii a pozici}
menuText C FileBookmarksEdit "Editovat z�lo�ky..." 0 \
  {Editovat menu z�lo�ek}
menuText C FileBookmarksList "Zobrazit slo�ky jako jedin� seznam" 0 \
  {Zobrazit slo�ky se z�lo�kami jako jedin� seznam, bez podnab�dek}
menuText C FileBookmarksSub "Zobrazit slo�ky jako podnab�dky" 9 \
  {Zobrazit z�lo�kov� slo�ky jako podnab�dky, ne jako jedin� seznam}
menuText C FileReadOnly "Pouze pro �ten�..." 0 \
  {Nastavit aktu�ln� datab�zi jako jen ke �ten�, a zabr�nit tak zm�n�m}
menuText C FileSwitch "P�epnout se do datab�ze" 15 \
  {P�epnout se do jin� otev�en� datab�ze}
menuText C FileExit "Ukon�it" 0 {Ukon�it Scid}

# Edit menu:
menuText C Edit "Editace" 0
menuText C EditAdd "P�idat variantu" 0 {P�idat variantu k tomuto tahu v partii}
menuText C EditPasteVar "Vlozit variace" 0
menuText C EditDelete "Vymazat variantu" 0 {Vymazat variantu k tomuto tahu}
menuText C EditFirst "Za�adit jako prvn� variantu" 0 \
  {Za�adit variantu na prvn� m�sto v seznamu variant}
menuText C EditMain "Pov��it st�vaj�c� variantu na hlavn�" 30 \
  {Pov��it st�vaj�c� variantu na hlavn� variantu}
menuText C EditTrial "Zkusit variantu" 1 \
    {Spustit/Ukon�it zku�ebn� m�d pro testov�n� my�lenky na �achovnici}
menuText C EditStrip "Odstranit" 0 {Odstranit koment��e nebo varianty z t�to partie}
menuText C EditUndo "Vz�t zp�t" 0 {Vz�t zp�t posledn� zm�nu v partii}
# todo
menuText C EditRedo "Redo" 0
menuText C EditStripComments "Koment��e" 0 \
  {Odstranit v�echny pozn�mky a anotace z t�to partie}
menuText C EditStripVars "Varianty" 0 {Odstranit v�echny varianty z t�to partie}
menuText C EditStripBegin "Tahy ze za��tku" 5 \
  {Odstranit tahy ze za��tku partie}
menuText C EditStripEnd "Tahy do konce" 5 \
  {Odstranit tahy do konce partie}
# ====== TODO To be translated ======
menuText C EditFlip "Flip Board" 0 {Flip the board}
menuText C EditReset "Vypr�zdnit schr�nku" 11 \
  {Kompletn� vypr�zdn�n� datab�ze schr�nka}
menuText C EditCopy "Zkop�rovat tuto partii do schr�nky" 23 \
  {Zkop�rovat tuto parti� do datab�ze schr�nka}
menuText C EditPaste "Vlo�it posledn� partii ze schr�nky" 24 \
  {Vlo�it aktivn� partii z datab�ze schr�nka}
menuText C EditPastePGN "Paste Clipboard text as PGN game..." 10 \
  {Interpret the clipboard text as a game in PGN notation and paste it here} ;# ***
menuText C EditSetup "Nastavit v�choz� pozici..." 0 \
  {Nastavit v�choz� pozici pro tuto partii}
menuText C EditCopyBoard "Kop�rovat pozici" 4 \
  {Kop�rovat aktu�ln� pozici ve FEN notaci do textov�ho v�b�ru (do clipboardu)}
menuText C EditCopyPGN "Kop�rovat PGN" 0 {}
menuText C EditPasteBoard "Vlo�it po��te�n� pozici" 1 \
  {Nastavit po��te�n� pozici z aktu�ln�ho textov�ho v�b�ru (z clipboardu)}

# Game menu:
menuText C Game "Partie" 0
menuText C GameNew "Nov� partie" 0 \
  {Nastavit novou partii, v�echny proveden� zm�ny budou ztraceny}
menuText C GameFirst "Nat�hnout prvn� partii" 10 {Nat�hnout prvn� partii z filtrovan�ch parti�}
menuText C GamePrev "Nat�hnout p�edchoz� partii" 13 {Nat�hnout p�edchoz� partii z filtrovan�ch parti�}
menuText C GameReload "Znovunat�hnout aktu�ln� partii" 0 \
  {Znovunata�en� aktu�ln� partie, v�echny doposud proveden� zm�ny budou ztraceny}
menuText C GameNext "Nat�hnout n�sleduj�c� partii" 14 {Nat�hnout n�sleduj�c� partii z filtrovan�ch parti�}
menuText C GameLast "Nat�hnout posledn� partii" 11 {Nat�hnout posledn� partii z filtrovan�ch parti�}
menuText C GameRandom "Nat�hnout partii n�hodn�" 1 {Nat�hnout n�hodn� vybranou partii z filtru}
menuText C GameNumber "Nat�hnout partii ��slo..." 19 \
  {Nat�hnout partii ��slo...}
menuText C GameReplace "Ulo�it: p�eps�n� partie..." 0 \
  {Ulo�it tuto partii - p�ep��e p�vodn� verzi}
menuText C GameAdd "Ulo�it: p�id�n� nov� partie..." 1 \
  {Ulo�it tuto partii jako novou partii v datab�zi}
menuText C GameInfo "Set Informace o hre" 0
menuText C GameBrowse "Proch�zet hry" 0
menuText C GameList "Seznam vsech her" 0
# ====== TODO To be translated ======
menuText C GameDelete "Delete Game" 0
menuText C GameDeepest "Identifikace zah�jen�" 0 \
  {P�ej�t na koncovou pozici z ECO knihovny, kter� odpov�d� zvolen�mu zah�jen�}
menuText C GameGotoMove "P�ej�t na tah ��slo..." 10 \
  {P�ej�t v aktu�ln� partii do pozice udan� ��slem tahu}
menuText C GameNovelty "Hledat novinku..." 0 \
  {Hledat prvn� tah t�to partie, kter� doposud nebyl hr�n}

# Search Menu:
menuText C Search "Hledat" 0
menuText C SearchReset "Vy�istit filtr" 0 {Vy�istit filtr - vybr�ny budou v�echny partie}
menuText C SearchNegate "Negace filtru" 0 {Negace filtru -  vybr�ny budou pouze partie vy�at� p�edch�zej�c�m filtrem}
menuText C SearchEnd "Presun na posledn� filtr" 0
menuText C SearchCurrent "Aktu�ln� pozice..." 0 {Hledat aktu�ln� pozici}
menuText C SearchHeader "Hlavi�ka..." 0 {Hledat podle hlavi�ky partie (hr��, turnaj apod.)}
menuText C SearchMaterial "Materi�l/Vzor..." 0 {Hledat podle materi�lu nebo podle vzoru}
menuText C SearchMoves {Tahy} 0 {}
menuText C SearchUsing "Hledat pomoc� souboru voleb..." 14 {Hledat s pou�it�m voleb zapsan�ch v souboru}

# Windows menu:
menuText C Windows "Okna" 0
menuText C WindowsGameinfo "Game Info" 0 {Show/hide the game info panel}
menuText C WindowsComment "Editor koment���" 0 {Otev��t/zav��t editor koment���}
menuText C WindowsGList "Seznam parti�" 2 {Otev��t/zav��t okno se seznamem parti�}
menuText C WindowsPGN "Okno PGN" 5 {Otev��t/zav��t okno PGN}
menuText C WindowsCross "Turnajov� tabulka" 0 {Uk�zat turnajovou tabulku pro tuto partii}
menuText C WindowsPList "Vyhled�va� hr���" 11 {Otev��t/zav��t okno vyhled�va�e hr���}
menuText C WindowsTmt "Vyhled�va� turnaj�" 11 {Otev��t/zav��t okno vyhled�va�e turnaj�}
menuText C WindowsSwitcher "V�b�r datab�ze" 0 {Otev��t/zav��t okno pro v�b�r datab�z�}
menuText C WindowsMaint "Okno �dr�by" 6 {Otev��t/zav��t okno �dr�by}
menuText C WindowsECO "ECO prohl��e�" 1 {Otev��t/zav��t okno ECO prohl��e�e}
menuText C WindowsStats "Statistick� okno" 0 {Otev��t/zav��t statistick� okno filtru}
menuText C WindowsTree "Stromov� okno" 4 {Otev��t/zav��t stromov� okno}
menuText C WindowsTB "Okno tabulky koncovek" 13 {Otev��t/zav��t okno tabulek koncovek}
# ====== TODO To be translated ======
menuText C WindowsBook "Book Window" 0 {Open/close the Book window}
# ====== TODO To be translated ======
menuText C WindowsCorrChess "Correspondence Window" 0 {Open/close the Correspondence window}

# Analyse menu:
menuText C Analyse "Analyse" 0 {"anal�zu"}
menuText C AnalyseEngineList "Program pro anal�zu..." 0 \
  {Spustit/zastavit �achov� program pro anal�zu pozice}
menuText C AnalyseRating "Graf ratingu" 5 \
  {Zobrazit graf v�voje ratingu hr��� aktu�ln� partie}
menuText C AnalyseScore "Graf sk�re" 6  {Zobrazit okno grafu sk�re}
# ====== TODO To be translated ======
menuText C AnalyseStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText C AnalyseStartEngine2 "Start engine 2" 0  {Start engine 2}


# Tools menu:
menuText C Tools "N�stroje" 3
menuText C ToolsAnalysis "Program pro anal�zu..." 0 \
  {Spustit/zastavit �achov� program pro anal�zu pozice}
menuText C ToolsEmail "Email mana�er" 1 \
  {Otev��t/zav��t okno emailov�ho mana�era}
menuText C ToolsFilterGraph "Graf filtru" 0 \
  {Otev��t/zav��t okno grafu filtru}
# ====== TODO To be translated ======
menuText C ToolsAbsFilterGraph "Abs. Filter Graph" 7 {Open/close the filter graph window for absolute values}
menuText C ToolsOpReport "Profil zah�jen�" 7 \
  {Generovat profil zah�jen� pro aktu�ln� pozic�}
menuText C ToolsTracker "Stopa� figur"  0 {Otev��t okno stopa�e figur}
# ====== TODO To be translated ======
menuText C ToolsTraining "Training"  0 {Training tools (tactics, openings,...) }
menuText C ToolsComp "Tournament" 2 {Chess engine tournament}
# ====== TODO To be translated ======
menuText C ToolsTacticalGame "Tactical game"  0 {Play a game with tactics}
# ====== TODO To be translated ======
menuText C ToolsSeriousGame "Serious game"  0 {Play a serious game}
# ====== TODO To be translated ======
menuText C ToolsTrainTactics "Tactics"  0 {Solve tactics}
# ====== TODO To be translated ======
menuText C ToolsTrainCalvar "Calculation of variations"  0 {Calculation of variations training}
# ====== TODO To be translated ======
menuText C ToolsTrainFindBestMove "Find best move"  0 {Find best move}
# ====== TODO To be translated ======
menuText C ToolsTrainFics "Internet"  0 {Play on freechess.org}
# ====== TODO To be translated ======
menuText C ToolsBookTuning "Book tuning" 0 {Book tuning}
menuText C ToolsMaint "�dr�ba" 2 {N�stroje pro �dr�bu datab�ze Scidu}
menuText C ToolsMaintWin "Okno �dr�by" 0 \
  {Otev��t/zav��t okno pro �dr�bu Scid datab�ze}
menuText C ToolsMaintCompact "Kompaktov�n� datab�ze..." 13 \
  {Kompaktov�n� datab�zov�ch soubor�, odstran�n� vymazan�ch parti� a nepou��van�ch jmen}
menuText C ToolsMaintClass "ECO klasifikace parti�..." 0 \
  {P�epo��t�n� ECO k�d� v�ech parti�}
menuText C ToolsMaintSort "Set��dit datab�zi..." 0 \
  {Set��dit v�echny partie v datab�zi}
menuText C ToolsMaintDelete "Vymaz�n� zdvojen�ch parti�..." 0 \
  {Hledat zdvojen� partie a ozna�it je pro vymaz�n�}
menuText C ToolsMaintTwin "Kontrola zdvojen�ch parti�" 0 \
  {Otev��t/aktualizovat okno pro kontrolu zdvojen�ch parti�}
menuText C ToolsMaintNameEditor "Editor jmen" 0 \
  {Otev��t/zav��t editor jmen}
menuText C ToolsMaintNamePlayer "Kontrola pravopisu hr���..." 19 \
  {Kontrola pravopisu jmen hr��� s vyu�it�m souboru pro kontrolu pravopisu}
menuText C ToolsMaintNameEvent "Kontrola pravopisu turnaj�..." 19 \
  {Kontrola pravopisu n�zv� turnaj� s vyu�it�m souboru pro kontrolu pravopisu}
menuText C ToolsMaintNameSite "Kontrola pravopisu m�st..." 19 \
  {Kontrola pravopisu m�st turnaj� s vyu�it�m souboru pro kontrolu pravopisu}
menuText C ToolsMaintNameRound "Kontrola pravopisu kol..." 19 \
  {Kontrola pravopisu kol s vyu�it�m souboru pro kontrolu pravopisu}
# ====== TODO To be translated ======
menuText C ToolsMaintFixBase "Repair base" 0 {Try to repair a corrupted base}
# ====== TODO To be translated ======
menuText C ToolsConnectHardware "Connect Hardware" 0 {Connect external hardware}
# ====== TODO To be translated ======
menuText C ToolsConnectHardwareConfigure "Configure..." 0 {Configure external hardware and connection}
# ====== TODO To be translated ======
menuText C ToolsConnectHardwareNovagCitrineConnect "Connect Novag Citrine" 0 {Connect Novag Citrine}
# ====== TODO To be translated ======
menuText C ToolsConnectHardwareInputEngineConnect "Connect Input Engine" 0 {Connect Input Engine (e.g. DGT)}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======
menuText C ToolsPInfo "Informace o hr���ch"  0 \
  {Otev��t/aktualizovat okno s informacemi o hr���ch}
menuText C ToolsPlayerReport "Profil hr��e" 7 \
  {Generovat profil hr��e}
menuText C ToolsRating "Graf ratingu" 5 \
  {Zobrazit graf v�voje ratingu hr��� aktu�ln� partie}
menuText C ToolsScore "Graf sk�re" 6  {Zobrazit okno grafu sk�re}
menuText C ToolsExpCurrent "Export aktu�ln� partie" 7 \
  {Zapsat aktu�ln� partii do textov�ho souboru}
menuText C ToolsExpCurrentPGN "Export partie do PGN souboru..." 17 \
  {Zapsat aktu�ln� partii do PGN souboru}
menuText C ToolsExpCurrentHTML "Export partie do HTML souboru..." 17 \
  {Zapsat aktu�ln� partii do HTML souboru}
# ====== TODO To be translated ======
menuText C ToolsExpCurrentHTMLJS "Export Game to HTML and JavaScript File..." 15 {Write current game to a HTML and JavaScript file}
menuText C ToolsExpCurrentLaTeX "Export partie do LaTeX souboru..." 17 \
  {Zapsat aktu�ln� partii do LaTeX souboru}
# ====== TODO To be translated ======
menuText C ToolsExpFilter "Export filtrovan�ch parti�" 7 \
  {Zapsat v�echny filtrovan� partie do textov�ho souboru}
menuText C ToolsExpFilterPGN "Export filtrovan�ch parti� do PGN souboru..." 30 \
  {Zapsat v�echny filtrovan� partie do PGN souboru}
menuText C ToolsExpFilterHTML "Export filtrovan�ch parti� do HTML souboru..." 30 \
  {Zapsat v�echny filtrovan� partie do HTML souboru}
# ====== TODO To be translated ======
menuText C ToolsExpFilterHTMLJS "Export Filter to HTML and JavaScript File..." 17 {Write all filtered games to a HTML and JavaScript file}
menuText C ToolsExpFilterLaTeX "Export filtrovan�ch parti� do LaTeX souboru..." 30 \
  {Zapsat v�echny filtrovan� partie do LaTeX souboru}
# ====== TODO To be translated ======
menuText C ToolsExpFilterEPD "Export Filter to EPD/FEN" 17 {Write all filtered games to an EPD File}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
menuText C ToolsExpFilterGames "Export Gamelist to Text" 19 {Print a formatted Gamelist.}
menuText C ToolsImportOne "Import jedn� PGN partie..." 7 \
  {Importovat partii z PGN z�pisu}
menuText C ToolsImportFile "Import souboru PGN parti�..." 10 \
  {Importovat partie z PGN souboru}
# ====== TODO To be translated ======
menuText C ToolsStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText C ToolsStartEngine2 "Start engine 2" 0  {Start engine 2}
# ====== TODO To be translated ======
menuText C ToolsScreenshot "desce Screenshot" 0
menuText C Play "Hra" 0
menuText C CorrespondenceChess "Koresponden�n� �ach" 0 {Funkce pro koresponden�n� �ach zalo�en� na e-mailu a Xfcc}
menuText C CCConfigure "Konfigurovat..." 0 {Konfigurovat extern� n�stroje a obecn� nastaven�}
menuText C CCConfigRelay "Konfigurovat sledov�n�..." 10 {Konfigurovat partie ke sledov�n�}
menuText C CCOpenDB "Otev��t datab�zi..." 0 {Otev��t v�choz� koresponden�n� datab�zi}
menuText C CCRetrieve "St�hnout partie" 0 {St�hnout partie s pomoc� extern�ho (Xfcc-)n�stroje}
menuText C CCInbox "Zpracovat p��choz� schr�nku" 0 {Zpracovat v�echny soubory v p��choz� schr�nce scidu}
menuText C CCSend "Poslat tah" 0 {Poslat tah prost�ednictv�m e-mailu nebo extern�ho (Xfcc-)n�stroje}
menuText C CCResign "Vzd�t" 0 {Vzd�t (nikoliv prost�ednictv�m e-mailu)}
menuText C CCClaimDraw "Reklamovat rem�zu" 0 {Poslat tah a reklamovat rem�zu (nikoliv prost�ednictv�m e-mailu)}
menuText C CCOfferDraw "Nab�dnout rem�zu" 0 {Odeslat tah a nab�dnout rem�zu (nikoliv prost�ednictv�m e-mailu)}
menuText C CCAcceptDraw "P�ijmout rem�zu" 0 {P�ijmout nab�dku rem�zy (nikoliv prost�ednictv�m e-mailu)}
menuText C CCNewMailGame "Nov� e-mailov� partie..." 0 {Za��t novou e-mailovou partii}
menuText C CCMailMove "Mailovat tah..." 0 {Odeslat tah soupe�i prost�ednictv�m e-mailu}
menuText C CCGamePage "Str�nka partie..." 0 {Vyvolat partii pomoc� webov�ho prohl��e�e}
menuText C CCEditCopy "Zkop�rovat seznam parti� do schr�nky" 0 {Zkop�rovat partie jako CVS seznam do schr�nky}


# Options menu:
menuText C Options "Volby" 0
menuText C OptionsBoard "�achovnice" 1 {Volby zobrazen� �achovnice}
menuText C OptionsColour "Background Colour" 0 {Default text widget color}
# ====== TODO To be translated ======
menuText C OptionsBackColour "Background" 0 {Default text widget color}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
menuText C OptionsMainLineColour "Mainline Arrows" 0 {Mainline arrows}
# ====== TODO To be translated ======
menuText C OptionsVarLineColour "Variation Arrows" 0 {Variation arrows}
# ====== TODO To be translated ======
menuText C OptionsEngineLineColour "Engine Arrows" 0 {Engine arrows}
# ====== TODO To be translated ======
menuText C OptionsRowColour "Rows" 0 {Default tree/book row color}
# ====== TODO To be translated ======
menuText C OptionsHighlightColour "Highlight" 0 {Default text highlight color}
# ====== TODO To be translated ======
menuText C OptionsSwitcherColour "Switcher" 0 {Default db switcher color}
# ====== TODO To be translated ======
menuText C OptionsProgressColour "Progressbar" 0 {Default progressbar color}
# ====== TODO To be translated ======
menuText C OptionsScoreColour "Score Graph" 0 {}
# ====== TODO To be translated ======
menuText C OptionsScoreBarColour "Score Graph current" 0 {}
menuText C OptionsNames "Jm�na m�ch hr���..." 0 {Editovat jm�na m�ch hr���}
menuText C OptionsExport "Volby exportu" 7 {Zm�nit volby pro textov� export}
menuText C OptionsFonts "Fonty" 2 {Zm�nit fonty}
menuText C OptionsFontsRegular "Z�kladn�" 0 {Zm�nit z�kladn� font}
menuText C OptionsFontsMenu "Menu" 1 {Zm�nit font pro menu}
menuText C OptionsFontsSmall "Mal�" 0 {Zm�nit mal� font}
menuText C OptionsFontsFixed "Fixn�" 0 {Zm�nit font fixn� ���ky}
menuText C OptionsGInfo "Informace o partii" 0 {Volby pro informace o partii}
menuText C OptionsFics "FICS" 0
menuText C OptionsFicsAuto "Autopromote kr�lovna" 0
# ====== TODO To be translated ======
menuText C OptionsFicsClk "Store Clock times" 0
# ====== TODO To be translated ======
menuText C OptionsFicsColour "Text Colour" 0
# ====== TODO To be translated ======
menuText C OptionsFicsSize "Board Size" 0
# ====== TODO To be translated ======
menuText C OptionsFicsButtons "User Buttons" 0
# ====== TODO To be translated ======
menuText C OptionsFicsCommands "Init Commands" 0
# ====== TODO To be translated ======
menuText C OptionsFicsNoRes "No Results" 0
# ====== TODO To be translated ======
menuText C OptionsFicsNoReq "No Requests" 0
# ====== TODO To be translated ======
menuText C OptionsFicsPremove "Allow Premove" 0
menuText C OptionsLanguage "Jazyk" 0 {Vybrat jazyk menu}
# ====== TODO To be translated ======
menuText C OptionsMovesTranslatePieces "Translate pieces" 0 {Translate first letter of pieces}
# ====== TODO To be translated ======
menuText C OptionsMovesHighlightLastMove "Highlight last move" 0 {Highlight last move}
# ====== TODO To be translated ======
menuText C OptionsMovesHighlightLastMoveDisplay "Show" 0 {Display last move Highlight}
# ====== TODO To be translated ======
menuText C OptionsMovesHighlightLastMoveWidth "Width" 0 {Thickness of line}
# ====== TODO To be translated ======
menuText C OptionsMovesHighlightLastMoveColor "Select Color" 0 {Color of line}
# ====== TODO To be translated ======
menuText C OptionsMovesColorSelected "Color Selected Square" 0 {Color move}
menuText C OptionsMoves "Tahy" 0 {Volby pro zad�v�n� tah�}
menuText C OptionsMovesAsk "Pt�t se p�ed nahrazen�m tah�" 0 \
  {Pt�t se v�dy p�ed p�eps�n�m existuj�c�ho tahu}
menuText C OptionsMovesAnimate "�as animace" 4 \
  {Nastavit �as pou�it� na animaci tah�}
menuText C OptionsMovesDelay "Prodleva p�i automatick�m p�ehr�v�n�..." 1 \
  {Nastavit �asovou prodlevu p�i automatick�m p�ehr�v�n�}
menuText C OptionsMovesCoord "Sou�adnicov� zad�v�n� tah�" 0 \
  {Povolit zad�v�n� tah� pomoc� sou�adnic (nap�. "g1f3")}
# ====== TODO To be translated ======
menuText C OptionsShowVarPopup "Show Variation Window" 0 {Turn on/off the display of a variations window}
# ====== TODO To be translated ======
menuText C OptionsMovesSpace "Add spaces after move number" 0 {Add spaces after move number}
menuText C OptionsMovesKey "Kl�vesnicov� dopl�ov�n�" 13 \
  {Zapnout/vypnout automatick� dopl�ov�n� tah� zad�van�ch kl�vesnic�}
menuText C OptionsMovesShowVarArrows "Zobrazit �ipky pro varianty" 0 {Zapnout/vypnout zobrazov�n� �ipek ukazuj�c�ch tahy variant}
menuText C OptionsNumbers "Form�t ��sel" 0 {Zvolit form�t ��sel}
menuText C OptionsStartup "P�i spu�t�n�" 4 {Zvolit okna, kter� se otev�ou p�i spu�t�n�}
menuText C OptionsTheme "T�ma" 0 {Zm�nit vzhled u�ivatelsk�ho rozhran�}
menuText C OptionsWindows "Okna" 0 {Volby oken}
menuText C OptionsWindowsIconify "Automatick� minimalizace" 12 \
   {Minimalizovat v�echna okna p�i minimalizov�n� hlavn�ho okna}
menuText C OptionsWindowsRaise "Automaticky do pop�ed�" 15 \
  {D�t do pop�ed� jist� okna, jsou-li zakryt�}
menuText C OptionsSounds "Sounds..." 2 {Configure move announcement sounds} ;# ***
menuText C OptionsWindowsDock "Zaparkovat okna" 0 {Zaparkovat okna}
menuText C OptionsWindowsSaveLayout "Ulo�it rozlo�en�" 0 {Ulo�it rozlo�en�}
menuText C OptionsWindowsRestoreLayout "Obnovit rozlo�en�" 0 {Obnovit rozlo�en�}
menuText C OptionsWindowsShowGameInfo "Uk�zat informace o partii" 0 {Uk�zat informace o partii}
menuText C OptionsWindowsAutoLoadLayout "Automaticky nat�hnout prvn� rozlo�en�" 0 {Automaticky na za��tku nat�hnout prvn� rozlo�en�}
# todo
menuText C OptionsWindowsAutoResize "Auto resize board" 0 {}
# ====== TODO To be translated ======
menuText C OptionsWindowsFullScreen "Fullscreen" 0 {Toggle fullscreen mode}
menuText C OptionsToolbar "N�strojov� li�ta..." 11 \
  {Konfigurovat n�strojovou li�tu hlavn�ho okna}
menuText C OptionsECO "Nat�hnout ECO soubor..." 10 {Nat�hnout soubor s klasifikac� ECO}
menuText C OptionsSpell "Nat�hnout soubor pro kontrolu pravopisu..." 21 \
  {Nat�hnout soubor Scidu pro kontrolu pravopisu}
menuText C OptionsTable "Adres�� pro tabulky koncovek..." 14 \
  {Vybrat soubor s tabulkami koncovek; v�echny tabulky koncovek v jeho adres��i budou pou�ity}
menuText C OptionsRecent "Ned�vn� soubory..." 0 \
  {Zm�nit po�et ned�vn�ch soubor� zobrazovan�ch v menu Soubor}
# ====== TODO To be translated ======
menuText C OptionsBooksDir "Books directory..." 0 {Sets the opening books directory}
# ====== TODO To be translated ======
menuText C OptionsTacticsBasesDir "Bases directory..." 0 {Sets the tactics (training) bases directory}
# ====== TODO To be translated ======
menuText C OptionsInformant "Configure informant values" 0
menuText C OptionsSave "Ulo�it volby" 0 \
  "Ulo�it v�echny nastaviteln� volby do souboru $::optionsFile"
# ====== TODO To be translated ======
menuText C OptionsSaveBases "Save Bases as Default" 0
menuText C OptionsAutoSave "Automaticky ukl�dat volby p�i ukon�en�" 20 \
  {Automaticky ukl�dat v�echny volby p�i ukon�en� Scidu}

# Help menu:
menuText C Help "N�pov�da" 0
menuText C HelpContents "Obsah" 0 {Zobrazit str�nku n�pov�dy s obsahem}
menuText C HelpIndex "Index" 0 {Zobrazit str�nku n�pov�dy s indexem}
menuText C HelpGuide "Rychl� pr�vodce" 7 {Zobrazit str�nku n�pov�dy s rychl�m pr�vodcem}
menuText C HelpHints "Rady" 0 {Zobrazit str�nku n�pov�dy s radami}
menuText C HelpContact "Kontakt" 0 {Zobrazit str�nku n�pov�dy s kontaktn�mi informacemi}
menuText C HelpTip "Tip dne" 4 {Zobrazit u�ite�n� tip Scidu}
menuText C HelpStartup "Startovac� okno" 0 {Zobrazit startovac� okno}
menuText C HelpAbout "O aplikaci Scid" 2 {Informace o aplikaci Scid}

# Game info box popup menu:
menuText C GInfoHideNext "Skr�t n�sleduj�c� tah" 0
# ====== TODO To be translated ======
menuText C GInfoShow "Side to Move" 0
# ====== TODO To be translated ======
menuText C GInfoCoords "Toggle Coords" 0
menuText C GInfoMaterial "Uk�zat hodnoty materi�lu" 15
menuText C GInfoFEN "Uk�zat FEN" 7
menuText C GInfoMarks "Zobrazovat barevn� pole a �ipky" 11
menuText C GInfoWrap "Zalamovat dlouh� ��dky" 0
menuText C GInfoFullComment "Zobrazit �pln� koment��" 15
menuText C GInfoPhotos "Zobrazit fotky" 10
menuText C GInfoTBNothing "Tabulky koncovek: nic" 19
menuText C GInfoTBResult "Tabulky koncovek: jen v�sledek" 23
menuText C GInfoTBAll "Tabulky koncovek: v�sledek a nejlep�� tahy" 39
menuText C GInfoDelete "Vymazat/Nemazat tuto partii" 0
menuText C GInfoMark "Ozna�it/Odzna�it tuto partii" 0
# ====== TODO To be translated ======
menuText C GInfoMenuBar "Menu Bar"  0
# ====== TODO To be translated ======
menuText C GInfoToolBar "Tool Bar"  0
# ====== TODO To be translated ======
menuText C GInfoButtonBar "Button Bar"  0
# ====== TODO To be translated ======
menuText C GInfoStatusBar "Status Bar"  0
# ====== TODO To be translated ======
translate C FlipBoard {Flip board}
# ====== TODO To be translated ======
translate C RaiseWindows {Raise windows}
# ====== TODO To be translated ======
translate C AutoPlay {Autoplay}
# ====== TODO To be translated ======
translate C TrialMode {Trial mode}
# ====== TODO To be translated ======
translate C KeepOpen {Keep open after startup}

# General buttons:
# ====== TODO To be translated ======
translate C Apply {Apply}
translate C Back {Zp�t}
translate C Browse {Prohl��et}
translate C Cancel {Zru�it}
# ====== TODO To be translated ======
translate C Continue {Continue}
translate C Clear {Vy�istit}
translate C Close {Zav��t}
translate C Contents {Obsah}
translate C Defaults {P�edvolen�}
translate C Delete {Vymazat}
translate C Graph {Graf}
translate C Help {N�pov�da}
translate C Import {Import}
translate C Index {Index}
translate C LoadGame {Nat�hnout partii}
translate C BrowseGame {Prohl�dnout partii}
translate C MergeGame {P�ipojit partii}
# ====== TODO To be translated ======
translate C MergeGames {Merge Games}
translate C Preview {N�hled}
translate C Revert {Vr�tit se}
translate C Save {Ulo�it}
# ====== TODO To be translated ======
translate C DontSave {Don't Save}
translate C Search {Hledat}
translate C Stop {Stop}
translate C Store {Uschovat}
translate C Update {Aktualizovat}
translate C ChangeOrient {Zm�nit orientaci okna}
translate C ShowIcons {Show Icons} ;# ***
# ====== TODO To be translated ======
translate C ConfirmCopy {Confirm Copy}
translate C None {Nic}
translate C First {Prvn�}
translate C Current {Aktu�ln�}
translate C Last {Posledn�}
# ====== TODO To be translated ======
translate C Font {Font}
# ====== TODO To be translated ======
translate C Change {Change}
# ====== TODO To be translated ======
translate C Random {Random}

# General messages:
translate C game {partie}
translate C games {partie}
translate C move {tah}
translate C moves {tahy}
translate C all {v�e}
translate C Yes {Ano}
translate C No {Ne}
translate C Both {Oba}
translate C King {Kr�l}
translate C Queen {D�ma}
translate C Rook {V��}
translate C Bishop {St�elec}
translate C Knight {Jezdec}
translate C Pawn {P��ec}
translate C White {B�l�}
translate C Black {�ern�}
translate C Player {Hr��}
translate C Rating {Rating}
translate C RatingDiff {Rozd�l v ratingu (B�l� - �ern�)}
translate C AverageRating {Pr�m�rn� rating}
translate C Event {Turnaj}
translate C Site {M�sto}
translate C Country {Zem�}
translate C IgnoreColors {Ignorovat barvy}
# ====== TODO To be translated ======
translate C MatchEnd {End pos only}
translate C Date {Datum}
translate C EventDate {Datum turnaje}
translate C Decade {Dek�da}
translate C Year {Rok}
translate C Month {M�s�c}
translate C Months {Leden �nor B�ezen Duben Kv�ten �erven �ervenec Srpen Z��� ��jen Listopad Prosinec}
translate C Days {Ned Pon �te St� �tv P�t Sob}
translate C YearToToday {Rok zp�t}
translate C Result {V�sledek}
translate C Round {Kolo}
translate C Length {D�lka}
translate C ECOCode {ECO k�d}
translate C ECO {ECO}
translate C Deleted {Vymaz�n(a)}
translate C SearchResults {Hledat v�sledky}
translate C OpeningTheDatabase {Datab�ze zah�jen�}
translate C Database {Datab�ze}
translate C Filter {Filtr}
# ====== TODO To be translated ======
translate C Reset {Reset}
translate C IgnoreCase {Ignorovat Pouzdro}
translate C noGames {��dn� partie}
translate C allGames {v�echny partie}
translate C empty {pr�zdn�}
translate C clipbase {schr�nka}
translate C score {sk�re}
translate C Start {Po��te�n�}
translate C StartPos {Po��te�n� pozice}
translate C Total {Celkem}
translate C readonly {read-only} ;# ***
# ====== TODO To be translated ======
translate C altered {altered}
# ====== TODO To be translated ======
translate C tagsDescript {Extra tags (eg: Annotator "Anand")}
# ====== TODO To be translated ======
translate C prevTags {Use previous}
# ====== TODO To be translated ======
translate C value {Value}

# Standard error messages:
translate C ErrNotOpen {To nen� otev�en� datab�ze.}
translate C ErrReadOnly {Tato datab�ze je jen ke �ten�; nem��e b�t zm�n�na.}
translate C ErrSearchInterrupted {Hled�n� bylo p�eru�eno; v�sledky nejsou kompletn�.}

# Game information:
translate C twin {zdvojen�}
translate C deleted {vymazan�}
translate C comment {koment��}
translate C hidden {skryt�}
translate C LastMove {Posledn� tah}
translate C NextMove {N�sleduj�c� tah}
translate C GameStart {Za��tek partie}
translate C LineStart {Za��tek s�rie tah�}
translate C GameEnd {Konec partie}
translate C LineEnd {Konec s�rie tah�}

# Player information:
translate C PInfoAll {v�ech parti�}
translate C PInfoFilter {filtrovan�ch parti�}
translate C PInfoAgainst {V�sledky proti}
translate C PInfoMostWhite {Nej�ast�j�� zah�jen� za b�l�}
translate C PInfoMostBlack {Nej�ast�j�� zah�jen� za �ern�}
translate C PInfoRating {Historie ratingu}
translate C PInfoBio {Biografie}
translate C PInfoEditRatings {Editovat ratingy}
# ====== TODO To be translated ======
translate C PinfoEditName {Edit Name}
# ====== TODO To be translated ======
translate C PinfoLookupName {Lookup Name}

# Tablebase information:
translate C Draw {Rem�za}
translate C stalemate {pat}
# ====== TODO To be translated ======
translate C checkmate {checkmate}
translate C withAllMoves {se v�emi tahy}
translate C withAllButOneMove {se v�emi tahy krom� posledn�ho}
translate C with {s}
translate C only {jen}
translate C lose {prohr�t}
translate C loses {prohr�v�}
translate C allOthersLose {v�echny ostatn� prohr�vaj�}
translate C matesIn {matuje b�hem}
translate C longest {nejdel��}
translate C WinningMoves {vyhr�vaj�c� tahy}
translate C DrawingMoves {remizuj�c� tahy}
translate C LosingMoves {prohr�vaj�c� tahy}
translate C UnknownMoves {tahy s nezn�m�m v�sledkem}

# Tip of the day:
translate C Tip {Tip}
translate C TipAtStartup {Tip p�i spu�t�n�}

# Tree window menus:
menuText C TreeFile "Soubor" 0
menuText C TreeFileFillWithBase "Naplnit cache z datab�ze" 0 {Naplnit cachovac� soubor v�emi partiemi z aktu�ln� datab�ze}
menuText C TreeFileFillWithGame "Naplnit cache parti�" 0 {Naplnit cachovac� soubor aktu�ln� parti� z aktu�ln� datab�ze}
menuText C TreeFileCacheInfo "Informace o cache" 0 {Z�skat informaci o vyu�it� cache}
menuText C TreeFileSave "Ulo�it cache soubor" 0 \
  {Ulo�it stromov� cache (.stc) soubor}
menuText C TreeFileFill "Naplnit cache soubor" 0 \
  {Naplnit cache soubor nejb��n�j��mi pozicemi zah�jen�}
menuText C TreeFileBest "Seznam nejlep��ch parti�" 0 {Zobrazit seznam nejlep��ch parti�  stromu}
menuText C TreeFileGraph "Okno grafu" 0 {Zobrazit graf pro tuto v�tev stromu}
menuText C TreeFileCopy "Kop�rovat text stromu do clipboardu" 0 \
  {Kop�rovat stromov� statistiky do textov�ho v�b�ru}
menuText C TreeFileClose "Zav��t stromov� okno" 0 {Zav��t stromov� okno}
menuText C TreeMask "Maska" 0
menuText C TreeMaskNew "New" 0 {Nov� maska}
menuText C TreeMaskOpen "Open" 0 {Otev��t masku}
menuText C TreeMaskOpenRecent "Open recent" 0 {Otev��t ned�vnou masku}
menuText C TreeMaskSave "Save" 0 {Ulo�it masku}
menuText C TreeMaskClose "Close" 0 {Uzav�it masku}
# ====== TODO To be translated ======
menuText C TreeMaskFillWithLine "Fill with line" 0 {Fill mask with all previous moves}
menuText C TreeMaskFillWithGame "Naplnit parti�" 0 {Naplnit masku parti�}
menuText C TreeMaskFillWithBase "Naplnit datab�z�" 0 {Naplnit masku v�emi partiemi z datab�ze}
menuText C TreeMaskInfo "Info" 0 {Uk�zat statistiku aktu�ln� masky}
menuText C TreeMaskDisplay "Display mask map" 0 {Uk�zat data masky ve form� stromu}
menuText C TreeMaskSearch "Search" 0 {Hledat v aktu�ln� masce}
menuText C TreeSort "�adit" 2
menuText C TreeSortAlpha "Abecedn�" 0
menuText C TreeSortECO "ECO k�d" 0
menuText C TreeSortFreq "Frekvence" 0
menuText C TreeSortScore "Sk�re" 0
menuText C TreeOpt "Volby" 0
menuText C TreeOptSlowmode "pomal� re�im" 0 {Pomal� re�im aktualizace (vysok� p�esnost)}
menuText C TreeOptFastmode "Rychl� re�im" 0 {Rychl� re�im aktualizace (beze zm�ny po�ad� tah�)}
menuText C TreeOptFastAndSlowmode "Rychl� a pomal� re�im" 0 {Rychl� re�im a potom pomal� re�im aktualizace}
menuText C TreeOptStartStop "Automatick� aktualizace" 0 {P�epnout automatick� aktualizace stromov�ho okna}
menuText C TreeOptLock "Zamknout" 0 {Zamknout/Odemknout strom k aktu�ln� datab�zi}
menuText C TreeOptTraining "Tr�nink" 0 {Zapnout/Vypnout stromov� tr�ninkov� m�d}
# ====== TODO To be translated ======
menuText C TreeOptShort "Short Display" 0 {Don't show ELO information}
menuText C TreeOptAutosave "Automatick� ukl�d�n� cache souboru" 0 \
  {Automatick� ukl�d�n� cache souboru p�i uzav�en� stromov�ho okna}
# ====== TODO To be translated ======
menuText C TreeOptAutomask "Auto-Load Mask" 0 "Auto-Load most recent mask with a tree open."
menuText C TreeOptCacheSize "Velikost cache" 0 {Nastavit velikost cache}
# ====== TODO To be translated ======
menuText C TreeOptShowBar "Show Progress Bar" 0 "Show tree progress bar."
# ====== TODO To be translated ======
menuText C TreeOptShowFrame "Show Button Bar" 0 "Show tree button bar."
# ====== TODO To be translated ======
menuText C TreeOptSortBest "Sort Best Games" 0 "Sort Best Games by ELO."
menuText C TreeHelp "N�pov�da" 0
menuText C TreeHelpTree "N�pov�da - Strom" 11
menuText C TreeHelpIndex "Index n�pov�dy" 0

translate C SaveCache {Ulo�it cache}
translate C Training {Tr�nink}
translate C LockTree {Zamknout}
translate C TreeLocked {Zamknuto}
translate C TreeBest {Nejlep��}
translate C TreeBestGames {Nejlep�� partie stromu}
# ====== TODO To be translated ======
translate C TreeAdjust {Adjust Filter}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate C TreeTitleRow {    Tah       Frekvence    Sk�re Rem�z PrElo Perf PrRok ECO}
translate C TreeTitleRowShort {    Tah       Frekvence    Sk�re Rem�z}
translate C TreeTotal: {CELKEM:}
translate C DoYouWantToSaveFirst {Chcete nejprve ulo�it}
translate C AddToMask {P�idat do masky}
translate C RemoveFromMask {Odstranit z masky}
translate C AddThisMoveToMask {P�idat tento tah do masky}
translate C SearchMask {Hledat v masce}
translate C DisplayMask {Zobrazit masku}
translate C Nag {Nag k�d}
translate C Marker {Zna�ka}
translate C Include {Zahrnout}
translate C Exclude {Vylou�it}
translate C MainLine {Hlavn� varianta}
translate C Bookmark {Z�lo�ka}
translate C NewLine {Nov� varianta}
translate C ToBeVerified {K prov��en�}
translate C ToTrain {Tr�novat}
translate C Dubious {Pochybn�}
translate C ToRemove {Odstranit}
translate C NoMarker {��dn� zna�ka}
translate C ColorMarker {Barva}
translate C WhiteMark {B�l�}
translate C GreenMark {Zelen�}
translate C YellowMark {�lut�}
translate C BlueMark {Modr�}
translate C RedMark {�erven�}
translate C CommentMove {Okomentovat tah}
translate C CommentPosition {Okomentovat pozici}
translate C AddMoveToMaskFirst {Nejprve p�idejte tah do masky}
translate C OpenAMaskFileFirst {Nejprve otev�ete soubor masky}
# ====== TODO To be translated ======
translate C positions {positions}
translate C Moves {Tahy}

# Finder window:
menuText C FinderFile "Soubor" 0
menuText C FinderFileSubdirs "Hledat v podadres���ch" 0
menuText C FinderFileClose "Zav��t vyhled�va� soubor�" 0
menuText C FinderSort "�adit" 2
menuText C FinderSortType "Typ" 0
menuText C FinderSortSize "Velikost" 0
menuText C FinderSortMod "Zm�n�no" 0
menuText C FinderSortName "Jm�no" 0
menuText C FinderSortPath "Cesta" 0
menuText C FinderTypes "Typy" 0
menuText C FinderTypesScid "Datab�ze Scidu" 0
menuText C FinderTypesOld "Datab�ze Scidu star�ho form�tu" 15
menuText C FinderTypesPGN "PGN soubory" 0
menuText C FinderTypesEPD "EPD soubory" 0
menuText C FinderHelp "N�pov�da" 0
menuText C FinderHelpFinder "N�pov�da - Vyhled�va� soubor�" 11
menuText C FinderHelpIndex "Index n�pov�dy" 0
translate C FileFinder {Vyhled�va� soubor�}
translate C FinderDir {Adres��}
translate C FinderDirs {Adres��e}
translate C FinderFiles {Soubory}
translate C FinderUpDir {nahoru}
# ====== TODO To be translated ======
translate C FinderCtxOpen {Open}
# ====== TODO To be translated ======
translate C FinderCtxBackup {Backup}
# ====== TODO To be translated ======
translate C FinderCtxCopy {Copy}
# ====== TODO To be translated ======
translate C FinderCtxMove {Move}
# ====== TODO To be translated ======
translate C FinderCtxDelete {Delete}
# ====== TODO To be translated ======
translate C FinderDirOpen {Open Directory}

# Player finder:
menuText C PListFile "Soubor" 0
menuText C PListFileUpdate "Aktualizovat" 0
menuText C PListFileClose "Zav��t vyhled�va� hr���" 0
menuText C PListSort "�adit" 2
menuText C PListSortName "Jm�no" 0
menuText C PListSortElo "ELO" 0
menuText C PListSortGames "Partie" 0
menuText C PListSortOldest "Nejstar��" 3
menuText C PListSortNewest "Nejnov�j��" 3

# Tournament finder:
menuText C TmtFile "Soubor" 0
menuText C TmtFileUpdate "Aktualizovat" 0
menuText C TmtFileClose "Zav��t vyhled�va� soubor�" 0
menuText C TmtSort "�adit" 2
menuText C TmtSortDate "Datum" 0
menuText C TmtSortPlayers "Hr��i" 0
menuText C TmtSortGames "Partie" 0
menuText C TmtSortElo "ELO" 0
menuText C TmtSortSite "M�sto" 0
menuText C TmtSortEvent "Turnaj" 0
menuText C TmtSortWinner "V�t�z" 0
translate C TmtLimit "Limit seznamu"
translate C TmtMeanElo "Pr�m�rn� ELO"
translate C TmtNone "��dn� odpov�daj�c� turnaje nebyly nalezeny."

# Graph windows:
menuText C GraphFile "Soubor" 0
menuText C GraphFileColor "Ulo�it jako barevn� Postscript..." 12
menuText C GraphFileGrey "Ulo�it jako �ernob�l� Postscript..." 13
menuText C GraphFileClose "Zav��t okno" 0
menuText C GraphOptions "Volby" 0
menuText C GraphOptionsWhite "B�l�" 0
menuText C GraphOptionsBlack "�ern�" 1
# ====== TODO To be translated ======
menuText C GraphOptionsDots "Show Dots" 0
# ====== TODO To be translated ======
menuText C GraphOptionsBar "Highlight Current Move" 0
menuText C GraphOptionsBoth "Oba" 0
menuText C GraphOptionsPInfo "Informace o hr��i" 0
translate C GraphFilterTitle "Graf filtru: �etnost na 1000 parti�"
# ====== TODO To be translated ======
translate C GraphAbsFilterTitle "Filter Graph: frequency of the games"
# ====== TODO To be translated ======
translate C ConfigureFilter {Configure X Axis}
# ====== TODO To be translated ======
translate C FilterEstimate "Estimate"
# ====== TODO To be translated ======
translate C TitleFilterGraph "Scid: Filter Graph"

# Analysis window:
translate C AddVariation {P�idat variantu}
# ====== TODO To be translated ======
translate C AddAllVariations {Add All Variations}
translate C AddMove {P�idat tah}
translate C Annotate {Anotace}
# ====== TODO To be translated ======
translate C ShowAnalysisBoard {Show analysis board}
# ====== TODO To be translated ======
translate C ShowInfo {Show engine info}
# ====== TODO To be translated ======
translate C FinishGame {Finish game}
# ====== TODO To be translated ======
translate C StopEngine {Stop engine}
# ====== TODO To be translated ======
translate C StartEngine {Start engine}
# ====== TODO To be translated ======
translate C ExcludeMove {Exclude Move}
# ====== TODO To be translated ======
translate C LockEngine {Lock engine to current position}
translate C AnalysisCommand {Program pro anal�zu}
translate C PreviousChoices {P�edchoz� vybran� programy}
translate C AnnotateTime {Nastavit �as mezi tahy v sekund�ch}
translate C AnnotateWhich {P�idat varianty}
translate C AnnotateAll {Pro tahy obou stran}
# ====== TODO To be translated ======
translate C AnnotateAllMoves {Annotate all moves}
translate C AnnotateWhite {Pouze pro tahy b�l�ho}
translate C AnnotateBlack {Pouze pro tahy �ern�ho}
translate C AnnotateNotBest {Pokud tah v partii nen� nejlep��m tahem}
# ====== TODO To be translated ======
translate C AnnotateBlundersOnly {When game move is an obvious blunder}
# ====== TODO To be translated ======
translate C BlundersNotBest {Blunders/Not Best}
# ====== TODO To be translated ======
translate C AnnotateTitle {Konfigurace Anotace}
# ====== TODO To be translated ======
translate C AnnotateMissedMates {Missed/shorter mates}
# ====== TODO To be translated ======
translate C AnnotateEnd {At end of game}
# ====== TODO To be translated ======
translate C BlundersThreshold {Threshold}
# ====== TODO To be translated ======
translate C ScoreFormat {Score format}
# ====== TODO To be translated ======
translate C CutOff {Cut Off}
translate C LowPriority {N�zk� CPU priorita}
# ====== TODO To be translated ======
translate C LogEngines {Log Size}
# ====== TODO To be translated ======
translate C LogName {Add Name}
# ====== TODO To be translated ======
translate C MaxPly {Max Ply}
# ====== TODO To be translated ======
translate C ClickHereToSeeMoves {Click here to see moves}
# ====== TODO To be translated ======
translate C ConfigureInformant {Configure Informant}
# ====== TODO To be translated ======
translate C Informant!? {Interesting move}
# ====== TODO To be translated ======
translate C Informant? {Poor move}
# ====== TODO To be translated ======
translate C Informant?? {Blunder}
# ====== TODO To be translated ======
translate C Informant?! {Dubious move}
# ====== TODO To be translated ======
translate C Informant+= {White has a slight advantage}
# ====== TODO To be translated ======
translate C Informant+/- {White has a moderate advantage}
# ====== TODO To be translated ======
translate C Informant+- {White has a decisive advantage}
# ====== TODO To be translated ======
translate C Informant++- {The game is considered won}
# ====== TODO To be translated ======
translate C Book {Book}
# ====== TODO To be translated ======
translate C OtherBook {Other Moves}
# ====== TODO To be translated ======
translate C Alphabetical {Alphabetical}
# ====== TODO To be translated ======
translate C TwoBooks {Two Books}

# Analysis Engine open dialog:
translate C EngineList {Seznam program� pro anal�zu}
# ====== TODO To be translated ======
translate C EngineKey {Key}
# ====== TODO To be translated ======
translate C EngineType {Type}
translate C EngineName {Jm�no}
translate C EngineCmd {P��kaz}
translate C EngineArgs {Parametry}
translate C EngineDir {Adres��}
translate C EngineElo {ELO}
translate C EngineTime {Datum}
translate C EngineNew {Nov�}
translate C EngineEdit {Editace}
translate C EngineRequired {Tu�n� vyzna�en� polo�ky jsou povinn�; ostatn� jsou voliteln�}

# Stats window menus:
menuText C StatsFile "Soubor" 0
menuText C StatsFilePrint "Vytisknout do souboru..." 0
menuText C StatsFileClose "Zav��t okno" 0
menuText C StatsOpt "Volby" 0

# PGN window menus:
menuText C PgnFile "Soubor" 0
menuText C PgnFileCopy "Kop�rovat partii do clipboardu" 0
menuText C PgnFilePrint "Vytisknout do souboru..." 0
menuText C PgnFileClose "Zav��t okno PGN" 0
menuText C PgnOpt "Zobrazit" 0
menuText C PgnOptColor "Barevn� zobrazen�" 0
menuText C PgnOptShort "Kr�tk� (t����dkov�) hlavi�ka" 20
menuText C PgnOptSymbols "Symbolick� anotace" 0
menuText C PgnOptIndentC "Odsazovat koment��e" 10
menuText C PgnOptIndentV "Odsazovat varianty" 10
menuText C PgnOptColumn "Sloupcov� styl (jeden tah na ��dek)" 1
menuText C PgnOptSpace "Mezera za ��slem tahu" 0
menuText C PgnOptStripMarks "Odstranit k�dy barevn�ch pol� a �ipek" 0
menuText C PgnOptChess "Sachov� figurky" 0
menuText C PgnOptScrollbar "Posuvn�k" 0
menuText C PgnOptBoldMainLine "Use Bold Text for Main Line Moves" 4 ;# ***
menuText C PgnColor "Barvy" 0
menuText C PgnColorHeader "Hlavi�ka..." 0
menuText C PgnColorAnno "Anotace..." 0
menuText C PgnColorComments "Koment��e..." 0
menuText C PgnColorVars "Varianty..." 0
menuText C PgnColorBackground "Pozad�..." 0
# ====== TODO To be translated ======
menuText C PgnColorMain "Main line..." 0
# ====== TODO To be translated ======
menuText C PgnColorCurrent "Current move background..." 1
# ====== TODO To be translated ======
menuText C PgnColorNextMove "Next move background..." 0
menuText C PgnHelp "N�pov�da" 0
menuText C PgnHelpPgn "N�pov�da - Okno PGN " 16
menuText C PgnHelpIndex "Index n�pov�dy" 0
translate C PgnWindowTitle {Game Notation - game %u} ;# ***

# Crosstable window menus:
menuText C CrosstabFile "Soubor" 0
menuText C CrosstabFileText "Vytisknout do textov�ho souboru..." 14
menuText C CrosstabFileHtml "Vytisknout do HTML souboru..." 14
menuText C CrosstabFileLaTeX "Vytisknout do LaTeX souboru..." 14
menuText C CrosstabFileClose "Zav��t okno turnajov� tabulky" 0
menuText C CrosstabEdit "Editovat" 0
menuText C CrosstabEditEvent "Turnaj" 0
menuText C CrosstabEditSite "M�sto" 0
menuText C CrosstabEditDate "Datum" 0
menuText C CrosstabOpt "Zobrazit" 0
menuText C CrosstabOptColorPlain "Prost� text" 0
menuText C CrosstabOptColorHyper "Hypertext" 0
# ====== TODO To be translated ======
menuText C CrosstabOptTieWin "Tie-Break by wins" 1
# ====== TODO To be translated ======
menuText C CrosstabOptTieHead "Tie-Break by head-head" 1
# todo
menuText C CrosstabOptThreeWin "3 Points for Win" 1
menuText C CrosstabOptAges "V�k" 0
menuText C CrosstabOptNats "N�rodnost" 0
# todo
menuText C CrosstabOptTallies "Win/Loss/Draw" 0
menuText C CrosstabOptRatings "Rating" 0
menuText C CrosstabOptTitles "Titul" 0
menuText C CrosstabOptBreaks "V�sledky tie-breaku" 10
menuText C CrosstabOptDeleted "V�etn� vymazan�ch parti�" 9
menuText C CrosstabOptColors "Barvy (jen pro �v�carsk� syst�m)" 0
# ====== TODO To be translated ======
menuText C CrosstabOptColorRows "Color Rows" 0
menuText C CrosstabOptRowsColor "Row Color" 0 {Default crosstable row color}
menuText C CrosstabOptColumnNumbers "��slovan� sloupce (jen v tabulk�ch 'ka�d� s ka�d�m')" 3
menuText C CrosstabOptGroup "Skupiny podle sk�re" 0
menuText C CrosstabSort "�adit" 2
menuText C CrosstabSortName "Jm�no" 0
menuText C CrosstabSortRating "Rating" 0
menuText C CrosstabSortScore "Sk�re" 0
menuText C CrosstabSortCountry "Zem�" 0
# todo
menuText C CrosstabType "Format" 0
menuText C CrosstabTypeAll "Ka�d� s ka�d�m" 0
menuText C CrosstabTypeSwiss "�v�carsk� syst�m" 3
menuText C CrosstabTypeKnockout "Vy�azovac�" 4
menuText C CrosstabTypeAuto "Auto" 0
menuText C CrosstabHelp "N�pov�da" 0
menuText C CrosstabHelpCross "N�pov�da - Turnajovou tabulku" 11
menuText C CrosstabHelpIndex "Index n�pov�dy" 0
translate C SetFilter {Nastavit filtr}
translate C AddToFilter {P�idat do filtru}
translate C Swiss {�v�carsk� syst�m}
translate C Category {Kategorie}

# Opening report window menus:
menuText C OprepFile "Soubor" 0
menuText C OprepFileText "Vytisknout do textov�ho souboru..." 14
menuText C OprepFileHtml "Vytisknout do HTML souboru..." 14
menuText C OprepFileLaTeX "Vytisknout do LaTeX souboru..." 14
menuText C OprepFileOptions "Volby" 0
menuText C OprepFileClose "Zav��t okno s profilem" 0
menuText C OprepFavorites "Obl�ben�" 0
menuText C OprepFavoritesAdd "P�idat profil..." 0
menuText C OprepFavoritesEdit "Editovat obl�ben� profily..." 0
menuText C OprepFavoritesGenerate "Generovat profil..." 0
menuText C OprepHelp "N�pov�da" 0
menuText C OprepHelpReport "N�pov�da - Profil zah�jen�" 11
menuText C OprepHelpIndex "Index n�pov�dy" 11

# Header search:
translate C HeaderSearch {Hledat podle hlavi�ky}
translate C EndSideToMove {Side to move at end of game} ;# ***
translate C GamesWithNoECO {Partie bez ECO?}
translate C GameLength {D�lka Partie}
translate C FindGamesWith {Naj�t partie s p��znaky}
translate C StdStart {Nestandardn� start}
translate C Promotions {Prom�ny}
# ====== TODO To be translated ======
translate C UnderPromo {Under Prom.}
translate C Comments {Koment��e}
translate C Variations {Varianty}
translate C Annotations {Anotace}
translate C DeleteFlag {Mazac� p��znak}
translate C WhiteOpFlag {Zah�jen� b�l�ho}
translate C BlackOpFlag {Zah�jen� �ern�ho}
translate C MiddlegameFlag {St�edn� hra}
translate C EndgameFlag {Koncovka}
translate C NoveltyFlag {Novinka}
translate C PawnFlag {P��cov� struktura}
translate C TacticsFlag {Taktika}
translate C QsideFlag {Hra na d�msk�m k��dle}
translate C KsideFlag {Hra na kr�lovsk�m k��dle}
translate C BrilliancyFlag {Brilantn�}
translate C BlunderFlag {Hrubka}
translate C UserFlag {U�ivatel}
translate C PgnContains {PGN obsahuje text}
# ====== TODO To be translated ======
translate C PreComment {Pre-game Comment}
# ====== TODO To be translated ======
translate C PostComment {End Comment}

# Game list window:
translate C GlistNumber {��slo}
translate C GlistWhite {B�l�}
translate C GlistBlack {�ern�}
translate C GlistWElo {B-ELO}
translate C GlistBElo {�-ELO}
translate C GlistEvent {Turnaj}
translate C GlistSite {M�sto}
translate C GlistRound {Kolo}
translate C GlistDate {Datum}
translate C GlistYear {Rok}
translate C GlistEventDate {Datum turnaje}
translate C GlistResult {V�sledek}
translate C GlistLength {D�lka}
translate C GlistCountry {Zem�}
translate C GlistECO {ECO}
translate C GlistOpening {Tahy}
translate C GlistEndMaterial {Materi�l na konci}
translate C GlistDeleted {Vymaz�n(a)}
translate C GlistFlags {P��znak}
translate C GlistVariations {Varianty}
translate C GlistComments {Koment��e}
translate C GlistAnnos {Anotace}
translate C GlistStart {Po��te�n� pozice}
translate C GlistGameNumber {��slo partie}
translate C GlistFindText {Hledat text}
translate C GlistMoveField {P�esunout}
translate C GlistEditField {Konfigurovat}
translate C GlistAddField {P�idat}
translate C GlistDeleteField {Odebrat}
translate C GlistColor {Barva}
# ====== TODO To be translated ======
translate C GlistSort {Sort database}
# ====== TODO To be translated ======
translate C GlistRemoveThisGameFromFilter  {Remove}
# ====== TODO To be translated ======
translate C GlistRemoveGameAndAboveFromFilter  {Remove game (and all above it)}
# ====== TODO To be translated ======
translate C GlistRemoveGameAndBelowFromFilter  {Remove game (and all below it)}
# ====== TODO To be translated ======
translate C GlistDeleteGame {(Un)Delete this game}
# ====== TODO To be translated ======
translate C GlistDeleteAllGames {Delete all games in filter}
# ====== TODO To be translated ======
translate C GlistUndeleteAllGames {Undelete all games in filter}
# ====== TODO To be translated ======
translate C GlistAlignL {Align left}
# ====== TODO To be translated ======
translate C GlistAlignR {Align right}
# ====== TODO To be translated ======
translate C GlistAlignC {Align center}

# Maintenance window:
translate C DatabaseName {Jm�no datab�ze:}
translate C TypeIcon {Symbol}
translate C NumOfGames {Partie:}
translate C NumDeletedGames {Vymazan� partie:}
translate C NumFilterGames {Partie ve filtru:}
translate C YearRange {Rozsah rok�:}
translate C RatingRange {Rozsah ratingu:}
translate C Description {Popis}
translate C Flag {P��znak}
translate C CustomFlags {U�ivatelsk� p��znaky}
translate C DeleteCurrent {Vymazat aktu�ln� partii}
translate C DeleteFilter {Vymazat filtrovan� partie}
translate C DeleteAll {Vymazat v�echny partie}
translate C UndeleteCurrent {Obnovit aktu�ln� partie po vymaz�n�}
translate C UndeleteFilter {Obnovit filtrovan� partie po vymaz�n�}
translate C UndeleteAll {Obnovit v�echny partie po vymaz�n�}
translate C DeleteTwins {Vymazat zdvojen� partie}
translate C MarkCurrent {Ozna�it aktivn� partii}
translate C MarkFilter {Ozna�it filtrovan� partie}
translate C MarkAll {Ozna�it v�echny partie}
translate C UnmarkCurrent {Odzna�it aktu�ln� partii}
translate C UnmarkFilter {Odzna�it filtrovan� partie}
translate C UnmarkAll {Odzna�it v�echny partie}
translate C Spellchecking {Kontrola pravopisu}
# ====== TODO To be translated ======
translate C MakeCorrections {Make Corrections}
# ====== TODO To be translated ======
translate C Ambiguous {Ambiguous}
# ====== TODO To be translated ======
translate C Surnames {Surnames}
translate C Players {Hr��i}
translate C Events {Turnaje}
translate C Sites {M�sta}
translate C Rounds {Kola}
translate C DatabaseOps {Datab�zov� operace}
translate C ReclassifyGames {ECO klasifikace parti�}
translate C CompactDatabase {Kompaktovat datab�zi}
translate C SortDatabase {�adit datab�zi}
translate C AddEloRatings {P�idat ELO rating}
translate C AutoloadGame {Automaticky otev�rat partii �.}
translate C StripTags {Odstranit PGN zna�ky}
translate C StripTag {Odstranit zna�ku}
# ====== TODO To be translated ======
translate C CheckGames {Check games}
translate C Cleaner {�i�t�n� datab�ze}
translate C CleanerHelp {
    �i�t�n�m datab�ze Scid provede u aktu�ln� datab�ze v�echny �dr�b��sk� akce, kter� zvol�te v seznamu.

    Pokud zvol�te ECO klasifikaci a maz�n� zdvojen�ch parti� pou�ij� se aktu�ln� nastaven� z p��slu�n�ch dialog�.
}
translate C CleanerConfirm {
Jakmile je �i�t�n� jednou spu�t�no, nem��e ji� b�t p�eru�eno!

Tato akce m��e pro velk� datab�ze trvat dlouhou dobu v z�vislosti na funkc�ch, kter� jste zvolili, a v z�vislosti na jejich st�vaj�c�m nastaven�.

Jste si jisti, �e chcete za��t s �dr�b��sk�mi funkcemi, kter� jste zvolili?
}
# ====== TODO To be translated ======
translate C TwinCheckUndelete {to flip; "u" undeletes both)}
# ====== TODO To be translated ======
translate C TwinCheckprevPair {Previous pair}
# ====== TODO To be translated ======
translate C TwinChecknextPair {Next pair}
# ====== TODO To be translated ======
translate C TwinChecker {Scid: Twin game checker}
# ====== TODO To be translated ======
translate C TwinCheckTournament {Games in tournament:}
# ====== TODO To be translated ======
translate C TwinCheckNoTwin {No twin  }
# ====== TODO To be translated ======
translate C TwinCheckNoTwinfound {No twin was detected for this game.\nTo show twins using this window, you must first use the "Delete twin games..." function. }
# ====== TODO To be translated ======
translate C TwinCheckTag {Share tags...}
# ====== TODO To be translated ======
translate C TwinCheckFound1 {Scid found $result twin games}
# ====== TODO To be translated ======
translate C TwinCheckFound2 { and set their delete flags}
# ====== TODO To be translated ======
translate C TwinCheckNoDelete {There are no games in this database to delete.}
# ====== TODO To be translated ======
translate C TwinCriteria1 { Your settings for finding twin games are potentially likely to\ncause non-twin games with similar moves to be marked as twins.}
# ====== TODO To be translated ======
translate C TwinCriteria2 {It is recommended that if you select "No" for "same moves", you should select "Yes" for the colors, event, site, round, year and month settings.\nDo you want to continue and delete twins anyway? }
# ====== TODO To be translated ======
translate C TwinCriteria3 {It is recommended that you specify "Yes" for at least two of the "same site", "same round" and "same year" settings.\nDo you want to continue and delete twins anyway?}
# ====== TODO To be translated ======
translate C TwinCriteriaConfirm {Scid: Confirm twin settings}
# ====== TODO To be translated ======
translate C TwinChangeTag "Change the following game tags:\n\n"
# ====== TODO To be translated ======
translate C AllocRatingDescription "This command will use the current spellcheck file to add Elo ratings to games in this database. Wherever a player has no currrent rating but his/her rating at the time of the game is listed in the spellcheck file, that rating will be added."
# ====== TODO To be translated ======
translate C RatingOverride "Overwrite existing non-zero ratings?"
# ====== TODO To be translated ======
translate C AddRatings "Add ratings to:"
# ====== TODO To be translated ======
translate C AddedRatings {Scid added $r Elo ratings in $g games.}
# ====== TODO To be translated ======
translate C NewSubmenu "New submenu"

# Comment editor:
translate C AnnotationSymbols  {Anota�n� symboly:}
translate C Comment {Koment��:}
translate C InsertMark {Vlo�it zna�ku}
translate C InsertMarkHelp {
Insert/remove mark: Select color, type, square.
Insert/remove arrow: Right-click two squares.
} ;# ***

# Nag buttons in comment editor:
translate C GoodMove {Good move} ;# ***
translate C PoorMove {Poor move} ;# ***
translate C ExcellentMove {Excellent move} ;# ***
translate C Blunder {Hrubka}
translate C InterestingMove {Interesting move} ;# ***
translate C DubiousMove {Dubious move} ;# ***
translate C WhiteDecisiveAdvantage {White has a decisive advantage} ;# ***
translate C BlackDecisiveAdvantage {Black has a decisive advantage} ;# ***
translate C WhiteClearAdvantage {White has a clear advantage} ;# ***
translate C BlackClearAdvantage {Black has a clear advantage} ;# ***
translate C WhiteSlightAdvantage {White has a slight advantage} ;# ***
translate C BlackSlightAdvantage {Black has a slight advantage} ;# ***
translate C Equality {Equality} ;# ***
translate C Unclear {Unclear} ;# ***
translate C Diagram {Diagram} ;# ***

# Board search:
translate C BoardSearch {Hledat pozici}
translate C FilterOperation {Operace s aktu�ln�m filtrem:}
translate C FilterAnd {A (Omezit filtr)}
translate C FilterOr {NEBO (P�idat k filtru)}
translate C FilterIgnore {IGNOROVAT (Ignoruj filtr)}
translate C SearchType {Typ hled�n�:}
translate C SearchBoardExact {P�esn� pozice (v�echny figury na stejn�ch pol�ch)}
translate C SearchBoardPawns {P��ci (tent�� materi�l, v�ichni p��ci na stejn�ch pol�ch)}
translate C SearchBoardFiles {Sloupce (tent�� materi�l, v�ichni p��ci na stejn�ch sloupc�ch)}
translate C SearchBoardAny {Jak�koliv (tent�� materi�l, p��ci a figury kdekoliv)}
translate C SearchInRefDatabase { Hledat v datab�zi }
translate C LookInVars {D�vat se do variant}
# ====== TODO To be translated ======
translate C CQLLabel {CQL Script}
# ====== TODO To be translated ======
translate C CQLComments {Allow Comments}
# ====== TODO To be translated ======
translate C CQLStrip {Strip Match Comments}

# Material search:
translate C MaterialSearch {Hledat materi�l}
translate C Material {Materi�l}
translate C Patterns {Vzory}
translate C Zero {Nic}
translate C Any {Cokoliv}
translate C CurrentBoard {Aktu�ln� pozice}
translate C CommonEndings {Typick� koncovky}
translate C CommonPatterns {Typick� vzory}
translate C MaterialDiff {Rozd�l v materi�lu}
translate C squares {pole}
translate C SameColor {Stejnobarevn�}
translate C OppColor {Nestejnobarevn�}
translate C Either {Oboj�}
translate C MoveNumberRange {Rozsah tah�}
translate C MatchForAtLeast {Shoda pro minim�ln�}
translate C HalfMoves {p�ltah�}

# Common endings in material search:
translate C EndingPawns {Pawn endings} ;# ***
translate C EndingRookVsPawns {Rook vs. Pawn(s)} ;# ***
translate C EndingRookPawnVsRook {Rook and 1 Pawn vs. Rook} ;# ***
translate C EndingRookPawnsVsRook {Rook and Pawn(s) vs. Rook} ;# ***
translate C EndingRooks {Rook vs. Rook endings} ;# ***
translate C EndingRooksPassedA {Rook vs. Rook endings with a passed a-pawn} ;# ***
translate C EndingRooksDouble {Double Rook endings} ;# ***
translate C EndingBishops {Bishop vs. Bishop endings} ;# ***
translate C EndingBishopVsKnight {Bishop vs. Knight endings} ;# ***
translate C EndingKnights {Knight vs. Knight endings} ;# ***
translate C EndingQueens {Queen vs. Queen endings} ;# ***
translate C EndingQueenPawnVsQueen {Queen and 1 Pawn vs. Queen} ;# ***
translate C BishopPairVsKnightPair {Two Bishops vs. Two Knights middlegame} ;# ***

# Common patterns in material search:
translate C PatternWhiteIQP {White IQP} ;# ***
translate C PatternWhiteIQPBreakE6 {White IQP: d4-d5 break vs. e6} ;# ***
translate C PatternWhiteIQPBreakC6 {White IQP: d4-d5 break vs. c6} ;# ***
translate C PatternBlackIQP {Black IQP} ;# ***
translate C PatternWhiteBlackIQP {White IQP vs. Black IQP} ;# ***
translate C PatternCoupleC3D4 {White c3+d4 Isolated Pawn Couple} ;# ***
translate C PatternHangingC5D5 {Black Hanging Pawns on c5 and d5} ;# ***
translate C PatternMaroczy {Maroczy Center (with Pawns on c4 and e4)} ;# ***
translate C PatternRookSacC3 {Rook Sacrifice on c3} ;# ***
translate C PatternKc1Kg8 {O-O-O vs. O-O (Kc1 vs. Kg8)} ;# ***
translate C PatternKg1Kc8 {O-O vs. O-O-O (Kg1 vs. Kc8)} ;# ***
translate C PatternLightFian {Light-Square Fianchettos (Bishop-g2 vs. Bishop-b7)} ;# ***
translate C PatternDarkFian {Dark-Square Fianchettos (Bishop-b2 vs. Bishop-g7)} ;# ***
translate C PatternFourFian {Four Fianchettos (Bishops on b2,g2,b7,g7)} ;# ***

# Game saving:
translate C Today {Dnes}
translate C ClassifyGame {Klasifikovat partii}

# Setup position:
translate C EmptyBoard {Vypr�zdnit �achovnici}
translate C InitialBoard {V�choz� pozice}
translate C SideToMove {Na tahu je}
translate C MoveNumber {��slo tahu}
translate C Castling {Ro��da}
translate C EnPassantFile {En Passant sloupec}
translate C ClearFen {Vy�istit FEN}
translate C PasteFen {Vlo�it FEN}
# ====== TODO To be translated ======
translate C SaveAndContinue {Save and continue}
# ====== TODO To be translated ======
translate C DiscardChangesAndContinue {Discard Changes}
# ====== TODO To be translated ======
translate C GoBack {Go back}

# Replace move dialog:
translate C ReplaceMove {Nahradit tah}
translate C AddNewVar {P�idat novou variantu}
# ====== TODO To be translated ======
translate C NewMainLine {New Main Line}
translate C ReplaceMoveMessage {Zde ji� existuje tah.

M��ete ho nahradit, a zru�it tak i v�echny n�sleduj�c� tahy, nebo m��ete v�� tah p�idat jako novou variantu.

(Zobrazen� t�to zpr�vy m��ete v budoucnu potla�it p�epnut�m volby "Pt�t se p�ed nahrazen�m tah�" v menu Volby:Tahy.)}

# Make database read-only dialog:
translate C ReadOnlyDialog {Pokud datab�zi nastav�te jako jen ke �ten�, nebudou povoleny ��dn� zm�ny.
��dn� partie nebude mo�no ulo�it ani p�epsat a ��dn� mazac� p��znak nebude mo�no zm�nit.
V�echny v�sledky operace �azen� �i ECO klasifikace budou pouze do�asn�.

Datab�zi m��ete u�init op�t zapisovatelnou pomoc� jej�ho zav�en� a op�tovn�ho otev�en�.

P�ejete si skute�n� nastavit tuto datab�zi jako jen ke �ten�?}

# Exit dialog:
translate C ExitDialog {Opravdu si p�ejete ukon�it Scid?}
# ====== TODO To be translated ======
translate C ClearGameDialog {This game has been altered.\nDo you wish to save it?}
translate C ExitUnsaved {N�sleduj�c� datab�ze obsahuj� partie s neulo�en�mi zm�nami. Pokud nyn� skon��te, budou tyto zm�ny ztraceny.}
# ====== TODO To be translated ======
translate C ChangeTextDialog {Enabling text colour globally requires restart.}
# ====== TODO To be translated ======
translate C ChangeDockDialog {Changing Docking requires a restart.}
# ====== TODO To be translated ======
translate C FontSelectDialog "This is some sample text\nDouble click above to change font, then select 'ok'\nAaBbCcDdEeFfGgHhIiJjKkLlMm 0123456789. +=-"
# ====== TODO To be translated ======
translate C ExitNow {Exit now ?}

# Import window:
translate C PasteCurrentGame {Vlo�it aktu�ln� partii}
translate C ImportHelp1 {Zapsat nebo vlo�it partii ve form�tu PGN do r�mce naho�e.}
translate C ImportHelp2 {Jak�koli chyby p�i importu partie budou zobrazeny zde.}
# ====== TODO To be translated ======
translate C OverwriteExistingMoves {Overwrite existing moves ?}

# ECO Browser:
translate C ECOAllSections {v�echny ECO sekce}
translate C ECOSection {ECO sekce}
translate C ECOSummary {Souhrn pro}
translate C ECOFrequency {Frekvence subk�d� pro}

# Opening Report:
translate C OprepTitle {Profil zah�jen�}
translate C OprepReport {Profil}
translate C OprepGenerated {Generov�n}
translate C OprepStatsHist {Statistika a historie}
translate C OprepStats {Statistika}
translate C OprepStatAll {V�echny partie profilu}
translate C OprepStatBoth {Oba ratingovan�}
translate C OprepStatSince {Od}
translate C OprepOldest {Nejstar�� partie}
translate C OprepNewest {Nejnov�j�� partie}
translate C OprepPopular {St�vaj�c� popularita}
translate C OprepFreqAll {Frekvence za v�echny roky: }
translate C OprepFreq1   {B�hem posledn�ho roku:     }
translate C OprepFreq5   {B�hem posledn�ch 5 let:    }
translate C OprepFreq10  {B�hem posledn�ch 10 let:   }
translate C OprepEvery {jednou z %u parti�}
translate C OprepUp {v�ce o %u%s v porovn�n� se v�emi roky}
translate C OprepDown {m�n� o %u%s v porovn�n� se v�emi roky}
translate C OprepSame {��dn� zm�na p�i porovn�n� se v�emi roky}
translate C OprepMostFrequent {Nej�ast�j�� hr��i}
translate C OprepMostFrequentOpponents {Nej�ast�j�� soupe�i}
translate C OprepRatingsPerf {Ratingy a performance}
translate C OprepAvgPerf {Pr�m�rn� ratingy a performance}
translate C OprepWRating {Rating b�l�}
translate C OprepBRating {Rating �ern�}
translate C OprepWPerf {Performance b�l�}
translate C OprepBPerf {Performance �ern�}
translate C OprepHighRating {Partie s nejvy���m pr�m�rn�m ratingem}
translate C OprepTrends {V�sledkov� trend}
translate C OprepResults {D�lka parti� a frekvence}
translate C OprepLength {D�lka parti�}
translate C OprepFrequency {Frekvence}
translate C OprepWWins {V�hry b�l�: }
translate C OprepBWins {V�hry �ern�: }
translate C OprepDraws {Rem�zy:      }
translate C OprepWholeDB {cel� datab�ze}
translate C OprepShortest {Nejkrat�� v�hry}
translate C OprepMovesThemes {Tahy a t�mata}
translate C OprepMoveOrders {Posloupnosti tah� vedouc� k profilovan� pozici}
translate C OprepMoveOrdersOne \
  {Nalezena pouze jedna posloupnost tah� vedouc�ch k t�to pozici:}
translate C OprepMoveOrdersAll \
  {Nalezeno %u posloupnost� tah� vedouc�ch k t�to pozici:}
translate C OprepMoveOrdersMany \
  {Nalezeno %u posloupnost� tah� vedouc�ch k t�to pozici. Prvn�ch %u jsou:}
translate C OprepMovesFrom {Tahy z profilovan� pozice}
translate C OprepMostFrequentEcoCodes {Nej�ast�j�� ECO k�dy}
translate C OprepThemes {Pozi�n� t�mata}
translate C OprepThemeDescription {Frekvence t�mat v prvn�ch %u taz�ch ka�d� partie}
translate C OprepThemeSameCastling {Ro��dy na stejnou stranu}
translate C OprepThemeOppCastling {Ro��dy na r�zn� strany}
translate C OprepThemeNoCastling {Ob� strany bez ro��dy}
translate C OprepThemeKPawnStorm {P��cov� �tok na kr�lovsk�m k��dle}
translate C OprepThemeQueenswap {Vym�n�n� d�my}
translate C OprepThemeWIQP {B�l� izolovan� d�msk� p��ec}
translate C OprepThemeBIQP {�ern� izolovan� d�msk� p��ec}
translate C OprepThemeWP567 {B�l� p��ec na 5., 6. nebo 7. �ad�}
translate C OprepThemeBP234 {�ern� p��ec na 2., 3. nebo 4. �ad�}
translate C OprepThemeOpenCDE {Otev�en� sloupec C, D nebo E}
translate C OprepTheme1BishopPair {Jedna strana m� dvojici st�elc�}
translate C OprepEndgames {Koncovky}
translate C OprepReportGames {Profilovan� partie}
translate C OprepAllGames {V�echny partie}
translate C OprepEndClass {Materi�lu na konci ka�d� partie}
translate C OprepTheoryTable {Tabulka teorie}
translate C OprepTableComment {Generov�no z %u parti� s nejvy���m pr�m�rn�m ratingem.}
translate C OprepExtraMoves {Extra pozn�mkov� tahy v tabulce teorie}
translate C OprepMaxGames {Maximum tah� v tabulce teorie}
# ====== TODO To be translated ======
translate C OprepMaxLines {Maximum games for statistics}
translate C OprepViewHTML {Zobrazit HTML}
translate C OprepViewLaTeX {Zobrazit LaTeX}

# Player Report:
translate C PReportTitle {Profil hr��e}
translate C PReportColorWhite {b�l�mi figurami}
translate C PReportColorBlack {�ern�mi figurami}
# ====== TODO To be translated ======
translate C PReportBeginning {Beginning with}
translate C PReportMoves {po %s}
translate C PReportOpenings {Zah�jen�}
translate C PReportClipbase {Vypr�zdnit schr�nku a zkop�rovat do n� odpov�daj�c� partie}

# Piece Tracker window:
translate C TrackerSelectSingle {Lev�m tla��tkem my�i se tato figura vybere.}
translate C TrackerSelectPair {Lev�m tla��tkem se tato figura vybere; prav�m se vyberou ob� stejn� figury.}
translate C TrackerSelectPawn {Lev�m tla��tkem se vybere tento p��ec; prav�m se vybere v�ech 8 p��c�.}
translate C TrackerStat {Statistika}
translate C TrackerGames {% parti� s tahem na pole}
translate C TrackerTime {% �asu na ka�d�m poli}
translate C TrackerMoves {Tahy}
translate C TrackerMovesStart {Vlo�te ��slo tahu, kter�m m� stopov�n� za��t.}
translate C TrackerMovesStop {Vlo�te ��slo tahu, kter�m m� stopov�n� skon�it.}

# Game selection dialogs:
translate C SelectAllGames {V�echny partie v datab�zi}
translate C SelectFilterGames {Jen filtrovan� partie}
translate C SelectTournamentGames {Jen partie z aktu�ln�ho turnaje}
translate C SelectOlderGames {Jen star�� partie}

# Delete Twins window:
translate C TwinsNote {Aby byly dv� partie vyhodnoceny jako zdvojen�, mus� b�t hr�ny t�mi� dv�ma hr��i a d�le mus� spl�ovat krit�ria, kter� nastav�te n��e. Pokud jsou nalezeny zdvojen� partie, pak je krat�� z nich vymaz�na. Rada: je vhodn� prov�st p�ed vymaz�n�m zdvojen�ch parti� kontrolu pravopisu, nebo� to zdokonal� detekci zdvojen�ch parti�.}
translate C TwinsCriteria {Krit�ria: Zdvojen� partie mus� m�t...}
translate C TwinsWhich {Jak� partie prozkoumat}
translate C TwinsColors {Tyt�� barvy u hr���?}
translate C TwinsEvent {Tent�� turnaj?}
translate C TwinsSite {Tot�� m�sto?}
translate C TwinsRound {Tot�� kolo?}
translate C TwinsYear {Tent�� rok?}
translate C TwinsMonth {Tent�� m�s�c?}
translate C TwinsDay {Tent�� den?}
translate C TwinsResult {Tent�� v�sledek?}
translate C TwinsECO {Tent�� ECO k�d?}
translate C TwinsMoves {Tyt�� tahy?}
translate C TwinsPlayers {Porovn�n� jmen:}
translate C TwinsPlayersExact {P�esn� shoda}
translate C TwinsPlayersPrefix {Jen prvn� 4 znaky}
translate C TwinsWhen {Pokud se budou mazat zdvojen� partie}
translate C TwinsSkipShort {Ignorovat v�echny partie krat�� ne� 5 tah�?}
translate C TwinsUndelete {Obnovit nejprve v�echny partie?}
translate C TwinsSetFilter {Nastavit filtr na v�echny vymazan� zdvojen� partie?}
translate C TwinsComments {V�dy zachovat partie s koment��i?}
translate C TwinsVars {V�dy zachovat partie s variantami?}
translate C TwinsDeleteWhich {Kterou partii vymazat:}
translate C TwinsDeleteShorter {Krat�� partii}
translate C TwinsDeleteOlder {Partii s ni���m ��slem}
translate C TwinsDeleteNewer {Partii s vy���m ��slem}
translate C TwinsDelete {Vymazat partie}

# Name editor window:
translate C NameEditType {Typ jm�na pro editaci}
translate C NameEditSelect {Partie k editaci}
translate C NameEditReplace {Nahradit}
translate C NameEditWith {}
translate C NameEditMatches {Shoduje se: Stiskni Ctrl+1 a� Ctrl+9 pro v�b�r}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======

# Classify window:
translate C Classify {Klasifikace}
translate C ClassifyWhich {ECO klasifikace kter�ch parti�}
translate C ClassifyAll {V�echny partie (p�epsat star� ECO k�dy)}
translate C ClassifyYear {V�echny partie hran� za posledn� rok}
translate C ClassifyMonth {V�echny partie hran� za posledn� m�s�c}
translate C ClassifyNew {Jen partie, kter� jsou zat�m bez ECO k�du}
translate C ClassifyCodes {Pou��t tyto ECO k�dy}
translate C ClassifyBasic {Jen z�kladn� k�dy ("B12", ...)}
translate C ClassifyExtended {Roz���en� Scidu  ("B12j", ...)}

# Compaction:
translate C NameFile {Jmenn� soubor}
translate C GameFile {Partiov� soubor}
translate C Names {Jm�na}
translate C Unused {Nepou�ito}
translate C SizeKb {Velikost (kb)}
translate C CurrentState {Aktu�ln� stav}
translate C AfterCompaction {Po kompaktov�n�}
translate C CompactNames {Kompaktovat jmenn� soubor}
translate C CompactGames {Kompaktovat partiov� soubor}
# ====== TODO To be translated ======
translate C NoUnusedNames "There are no unused names, so the name file is already fully compacted."
# ====== TODO To be translated ======
translate C NoUnusedGames "The game file is already fully compacted."
# ====== TODO To be translated ======
translate C NameFileCompacted {The name file for "[file tail [sc_base filename]]" was compacted.}
# ====== TODO To be translated ======
translate C GameFileCompacted {The game file for "[file tail [sc_base filename]]" was compacted.}

# Sorting:
translate C SortCriteria {Krit�ria}
translate C AddCriteria {P�idat krit�ria}
translate C CommonSorts {B��n� �azen�}
translate C Sort {Set��dit}

# Exporting:
translate C AddToExistingFile {P�idat partie do existuj�c�ho souboru?}
translate C ExportComments {Exportovat koment��e?}
translate C ExportVariations {Exportovat varianty?}
translate C IndentComments {Odsazovat koment��e?}
translate C IndentVariations {Odsazovat varianty?}
# ====== TODO To be translated ======
translate C InsertNewlines {Insert newlines every 80 chars?}
translate C ExportColumnStyle {Sloupcov� styl (jeden tah na ��dek)?}
translate C ExportSymbolStyle {Styl pro symbolick� anotace:}
translate C ExportStripMarks {Odstranit k�dov� zna�ky pol�/�ipek z koment���?}
# ====== TODO To be translated ======
translate C ExportFlags {Export Scid Flags}

# Goto game/move dialogs:
translate C LoadGameNumber {Vlo�te ��slo partie:}
translate C GotoMoveNumber {P�ej�t na tah ��slo:}

# Copy games dialog:
translate C CopyGames {Kop�rovat partie}
translate C CopyConfirm {
 Skute�n� chcete kop�rovat
 [::utils::thousands $nGamesToCopy] filtrovan�ch parti�
 z datab�ze "$fromName"
 do datab�ze "$targetName"?
}
translate C CopyErr {Nelze zkop�rovat partie}
translate C CopyErrSource {zdrojov� datab�ze}
translate C CopyErrTarget {c�lov� datab�ze}
translate C CopyErrNoGames {nem� ��dn� partie ve filtru}
translate C CopyErrReadOnly {je pouze ke �ten�}
translate C CopyErrNotOpen {nen� otev�ena}

# Colors:
translate C LightSquares {B�l� pole}
translate C DarkSquares {�ern� pole}
translate C SelectedSquares {Vybran� pole}
# todo
translate C Grid {Grid}
translate C Previous {P�edchoz�}
translate C WhitePieces {B�l� figury}
translate C BlackPieces {�ern� figury}
translate C WhiteBorder {Obrys b�l�ch figur}
translate C BlackBorder {Obrys �ern�ch figur}
translate C ArrowMain   {Arrow}
translate C ArrowVar    {Var Arrows}
# ====== TODO To be translated ======
translate C ShowArrows  {Show Arrows}

# Novelty window:
translate C FindNovelty {Hledat novinku}
translate C Novelty {Novinka}
translate C NoveltyInterrupt {Hled�n� novinky p�eru�eno}
translate C NoveltyNone {V t�to partii nebyla nalezena ��dn� novinka}
translate C NoveltyHelp {
Scid bude hledat prvn� tah aktu�ln� partie, kter� dos�hne pozice, kter� se nevyskytla ve vybran� datab�zi ani v knihovn� zah�jen� ECO.
}

# Sounds configuration:
translate C SoundsFolder {Sound Files Folder} ;# ***
translate C SoundsFolderHelp {The folder should contain the files King.wav, a.wav, 1.wav, etc} ;# ***
translate C SoundsAnnounceOptions {Move Announcement Options} ;# ***
translate C SoundsAnnounceNew {Announce new moves as they are made} ;# ***
translate C SoundsAnnounceForward {Announce moves when moving forward one move} ;# ***
translate C SoundsAnnounceBack {Announce when retracting or moving back one move} ;# ***

# Upgrading databases:
translate C Upgrading {Upgrade}
translate C ConfirmOpenNew {
Toto je star� form�t (Scid 2) datab�ze, jen� nen� mo�no otev��t ve Scidu 3. Verze s nov�m form�tem (Scid 3) p�itom ji� byla vytvo�ena.

Chcete otev��t verzi s nov�m form�tem dat�b�ze?
}
translate C ConfirmUpgrade {
Toto je star� form�t (Scid 2) datab�ze. K otev�en� ve Scidu 3 je nutno datab�zi nejprve zkonvertovat do nov�ho form�tu.

Upgrade vytvo�� novou verzi datab�ze; origin�ln� soubory se nebudou ani editovat, ani mazat.

Tento �kon m��e zabrat trochu �asu, ale je t�eba jej prov�st pouze jednou. M��ete ho p�eru�it, pokud bude trvat p��li� dlouho.

Chcete tuto datab�zi upgradovat nyn�?
}

# Recent files options:
translate C RecentFilesMenu {Po�et ned�vn�ch soubor� v menu Soubor}
translate C RecentFilesExtra {Po�et ned�vn�ch soubor� v extra podmenu}

# My Player Names options:
translate C MyPlayerNamesDescription {
Otev�e seznam se jm�ny preferovan�ch hr���, ka�d� jm�no na jeden ��dek. Z�stupn� znaky (tj. "?" pro jak�koliv jeden znak, "*" pro jakoukoliv sekvenci znak�) jsou povoleny.

V�dy, kdy� se nat�hne partie hr��e uveden�ho v seznamu, �achovnice v hlavn�m okn� se oto��, jestli�e je to nutn� k zobrazen� partie z perspektivy tohoto hr��e.
}
# ====== TODO To be translated ======
translate C showblunderexists {show blunder exists}
# ====== TODO To be translated ======
translate C showblundervalue {show blunder value}
# ====== TODO To be translated ======
translate C showscore {show score}
# ====== TODO To be translated ======
translate C coachgame {coach game}
# ====== TODO To be translated ======
translate C configurecoachgame {configure coach game}
# ====== TODO To be translated ======
translate C configuregame {Game configuration}
# ====== TODO To be translated ======
translate C Phalanxengine {Phalanx engine}
# ====== TODO To be translated ======
translate C Coachengine {Coach engine}
# ====== TODO To be translated ======
translate C difficulty {difficulty}
# ====== TODO To be translated ======
translate C hard {hard}
# ====== TODO To be translated ======
translate C easy {easy}
# ====== TODO To be translated ======
translate C Playwith {Play with}
# ====== TODO To be translated ======
translate C white {white}
# ====== TODO To be translated ======
translate C black {black}
# ====== TODO To be translated ======
translate C both {both}
# ====== TODO To be translated ======
translate C Play {Play}
# ====== TODO To be translated ======
translate C Noblunder {No blunder}
# ====== TODO To be translated ======
translate C blunder {blunder}
# ====== TODO To be translated ======
translate C Noinfo {-- No info --}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate C moveblunderthreshold {move is a blunder if loss is greater than}
# ====== TODO To be translated ======
translate C limitanalysis {limit engine analysis time}
# ====== TODO To be translated ======
translate C seconds {seconds}
# ====== TODO To be translated ======
translate C Abort {Abort}
# ====== TODO To be translated ======
translate C Resume {Resume}
# ====== TODO To be translated ======
translate C Restart {Restart}
# ====== TODO To be translated ======
translate C OutOfOpening {Out of opening}
# ====== TODO To be translated ======
translate C NotFollowedLine {You did not follow the line}
# ====== TODO To be translated ======
translate C DoYouWantContinue {Do you want yo continue ?}
# ====== TODO To be translated ======
translate C CoachIsWatching {Coach is watching}
# ====== TODO To be translated ======
translate C Ponder {Permanent thinking}
# ====== TODO To be translated ======
translate C LimitELO {Limit ELO strength}
# ====== TODO To be translated ======
translate C DubiousMovePlayedTakeBack {Dubious move played, do you want to take back ?}
# ====== TODO To be translated ======
translate C WeakMovePlayedTakeBack {Weak move played, do you want to take back ?}
# ====== TODO To be translated ======
translate C BadMovePlayedTakeBack {Bad move played, do you want to take back ?}
# ====== TODO To be translated ======
translate C Iresign {I resign}
# ====== TODO To be translated ======
translate C yourmoveisnotgood {your move is not good}
# ====== TODO To be translated ======
translate C EndOfVar {End of variation}
# ====== TODO To be translated ======
translate C Openingtrainer {Opening trainer}
# ====== TODO To be translated ======
translate C DisplayCM {Display candidate moves}
# ====== TODO To be translated ======
translate C DisplayCMValue {Display candidate moves value}
# ====== TODO To be translated ======
translate C DisplayOpeningStats {Show statistics}
# ====== TODO To be translated ======
translate C ShowReport {Show report}
# ====== TODO To be translated ======
translate C NumberOfGoodMovesPlayed {good moves played}
# ====== TODO To be translated ======
translate C NumberOfDubiousMovesPlayed {dubious moves played}
# ====== TODO To be translated ======
translate C NumberOfTimesPositionEncountered {times position encountered}
# ====== TODO To be translated ======
translate C PlayerBestMove  {Allow only best moves}
# ====== TODO To be translated ======
translate C OpponentBestMove {Opponent plays best moves}
# ====== TODO To be translated ======
translate C OnlyFlaggedLines {Only flagged lines}
# ====== TODO To be translated ======
translate C resetStats {Reset statistics}
# ====== TODO To be translated ======
translate C Movesloaded {Moves loaded}
# ====== TODO To be translated ======
translate C PositionsNotPlayed {Positions not played}
# ====== TODO To be translated ======
translate C PositionsPlayed {Positions played}
# ====== TODO To be translated ======
translate C Success {Success}
# ====== TODO To be translated ======
translate C DubiousMoves {Dubious moves}
# ====== TODO To be translated ======
translate C ConfigureTactics {Configure tactics}
# ====== TODO To be translated ======
translate C ResetScores {Reset scores}
# ====== TODO To be translated ======
translate C LoadingBase {Loading base}
# ====== TODO To be translated ======
translate C Tactics {Tactics}
# ====== TODO To be translated ======
translate C ShowSolution {Show solution}
# ====== TODO To be translated ======
translate C Next {Next}
# ====== TODO To be translated ======
translate C ResettingScore {Resetting score}
# ====== TODO To be translated ======
translate C LoadingGame {Loading game}
# ====== TODO To be translated ======
translate C MateFound {Mate found}
# ====== TODO To be translated ======
translate C BestSolutionNotFound {Best solution NOT found !}
# ====== TODO To be translated ======
translate C MateNotFound {Mate not found}
# ====== TODO To be translated ======
translate C ShorterMateExists {Shorter mate exists}
# ====== TODO To be translated ======
translate C ScorePlayed {Score played}
# ====== TODO To be translated ======
translate C Expected {expected}
# ====== TODO To be translated ======
translate C ChooseTrainingBase {Choose training base}
# ====== TODO To be translated ======
translate C Thinking {Thinking}
# ====== TODO To be translated ======
translate C AnalyzeDone {Analyze done}
# ====== TODO To be translated ======
translate C WinWonGame {Win won game}
# ====== TODO To be translated ======
translate C Lines {Lines}
# ====== TODO To be translated ======
translate C ConfigureUCIengine {Configure UCI engine}
# ====== TODO To be translated ======
translate C SpecificOpening {Specific opening}
# ====== TODO To be translated ======
translate C ImportECO {Import ECO}
# ====== TODO To be translated ======
translate C StartNewGame {Start new game}
# ====== TODO To be translated ======
translate C FixedLevel {Fixed level}
# ====== TODO To be translated ======
translate C Opening {Opening}
# ====== TODO To be translated ======
translate C RandomLevel {Random level}
# ====== TODO To be translated ======
translate C StartFromCurrentPosition {Start from current position}
# ====== TODO To be translated ======
translate C FixedDepth {Fixed depth}
# ====== TODO To be translated ======
translate C Nodes {Nodes}
# ====== TODO To be translated ======
translate C Depth {Depth}
# ====== TODO To be translated ======
translate C Time {Time}
# ====== TODO To be translated ======
translate C Auto {Auto}
# ====== TODO To be translated ======
translate C Score {Score}
# ====== TODO To be translated ======
translate C {Score Combo} {Score Combo}
# ====== TODO To be translated ======
translate C {Time Combo} {Time Combo}
# ====== TODO To be translated ======
translate C SecondsPerMove {Seconds per move}
# ====== TODO To be translated ======
translate C DepthPerMove {Depth per move}
# ====== TODO To be translated ======
translate C MoveControl {Move Control}
# ====== TODO To be translated ======
translate C TimeLabel {Time per move}
# ====== TODO To be translated ======
translate C AddVars {Add Variations}
# ====== TODO To be translated ======
translate C AddScores {Add Score}
# ====== TODO To be translated ======
translate C Engine {Engine}
# ====== TODO To be translated ======
translate C TimeMode {Time mode}
# ====== TODO To be translated ======
translate C TimeBonus {Time + bonus}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate C TimeMin {min}
# ====== TODO To be translated ======
translate C TimeSec {sec}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate C AllExercisesDone {All exercises done}
# ====== TODO To be translated ======
translate C MoveOutOfBook {Move out of book}
# ====== TODO To be translated ======
translate C LastBookMove {Last book move}
# ====== TODO To be translated ======
translate C AnnotateSeveralGames {Annotate several games\nfrom current to :}
# ====== TODO To be translated ======
translate C FindOpeningErrors {Find opening errors}
# ====== TODO To be translated ======
translate C MarkTacticalExercises {Mark tactical exercises}
# ====== TODO To be translated ======
translate C UseBook {Use book}
# ====== TODO To be translated ======
translate C MultiPV {Multiple variations}
# ====== TODO To be translated ======
translate C Hash {Hash memory}
# ====== TODO To be translated ======
translate C OwnBook {Use engine book}
# ====== TODO To be translated ======
translate C BookFile {Opening book}
# ====== TODO To be translated ======
translate C AnnotateVariations {Annotate variations}
# ====== TODO To be translated ======
translate C ShortAnnotations {Short annotations}
# ====== TODO To be translated ======
translate C addAnnotatorTag {Add annotator tag}
# ====== TODO To be translated ======
translate C AddScoreToShortAnnotations {Add score to short annotations}
# ====== TODO To be translated ======
translate C Export {Export}
# ====== TODO To be translated ======
translate C BookPartiallyLoaded {Book partially loaded}
# ====== TODO To be translated ======
translate C AddLine {Add Line}
# ====== TODO To be translated ======
translate C RemLine {Remove Line}
# ====== TODO To be translated ======
translate C Calvar {Calculation of variations}
# ====== TODO To be translated ======
translate C ConfigureCalvar {Configuration}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate C Reti {Reti}
# ====== TODO To be translated ======
translate C English {English}
# ====== TODO To be translated ======
translate C d4Nf6Miscellaneous {1.d4 Nf6 Miscellaneous}
# ====== TODO To be translated ======
translate C Trompowsky {Trompowsky}
# ====== TODO To be translated ======
translate C Budapest {Budapest}
# ====== TODO To be translated ======
translate C OldIndian {Old Indian}
# ====== TODO To be translated ======
translate C BenkoGambit {Benko Gambit}
# ====== TODO To be translated ======
translate C ModernBenoni {Modern Benoni}
# ====== TODO To be translated ======
translate C DutchDefence {Dutch Defence}
# ====== TODO To be translated ======
translate C Scandinavian {Scandinavian}
# ====== TODO To be translated ======
translate C AlekhineDefence {Alekhine Defence}
# ====== TODO To be translated ======
translate C Pirc {Pirc}
# ====== TODO To be translated ======
translate C CaroKann {Caro-Kann}
# ====== TODO To be translated ======
translate C CaroKannAdvance {Caro-Kann Advance}
# ====== TODO To be translated ======
translate C Sicilian {Sicilian}
# ====== TODO To be translated ======
translate C SicilianAlapin {Sicilian Alapin}
# ====== TODO To be translated ======
translate C SicilianClosed {Sicilian Closed}
# ====== TODO To be translated ======
translate C SicilianRauzer {Sicilian Rauzer}
# ====== TODO To be translated ======
translate C SicilianDragon {Sicilian Dragon}
# ====== TODO To be translated ======
translate C SicilianScheveningen {Sicilian Scheveningen}
# ====== TODO To be translated ======
translate C SicilianNajdorf {Sicilian Najdorf}
# ====== TODO To be translated ======
translate C OpenGame {Open Game}
# ====== TODO To be translated ======
translate C Vienna {Vienna}
# ====== TODO To be translated ======
translate C KingsGambit {King's Gambit}
# ====== TODO To be translated ======
translate C RussianGame {Russian Game}
# ====== TODO To be translated ======
translate C ItalianTwoKnights {Italian/Two Knights}
# ====== TODO To be translated ======
translate C Spanish {Spanish}
# ====== TODO To be translated ======
translate C SpanishExchange {Spanish Exchange}
# ====== TODO To be translated ======
translate C SpanishOpen {Spanish Open}
# ====== TODO To be translated ======
translate C SpanishClosed {Spanish Closed}
# ====== TODO To be translated ======
translate C FrenchDefence {French Defence}
# ====== TODO To be translated ======
translate C FrenchAdvance {French Advance}
# ====== TODO To be translated ======
translate C FrenchTarrasch {French Tarrasch}
# ====== TODO To be translated ======
translate C FrenchWinawer {French Winawer}
# ====== TODO To be translated ======
translate C FrenchExchange {French Exchange}
# ====== TODO To be translated ======
translate C QueensPawn {Queen's Pawn}
# ====== TODO To be translated ======
translate C Slav {Slav}
# ====== TODO To be translated ======
translate C QGA {QGA}
# ====== TODO To be translated ======
translate C QGD {QGD}
# ====== TODO To be translated ======
translate C QGDExchange {QGD Exchange}
# ====== TODO To be translated ======
translate C SemiSlav {Semi-Slav}
# ====== TODO To be translated ======
translate C QGDwithBg5 {QGD with Bg5}
# ====== TODO To be translated ======
translate C QGDOrthodox {QGD Orthodox}
# ====== TODO To be translated ======
translate C Grunfeld {Gr�nfeld}
# ====== TODO To be translated ======
translate C GrunfeldExchange {Gr�nfeld Exchange}
# ====== TODO To be translated ======
translate C GrunfeldRussian {Gr�nfeld Russian}
# ====== TODO To be translated ======
translate C Catalan {Catalan}
# ====== TODO To be translated ======
translate C CatalanOpen {Catalan Open}
# ====== TODO To be translated ======
translate C CatalanClosed {Catalan Closed}
# ====== TODO To be translated ======
translate C QueensIndian {Queen's Indian}
# ====== TODO To be translated ======
translate C NimzoIndian {Nimzo-Indian}
# ====== TODO To be translated ======
translate C NimzoIndianClassical {Nimzo-Indian Classical}
# ====== TODO To be translated ======
translate C NimzoIndianRubinstein {Nimzo-Indian Rubinstein}
# ====== TODO To be translated ======
translate C KingsIndian {King's Indian}
# ====== TODO To be translated ======
translate C KingsIndianSamisch {King's Indian S�misch}
# ====== TODO To be translated ======
translate C KingsIndianMainLine {King's Indian Main Line}
# ====== TODO To be translated ======

translate C ConfigureFics {Konfigurovat FICS}
translate C FICSLogin {P�ihl�sit}
translate C FICSGuest {P�ihl�sit jako host}
translate C FICSServerPort {Port serveru}
translate C FICSServerAddress {IP adresa}
translate C FICSRefresh {Obnovit}
# TODO
translate C FICSTimeseal {Timeseal}
translate C FICSTimesealPort {Port timesealu}
translate C FICSSilence {Ticho}
translate C FICSOffers {Nab�dky}
# ====== TODO To be translated ======
translate C FICSMakeOffer {Make Offer}
translate C FICSGames {Hry}
translate C FICSFindOpponent {Naj�t soupe�e}
translate C FICSTakeback {Vr�tit tah}
translate C FICSTakeback2 {Vr�tit tah 2}
translate C FICSInitTime {Po��te�n� �as (min)}
translate C FICSIncrement {Inkrement (s)}
translate C FICSRatedGame {Partie zapo��tan� do ratingu}
translate C FICSAutoColour {automatick�}
translate C FICSManualConfirm {potvrdit ru�n�}
translate C FICSFilterFormula {Filtrovat formul�}
# ====== TODO To be translated ======
translate C FICSIssueSeek {Issue seek}
# ====== TODO To be translated ======
translate C FICSAccept {accept}
# ====== TODO To be translated ======
translate C FICSDecline {decline}
translate C FICSColour {Barva}
# ====== TODO To be translated ======
translate C FICSSend {send}
translate C FICSConnect {P�ipojit}
# ====== TODO To be translated ======
translate C FICSShouts {Shouts}
# ====== TODO To be translated ======
translate C FICSTells {Tells}
# ====== TODO To be translated ======
translate C FICSOpponent {Opponent Info}
# ====== TODO To be translated ======
translate C FICSInfo {Info}
# ====== TODO To be translated ======
translate C FICSDraw {Offer Draw}
# ====== TODO To be translated ======
translate C FICSRematch {Rematch}
# ====== TODO To be translated ======
translate C FICSQuit {Quit FICS}
# ====== TODO To be translated ======
translate C FICSCensor {Censor}

translate C CCDlgConfigureWindowTitle {Konfigurovat koresponden�n� �ach}
translate C CCDlgCGeneraloptions {Obecn� nastaven�}
translate C CCDlgDefaultDB {V�choz� datab�ze:}
translate C CCDlgInbox {P��choz� schr�nka (cesta):}
translate C CCDlgOutbox {Odchoz� schr�nka (cesta):}
translate C CCDlgXfcc {Konfigurace Xfcc:}
translate C CCDlgExternalProtocol {Extern� n�stroj pro protokoly (nap�. Xfcc)}
translate C CCDlgFetchTool {Stahovac� n�stroj:}
translate C CCDlgSendTool {Odes�lac� n�stroj:}
translate C CCDlgEmailCommunication {E-mailov� komunikace}
translate C CCDlgMailPrg {E-mailov� program:}
translate C CCDlgBCCAddr {(B)CC adresa:}
translate C CCDlgMailerMode {Re�im:}
translate C CCDlgThunderbirdEg {nap�. Thunderbird, Mozilla Mail, Icedove...}
translate C CCDlgMailUrlEg {nap�. Evolution}
translate C CCDlgClawsEg {nap�. Sylpheed Claws}
translate C CCDlgmailxEg {nap�. mailx, mutt, nail...}
translate C CCDlgAttachementPar {Parametr p��lohy:}
translate C CCDlgInternalXfcc {Pou��t vystav�nou podporu Xfcc}
translate C CCDlgConfirmXfcc {Potvrdit tahy}
translate C CCDlgSubjectPar {P�edm�t:}
translate C CCDlgDeleteBoxes {Pr�zdn� p��choz�/odchoz� schr�nka}
translate C CCDlgDeleteBoxesText {Opravdu chcete vypr�zdnit p��choz� a odchoz� schr�nky pro koresponde�n� �ach? To vy�aduje novou synchronizaci, aby mohl b�t zobrazen posledn� stav va�ich parti�.}
translate C CCDlgConfirmMove {Potvrdit tah}
translate C CCDlgConfirmMoveText {Pokud potvrd�te, n�sleduj�c� tah a koment�� bude zasl�n na server:}
translate C CCDlgDBGameToLong {Nekonzistentn� hlavn� varianta}
translate C CCDlgDBGameToLongError {Hlavn� varianta v datab�zi je del�� ne� partie v p��choz� schr�nce. Jestli�e p��choz� schr�nka obsahuje aktu�ln� partie, tj. �erstv� po synchronizaci, n�kter� tahy byly do hlavn� varianty v datab�zi p�id�ny chybn�.\nV takov�m p��pad� pros�m zkra�te hlavn� variantu do (max.) tahu\n}
translate C CCDlgStartEmail {Za��t novou e-mailovou partii}
translate C CCDlgYourName {Va�e jm�na:}
translate C CCDlgYourMail {Va�e e-mailov� adresa:}
translate C CCDlgOpponentName {Jm�no soupe�e:}
translate C CCDlgOpponentMail {E-mailov� adresa soupe�e:}
translate C CCDlgGameID {Identifik�tor partie (jednozna�n�):}
translate C CCDlgTitNoOutbox {Scid: Odchoz� schr�nka koresponden�n�ho �achu}
translate C CCDlgTitNoInbox {Scid: P��choz� schr�nka koresponden�n�ho �achu}
translate C CCDlgTitNoGames {Scid: ��dn� koresponden�n� partie}
translate C CCErrInboxDir {Adres�� p��choz� schr�nky koresponden�n�ho �achu:}
translate C CCErrOutboxDir {Adres�� odchoz� schr�nky koresponden�n�ho �achu:}
translate C CCErrDirNotUsable {neexistuje nebo nen� p��stupn�!\nPros�m zkontrolujte a opravte nastaven�.}
translate C CCErrNoGames {neobsahuje ��dn� partie!\nNejprve je pros�m st�hn�te.}
translate C CCDlgTitNoCCDB {Scid: ��dn� koresponden�n� datab�ze.}
translate C CCErrNoCCDB {��dn� koresponden�n� datab�ze nen� otev�ena. Pros�m otev�ete n�jakou ne� budete pou��vat funkce koresponden�n�ho �achu.}
translate C CCFetchBtn {St�hnout partie ze serveru a zpracovat p��choz� schr�nku}
translate C CCPrevBtn {J�t na p�edchoz� partii}
translate C CCNextBtn {J�t na n�sleduj�c� partii}
translate C CCSendBtn {Poslat tah}
translate C CCEmptyBtn {Vypr�zdnit p��choz� a odchoz� schr�nku}
translate C CCHelpBtn {N�pov�da k ikon�m a stavov�m indik�tor�m.\nPro obecnou n�pov�du stiskn�te F1!}
translate C CCDlgServerName {Jm�no serveru:}
translate C CCDlgLoginName  {P�ihla�ovac� jm�no:}
translate C CCDlgPassword   {Heslo:}
translate C CCDlgURL        {URL Xfcc:}
translate C CCDlgRatingType {Typ ratingu:}
translate C CCDlgDuplicateGame {Nejednozna�n� identifik�tor partie}
translate C CCDlgDuplicateGameError {Tato partie se v datab�zi vyskytuje v�ce ne� jednou. Pros�m sma�te v�echny duplik�ty a soubor parti� zhutn�te (Soubor/�dr�ba/Zhutnit datab�zi).}
translate C CCDlgSortOption {T��d�n�:}
# ====== TODO To be translated ======
translate C CCDlgListOnlyOwnMove {Only games I have the move}
translate C CCOrderClassicTxt {M�sto, ud�lost, kolo, v�sledek, b�l�, �ern�}
translate C CCOrderMyTimeTxt {M� hodiny}
translate C CCOrderTimePerMoveTxt {�as na ka�d� tah do p���t� �asov� kontroly}
translate C CCOrderStartDate {Po��te�n� datum}
translate C CCOrderOppTimeTxt {Soupe�ovy hodiny}
translate C CCDlgConfigRelay {Konfigurovat sledov�n� ICCF}
translate C CCDlgConfigRelayHelp {B��te na str�nku parti� na http://www.iccf-webchess.com a zobrazte partii, kter� m� b�t sledov�na. Pokud vid�te �achovnici, zkop�rujte URL z prohl��e�e do seznamu n��e. Pouze jedin� URL na ka�d�m ��dku!\nP��klad: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}

# ====== TODO To be translated ======
translate C ExtHWConfigConnection {Configure external hardware}
# ====== TODO To be translated ======
translate C ExtHWPort {Port}
# ====== TODO To be translated ======
translate C ExtHWEngineCmd {Engine command}
# ====== TODO To be translated ======
translate C ExtHWEngineParam {Engine parameter}
# ====== TODO To be translated ======
translate C ExtHWShowButton {Show button}
# ====== TODO To be translated ======
translate C ExtHWHardware {Hardware}
# ====== TODO To be translated ======
translate C ExtHWNovag {Novag Citrine}
# ====== TODO To be translated ======
translate C ExtHWInputEngine {Input Engine}
# ====== TODO To be translated ======
translate C ExtHWNoBoard {No board}
# ====== TODO To be translated ======
translate C IEConsole {Input Engine Console}
# ====== TODO To be translated ======
translate C IESending {Moves sent for}
# ====== TODO To be translated ======
translate C IESynchronise {Synchronise}
# ====== TODO To be translated ======
translate C IERotate  {Rotate}
# ====== TODO To be translated ======
translate C IEUnableToStart {Unable to start Input Engine:}
# ====== TODO To be translated ======
translate C DoneWithPosition {Done with position}
translate C Board {�achovnice}
translate C showGameInfo {Uk�zat informace o partii}
translate C autoResizeBoard {Automatick� zm�na velikosti �achovnice}
translate C DockTop {P�esunout nahoru}
translate C DockBottom {P�esunout dol�}
translate C DockLeft {P�esunout doleva}
translate C DockRight {P�esunout doprava}
# ====== TODO To be translated ======
translate C Undock {Undock}
translate C ChangeIcon {Zm�nit ikonu}
# ====== TODO To be translated ======
translate C More {More}

# Drag & Drop
# ====== TODO To be translated ======
translate C CannotOpenUri {Cannot open the following URI:}
# ====== TODO To be translated ======
translate C InvalidUri {Drop content is not a valid URI list.}
# ====== TODO To be translated ======
translate C UriRejected	{The following files are rejected:}
# ====== TODO To be translated ======
translate C UriRejectedDetail {Only the listed file types can be handled:}
# ====== TODO To be translated ======
translate C EmptyUriList {Drop content is empty.}
# ====== TODO To be translated ======
translate C SelectionOwnerDidntRespond {Timeout during drop action: selection owner didn't respond.}
# ====== TODO To be translated ======
translate C PasteAnal {Paste Analysis}
# ====== TODO To be translated ======
translate C SortOpcodes {Sort Opcodes}
# ====== TODO To be translated ======
translate C AddPosition {Add Position}
# ====== TODO To be translated ======
translate C FindPos {Find Deepest Game Position}
# ====== TODO To be translated ======
translate C AnalPosition {Analyze Positions}
# ====== TODO To be translated ======
translate C StripOpcodes {Strip Opcodes}
# ====== TODO To be translated ======
translate C NoMoves {No moves from this position}
# ====== TODO To be translated ======
translate C CountBestMoves {Count Best Moves}

}

### Czech help pages: removed because they are too old :( S.A.

# end of czech.tcl
