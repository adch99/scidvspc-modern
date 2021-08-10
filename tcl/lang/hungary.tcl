# hungary.tcl:
# Hungarian text for menu names and status bar help messages for SCID
# Translated by: G�bor Sz�ts

addLanguage H Hungarian 0 iso8859-2

proc setLanguage_H {} {

# File menu:
menuText H File "F�jl" 0
menuText H FileNew "�j..." 0 {�j SCID-adatb�zis l�trehoz�sa}
menuText H FileOpen "Megnyit..." 3 {Megl�v� SCID-adatb�zis megnyit�sa}
menuText H FileClose "Bez�r" 2 {Az akt�v SCID-adatb�zis bez�r�sa}
menuText H FileFinder "F�jlkeres�" 0 {Kinyitja a F�jlkeres� ablakot.}
menuText H FileSavePgn "Save Pgn..." 0 {}
# ====== TODO To be translated ======
menuText H FileOpenBaseAsTree "Open Base as Tree" 13   {Open a base and use it in Tree window}
# ====== TODO To be translated ======
menuText H FileOpenRecentBaseAsTree "Open Recent as Tree" 0   {Open a recent base and use it in Tree window}
menuText H FileBookmarks "K�nyvjelz�k" 0 {K�nyvjelz�men� (gyorsbillenty�: Ctrl+B)}
menuText H FileBookmarksAdd "�j k�nyvjelz�" 0 \
  {Megjel�li az aktu�lis j�tszm�t �s �ll�st.}
menuText H FileBookmarksFile "K�nyvjelz� ment�se" 11 \
  {Az �ll�shoz tartoz� k�nyvjelz�t k�l�n k�nyvt�rba teszi.}
menuText H FileBookmarksEdit "K�nyvjelz�k szerkeszt�se..." 13 \
  {K�nyvjelz�k szerkeszt�se}
menuText H FileBookmarksList "Megjelen�t�s listak�nt" 13 \
  {A k�nyvjelz�k k�nyvt�rai nem almen�k�nt, hanem listak�nt jelennek meg.}
menuText H FileBookmarksSub "Megjelen�t�s almen�k�nt" 13 \
  {A k�nyvjelz�k k�nyvt�rai nem listak�nt, hanem almen�k�nt jelennek meg.}
menuText H FileReadOnly "�r�sv�delem..." 0 \
  {Az aktu�lis adatb�zist csak olvashat�v� teszi, nehogy meg lehessen v�ltoztatni.}
menuText H FileSwitch "Adatb�zisv�lt�s" 0 \
  {�tv�lt egy m�sik megnyitott adatb�zisra.}
menuText H FileExit "Kil�p" 2 {Kil�p SCID-b�l.}

# Edit menu:
menuText H Edit "Szerkeszt�s" 1
menuText H EditAdd "�j v�ltozat" 0 {Enn�l a l�p�sn�l �j v�ltozatot sz�r be a j�tszm�ba.}
menuText H EditPasteVar "Beilleszt�s v�ltoz�sa" 0
menuText H EditDelete "V�ltozat t�rl�se" 9 {T�r�l egy v�ltozatot enn�l a l�p�sn�l.}
menuText H EditFirst "Els� v�ltozatt� tesz" 0 \
  {Els� helyre teszi a v�ltozatot a list�n.}
menuText H EditMain "F�v�ltozatt� tesz" 0 \
  {A v�ltozatot f�v�ltozatt� l�pteti el�.}
menuText H EditTrial "V�ltozat kipr�b�l�sa" 11 \
  {Elind�tja/meg�ll�tja a pr�ba�zemm�dot, amellyel egy elgondol�st lehet a t�bl�n kipr�b�lni.}
menuText H EditStrip "Lecsupasz�t" 2 {Elt�vol�tja a megjegyz�seket vagy a v�ltozatokat ebb�l a j�tszm�b�l.}
# ====== TODO To be translated ======
menuText H EditUndo "Undo" 0 {Undo last game change}
menuText H EditRedo "Redo" 0
menuText H EditStripComments "Megjegyz�sek" 0 \
  {Elt�vol�tja az �sszes megjegyz�st �s elemz�st ebb�l a j�tszm�b�l.}
menuText H EditStripVars "V�ltozatok" 0 {Elt�vol�tja az �sszes v�ltozatot ebb�l a j�tszm�b�l.}
menuText H EditStripBegin "Az elej�t�l" 3 \
  {Lev�gja a j�tszma elej�t}
menuText H EditStripEnd "A v�g�ig" 2 \
  {Lev�gja a j�tszma v�g�t}
# ====== TODO To be translated ======
menuText H EditFlip "Flip Board" 0 {Flip the board}
menuText H EditReset "Ki�r�ti a V�g�asztalt" 2 \
  {Alaphelyzetbe hozza a V�g�asztalt, hogy az teljesen �res legyen.}
menuText H EditCopy "A V�g�asztalra m�solja ezt a j�tszm�t." 15 \
  {Ezt a j�tszm�t �tm�solja a V�g�asztal adatb�zisba.}
menuText H EditPaste "Beilleszti az utols� j�tszm�t a V�g�asztalr�l." 0 \
  {A V�g�asztal akt�v j�tszm�j�t beilleszti ide.}
menuText H EditPastePGN "A v�g�lap tartalm�t PGN-j�tszmak�nt beilleszti" 20 \
  {A v�g�lap tartalm�t PGN-jel�l�s� j�tszm�nak tekinti, �s idem�solja.}
menuText H EditSetup "Kezd��ll�s fel�ll�t�sa..." 14 \
  {Fel�ll�tja a kezd��ll�st ehhez a j�tszm�hoz.}
menuText H EditCopyBoard "�ll�s m�sol�sa FEN-k�nt" 17 \
  {Az aktu�lis �ll�st FEN-jel�l�ssel a v�g�lapra m�solja.}
menuText H EditCopyPGN "�ll�s m�sol�sa PGN" 0 {}
menuText H EditPasteBoard "Kezd��ll�s beilleszt�se" 13 \
  {Fel�ll�tja a kezd��ll�st kijel�lt sz�veg (v�g�lap) alapj�n.}

# Game menu:
menuText H Game "J�tszma" 0
menuText H GameNew "�j j�tszma" 0 \
  {�j j�tszm�t kezd; a v�ltoztat�sokat elveti.}
menuText H GameFirst "Bet�lti az els� j�tszm�t." 11 {Bet�lti az els� sz�rt j�tszm�t.}
menuText H GamePrev "Bet�lti az el�z� j�tszm�t." 12 {Bet�lti az el�z� sz�rt j�tszm�t.}
menuText H GameReload "Ism�t bet�lti az aktu�lis j�tszm�t." 0 \
  {�jra bet�lti ezt a j�tszm�t; elvet minden v�ltoztat�st.}
menuText H GameNext "Bet�lti a k�vetkez� j�tszm�t." 10 {Bet�lti a k�vetkez� sz�rt j�tszm�t.}
menuText H GameLast "Bet�lti az utols� j�tszm�t." 11 {Bet�lti az utols� sz�rt j�tszm�t.}
menuText H GameRandom "V�letlenszer�en bet�lt egy j�tszm�t." 0 {V�letlenszer�en bet�lt egy sz�rt j�tszm�t.}
menuText H GameNumber "Megadott sorsz�m� j�tszma bet�lt�se..." 9 \
  {Bet�lti a sorsz�mmal megadott j�tszm�t.}
menuText H GameReplace "Ment�s cser�vel..." 7 \
  {Elmenti ezt a j�tszm�t; fel�l�rja a r�gi v�ltozatot.}
menuText H GameAdd "Ment�s �j j�tszmak�nt..." 0 \
  {Elmenti ezt a j�tszm�t; �j j�tszm�t hoz l�tre az adatb�zisban.}
menuText H GameInfo "Set Game Information" 9
menuText H GameBrowse "B�ng�sszen j�t�kok" 0
menuText H GameList "�sszes J�t�k" 0
# ====== TODO To be translated ======
menuText H GameDelete "Delete Game" 0
menuText H GameDeepest "Megnyit�s azonos�t�sa" 10 \
  {Az ECO-k�nyvben szerepl� legnagyobb m�lys�gig megy bele a j�tszm�ba.}
menuText H GameGotoMove "Ugr�s megadott sorsz�m� l�p�shez..." 1 \
  {Megadott sorsz�m� l�p�shez ugrik az aktu�lis j�tszm�ban.}
menuText H GameNovelty "�j�t�s keres�se..." 2 \
  {Megkeresi ebben a j�tszm�ban az els� olyan l�p�st, amely kor�bban nem fordult el�.}

# Search Menu:
menuText H Search "Keres�s" 0
menuText H SearchReset "Sz�r� t�rl�se" 6 {Alaphelyzetbe hozza a sz�r�t, hogy az �sszes j�tszma benne legyen.}
menuText H SearchNegate "Sz�r� neg�l�sa" 6 {Neg�lja a sz�r�t, hogy csak a kiz�rt j�tszm�k legyenek benne.}
menuText H SearchEnd "�thelyez�s Utols� Filter" 0
menuText H SearchCurrent "Aktu�lis �ll�s..." 0 {A t�bl�n l�v� �ll�st keresi.}
menuText H SearchHeader "Fejl�c..." 0 {Keres�s fejl�c (j�t�kos, esem�ny, stb.) alapj�n}
menuText H SearchMaterial "Anyag/szerkezet..." 6 {Keres�s anyag vagy �ll�sszerkezet alapj�n}
menuText H SearchMoves {L�p�sek} 0 {}
menuText H SearchUsing "Keres�f�jl haszn�lata..." 0 {Keres�s SearchOptions f�jl haszn�lat�val}

# Windows menu:
menuText H Windows "Ablakok" 0
menuText H WindowsGameinfo "A jtszma adatai" 0 {Show/hide the game info panel}
menuText H WindowsComment "Megjegyz�sszerkeszt�" 0 {Megnyitja/bez�rja a megjegyz�sszerkeszt�t.}
menuText H WindowsGList "J�tszm�k list�ja" 9 {Kinyitja/becsukja a j�tszm�k list�j�t mutat� ablakot.}
menuText H WindowsPGN "PGN" 0 {Kinyitja/becsukja a PGN-(j�tszmajegyz�s)-ablakot.}
menuText H WindowsCross "Versenyt�bl�zat" 0 {Megmutatja az ehhez a j�tszm�hoz tartoz� verseny t�bl�zat�t.}
menuText H WindowsPList "J�t�koskeres�" 0 {Kinyitja/becsukja a j�t�koskeres�t.}
menuText H WindowsTmt "Versenykeres�" 0 {Kinyitja/becsukja a versenykeres�t.}
menuText H WindowsSwitcher "Adatb�zisv�lt�" 0 \
  {Kinyitja/becsukja az adatb�zisv�lt� ablakot.}
menuText H WindowsMaint "Adatb�zisgondoz�" 9 \
  {Kinyitja/becsukja az adatb�zisgondoz� ablakot.}
menuText H WindowsECO "ECO-b�ng�sz�" 0 {Kinyitja/becsukja az ECO-b�ng�sz� ablakot.}
menuText H WindowsStats "Statisztika" 0 \
  {Kinyitja/becsukja a sz�r�si statisztika ablak�t.}
menuText H WindowsTree "Faszerkezet" 0 {Kinyitja/becsukja a faszerkezet-ablakot.}
menuText H WindowsTB "V�gj�t�kt�bl�zatok" 8 \
  {Kinyitja/becsukja a v�gj�t�kt�bl�zatok ablak�t.}
# ====== TODO To be translated ======
menuText H WindowsBook "Book Window" 0 {Open/close the Book window}
# ====== TODO To be translated ======
menuText H WindowsCorrChess "Correspondence Window" 0 {Open/close the Correspondence window}
# ====== TODO To be translated ======
menuText H Analyse "Analyse" 0
# ====== TODO To be translated ======
menuText H AnalyseEngineList "Analysis Engines" 0 {Configure analysis engines}
# ====== TODO To be translated ======
menuText H AnalyseRating "Player Ratings" 0 {Graph the rating history of the current game players}
# ====== TODO To be translated ======
menuText H AnalyseScore "Score Graph" 0 {Show the score graph window}
# ====== TODO To be translated ======
menuText H AnalyseStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText H AnalyseStartEngine2 "Start engine 2" 0  {Start engine 2}
# ====== TODO To be translated ======
menuText H AnalysePlayerReport "Player Report" 3 {Generate a player report}
# ====== TODO To be translated ======
menuText H AnalyseOpReport "Opening Report" 0 {Generate an opening report for the current position}

# Tools menu:
menuText H Tools "Eszk�z�k" 0
menuText H ToolsAnalysis "Elemz� motor..." 0 \
  {Elind�t/le�ll�t egy sakkelemz� programot.}
menuText H ToolsEmail "Levelez�si sakk" 0 \
  {Kinyitja/becsukja az elektronikus sakklevelez�s lebonyol�t�s�ra szolg�l� ablakot.}
menuText H ToolsFilterGraph "Sz�r�grafikon" 0 \
  {Kinyitja/becsukja a sz�r�grafikont mutat� ablakot.}
# ====== TODO To be translated ======
menuText H ToolsAbsFilterGraph "Abs. Filter Graph" 7 {Open/close the filter graph window for absolute values}
menuText H ToolsOpReport "Megnyit�si �sszefoglal�" 0 \
  {Ismertet�t k�sz�t az aktu�lis �ll�shoz tartoz� megnyit�sr�l.}
menuText H ToolsTracker "Figurak�vet�"  0 {Kinyitja/becsukja a figurak�vet� ablakot.}
# ====== TODO To be translated ======
menuText H ToolsTraining "Training"  0 {Training tools (tactics, openings,...) }
menuText H ToolsComp "Tournament" 2 {Chess engine tournament}
# ====== TODO To be translated ======
menuText H ToolsTacticalGame "Tactical game"  0 {Play a game with tactics}
# ====== TODO To be translated ======
menuText H ToolsSeriousGame "Serious game"  0 {Play a serious game}
# ====== TODO To be translated ======
menuText H ToolsTrainTactics "Tactics"  0 {Solve tactics}
# ====== TODO To be translated ======
menuText H ToolsTrainCalvar "Calculation of variations"  0 {Calculation of variations training}
# ====== TODO To be translated ======
menuText H ToolsTrainFindBestMove "Find best move"  0 {Find best move}
# ====== TODO To be translated ======
menuText H ToolsTrainFics "Internet"  0 {Play on freechess.org}
# ====== TODO To be translated ======
menuText H ToolsBookTuning "Book tuning" 0 {Book tuning}
menuText H ToolsMaint "Gondoz�s" 0 {SCID adatb�zisgondoz� eszk�z�k}
menuText H ToolsMaintWin "Adatb�zisgondoz� ablak" 0 \
  {Kinyitja/becsukja az SCID adatb�zisgondoz� ablakot.}
menuText H ToolsMaintCompact "Adatb�zis t�m�r�t�se..." 10 \
  {Elt�vol�tja az adatb�zisb�l a t�r�lt j�tszm�kat �s a haszn�laton k�v�l �ll� neveket.}
menuText H ToolsMaintClass "Oszt�lyba sorol�s..." 0 \
  {�jra kisz�m�tja az �sszes j�tszma ECO-k�dj�t.}
menuText H ToolsMaintSort "Rendez�s..." 0 \
  {Rendezi az adatb�zis �sszes j�tszm�j�t.}
menuText H ToolsMaintDelete "Ikerj�tszm�k t�rl�se..." 0 \
  {Megkeresi az ikerj�tszm�kat, �s megjel�li �ket t�rl�sre.}
menuText H ToolsMaintTwin "Ikerkeres� ablak" 4 \
  {Kinyitja/becsukja az ikerkeres� ablakot.}
menuText H ToolsMaintNameEditor "N�vszerkeszt�" 0 \
  {Kinyitja/becsukja a n�vszerkeszt� ablakot.}
menuText H ToolsMaintNamePlayer "J�t�kosnevek ellen�rz�se..." 0 \
  {A helyes�r�s-ellen�rz� f�jl seg�ts�g�vel ellen�rzi a j�t�kosok nev�t.}
menuText H ToolsMaintNameEvent "Esem�nynevek ellen�rz�se..." 0 \
  {A helyes�r�s-ellen�rz� f�jl seg�ts�g�vel ellen�rzi esem�nyek nev�t.}
menuText H ToolsMaintNameSite "Helynevek ellen�rz�se..." 0 \
  {A helyes�r�s-ellen�rz� f�jl seg�ts�g�vel ellen�rzi a helysz�nek nev�t.}
menuText H ToolsMaintNameRound "Fordul�nevek ellen�rz�se..." 0 \
  {A helyes�r�s-ellen�rz� f�jl seg�ts�g�vel ellen�rzi a fordul�k nev�t.}
# ====== TODO To be translated ======
menuText H ToolsMaintFixBase "Repair base" 0 {Try to repair a corrupted base}
# ====== TODO To be translated ======
menuText H ToolsConnectHardware "Connect Hardware" 0 {Connect external hardware}
# ====== TODO To be translated ======
menuText H ToolsConnectHardwareConfigure "Configure..." 0 {Configure external hardware and connection}
# ====== TODO To be translated ======
menuText H ToolsConnectHardwareNovagCitrineConnect "Connect Novag Citrine" 0 {Connect Novag Citrine}
# ====== TODO To be translated ======
menuText H ToolsConnectHardwareInputEngineConnect "Connect Input Engine" 0 {Connect Input Engine (e.g. DGT)}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======
menuText H ToolsPInfo "J�t�kosinform�ci�"  0 \
  {Kinyitja/friss�ti a j�t�kos adatait tartalmaz� ablakot.}
menuText H ToolsPlayerReport "�sszefoglal� j�t�kosr�l" 0 \
    {�sszefoglal�t k�sz�t a j�t�kosr�l}
menuText H ToolsRating "�rt�ksz�m alakul�sa" 0\
  {Grafikusan �br�zolja, hogyan alakult az aktu�lis j�tszma r�sztvev�inek �rt�ksz�ma.}
menuText H ToolsScore "Eredm�ny alakul�sa" 1 {Megmutatja az eredm�nygrafikont.}
menuText H ToolsExpCurrent "Az aktu�lis j�tszma export�l�sa" 21 \
  {Sz�vegf�jlba �rja az aktu�lis j�tszm�t.}
menuText H ToolsExpCurrentPGN "Export�l�s PGN-f�jlba..." 11 \
  {PGN-f�jlba �rja az aktu�lis j�tszm�t.}
menuText H ToolsExpCurrentHTML "Export�l�s HTML-f�jlba..." 11 \
  {HTML-f�jlba �rja az aktu�lis j�tszm�t.}
# ====== TODO To be translated ======
menuText H ToolsExpCurrentHTMLJS "Export Game to HTML and JavaScript File..." 15 {Write current game to a HTML and JavaScript file}
menuText H ToolsExpCurrentLaTeX "Export�l�s LaTeX-f�jlba..." 11 \
  {LaTeX-f�jlba �rja az aktu�lis j�tszm�t.}
# ====== TODO To be translated ======
menuText H ToolsExpFilter "Az �sszes sz�rt j�tszma export�l�sa" 10 \
  {Sz�vegf�jlba �rja az �sszes sz�rt j�tszm�t.}
menuText H ToolsExpFilterPGN "Sz�r� export�l�sa PGN-f�jlba..." 18 \
  {PGN-f�jlba �rja az �sszes sz�rt j�tszm�t.}
menuText H ToolsExpFilterHTML "Sz�r� export�l�sa HTML-f�jlba..." 18 \
  {HTML-f�jlba �rja az �sszes sz�rt j�tszm�t.}
# ====== TODO To be translated ======
menuText H ToolsExpFilterHTMLJS "Export Filter to HTML and JavaScript File..." 17 {Write all filtered games to a HTML and JavaScript file}
menuText H ToolsExpFilterLaTeX "Sz�r� export�l�sa LaTeX-f�jlba..." 18 \
  {LaTeX-f�jlba �rja az �sszes sz�rt j�tszm�t.}
# ====== TODO To be translated ======
menuText H ToolsExpFilterEPD "Export Filter to EPD/FEN" 17 {Write all filtered games to an EPD File}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
menuText H ToolsExpFilterGames "Export Gamelist to Text" 19 {Print a formatted Gamelist.}
menuText H ToolsImportOne "PGN-j�tszma import�l�sa..." 0 \
  {PGN-form�tum� j�tszma import�l�sa}
menuText H ToolsImportFile "PGN-f�jl import�l�sa..." 2 \
  {PGN-f�jl �sszes j�tszm�j�nak import�l�sa}
# ====== TODO To be translated ======
menuText H ToolsStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText H ToolsStartEngine2 "Start engine 2" 0  {Start engine 2}
# ====== TODO To be translated ======
menuText H ToolsScreenshot "F�rum Screenshot" 0
menuText H Play "J�t�k" 0
menuText H CorrespondenceChess "Levelez�si sakk" 0 {Seg�deszk�z�k eMail vagy Xfcc alap� levelez�si sakkhoz}
menuText H CCConfigure "Be�ll�t�sok" 0 {K�ls� eszk�z�k �s alaptulajdons�gok}
# ====== TODO To be translated ======
menuText H CCConfigRelay "Configure observations..." 10 {Configure games to be observed}
menuText H CCOpenDB "Adatb�zis megnyit�sa" 0 {Megnyitja az alap�rtelmez�s� levelez�si adatb�zist.}
menuText H CCRetrieve "J�tszm�k bek�r�se" 0 {J�tszm�k lek�rdez�se k�ls� (Xfcc-) seg�deszk�z �tj�n}
menuText H CCInbox "Bej�v� postafi�k feldolgoz�sa" 7 {A SCID bej�v� postafi�kj�ban tal�lhat� �sszes f�jl feldolgoz�sa}
menuText H CCSend "L�p�s elk�ld�se" 8 {L�p�s elk�ld�se eMail vagy k�ls� (Xfcc-) seg�deszk�z �tj�n}
menuText H CCResign "Felad�s" 0 {Felad�s (nem eMail �tj�n)}
menuText H CCClaimDraw "D�ntetlen ig�nyl�se" 10 {L�p�s elk�ld�se �s d�ntetlen ig�nyl�se (nem eMail �tj�n)}
menuText H CCOfferDraw "D�ntetlenaj�nlat" 0 {L�p�s elk�ld�se �s d�ntetlenaj�nlat (nem eMail �tj�n)}
menuText H CCAcceptDraw "D�ntetlenaj�nlat elfogad�sa" 17 {D�ntetlenaj�nlat elfogad�sa (nem eMail �tj�n)}
menuText H CCNewMailGame "�j eMail-es j�tszma" 0 {�j eMail-es j�tszma kezd�se}
menuText H CCMailMove "L�p�s elk�ld�se" 4 {L�p�s elk�ld�se az ellenf�lnek eMail �tj�n}
menuText H CCGamePage "J�tszmaoldal..." 0 {B�ng�sz�vel jelen�ti meg a j�tszm�t.}
# ====== TODO To be translated ======
menuText H CCEditCopy "Copy Gamelist to Clipbase" 0 {Copy the games as CSV list to clipbase}

# Options menu:
menuText H Options "Be�ll�t�sok" 0
menuText H OptionsBoard "Sakkt�bla" 0 {Sakkt�bla megjelen�s�nek megv�ltoztat�sa}
menuText H OptionsColour "Background Colour" 0 {Default text widget color}
# ====== TODO To be translated ======
menuText H OptionsBackColour "Background" 0 {Default text widget color}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
menuText H OptionsMainLineColour "Mainline Arrows" 0 {Mainline arrows}
# ====== TODO To be translated ======
menuText H OptionsVarLineColour "Variation Arrows" 0 {Variation arrows}
# ====== TODO To be translated ======
menuText H OptionsEngineLineColour "Engine Arrows" 0 {Engine arrows}
# ====== TODO To be translated ======
menuText H OptionsRowColour "Rows" 0 {Default tree/book row color}
# ====== TODO To be translated ======
menuText H OptionsHighlightColour "Highlight" 0 {Default text highlight color}
# ====== TODO To be translated ======
menuText H OptionsSwitcherColour "Switcher" 0 {Default db switcher color}
# ====== TODO To be translated ======
menuText H OptionsProgressColour "Progressbar" 0 {Default progressbar color}
# ====== TODO To be translated ======
menuText H OptionsScoreColour "Score Graph" 0 {}
# ====== TODO To be translated ======
menuText H OptionsScoreBarColour "Score Graph current" 0 {}
menuText H OptionsNames "J�t�kosnevek..." 0 {J�t�kosnevek �tszerkeszt�se}
menuText H OptionsExport "Export�l�s" 1 {Export�l�si be�ll�t�sok v�ltoztat�sa}
menuText H OptionsFonts "Karakterk�szlet" 0 {Karakterk�szlet v�ltoztat�sa}
menuText H OptionsFontsRegular "Szok�sos" 0 {A szok�sos karakterk�szlet v�ltoztat�sa}
menuText H OptionsFontsMenu "Men�" 0 {A men�k karakterk�szlet�nek a v�ltoztat�sa}
menuText H OptionsFontsSmall "Kisbet�s" 0 {A kisbet�s karakterk�szlet v�ltoztat�sa}
menuText H OptionsFontsFixed "R�gz�tett" 0 {A r�gz�tett sz�less�g� karakterk�szlet v�ltoztat�sa}
menuText H OptionsGInfo "J�tszmainform�ci�" 0 {J�tszmainform�ci� v�ltoztat�sa}
menuText H OptionsFics "FICS" 0
menuText H OptionsFicsAuto "Autopromote Kir�lyno" 0
# ====== TODO To be translated ======
menuText H OptionsFicsClk "Store Clock times" 0
# ====== TODO To be translated ======
menuText H OptionsFicsColour "Text Colour" 0
# ====== TODO To be translated ======
menuText H OptionsFicsSize "Board Size" 0
# ====== TODO To be translated ======
menuText H OptionsFicsButtons "User Buttons" 0
# ====== TODO To be translated ======
menuText H OptionsFicsCommands "Init Commands" 0
# ====== TODO To be translated ======
menuText H OptionsFicsNoRes "No Results" 0
# ====== TODO To be translated ======
menuText H OptionsFicsNoReq "No Requests" 0
# ====== TODO To be translated ======
menuText H OptionsFicsPremove "Allow Premove" 0
menuText H OptionsLanguage "Nyelv" 0 {A men� nyelv�nek kiv�laszt�sa}
# ====== TODO To be translated ======
menuText H OptionsMovesTranslatePieces "Translate pieces" 0 {Translate first letter of pieces}
# ====== TODO To be translated ======
menuText H OptionsMovesHighlightLastMove "Highlight last move" 0 {Highlight last move}
# ====== TODO To be translated ======
menuText H OptionsMovesHighlightLastMoveDisplay "Show" 0 {Display last move Highlight}
# ====== TODO To be translated ======
menuText H OptionsMovesHighlightLastMoveWidth "Width" 0 {Thickness of line}
# ====== TODO To be translated ======
menuText H OptionsMovesHighlightLastMoveColor "Select Color" 0 {Color of line}
# ====== TODO To be translated ======
menuText H OptionsMovesColorSelected "Color Selected Square" 0 {Color move}
menuText H OptionsMoves "L�p�sek" 0 {L�p�sek bevitel�nek be�ll�t�sai}
menuText H OptionsMovesAsk "L�p�s cser�je el�tt r�k�rdez." 6 \
  {Miel�tt �t�rna egy meglev� l�p�st, r�k�rdez.}
menuText H OptionsMovesAnimate "Megeleven�t�s ideje" 0 \
  {Be�ll�tja az id�t l�p�sek megeleven�t�s�hez.}
menuText H OptionsMovesDelay "Automatikus visszaj�tsz�s k�sleltet�se..." 0 \
  {Be�ll�tja a k�sleltet�st automatikus visszaj�tsz�shoz.}
menuText H OptionsMovesCoord "L�p�s megad�sa koordin�t�kkal" 15 \
  {Koordin�t�kkal megadott l�p�st ("g1f3") is elfogad.}
# ====== TODO To be translated ======
menuText H OptionsShowVarPopup "Show Variation Window" 0 {Turn on/off the display of a variations window}
# ====== TODO To be translated ======
menuText H OptionsMovesSpace "Add spaces after move number" 0 {Add spaces after move number}
menuText H OptionsMovesKey "Billenty�-kieg�sz�t�s" 0 \
  {Be/kikapcsolja a billenty�zettel r�szlegesen bevitt l�p�sek automatikus kieg�sz�t�s�t.}
menuText H OptionsMovesShowVarArrows "Show Variation Arrows" 0 {Turn on/off arrows showing moves in variations}
menuText H OptionsNumbers "Sz�mform�tum" 1 {Sz�mform�tum kiv�laszt�sa}
menuText H OptionsStartup "Ind�t�s" 0 {Az ind�t�skor kinyitand� ablakok kiv�laszt�sa}
menuText H OptionsTheme "T�ma" 0 {A program megjelen�s�nek megv�ltoztat�sa}
menuText H OptionsWindows "Ablakok" 0 {Ablakbe�ll�t�sok}
menuText H OptionsWindowsIconify "Automatikus ikoniz�l�s" 12 \
  {A f� ablak ikoniz�l�sakor az �sszes t�bbit is ikoniz�lja.}
menuText H OptionsWindowsRaise "Automatikus el�hoz�s" 12 \
  {El�hoz bizonyos ablakokat (pl. el�rehalad�s-s�vokat), amikor el vannak takarva.}
menuText H OptionsSounds "Hangok..." 3 {L�p�seket bejelent� hangok defini�l�sa}
menuText H OptionsWindowsDock "Ablakok helyhez r�gz�t�se" 8 {Dock windows}
menuText H OptionsWindowsSaveLayout "Elrendez�s ment�se" 11 {Ablakelrendez�s ment�se}
menuText H OptionsWindowsRestoreLayout "Elrendez�s vissza�ll�t�sa" 11 {Ablakelrendez�s vissza�ll�t�sa}
menuText H OptionsWindowsShowGameInfo "J�tszmainform�ci�" 0 {J�tszma adatainak megjelen�t�se ablakban}
menuText H OptionsWindowsAutoLoadLayout "Az els� elrendez�s automatikus bet�lt�se" 19 {Indul�skor automatikusan bet�lti az els� ablakelrendez�st.}
# todo
menuText H OptionsWindowsAutoResize "Auto resize board" 0 {}
# ====== TODO To be translated ======
menuText H OptionsWindowsFullScreen "Fullscreen" 0 {Toggle fullscreen mode}
menuText H OptionsToolbar "Eszk�zt�r" 0 {A f� ablak eszk�zt�r�nak �ssze�ll�t�sa}
menuText H OptionsECO "ECO-f�jl bet�lt�se..." 2 {Bet�lti az ECO-oszt�lyoz� f�jlt.}
menuText H OptionsSpell "Helyes�r�s-ellen�rz� f�jl bet�lt�se..." 0 \
  {Bet�lti a helyes�r�s-ellen�rz� f�jlt.}
menuText H OptionsTable "V�gj�t�kt�bl�zatok k�nyvt�ra..." 0 \
  {V�gj�t�kt�bl�zat-f�jl kiv�laszt�sa; a k�nyvt�rban lev� �sszes v�gj�t�kt�bl�zatot haszn�latba veszi.}
menuText H OptionsRecent "Aktu�lis f�jlok..." 3 \
  {A F�jl men�ben megjelen�tett aktu�lis f�jlok sz�m�nak megv�ltoztat�sa}
# ====== TODO To be translated ======
menuText H OptionsBooksDir "Books directory..." 0 {Sets the opening books directory}
# ====== TODO To be translated ======
menuText H OptionsTacticsBasesDir "Bases directory..." 0 {Sets the tactics (training) bases directory}
# ====== TODO To be translated ======
menuText H OptionsInformant "Configure informant values" 0
menuText H OptionsSave "Be�ll�t�sok ment�se" 12 \
  "Minden be�ll�that� �rt�ket elment a $::optionsFile f�jlba."
# ====== TODO To be translated ======
menuText H OptionsSaveBases "Save Bases as Default" 0
menuText H OptionsAutoSave "Be�ll�t�sok automatikus ment�se kil�p�skor." 0 \
  {Automatikusan elment minden be�ll�t�st, amikor kil�psz SCID-b�l.}

# Help menu:
menuText H Help "Seg�ts�g" 0
menuText H HelpContents "Tartalomjegyz�k" 0 {Megjelen�ti a tartalomjegyz�ket}
menuText H HelpIndex "T�rgymutat�" 0 {Megjelen�ti a t�rgymutat�t}
menuText H HelpGuide "R�vid ismertet�" 0 {R�vid ismertet�t ny�jt a program haszn�lat�r�l.}
menuText H HelpHints "K�rd�s-felelet" 0 {N�h�ny hasznos tan�cs}
menuText H HelpContact "C�mek" 0 {Fontosabb internetc�mek}
menuText H HelpTip "A nap tippje" 2 {Hasznos tipp SCID haszn�lat�hoz}
menuText H HelpStartup "Indul� ablak" 0 {A program ind�t�sakor megjelen� ablak}
menuText H HelpAbout "SCID-r�l" 0 {T�j�koztat�s SCID-r�l}

# Game info box popup menu:
menuText H GInfoHideNext "Elrejti a k�vetkez� l�p�st." 0
# ====== TODO To be translated ======
menuText H GInfoShow "Side to Move" 0
# ====== TODO To be translated ======
menuText H GInfoCoords "Toggle Coords" 0
menuText H GInfoMaterial "Mutatja az anyagi helyzetet" 11
menuText H GInfoFEN "FEN-form�tum megmutat�sa" 0
menuText H GInfoMarks "Mutatja a sz�nes mez�ket �s nyilakat." 10
menuText H GInfoWrap "Hossz� sorok t�rdel�se" 0
menuText H GInfoFullComment "A teljes komment�rt megmutatja." 9
menuText H GInfoPhotos "Mutatja a f�nyk�peket" 1
menuText H GInfoTBNothing "V�gj�t�kt�bl�zatok: nincs inform�ci�" 20
menuText H GInfoTBResult "V�gj�t�kt�bl�zatok: csak eredm�ny" 25
menuText H GInfoTBAll "V�gj�t�kt�bl�zatok: eredm�ny �s a legjobb l�p�sek" 42
menuText H GInfoDelete "T�rli/helyre�ll�tja ezt a j�tszm�t." 0
menuText H GInfoMark "Megjel�li ezt a j�tszm�t/megsz�nteti a jel�l�st." 0
# ====== TODO To be translated ======
menuText H GInfoMenuBar "Menu Bar"  0
# ====== TODO To be translated ======
menuText H GInfoToolBar "Tool Bar"  0
# ====== TODO To be translated ======
menuText H GInfoButtonBar "Button Bar"  0
# ====== TODO To be translated ======
menuText H GInfoStatusBar "Status Bar"  0
# ====== TODO To be translated ======
translate H FlipBoard {Flip board}
# ====== TODO To be translated ======
translate H RaiseWindows {Raise windows}
# ====== TODO To be translated ======
translate H AutoPlay {Autoplay}
# ====== TODO To be translated ======
translate H TrialMode {Trial mode}
# ====== TODO To be translated ======
translate H KeepOpen {Keep open after startup}

# General buttons:
# ====== TODO To be translated ======
translate H Apply {Apply}
translate H Back {Vissza}
translate H Browse {Browse}
translate H Cancel {M�gse}
# ====== TODO To be translated ======
translate H Continue {Continue}
translate H Clear {T�r�l}
translate H Close {Bez�r}
translate H Contents {Contents}
translate H Defaults {Alap�rt�kek}
translate H Delete {T�r�l}
translate H Graph {Grafikon}
translate H Help {Seg�ts�g}
translate H Import {Import}
translate H Index {Tartalom}
translate H LoadGame {J�tszma bet�lt�se}
translate H BrowseGame {J�tszma n�zeget�se}
translate H MergeGame {J�tszma beolvaszt�sa}
# ====== TODO To be translated ======
translate H MergeGames {Merge Games}
translate H Preview {El�n�zet}
translate H Revert {Elvet}
translate H Save {Ment}
# ====== TODO To be translated ======
translate H DontSave {Don't Save}
translate H Search {Keres}
translate H Stop {�llj}
translate H Store {T�rol}
translate H Update {Friss�t}
translate H ChangeOrient {Ablak elhelyezked�s�nek v�ltoztat�sa}
translate H ShowIcons {Show Icons} ;# ***
# ====== TODO To be translated ======
translate H ConfirmCopy {Confirm Copy}
translate H None {Nincs}
translate H First {Els�}
translate H Current {Aktu�lis}
translate H Last {Utols�}
# ====== TODO To be translated ======
translate H Font {Font}
# ====== TODO To be translated ======
translate H Change {Change}
# ====== TODO To be translated ======
translate H Random {Random}

# General messages:
translate H game {j�tszma}
translate H games {j�tszma}
translate H move {l�p�s}
translate H moves {l�p�s}
translate H all {mind}
translate H Yes {Igen}
translate H No {Nem}
translate H Both {Mindkett�}
translate H King {Kir�ly}
translate H Queen {Vez�r}
translate H Rook {B�stya}
translate H Bishop {Fut�}
translate H Knight {Husz�r}
translate H Pawn {Gyalog}
translate H White {Vil�gos}
translate H Black {S�t�t}
translate H Player {J�t�kos}
translate H Rating {�rt�ksz�m}
translate H RatingDiff {�rt�ksz�mk�l�nbs�g (vil�gos - s�t�t)}
translate H AverageRating {�tlagos �rt�ksz�m}
translate H Event {Esem�ny}
translate H Site {Helysz�n}
translate H Country {Orsz�g}
translate H IgnoreColors {A sz�n k�z�mb�s}
# ====== TODO To be translated ======
translate H MatchEnd {End pos only}
translate H Date {D�tum}
translate H EventDate {Az esem�ny d�tuma}
translate H Decade {�vtized}
translate H Year {�v}
translate H Month {H�nap}
translate H Months {janu�r febru�r m�rcius �prilis m�jus j�nius j�lius augusztus szeptember okt�ber november december}
translate H Days {vas�rnap h�tf� kedd szerda cs�t�rt�k p�ntek szombat}
translate H YearToToday {Az utols� egy �vben}
translate H Result {Eredm�ny}
translate H Round {Fordul�}
translate H Length {Hossz}
translate H ECOCode {ECO-k�d}
translate H ECO {ECO}
translate H Deleted {t�r�lt}
translate H SearchResults {A keres�s eredm�nye}
translate H OpeningTheDatabase {Adatb�zis megnyit�sa}
translate H Database {Adatb�zis}
translate H Filter {Sz�r�}
# ====== TODO To be translated ======
translate H Reset {Reset}
# todo
translate H IgnoreCase {Ignore Case}
translate H noGames {Nincs tal�lat}
translate H allGames {�sszes j�tszma}
translate H empty {�res}
translate H clipbase {v�g�asztal}
translate H score {Eredm�ny}
translate H Start {Start}
translate H StartPos {Kezd��ll�s}
translate H Total {�sszesen}
translate H readonly {read-only} ;# ***
# ====== TODO To be translated ======
translate H altered {altered}
# ====== TODO To be translated ======
translate H tagsDescript {Extra tags (eg: Annotator "Anand")}
# ====== TODO To be translated ======
translate H prevTags {Use previous}
# ====== TODO To be translated ======
translate H value {Value}

# Standard error messages:
translate H ErrNotOpen {Ez az adatb�zis nincs megnyitva.}
translate H ErrReadOnly {Ez az adatb�zis csak olvashat�; nem lehet megv�ltoztatni.}
translate H ErrSearchInterrupted {Keres�s megszak�tva; az eredm�nyek hi�nyosak.}

# Game information:
translate H twin {iker}
translate H deleted {t�r�lt}
translate H comment {megjegyz�s}
translate H hidden {rejtett}
translate H LastMove {Utols� l�p�s}
translate H NextMove {K�vetkez�}
translate H GameStart {J�tszma eleje}
translate H LineStart {El�gaz�s eleje}
translate H GameEnd {J�tszma v�ge}
translate H LineEnd {El�gaz�s v�ge}

# Player information:
translate H PInfoAll {�sszes j�tszma alapj�n}
translate H PInfoFilter {sz�rt j�tszm�k alapj�n}
translate H PInfoAgainst {Eredm�nyek, ha az ellenf�l}
translate H PInfoMostWhite {Leggyakoribb megnyit�sok vil�gosk�nt}
translate H PInfoMostBlack {Leggyakoribb megnyit�sok s�t�tk�nt}
translate H PInfoRating {�rt�ksz�m alakul�sa}
translate H PInfoBio {�letrajz}
translate H PInfoEditRatings {�rt�ksz�mok �tszerkeszt�se}
# ====== TODO To be translated ======
translate H PinfoEditName {Edit Name}
# ====== TODO To be translated ======
translate H PinfoLookupName {Lookup Name}

# Tablebase information:
translate H Draw {D�ntetlen}
translate H stalemate {patt}
# ====== TODO To be translated ======
translate H checkmate {checkmate}
translate H withAllMoves {az �sszes l�p�ssel}
translate H withAllButOneMove {egy h�j�n az �sszes l�p�ssel}
translate H with {with}
translate H only {csak}
translate H lose {vesz�tenek}
translate H loses {vesz�t}
translate H allOthersLose {minden m�s vesz�t}
translate H matesIn {mates in}
translate H longest {leghosszabb}
translate H WinningMoves {Nyer� l�p�s}
translate H DrawingMoves {D�ntetlenre vezet� l�p�s}
translate H LosingMoves {Veszt� l�p�s}
translate H UnknownMoves {Bizonytalan kimenetel� l�p�s}

# Tip of the day:
translate H Tip {Tipp}
translate H TipAtStartup {Tipp indul�skor}

# Tree window menus:
menuText H TreeFile "F�jl" 0
menuText H TreeFileFillWithBase "Adatb�zis bet�lt�se a gyors�t�t�rba" 0 {Bet�lti a gyors�t�t�rba a megnyitott adatb�zis �sszes j�tszm�j�t.}
menuText H TreeFileFillWithGame "J�tszma bet�lt�se a gyors�t�t�rba" 0 {Bet�lti a gyors�t�t�rba a megnyitott adatb�zis aktu�lis j�tszm�j�t.}
menuText H TreeFileCacheInfo "Gyors�t�t�r-haszn�lat" 12 {T�j�koztat� a gyors�t�t�r haszn�lat�r�l}
menuText H TreeFileSave "Cache-f�jl ment�se" 11 {Elmenti a faszerkezet-cache-f�jlt (.stc)}
menuText H TreeFileFill "Cache-f�jl felt�lt�se" 14 \
  {Felt�lti a cache-f�jlt gyakori megnyit�sokkal.}
menuText H TreeFileBest "Legjobb j�tszm�k list�ja" 0 {Megmutatja a legjobb j�tszm�kat a f�r�l.}
menuText H TreeFileGraph "Grafikon" 0 {Megmutatja ennek a fa�gnak a grafikonj�t.}
menuText H TreeFileCopy "Sz�veg m�sol�sa a v�g�lapra" 0 \
  {A ki�rt statisztikai adatokat a v�g�lapra m�solja.}
menuText H TreeFileClose "Faablak bez�r�sa" 10 {Bez�rja a faszerkezet-ablakot.}
menuText H TreeMask "Maszk" 0
menuText H TreeMaskNew "�j" 0 {�j maszk}
menuText H TreeMaskOpen "Megnyit�s" 0 {Maszk megnyit�sa}
# ====== TODO To be translated ======
menuText H TreeMaskOpenRecent "Open recent" 0 {Open recent mask}
menuText H TreeMaskSave "Ment�s" 5 {Maszk ment�se}
menuText H TreeMaskClose "Bez�r�s" 0 {Maszk bez�r�sa}
# ====== TODO To be translated ======
menuText H TreeMaskFillWithLine "Fill with line" 0 {Fill mask with all previous moves}
menuText H TreeMaskFillWithGame "Felt�lt�s j�tszm�val" 1 {Maszk felt�lt�se j�tszm�val}
menuText H TreeMaskFillWithBase "Felt�lt�s adatb�zissal" 2 {Maszk felt�lt�se az adatb�zis �sszes j�tszm�j�val}
menuText H TreeMaskInfo "Inform�ci�" 0 {Az aktu�lis maszk f�bb adatai}
# ====== TODO To be translated ======
menuText H TreeMaskDisplay "Display mask map" 0 {Show mask data in a tree form}
# ====== TODO To be translated ======
menuText H TreeMaskSearch "Search" 0 {Search in current mask}
menuText H TreeSort "Rendez�s" 0
menuText H TreeSortAlpha "ABC" 0
menuText H TreeSortECO "ECO-k�d" 0
menuText H TreeSortFreq "Gyakoris�g" 0
menuText H TreeSortScore "Pontsz�m" 0
menuText H TreeOpt "Be�ll�t�sok" 0
menuText H TreeOptSlowmode "Lass� �zemm�d" 0 {Lass� friss�t�s (nagy pontoss�g)}
menuText H TreeOptFastmode "Gyors �zemm�d" 0 {Gyors friss�t�s (nincsenek l�p�scser�k)}
menuText H TreeOptFastAndSlowmode "Gyors �s lass� �zemm�d" 1 {Gyors majd lass� friss�t�s}
menuText H TreeOptStartStop "Automatikus friss�t�s" 0 {�tv�ltja a faszerkezet-ablak automatikus friss�t�s�t.}
menuText H TreeOptLock "R�gz�t�s" 0 {A f�t az aktu�lis adatb�zishoz k�ti ill. a k�t�st feloldja.}
menuText H TreeOptTraining "Edz�s" 0 {Edz�s�zemm�d be- vagy kikapcsol�sa}
# ====== TODO To be translated ======
menuText H TreeOptShort "Short Display" 0 {Don't show ELO information}
menuText H TreeOptAutosave "Cache-f�jl automatikus ment�se" 11 \
  {A faablak bez�r�sakor automatikusan elmenti a cache-f�jlt.}
# ====== TODO To be translated ======
menuText H TreeOptAutomask "Auto-Load Mask" 0 "Auto-Load most recent mask with a tree open."
menuText H TreeOptCacheSize "A gyors�t�t�r m�rete" 14 {Be�ll�tja a gyors�t�t�r m�ret�t.}
# ====== TODO To be translated ======
menuText H TreeOptShowBar "Show Progress Bar" 0 "Show tree progress bar."
# ====== TODO To be translated ======
menuText H TreeOptShowFrame "Show Button Bar" 0 "Show tree button bar."
# ====== TODO To be translated ======
menuText H TreeOptSortBest "Sort Best Games" 0 "Sort Best Games by ELO."
menuText H TreeHelp "Seg�ts�g" 0
menuText H TreeHelpTree "Seg�ts�g a f�hoz" 0
menuText H TreeHelpIndex "Tartalom" 0

translate H SaveCache {Cache ment�se}
translate H Training {Edz�s}
translate H LockTree {R�gz�t�s}
translate H TreeLocked {r�gz�tve}
translate H TreeBest {Legjobb}
translate H TreeBestGames {A fa legjobb j�tszm�i}
# ====== TODO To be translated ======
translate H TreeAdjust {Adjust Filter}
translate H TreeTitleRow {    L�p�s    Gyakoris�g    Eredm   �v �tl�l� Telj. �tl.  ECO}
translate H TreeTitleRowShort {    L�p�s    Gyakoris�g    Eredm   �v}
translate H TreeTotal: {�SSZESEN: }
translate H DoYouWantToSaveFirst {Akarod el�bb menteni?}
translate H AddToMask {Add hozz� a maszkhoz}
translate H RemoveFromMask {Vedd ki a maszkb�l}
translate H AddThisMoveToMask {Add hozz� ezt a l�p�st a maszkhoz}
# ====== TODO To be translated ======
translate H SearchMask {Search in Mask}
# ====== TODO To be translated ======
translate H DisplayMask {Display Mask}
translate H Nag {NAG-k�d}
translate H Marker {Jel�l�s}
translate H Include {Belevesz}
translate H Exclude {Kiz�r}
translate H MainLine {F�v�ltozat}
translate H Bookmark {K�nyvjelz�}
translate H NewLine {Soremel�s}
translate H ToBeVerified {Ellen�rizni kell}
translate H ToTrain {Gyakorolni kell}
translate H Dubious {K�tes}
translate H ToRemove {T�r�lni kell}
translate H NoMarker {Nincs jel�l�s}
translate H ColorMarker {Sz�n}
translate H WhiteMark {Feh�r}
translate H GreenMark {Z�ld}
translate H YellowMark {S�rga}
translate H BlueMark {K�k}
translate H RedMark {Piros}
translate H CommentMove {L�p�s komment�l�sa}
translate H CommentPosition {�ll�s komment�l�sa}
translate H AddMoveToMaskFirst {El�bb add hozz� a l�p�st a maszkhoz}
translate H OpenAMaskFileFirst {El�bb nyiss meg egy maszkf�jlt}
# ====== TODO To be translated ======
translate H positions {positions}
translate H Moves {L�p�sek}

# Finder window:
menuText H FinderFile "F�jl" 0
menuText H FinderFileSubdirs "Keres�s az alk�nyvt�rakban" 0
menuText H FinderFileClose "A f�jlkeres� bez�r�sa" 15
menuText H FinderSort "Rendez�s" 0
menuText H FinderSortType "T�pus" 0
menuText H FinderSortSize "M�ret" 0
menuText H FinderSortMod "Id�" 0
menuText H FinderSortName "N�v" 0
menuText H FinderSortPath "�tvonal" 0
menuText H FinderTypes "T�pusok" 0
menuText H FinderTypesScid "SCID-adatb�zisok" 0
menuText H FinderTypesOld "R�gi form�tum� SCID-adatb�zisok" 5
menuText H FinderTypesPGN "PGN-f�jlok" 0
menuText H FinderTypesEPD "EPD-f�jlok" 0
menuText H FinderHelp "Seg�ts�g" 0
menuText H FinderHelpFinder "Seg�ts�g a f�jlkeres�h�z" 0
menuText H FinderHelpIndex "Tartalom" 0
translate H FileFinder {F�jlkeres�}
translate H FinderDir {K�nyvt�r}
translate H FinderDirs {K�nyvt�rak}
translate H FinderFiles {F�jlok}
translate H FinderUpDir {fel}
# ====== TODO To be translated ======
translate H FinderCtxOpen {Open}
# ====== TODO To be translated ======
translate H FinderCtxBackup {Backup}
# ====== TODO To be translated ======
translate H FinderCtxCopy {Copy}
# ====== TODO To be translated ======
translate H FinderCtxMove {Move}
# ====== TODO To be translated ======
translate H FinderCtxDelete {Delete}
# ====== TODO To be translated ======
translate H FinderDirOpen {Open Directory}

# Player finder:
menuText H PListFile "F�jl" 0
menuText H PListFileUpdate "Friss�t" 0
menuText H PListFileClose "J�t�koskeres� bez�r�sa" 16
menuText H PListSort "Rendez�s" 0
menuText H PListSortName "N�v" 0
menuText H PListSortElo "�l�" 0
menuText H PListSortGames "J�tszm�k" 0
menuText H PListSortOldest "Legr�gibb" 0
menuText H PListSortNewest "Leg�jabb" 3

# Tournament finder:
menuText H TmtFile "F�jl" 0
menuText H TmtFileUpdate "Friss�t" 0
menuText H TmtFileClose "A versenykeres� bez�r�sa" 18
menuText H TmtSort "Rendez�s" 0
menuText H TmtSortDate "D�tum" 0
menuText H TmtSortPlayers "J�t�kosok" 0
menuText H TmtSortGames "J�tszm�k" 1
menuText H TmtSortElo "�l�" 0
menuText H TmtSortSite "Helysz�n" 0
menuText H TmtSortEvent "Esem�ny" 0
menuText H TmtSortWinner "Gy�ztes" 0
translate H TmtLimit "Lista hossza"
translate H TmtMeanElo "Legkisebb �tlagos �l�"
translate H TmtNone "Nem tal�ltam hozz� versenyt."

# Graph windows:
menuText H GraphFile "F�jl" 0
menuText H GraphFileColor "Ment�s Color PostScript-k�nt..." 7
menuText H GraphFileGrey "Ment�s Greyscale PostScript-k�nt..." 7
menuText H GraphFileClose "Ablak bez�r�sa" 8
menuText H GraphOptions "Be�ll�t�sok" 0
menuText H GraphOptionsWhite "Vil�gos" 0
menuText H GraphOptionsBlack "S�t�t" 0
# ====== TODO To be translated ======
menuText H GraphOptionsDots "Show Dots" 0
# ====== TODO To be translated ======
menuText H GraphOptionsBar "Highlight Current Move" 0
menuText H GraphOptionsBoth "Mindkett�" 1
menuText H GraphOptionsPInfo "A j�t�kosinform�ci� j�t�kosa" 0
translate H GraphFilterTitle "Sz�r�grafikon: gyakoris�g 1000 j�tszm�nk�nt"
# ====== TODO To be translated ======
translate H GraphAbsFilterTitle "Filter Graph: frequency of the games"
# ====== TODO To be translated ======
translate H ConfigureFilter {Configure X Axis}
# ====== TODO To be translated ======
translate H FilterEstimate "Estimate"
# ====== TODO To be translated ======
translate H TitleFilterGraph "Scid: Filter Graph"

# Analysis window:
translate H AddVariation {V�ltozat besz�r�sa}
# ====== TODO To be translated ======
translate H AddAllVariations {Add All Variations}
translate H AddMove {L�p�s besz�r�sa}
translate H Annotate {�rt�kel� jelekkel l�t el}
# ====== TODO To be translated ======
translate H ShowAnalysisBoard {Show analysis board}
# ====== TODO To be translated ======
translate H ShowInfo {Show engine info}
# ====== TODO To be translated ======
translate H FinishGame {Finish game}
# ====== TODO To be translated ======
translate H StopEngine {Stop engine}
# ====== TODO To be translated ======
translate H StartEngine {Start engine}
# ====== TODO To be translated ======
translate H ExcludeMove {Exclude Move}
# ====== TODO To be translated ======
translate H LockEngine {Lock engine to current position}
translate H AnalysisCommand {Elemz�sparancs}
translate H PreviousChoices {Kor�bbi v�laszt�sok}
translate H AnnotateTime {K�t l�p�s k�z�tti id� m�sodpercben}
translate H AnnotateWhich {V�ltozatok hozz�ad�sa}
translate H AnnotateAll {Mindk�t f�l l�p�seihez}
# ====== TODO To be translated ======
translate H AnnotateAllMoves {Annotate all moves}
translate H AnnotateWhite {Csak vil�gos l�p�seihez}
translate H AnnotateBlack {Csak s�t�t l�p�seihez}
translate H AnnotateNotBest {Ha a j�tszm�ban nem a legjobbat l�pt�k}
# ====== TODO To be translated ======
translate H AnnotateBlundersOnly {When game move is an obvious blunder}
# ====== TODO To be translated ======
translate H BlundersNotBest {Blunders/Not Best}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate H AnnotateTitle {�ll�tsa Jegyzet}
# ====== TODO To be translated ======
translate H AnnotateMissedMates {Missed/shorter mates}
# ====== TODO To be translated ======
translate H AnnotateEnd {At end of game}
translate H BlundersThreshold {Threshold}
# ====== TODO To be translated ======
translate H ScoreFormat {Score format}
# ====== TODO To be translated ======
translate H CutOff {Cut Off}
translate H LowPriority {Alacsony CPU-priorit�s}
# ====== TODO To be translated ======
translate H LogEngines {Log Size}
# ====== TODO To be translated ======
translate H LogName {Add Name}
# ====== TODO To be translated ======
translate H MaxPly {Max Ply}
# ====== TODO To be translated ======
translate H ClickHereToSeeMoves {Click here to see moves}
# ====== TODO To be translated ======
translate H ConfigureInformant {Configure Informant}
# ====== TODO To be translated ======
translate H Informant!? {Interesting move}
# ====== TODO To be translated ======
translate H Informant? {Poor move}
# ====== TODO To be translated ======
translate H Informant?? {Blunder}
# ====== TODO To be translated ======
translate H Informant?! {Dubious move}
# ====== TODO To be translated ======
translate H Informant+= {White has a slight advantage}
# ====== TODO To be translated ======
translate H Informant+/- {White has a moderate advantage}
# ====== TODO To be translated ======
translate H Informant+- {White has a decisive advantage}
# ====== TODO To be translated ======
translate H Informant++- {The game is considered won}
# ====== TODO To be translated ======
translate H Book {Book}
# ====== TODO To be translated ======
translate H OtherBook {Other Moves}
# ====== TODO To be translated ======
translate H Alphabetical {Alphabetical}
# ====== TODO To be translated ======
translate H TwoBooks {Two Books}

# Analysis Engine open dialog:
translate H EngineList {Elemz� motorok list�ja}
# ====== TODO To be translated ======
translate H EngineKey {Key}
# ====== TODO To be translated ======
translate H EngineType {Type}
translate H EngineName {N�v}
translate H EngineCmd {Parancssor}
translate H EngineArgs {Param�terek}
translate H EngineDir {K�nyvt�r}
translate H EngineElo {�l�}
translate H EngineTime {D�tum}
translate H EngineNew {�j}
translate H EngineEdit {Szerkeszt�s}
translate H EngineRequired {A vastagbet�s mez�k sz�ks�gesek, a t�bbiek kihagyhat�k.}

# Stats window menus:
menuText H StatsFile "F�jl" 0
menuText H StatsFilePrint "Nyomtat�s f�jlba..." 0
menuText H StatsFileClose "Ablak bez�r�sa" 8
menuText H StatsOpt "Be�ll�t�sok" 0

# PGN window menus:
menuText H PgnFile "F�jl" 0
menuText H PgnFileCopy "A v�g�lapra m�solja a j�tszm�t" 2
menuText H PgnFilePrint "Nyomtat�s f�jlba..." 0
menuText H PgnFileClose "PGN-ablak bez�r�sa" 12
menuText H PgnOpt "Megjelen�t�s" 0
menuText H PgnOptColor "Sz�nes sz�veg" 0
menuText H PgnOptShort "R�vid (3-soros) fejl�c" 0
menuText H PgnOptSymbols "Szimb�lumok haszn�lata" 1
menuText H PgnOptIndentC "Megjegyz�sek beh�z�sa" 0
menuText H PgnOptIndentV "V�ltozatok beh�z�sa" 0
menuText H PgnOptColumn "Oszlopok st�lusa (soronk�nt egy l�p�s)" 0
menuText H PgnOptSpace "Sz�k�z a l�p�s sorsz�ma ut�n" 3
menuText H PgnOptStripMarks "Sz�nes mez�k �s nyilak kifejt�se" 2
menuText H PgnOptChess "Sakk darabok" 0
menuText H PgnOptScrollbar "G�rgetosav" 0
menuText H PgnOptBoldMainLine "A f�v�ltozat l�p�sei vastag bet�vel" 21
menuText H PgnColor "Sz�nek" 1
menuText H PgnColorHeader "Fejl�c..." 0
menuText H PgnColorAnno "�rt�kel� jelek..." 0
menuText H PgnColorComments "Megjegyz�sek..." 0
menuText H PgnColorVars "V�ltozatok..." 0
menuText H PgnColorBackground "H�tt�r..." 0
# ====== TODO To be translated ======
menuText H PgnColorMain "Main line..." 0
# ====== TODO To be translated ======
menuText H PgnColorCurrent "Current move background..." 1
# ====== TODO To be translated ======
menuText H PgnColorNextMove "Next move background..." 0
menuText H PgnHelp "Seg�ts�g" 0
menuText H PgnHelpPgn "Seg�ts�g PGN-hez" 9
menuText H PgnHelpIndex "Tartalom" 0
translate H PgnWindowTitle {J�tszmajegyz�s - %u. j�tszma}

# Crosstable window menus:
menuText H CrosstabFile "F�jl" 0
menuText H CrosstabFileText "Nyomtat�s sz�vegf�jlba..." 10
menuText H CrosstabFileHtml "Nyomtat�s HTML-f�jlba..." 10
menuText H CrosstabFileLaTeX "Nyomtat�s LaTeX-f�jlba..." 10
menuText H CrosstabFileClose "Ablak bez�r�sa" 8
menuText H CrosstabEdit "Szerkeszt�s" 1
menuText H CrosstabEditEvent "Esem�ny" 0
menuText H CrosstabEditSite "Helysz�n" 0
menuText H CrosstabEditDate "D�tum" 0
menuText H CrosstabOpt "Megjelen�t�s" 0
menuText H CrosstabOptColorPlain "K�z�ns�ges sz�veg" 0
menuText H CrosstabOptColorHyper "Hypertext" 0
# ====== TODO To be translated ======
menuText H CrosstabOptTieWin "Tie-Break by wins" 1
# ====== TODO To be translated ======
menuText H CrosstabOptTieHead "Tie-Break by head-head" 1
# todo
menuText H CrosstabOptThreeWin "3 Points for Win" 1
menuText H CrosstabOptAges "�letkor �vben" 0
menuText H CrosstabOptNats "Nemzetis�g" 0
# todo
menuText H CrosstabOptTallies "Win/Loss/Draw" 0
menuText H CrosstabOptRatings "�rt�ksz�mok" 1
menuText H CrosstabOptTitles "C�mek" 0
menuText H CrosstabOptBreaks "Pontsz�m holtverseny eld�nt�s�hez" 0
menuText H CrosstabOptDeleted "T�r�lt j�tszm�kkal egy�tt" 0
menuText H CrosstabOptColors "Sz�nek (csak sv�jci rendszer eset�n)" 2
# ====== TODO To be translated ======
menuText H CrosstabOptColorRows "Color Rows" 0
# ====== TODO To be translated ======
menuText H CrosstabOptRowsColor "Row Color" 0 {Default crosstable row color}
menuText H CrosstabOptColumnNumbers "Sz�mozott oszlopok (csak k�rm�rk�z�shez)" 2
menuText H CrosstabOptGroup "Pontcsoportok" 1
menuText H CrosstabSort "Rendez�s" 0
menuText H CrosstabSortName "N�v" 0
menuText H CrosstabSortRating "�rt�ksz�m" 0
menuText H CrosstabSortScore "Pontsz�m" 0
menuText H CrosstabSortCountry "Orsz�g" 0
# todo
menuText H CrosstabType "Format" 0
menuText H CrosstabTypeAll "K�rm�rk�z�s" 0
menuText H CrosstabTypeSwiss "Sv�jci" 0
menuText H CrosstabTypeKnockout "Kies�ses" 1
menuText H CrosstabTypeAuto "Tal�ld ki!" 0
menuText H CrosstabHelp "Seg�ts�g" 0
menuText H CrosstabHelpCross "Seg�ts�g versenyt�bl�zathoz" 0
menuText H CrosstabHelpIndex "Tartalom" 0
translate H SetFilter {Sz�r� be�ll�t�sa}
translate H AddToFilter {Hozz�adja a sz�r�h�z}
translate H Swiss {Sv�jci}
translate H Category {Kateg�ria}

# Opening report window menus:
menuText H OprepFile "F�jl" 0
menuText H OprepFileText "Nyomtat�s sz�vegf�jlba..." 10
menuText H OprepFileHtml "Nyomtat�s HTML-f�jlba..." 10
menuText H OprepFileLaTeX "Nyomtat�s LaTeX-f�jlba..." 10
menuText H OprepFileOptions "Be�ll�t�sok..." 0
menuText H OprepFileClose "Ablak bez�r�sa" 8
menuText H OprepFavorites "Kedvencek" 0
menuText H OprepFavoritesAdd "�sszefoglal� hozz�ad�sa..." 0
menuText H OprepFavoritesEdit "Kedvencek �tszerkeszt�se..." 0
menuText H OprepFavoritesGenerate "�sszefoglal� k�sz�t�se..." 0
menuText H OprepHelp "Seg�ts�g" 0
menuText H OprepHelpReport "Seg�ts�g a megnyit�si �sszefoglal�hoz" 0
menuText H OprepHelpIndex "T�rgymutat�" 0

# Header search:
translate H HeaderSearch {Keres�s fejl�c alapj�n}
translate H EndSideToMove {Aki a j�tszma v�g�n l�p�sre k�vetkezik}
translate H GamesWithNoECO {J�tszm�k ECO n�lk�l?}
translate H GameLength {J�tszmahossz}
translate H FindGamesWith {Megjel�lt j�tszm�k}
translate H StdStart {K�l�nleges kezd�s}
translate H Promotions {Gyalog�tv�ltoz�sok}
# ====== TODO To be translated ======
translate H UnderPromo {Under Prom.}
translate H Comments {Megjegyz�sek}
translate H Variations {V�ltozatok}
translate H Annotations {�rt�kel� jelek}
translate H DeleteFlag {Megjel�l�s t�rl�se}
translate H WhiteOpFlag {Megnyit�s vil�gossal}
translate H BlackOpFlag {Megnyit�s s�t�ttel}
translate H MiddlegameFlag {K�z�pj�t�k}
translate H EndgameFlag {V�gj�t�k}
translate H NoveltyFlag {�j�t�s}
translate H PawnFlag {Gyalogszerkezet}
translate H TacticsFlag {Taktika}
translate H QsideFlag {Vez�rsz�rnyi j�t�k}
translate H KsideFlag {Kir�lysz�rnyi j�t�k}
translate H BrilliancyFlag {Csillog�s}
translate H BlunderFlag {Eln�z�s}
translate H UserFlag {Felhaszn�l�}
translate H PgnContains {Sz�veg a PGN-ben}
# ====== TODO To be translated ======
translate H PreComment {Pre-game Comment}
# ====== TODO To be translated ======
translate H PostComment {End Comment}

# Game list window:
translate H GlistNumber {Sz�m}
translate H GlistWhite {Vil�gos}
translate H GlistBlack {S�t�t}
translate H GlistWElo {Vil�gos �l�je}
translate H GlistBElo {S�t�t �l�je}
translate H GlistEvent {Esem�ny}
translate H GlistSite {Helysz�n}
translate H GlistRound {Fordul�}
translate H GlistDate {D�tum}
translate H GlistYear {�v}
translate H GlistEventDate {Az esem�ny d�tuma}
translate H GlistResult {Eredm�ny}
translate H GlistLength {Hossz}
translate H GlistCountry {Orsz�g}
translate H GlistECO {ECO}
translate H GlistOpening {L�p�sek}
translate H GlistEndMaterial {V�gs� anyagi helyzet}
translate H GlistDeleted {T�r�lt}
translate H GlistFlags {Megjel�l�sek}
translate H GlistVariations {Variations}
translate H GlistComments {Megjegyz�sek}
translate H GlistAnnos {�rt�kel� jelek}
translate H GlistStart {Kezdet}
translate H GlistGameNumber {A j�tszma sorsz�ma}
translate H GlistFindText {Sz�veg keres�se}
translate H GlistMoveField {L�p�s}
translate H GlistEditField {Konfigur�l�s}
translate H GlistAddField {Hozz�ad}
translate H GlistDeleteField {Elt�vol�t}
translate H GlistColor {Sz�n}
# ====== TODO To be translated ======
translate H GlistSort {Sort database}
# ====== TODO To be translated ======
translate H GlistRemoveThisGameFromFilter  {Remove}
# ====== TODO To be translated ======
translate H GlistRemoveGameAndAboveFromFilter  {Remove all above}
# ====== TODO To be translated ======
translate H GlistRemoveGameAndBelowFromFilter  {Remove all below}
# ====== TODO To be translated ======
translate H GlistDeleteGame {(Un)Delete this game}
# ====== TODO To be translated ======
translate H GlistDeleteAllGames {Delete all games in filter}
# ====== TODO To be translated ======
translate H GlistUndeleteAllGames {Undelete all games in filter}
# ====== TODO To be translated ======
translate H GlistAlignL {Align left}
# ====== TODO To be translated ======
translate H GlistAlignR {Align right}
# ====== TODO To be translated ======
translate H GlistAlignC {Align center}

# Maintenance window:
translate H DatabaseName {Az adatb�zis neve:}
translate H TypeIcon {T�pusikon}
translate H NumOfGames {J�tszm�k:}
translate H NumDeletedGames {T�r�lt j�tszm�k:}
translate H NumFilterGames {Sz�rt j�tszm�k:}
translate H YearRange {�vtartom�ny:}
translate H RatingRange {�rt�ksz�mtartom�ny:}
translate H Description {Le�r�s}
translate H Flag {Megjel�l�s}
# ====== TODO To be translated ======
translate H CustomFlags {Custom flags}
translate H DeleteCurrent {T�rli az aktu�lis j�tszm�t.}
translate H DeleteFilter {T�rli a sz�rt j�tszm�kat.}
translate H DeleteAll {Minden j�tszm�t t�r�l.}
translate H UndeleteCurrent {Helyre�ll�tja az aktu�lis j�tszm�t.}
translate H UndeleteFilter {Helyre�ll�tja a sz�rt j�tszm�kat.}
translate H UndeleteAll {Minden j�tszm�t helyre�ll�t.}
translate H DeleteTwins {T�rli az ikerj�tszm�kat.}
translate H MarkCurrent {Megjel�li az aktu�lis j�tszm�t.}
translate H MarkFilter {Megjel�li a sz�rt j�tszm�kat.}
translate H MarkAll {Minden j�tszm�t megjel�l.}
translate H UnmarkCurrent {Elt�vol�tja az aktu�lis j�tszma megjel�l�s�t.}
translate H UnmarkFilter {Elt�vol�tja a sz�rt j�tszm�k megjel�l�s�t.}
translate H UnmarkAll {Minden j�tszma megjel�l�s�t elt�vol�tja.}
translate H Spellchecking {Helyes�r�s-ellen�rz�s}
# ====== TODO To be translated ======
translate H MakeCorrections {Make Corrections}
# ====== TODO To be translated ======
translate H Ambiguous {Ambiguous}
# ====== TODO To be translated ======
translate H Surnames {Surnames}
translate H Players {J�t�kosok}
translate H Events {Esem�nyek}
translate H Sites {Helysz�nek}
translate H Rounds {Fordul�k}
translate H DatabaseOps {Adatb�zism�veletek}
translate H ReclassifyGames {ECO alapj�n oszt�lyozza a j�tszm�kat.}
translate H CompactDatabase {Adatb�zis t�m�r�t�se}
translate H SortDatabase {Adatb�zis rendez�se}
translate H AddEloRatings {�l�-�rt�ksz�mok hozz�ad�sa}
translate H AutoloadGame {J�tszmasorsz�m automatikus bet�lt�se}
#Igaz ez?
translate H StripTags {PGN-c�mk�k elt�ntet�se}
translate H StripTag {C�mke elt�ntet�se}
# ====== TODO To be translated ======
translate H CheckGames {Check games}
translate H Cleaner {Takar�t�}
translate H CleanerHelp {
SCID Takar�t�ja el fogja v�gezni az aktu�lis adatb�zison az �sszes olyan gondoz�si feladatot, amelyet az al�bbi list�r�l kijel�lsz.

Az ECO-oszt�lyoz�sra �s az ikert�rl�sre vonatkoz� jelenlegi be�ll�t�sok akkor jutnak �rv�nyre, ha ezeket a feladatokat is kijel�l�d.
}
translate H CleanerConfirm {
Ha a Takar�t� m�r elindult, t�bb� nem lehet meg�ll�tani!

Nagy adatb�zison a kiv�lasztott feladatokt�l �s aktu�lis be�ll�t�saikt�l f�gg�en a m�velet sok�ig eltarthat.

Biztos, hogy neki akarsz l�tni a kijel�lt gondoz�si feladatoknak?
}
# ====== TODO To be translated ======
translate H TwinCheckUndelete {to flip; "u" undeletes both)}
# ====== TODO To be translated ======
translate H TwinCheckprevPair {Previous pair}
# ====== TODO To be translated ======
translate H TwinChecknextPair {Next pair}
# ====== TODO To be translated ======
translate H TwinChecker {Scid: Twin game checker}
# ====== TODO To be translated ======
translate H TwinCheckTournament {Games in tournament:}
# ====== TODO To be translated ======
translate H TwinCheckNoTwin {No twin  }
# ====== TODO To be translated ======
translate H TwinCheckNoTwinfound {No twin was detected for this game.\nTo show twins using this window, you must first use the "Delete twin games..." function. }
# ====== TODO To be translated ======
translate H TwinCheckTag {Share tags...}
# ====== TODO To be translated ======
translate H TwinCheckFound1 {Scid found $result twin games}
# ====== TODO To be translated ======
translate H TwinCheckFound2 { and set their delete flags}
# ====== TODO To be translated ======
translate H TwinCheckNoDelete {There are no games in this database to delete.}
# ====== TODO To be translated ======
translate H TwinCriteria1 { Your settings for finding twin games are potentially likely to\ncause non-twin games with similar moves to be marked as twins.}
# ====== TODO To be translated ======
translate H TwinCriteria2 {It is recommended that if you select "No" for "same moves", you should select "Yes" for the colors, event, site, round, year and month settings.\nDo you want to continue and delete twins anyway? }
# ====== TODO To be translated ======
translate H TwinCriteria3 {It is recommended that you specify "Yes" for at least two of the "same site", "same round" and "same year" settings.\nDo you want to continue and delete twins anyway?}
# ====== TODO To be translated ======
translate H TwinCriteriaConfirm {Scid: Confirm twin settings}
# ====== TODO To be translated ======
translate H TwinChangeTag "Change the following game tags:\n\n"
# ====== TODO To be translated ======
translate H AllocRatingDescription "This command will use the current spellcheck file to add Elo ratings to games in this database. Wherever a player has no currrent rating but his/her rating at the time of the game is listed in the spellcheck file, that rating will be added."
# ====== TODO To be translated ======
translate H RatingOverride "Overwrite existing non-zero ratings?"
# ====== TODO To be translated ======
translate H AddRatings "Add ratings to:"
# ====== TODO To be translated ======
translate H AddedRatings {Scid added $r Elo ratings in $g games.}
# ====== TODO To be translated ======
translate H NewSubmenu "New submenu"

# Comment editor:
translate H AnnotationSymbols  {�rt�kel� szimb�lumok:}
translate H Comment {Megjegyz�s:}
translate H InsertMark {Megjel�l�s besz�r�sa}
translate H InsertMarkHelp {
Megjel�l�s besz�r�sa/t�rl�se: sz�n, t�pus, mez� kiv�laszt�sa.
Ny�l besz�r�sa/t�rl�se: Kattint�s a jobb gombbal k�t mez�n.
}

# Nag buttons in comment editor:
translate H GoodMove {J� l�p�s}
translate H PoorMove {Rossz l�p�s}
translate H ExcellentMove {Kit�n� l�p�s}
translate H Blunder {Eln�z�s}
translate H InterestingMove {�rdekes l�p�s}
translate H DubiousMove {K�tes �rt�k� l�p�s}
translate H WhiteDecisiveAdvantage {Vil�gosnak d�nt� el�nye van.}
translate H BlackDecisiveAdvantage {S�t�tnek d�nt� el�nye van.}
translate H WhiteClearAdvantage {Vil�gos el�nye nyilv�nval�.}
translate H BlackClearAdvantage {S�t�t el�nye nyilv�nval�.}
translate H WhiteSlightAdvantage {Vil�gos valamivel jobban �ll.}
translate H BlackSlightAdvantage {S�t�t valamivel jobban �ll.}
translate H Equality {Egyenl� �ll�s}
translate H Unclear {Tiszt�zatlan �ll�s}
translate H Diagram {Diagram}

# Board search:
translate H BoardSearch {�ll�s keres�se}
translate H FilterOperation {Elv�gzend� m�velet az aktu�lis sz�r�n:}
translate H FilterAnd {�S (Sz�r� sz�k�t�se)}
translate H FilterOr {VAGY (Sz�r� b�v�t�se)}
translate H FilterIgnore {SEMMI (Sz�r� t�rl�se)}
translate H SearchType {A keres�s fajt�ja:}
translate H SearchBoardExact {Pontos �ll�s (minden figura azonos mez�n)}
translate H SearchBoardPawns {Gyalogok (azonos anyag, minden gyalog azonos mez�n)}
translate H SearchBoardFiles {Vonalak (azonos anyag, minden gyalog azonos vonalon)}
translate H SearchBoardAny {B�rmi (azonos anyag, gyalogok �s figur�k b�rhol)}
# ====== TODO To be translated ======
translate H SearchInRefDatabase { Search in base }
translate H LookInVars {V�ltozatokban is keres.}
# ====== TODO To be translated ======
translate H CQLLabel {CQL Script}
# ====== TODO To be translated ======
translate H CQLComments {Allow Comments}
# ====== TODO To be translated ======
translate H CQLStrip {Strip Match Comments}

# Material search:
translate H MaterialSearch {Keres�s anyagra}
translate H Material {Anyag}
translate H Patterns {Alakzatok}
translate H Zero {Null�z�s}
translate H Any {B�rmi}
translate H CurrentBoard {Aktu�lis �ll�s}
translate H CommonEndings {Gyakori v�gj�t�kok}
translate H CommonPatterns {Gyakori alakzatok}
translate H MaterialDiff {Anyagk�l�nbs�g}
translate H squares {mez�k}
translate H SameColor {Azonos sz�n}
translate H OppColor {Ellenkez� sz�n}
translate H Either {B�rmelyik}
translate H MoveNumberRange {L�p�startom�ny}
translate H MatchForAtLeast {Egyezzen legal�bb}
translate H HalfMoves {f�l l�p�sig.}

# Common endings in material search:
translate H EndingPawns {Gyalogv�gj�t�kok}
translate H EndingRookVsPawns {B�stya gyalog(ok) ellen}
translate H EndingRookPawnVsRook {B�stya �s 1 gyalog b�stya ellen}
translate H EndingRookPawnsVsRook {B�stya �s gyalogok b�stya ellen}
translate H EndingRooks {B�styav�gj�t�kok}
translate H EndingRooksPassedA {B�styav�gj�t�kok szabad a-gyaloggal}
translate H EndingRooksDouble {Kett�s b�styav�gj�t�kok}
translate H EndingBishops {Fut�v�gj�t�kok}
translate H EndingBishopVsKnight {Fut� husz�r ellen}
translate H EndingKnights {Husz�rv�gj�t�kok}
translate H EndingQueens {Vez�rv�gj�t�kok}
translate H EndingQueenPawnVsQueen {Vez�r �s 1 gyalog vez�r ellen}
translate H BishopPairVsKnightPair {Fut�p�r husz�rp�r ellen a k�z�pj�t�kban}

# Common patterns in material search:
translate H PatternWhiteIQP {Izol�lt vil�gos vez�rgyalog}
translate H PatternWhiteIQPBreakE6 {d4-d5 �tt�r�s e6 ellen}
translate H PatternWhiteIQPBreakC6 {d4-d5 �tt�r�s c6 ellen}
translate H PatternBlackIQP {Izol�lt s�t�t vez�rgyalog}
translate H PatternWhiteBlackIQP {Izol�lt vil�gos d-gyalog izol�lt s�t�t d-gyalog ellen}
translate H PatternCoupleC3D4 {Izol�lt vil�gos c3-d4 gyalogp�r}
translate H PatternHangingC5D5 {L�g� s�t�t gyalogok c5-�n �s d5-�n}
translate H PatternMaroczy {Mar�czy-centrum (gyalogok c4-en �s e4-en)}
translate H PatternRookSacC3 {B�stya�ldozat c3-on}
translate H PatternKc1Kg8 {O-O-O O-O ellen (Kc1 �s Kg8)}
translate H PatternKg1Kc8 {O-O O-O-O ellen (Kg1 �s Kc8)}
translate H PatternLightFian {Vil�gos mezej� fianchetto (g2 fut� b7 fut� ellen)}
translate H PatternDarkFian {S�t�t mezej� fianchetto (b2 fut� g7 fut� ellen)}
translate H PatternFourFian {N�gyes fianchetto (fut�k b2-n, g2-n, b7-en �s g7-en)}

# Game saving:
translate H Today {Ma}
translate H ClassifyGame {J�tszma oszt�lyoz�sa}

# Setup position:
translate H EmptyBoard {T�bla letakar�t�sa}
translate H InitialBoard {Alap�ll�s}
translate H SideToMove {Ki l�p?}
translate H MoveNumber {L�p�s sz�ma}
translate H Castling {S�ncol�s}
translate H EnPassantFile {"en passant"-vonal}
translate H ClearFen {FEN t�rl�se}
translate H PasteFen {FEN beilleszt�se}
# ====== TODO To be translated ======
translate H SaveAndContinue {Save and continue}
# ====== TODO To be translated ======
translate H DiscardChangesAndContinue {Discard Changes}
# ====== TODO To be translated ======
translate H GoBack {Go back}

# Replace move dialog:
translate H ReplaceMove {L�p�s cser�je}
translate H AddNewVar {�j v�ltozat besz�r�sa}
# ====== TODO To be translated ======
translate H NewMainLine {New Main Line}
translate H ReplaceMoveMessage {Itt m�r van l�p�s.

Kicser�lheted, mi�ltal az �sszes �t k�vet� l�p�s elv�sz, vagy l�p�sedet besz�rhatod �j v�ltozatk�nt.

(Ha a j�v�ben nem akarod l�tni ezt az �zenetet, kapcsold ki a Be�ll�t�sok:L�p�sek men�ben a "L�p�s cser�je el�tt r�k�rdez." be�ll�t�st.)}

# Make database read-only dialog:
translate H ReadOnlyDialog {Ha ezt az adatb�zist kiz�r�lag olvashat�v� teszed, nem lehet v�ltoztat�sokat v�gezni rajta. Nem lehet j�tszm�kat elmenteni vagy kicser�lni, sem a t�rl�skijel�l�seket megv�ltoztatni. Minden rendez�s vagy ECO-oszt�lyoz�s csak �tmeneti lesz.

K�nnyen �jra �rhat�v� teheted az adatb�zist, ha bez�rod, majd �jb�l megnyitod.

T�nyleg kiz�r�lag olvashat�v� akarod tenni ezt az adatb�zist?}

# Exit dialog:
translate H ExitDialog {T�nyleg ki akarsz l�pni SCID-b�l?}
# ====== TODO To be translated ======
translate H ClearGameDialog {This game has been altered.\nDo you wish to save it?}
translate H ExitUnsaved {A k�vetkez� adatb�zisokban elmentetlen j�tszmav�ltoztat�sok vannak. Ha most kil�psz, ezek a v�ltoztat�sok elvesznek.}
# ====== TODO To be translated ======
translate H ChangeTextDialog {Enabling text colour globally requires restart.}
# ====== TODO To be translated ======
translate H ChangeDockDialog {Changing Docking requires a restart.}
# ====== TODO To be translated ======
translate H FontSelectDialog "This is some sample text\nDouble click above to change font, then select 'ok'\nAaBbCcDdEeFfGgHhIiJjKkLlMm 0123456789. +=-"
# ====== TODO To be translated ======
translate H ExitNow {Exit now ?}

# Import window:
translate H PasteCurrentGame {Beilleszti az aktu�lis j�tszm�t.}
translate H ImportHelp1 {Bevisz vagy beilleszt egy PGN-form�tum� j�tszm�t a fenti keretbe.}
translate H ImportHelp2 {Itt jelennek meg az import�l�s k�zben fell�p� hib�k.}
# ====== TODO To be translated ======
translate H OverwriteExistingMoves {Overwrite existing moves ?}

# ECO Browser:
translate H ECOAllSections {�sszes ECO-oszt�ly}
translate H ECOSection {ECO-oszt�ly}
translate H ECOSummary {�sszefoglal�s:}
translate H ECOFrequency {Alk�dok gyakoris�ga:}

# Opening Report:
translate H OprepTitle {Megnyit�si �sszefoglal�}
translate H OprepReport {�sszefoglal�}
translate H OprepGenerated {K�sz�tette:}
#Lehet, hogy ez "k�sz�lt"?
translate H OprepStatsHist {Statisztika �s t�rt�net}
translate H OprepStats {Statisztika}
translate H OprepStatAll {Az �sszefoglal� �sszes j�tszm�ja}
translate H OprepStatBoth {Mindkett�}
translate H OprepStatSince {Id�szak kezdete:}
translate H OprepOldest {A legr�gibb j�tszm�k}
translate H OprepNewest {A leg�jabb j�tszm�k}
translate H OprepPopular {Jelenlegi n�pszer�s�g}
translate H OprepFreqAll {Gyakoris�g a teljes id�szakban:   }
translate H OprepFreq1   {Az ut�bbi 1 �vben: }
translate H OprepFreq5   {Az ut�bbi 5 �vben: }
translate H OprepFreq10  {Az ut�bbi 10 �vben: }
translate H OprepEvery {minden %u j�tszm�ban egyszer}
translate H OprepUp {%u%s n�veked�s az �vek sor�n}
translate H OprepDown {%u%s cs�kken�s az �vek sor�n}
translate H OprepSame {nincs v�ltoz�s az �vek sor�n}
translate H OprepMostFrequent {Leggyakoribb j�t�kosok}
translate H OprepMostFrequentOpponents {Leggyakoribb ellenfelek}
translate H OprepRatingsPerf {�rt�ksz�m �s teljes�tm�ny}
translate H OprepAvgPerf {�tlagos �rt�ksz�m �s teljes�tm�ny}
translate H OprepWRating {Vil�gos �rt�ksz�ma}
translate H OprepBRating {S�t�t �rt�ksz�ma}
translate H OprepWPerf {Vil�gos teljes�tm�nye}
translate H OprepBPerf {S�t�t teljes�tm�nye}
translate H OprepHighRating {A legnagyobb �tlag�rt�ksz�m� j�tszm�k}
translate H OprepTrends {Tendenci�k}
translate H OprepResults {Eredm�ny hossz�s�g �s gyakoris�g szerint}
translate H OprepLength {J�tszmahossz}
translate H OprepFrequency {Gyakoris�g}
translate H OprepWWins {Vil�gos nyer: }
translate H OprepBWins {S�t�t nyer:   }
translate H OprepDraws {D�ntetlen:    }
translate H OprepWholeDB {teljes adatb�zis}
translate H OprepShortest {A legr�videbb gy�zelmek}
translate H OprepMovesThemes {L�p�sek �s t�m�k}
translate H OprepMoveOrders {A vizsg�lt �ll�shoz vezet� l�p�ssorrendek}
translate H OprepMoveOrdersOne \
  {Csak egy l�p�ssorrend vezetett ehhez az �ll�shoz:}
translate H OprepMoveOrdersAll \
  {%u l�p�ssorrend vezetett ehhez az �ll�shoz:}
translate H OprepMoveOrdersMany \
  {%u l�p�ssorrend vezetett ehhez az �ll�shoz. Az els� %u:}
translate H OprepMovesFrom {A vizsg�lt �ll�sban tett l�p�sek}
translate H OprepMostFrequentEcoCodes {Leggyakoribb ECO-k�dok}
translate H OprepThemes {Poz�ci�s t�m�k}
translate H OprepThemeDescription {T�m�k gyakoris�ga az egyes j�tszm�k els� %u l�p�s�ben}
translate H OprepThemeSameCastling {S�ncol�s azonos oldalra}
translate H OprepThemeOppCastling {S�ncol�s ellenkez� oldalra}
translate H OprepThemeNoCastling {Egyik kir�ly sem s�ncolt.}
translate H OprepThemeKPawnStorm {Kir�lysz�rnyi gyalogroham}
translate H OprepThemeQueenswap {Vez�rcsere}
translate H OprepThemeWIQP {Elszigetelt vil�gos vez�rgyalog}
translate H OprepThemeBIQP {Elszigetelt s�t�t vez�rgyalog}
translate H OprepThemeWP567 {Vil�gos gyalog az 5./6./7. soron}
translate H OprepThemeBP234 {S�t�t gyalog a 4./3./2. soron}
translate H OprepThemeOpenCDE {Ny�lt c/d/e-vonal}
translate H OprepTheme1BishopPair {Csak az egyik f�lnek van fut�p�rja.}
translate H OprepEndgames {V�gj�t�kok}
translate H OprepReportGames {Az �sszefoglal� j�tszm�i}
translate H OprepAllGames    {�sszes j�tszma}
translate H OprepEndClass {Anyagi viszonyok az egyes j�tszm�k v�g�n}
translate H OprepTheoryTable {Elm�lett�bl�zat}
translate H OprepTableComment {a legnagyobb �rt�ksz�m� %u j�tszma alapj�n}
translate H OprepExtraMoves {A k�l�n megjegyz�ssel ell�tott l�p�sek sz�ma az elm�lett�bl�zatban}
translate H OprepMaxGames {Az elm�lett�bl�zat l�trehoz�s�hoz felhaszn�lhat� j�tszm�k maxim�lis sz�ma}
# ====== TODO To be translated ======
translate H OprepMaxLines {Maximum games for statistics}
translate H OprepViewHTML {HTML megtekint�se}
translate H OprepViewLaTeX {LaTeX megtekint�se}

# Player Report:
translate H PReportTitle {�sszefoglal� j�t�kosr�l}
translate H PReportColorWhite {vil�gossal}
translate H PReportColorBlack {s�t�ttel}
# ====== TODO To be translated ======
translate H PReportBeginning {Beginning with}
translate H PReportMoves {%s ut�n}
translate H PReportOpenings {Megnyit�sok}
translate H PReportClipbase {Ki�r�ti a v�g�lapot, �s odam�solja a felt�telnek megfelel� j�tszm�kat}

# Piece Tracker window:
translate H TrackerSelectSingle {A bal eg�rgomb kiv�lasztja ezt a figur�t.}
translate H TrackerSelectPair {A bal eg�rgomb kiv�lasztja ezt a figur�t; a jobb eg�rgomb a p�rj�t is kiv�lasztja.}
translate H TrackerSelectPawn {A bal eg�rgomb kiv�lasztja ezt a gyalogot; a jobb eg�rgomb az �sszes gyalogot kiv�lasztja.}
translate H TrackerStat {Statisztika}
translate H TrackerGames {J�tszm�k %-a, amelyekben erre a mez�re l�pett}
translate H TrackerTime {Id� %-a, amelyet az egyes mez�k�n t�lt�tt}
translate H TrackerMoves {L�p�sek}
translate H TrackerMovesStart {Add meg a l�p�s sz�m�t, amelyn�l a nyomk�vet�snek el kell kezd�dnie.}
translate H TrackerMovesStop {Add meg a l�p�s sz�m�t, amelyn�l a nyomk�vet�snek be kell fejez�dnie.}

# Game selection dialogs:
translate H SelectAllGames {Az adatb�zis �sszes j�tszm�ja}
translate H SelectFilterGames {Csak a sz�rt j�tszm�k}
translate H SelectTournamentGames {Csak az aktu�lis verseny j�tszm�i}
translate H SelectOlderGames {Csak r�gebbi j�tszm�k}

# Delete Twins window:
translate H TwinsNote {K�t j�tszma akkor iker, ha ugyanazok j�tssz�k �ket, �s megfelelnek az alant meghat�rozhat� krit�riumoknak. Az ikerp�rb�l a r�videbb j�tszma t�rl�dik. Javaslat: ikrek t�rl�se el�tt �rdemes helyes�r�s-ellen�rz�st v�gezni az adatb�zison, mert az jav�tja az ikerfelder�t�st.}
translate H TwinsCriteria {Krit�riumok: Az ikerj�tszm�k k�z�s tulajdons�gai...}
translate H TwinsWhich {A megvizsg�land� j�tszm�k}
translate H TwinsColors {Azonos sz�n?}
translate H TwinsEvent {Ugyanaz az esem�ny?}
translate H TwinsSite {Azonos helysz�n?}
translate H TwinsRound {Ugyanaz a fordul�?}
translate H TwinsYear {Azonos �v?}
translate H TwinsMonth {Azonos h�nap?}
translate H TwinsDay {Ugyanaz a nap?}
translate H TwinsResult {Azonos eredm�ny?}
translate H TwinsECO {Azonos ECO-k�d?}
translate H TwinsMoves {Azonos l�p�sek?}
translate H TwinsPlayers {A j�t�kosok nev�nek �sszehasonl�t�sakor:}
translate H TwinsPlayersExact {Teljes egyez�s kell.}
translate H TwinsPlayersPrefix {El�g az els� 4 bet�nek egyeznie.}
translate H TwinsWhen {Ikerj�tszm�k t�rl�sekor}
translate H TwinsSkipShort {Hagyjuk figyelmen k�v�l az 5 l�p�sn�l r�videbb j�tszm�kat?}
translate H TwinsUndelete {El�sz�r �ll�tsuk helyre az �sszes j�tszm�t?}
translate H TwinsSetFilter {A sz�r�t �ll�tsuk az �sszes t�r�lt ikerj�tszm�ra?}
translate H TwinsComments {A megjegyz�sekkel ell�tott j�tszm�kat mindig tartsuk meg?}
translate H TwinsVars {A v�ltozatokat tartalmaz� j�tszm�kat mindig tartsuk meg?}
translate H TwinsDeleteWhich {Melyik j�tszm�t t�r�ljem?}
translate H TwinsDeleteShorter {A r�videbbet}
translate H TwinsDeleteOlder {A kisebb sorsz�m�t}
translate H TwinsDeleteNewer {A nagyobb sorsz�m�t}
translate H TwinsDelete {J�tszm�k t�rl�se}

# Name editor window:
translate H NameEditType {Szerkesztend� n�vt�pus}
translate H NameEditSelect {Szerkesztend� j�tszm�k}
translate H NameEditReplace {Cser�l}
translate H NameEditWith {Erre}
translate H NameEditMatches {Egyez�sek: Ctrl+1...Ctrl+9 v�laszt.}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======

# Classify window:
translate H Classify {Oszt�lyoz}
translate H ClassifyWhich {Mely j�tszm�k essenek �t ECO-oszt�lyoz�son?}
translate H ClassifyAll {Az �sszes (�rja fel�l a r�gi ECO-k�dokat)}
translate H ClassifyYear {Az ut�bbi �vben j�tszott j�tszm�k}
translate H ClassifyMonth {Az ut�bbi h�napban j�tszott j�tszm�k}
translate H ClassifyNew {Csak az eddig m�g nem oszt�lyozott j�tszm�k}
translate H ClassifyCodes {Haszn�land� ECO-k�dok}
translate H ClassifyBasic {Csak az alapk�dok ("B12", ...)}
translate H ClassifyExtended {Kiterjesztett SCID-k�dok ("B12j", ...)}

# Compaction:
translate H NameFile {N�vf�jl}
translate H GameFile {J�tszmaf�jl}
translate H Names {Nevek}
translate H Unused {Haszn�laton k�v�l}
translate H SizeKb {M�ret (kB)}
translate H CurrentState {Jelenlegi �llapot}
translate H AfterCompaction {T�m�r�t�s ut�n}
translate H CompactNames {N�vf�jl t�m�r�t�se}
translate H CompactGames {J�tszmaf�jl t�m�r�t�se}
# ====== TODO To be translated ======
translate H NoUnusedNames "There are no unused names, so the name file is already fully compacted."
# ====== TODO To be translated ======
translate H NoUnusedGames "The game file is already fully compacted."
# ====== TODO To be translated ======
translate H NameFileCompacted {The name file for "[file tail [sc_base filename]]" was compacted.}
# ====== TODO To be translated ======
translate H GameFileCompacted {The game file for "[file tail [sc_base filename]]" was compacted.}

# Sorting:
translate H SortCriteria {Krit�riumok}
translate H AddCriteria {Krit�riumok hozz�ad�sa}
translate H CommonSorts {Szok�sos rendez�sek}
translate H Sort {Rendez�s}

# Exporting:
translate H AddToExistingFile {J�tszm�k hozz�ad�sa l�tez� f�jlhoz?}
translate H ExportComments {Megjegyz�sek export�l�sa?}
translate H ExportVariations {V�ltozatok export�l�sa?}
translate H IndentComments {Megjegyz�sek igaz�t�sa?}
translate H IndentVariations {V�ltozatok igaz�t�sa?}
# ====== TODO To be translated ======
translate H InsertNewlines {Insert newlines every 80 chars?}
translate H ExportColumnStyle {Oszlop st�lusa (soronk�nt egy l�p�s)?}
translate H ExportSymbolStyle {Szimb�lumok st�lusa:}
translate H ExportStripMarks {Kivegye a megjegyz�sekb�l a mez�- �s ny�lmegjel�l�seket?}
# ====== TODO To be translated ======
translate H ExportFlags {Export Scid Flags}

# Goto game/move dialogs:
translate H LoadGameNumber {A bet�ltend� j�tszma sorsz�ma:}
translate H GotoMoveNumber {Ugr�s a k�vetkez� l�p�shez:}

# Copy games dialog:
translate H CopyGames {J�tszm�k m�sol�sa}
translate H CopyConfirm {
 T�nyleg �t akarod m�solni
 a [::utils::thousands $nGamesToCopy] sz�rt j�tszm�t
 a "$fromName" adatb�zisb�l
 a "$targetName" adatb�zisba?
}
translate H CopyErr {Nem tudom �tm�solni a j�tszm�kat.}
translate H CopyErrSource {forr�s}
translate H CopyErrTarget {c�l}
translate H CopyErrNoGames {sz�r�j�ben nincsenek j�tszm�k.}
translate H CopyErrReadOnly {kiz�r�lag olvashat�.}
translate H CopyErrNotOpen {nincs megnyitva.}

# Colors:
translate H LightSquares {Vil�gos mez�k}
translate H DarkSquares {S�t�t mez�k}
translate H SelectedSquares {Kiv�lasztott mez�k}
# todo
translate H Grid {Grid}
translate H Previous {Kor�bbi}
translate H WhitePieces {Vil�gos figur�k}
translate H BlackPieces {S�t�t figur�k}
translate H WhiteBorder {Vil�gos k�rvonal}
translate H BlackBorder {S�t�t k�rvonal}
translate H ArrowMain   {Arrow}
translate H ArrowVar    {Var Arrows}
# ====== TODO To be translated ======
translate H ShowArrows  {Show Arrows}

# Novelty window:
translate H FindNovelty {�j�t�s keres�se}
translate H Novelty {�j�t�s}
translate H NoveltyInterrupt {�j�t�skeres�s le�ll�tva}
translate H NoveltyNone {Ebben a j�tszm�ban nem tal�ltam �j�t�st.}
translate H NoveltyHelp {
SCID megkeresi az aktu�lis j�tszma els� olyan l�p�s�t, amely nem szerepel sem a kiv�lasztott adatb�zisban, sem az ECO megnyit�st�rban.
}

# Sounds configuration:
translate H SoundsFolder {Hangf�jlok k�nyvt�ra}
translate H SoundsFolderHelp {A k�nyvt�rban a King.wav, a.wav, 1.wav, s.�.t. f�jloknak kell szerepelni�k.}
translate H SoundsAnnounceOptions {L�p�sbemond�sok be�ll�t�sai}
translate H SoundsAnnounceNew {�j l�p�s bemond�sa amint megtessz�k}
translate H SoundsAnnounceForward {L�p�s bemond�sa amikor egy l�p�st el�re l�p�nk}
translate H SoundsAnnounceBack {L�p�s bemond�sa amikor visszavesz�nk vagy egy l�p�st h�tra l�p�nk}

# Upgrading databases:
translate H Upgrading {Fel�j�t�s}
translate H ConfirmOpenNew {
Ez r�gi form�tum� (SCID 2) adatb�zis, amelyet SCID 3 nem tud megnyitni, de m�r l�trehozott egy �j form�tum� (SCID 3) verzi�t.

Szeretn�d megnyitni az adatb�zis �j form�tum� verzi�j�t?
}
translate H ConfirmUpgrade {
Ez r�gi form�tum� (SCID 2) adatb�zis. �j form�tum� verzi�t kell l�trehozni bel�le, hogy SCID 3 haszn�lni tudja.

A fel�j�t�s �j verzi�t hoz l�tre az adatb�zisb�l. Az eredeti f�jlok s�rtetlen�l megmaradnak.

Az elj�r�s eltarthat egy darabig, de csak egyszer kell elv�gezni. Megszak�thatod, ha t�l sok�ig tart.

Szeretn�d most fel�j�tani ezt az adatb�zist?
}

# Recent files options:
translate H RecentFilesMenu {Az aktu�lis f�jlok sz�ma a F�jl men�ben}
translate H RecentFilesExtra {Az aktu�lis f�jlok sz�ma a kieg�sz�t� almen�ben}

# My Player Names options:
translate H MyPlayerNamesDescription {
Add meg az �ltalad kedvelt j�t�kosok nev�t, soronk�nt egyet. Helyettes�t� karaktereket (pl. "?" tetsz�leges karakter helyett, "*" tetsz�leges karaktersorozat helyett) is haszn�lhatsz.

Amikor bet�lt�d egy a list�n szerepl� j�t�kos j�tszm�j�t, a f�ablak sakkt�bl�ja sz�ks�g eset�n elfordul, hogy a j�tszm�t annak a j�t�kosnak a szemsz�g�b�l mutassa.
}
# ====== TODO To be translated ======
translate H showblunderexists {show blunder exists}
# ====== TODO To be translated ======
translate H showblundervalue {show blunder value}
# ====== TODO To be translated ======
translate H showscore {show score}
# ====== TODO To be translated ======
translate H coachgame {coach game}
# ====== TODO To be translated ======
translate H configurecoachgame {configure coach game}
# ====== TODO To be translated ======
translate H configuregame {Game configuration}
# ====== TODO To be translated ======
translate H Phalanxengine {Phalanx engine}
# ====== TODO To be translated ======
translate H Coachengine {Coach engine}
# ====== TODO To be translated ======
translate H difficulty {difficulty}
# ====== TODO To be translated ======
translate H hard {hard}
# ====== TODO To be translated ======
translate H easy {easy}
# ====== TODO To be translated ======
translate H Playwith {Play with}
# ====== TODO To be translated ======
translate H white {white}
# ====== TODO To be translated ======
translate H black {black}
# ====== TODO To be translated ======
translate H both {both}
# ====== TODO To be translated ======
translate H Play {Play}
# ====== TODO To be translated ======
translate H Noblunder {No blunder}
# ====== TODO To be translated ======
translate H blunder {blunder}
# ====== TODO To be translated ======
translate H Noinfo {-- No info --}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate H moveblunderthreshold {move is a blunder if loss is greater than}
# ====== TODO To be translated ======
translate H limitanalysis {limit engine analysis time}
# ====== TODO To be translated ======
translate H seconds {seconds}
# ====== TODO To be translated ======
translate H Abort {Abort}
# ====== TODO To be translated ======
translate H Resume {Resume}
# ====== TODO To be translated ======
translate H Restart {Restart}
# ====== TODO To be translated ======
translate H OutOfOpening {Out of opening}
# ====== TODO To be translated ======
translate H NotFollowedLine {You did not follow the line}
# ====== TODO To be translated ======
translate H DoYouWantContinue {Do you want yo continue ?}
# ====== TODO To be translated ======
translate H CoachIsWatching {Coach is watching}
# ====== TODO To be translated ======
translate H Ponder {Permanent thinking}
# ====== TODO To be translated ======
translate H LimitELO {Limit ELO strength}
# ====== TODO To be translated ======
translate H DubiousMovePlayedTakeBack {Dubious move played, do you want to take back ?}
# ====== TODO To be translated ======
translate H WeakMovePlayedTakeBack {Weak move played, do you want to take back ?}
# ====== TODO To be translated ======
translate H BadMovePlayedTakeBack {Bad move played, do you want to take back ?}
# ====== TODO To be translated ======
translate H Iresign {I resign}
# ====== TODO To be translated ======
translate H yourmoveisnotgood {your move is not good}
# ====== TODO To be translated ======
translate H EndOfVar {End of variation}
# ====== TODO To be translated ======
translate H Openingtrainer {Opening trainer}
# ====== TODO To be translated ======
translate H DisplayCM {Display candidate moves}
# ====== TODO To be translated ======
translate H DisplayCMValue {Display candidate moves value}
# ====== TODO To be translated ======
translate H DisplayOpeningStats {Show statistics}
# ====== TODO To be translated ======
translate H ShowReport {Show report}
# ====== TODO To be translated ======
translate H NumberOfGoodMovesPlayed {good moves played}
# ====== TODO To be translated ======
translate H NumberOfDubiousMovesPlayed {dubious moves played}
# ====== TODO To be translated ======
translate H NumberOfTimesPositionEncountered {times position encountered}
# ====== TODO To be translated ======
translate H PlayerBestMove  {Allow only best moves}
# ====== TODO To be translated ======
translate H OpponentBestMove {Opponent plays best moves}
# ====== TODO To be translated ======
translate H OnlyFlaggedLines {Only flagged lines}
# ====== TODO To be translated ======
translate H resetStats {Reset statistics}
# ====== TODO To be translated ======
translate H Movesloaded {Moves loaded}
# ====== TODO To be translated ======
translate H PositionsNotPlayed {Positions not played}
# ====== TODO To be translated ======
translate H PositionsPlayed {Positions played}
# ====== TODO To be translated ======
translate H Success {Success}
# ====== TODO To be translated ======
translate H DubiousMoves {Dubious moves}
# ====== TODO To be translated ======
translate H ConfigureTactics {Configure tactics}
# ====== TODO To be translated ======
translate H ResetScores {Reset scores}
# ====== TODO To be translated ======
translate H LoadingBase {Loading base}
# ====== TODO To be translated ======
translate H Tactics {Tactics}
# ====== TODO To be translated ======
translate H ShowSolution {Show solution}
# ====== TODO To be translated ======
translate H Next {Next}
# ====== TODO To be translated ======
translate H ResettingScore {Resetting score}
# ====== TODO To be translated ======
translate H LoadingGame {Loading game}
# ====== TODO To be translated ======
translate H MateFound {Mate found}
# ====== TODO To be translated ======
translate H BestSolutionNotFound {Best solution NOT found !}
# ====== TODO To be translated ======
translate H MateNotFound {Mate not found}
# ====== TODO To be translated ======
translate H ShorterMateExists {Shorter mate exists}
# ====== TODO To be translated ======
translate H ScorePlayed {Score played}
# ====== TODO To be translated ======
translate H Expected {expected}
# ====== TODO To be translated ======
translate H ChooseTrainingBase {Choose training base}
# ====== TODO To be translated ======
translate H Thinking {Thinking}
# ====== TODO To be translated ======
translate H AnalyzeDone {Analyze done}
# ====== TODO To be translated ======
translate H WinWonGame {Win won game}
# ====== TODO To be translated ======
translate H Lines {Lines}
# ====== TODO To be translated ======
translate H ConfigureUCIengine {Configure UCI engine}
# ====== TODO To be translated ======
translate H SpecificOpening {Specific opening}
# ====== TODO To be translated ======
translate H ImportECO {Import ECO}
# ====== TODO To be translated ======
translate H StartNewGame {Start new game}
# ====== TODO To be translated ======
translate H FixedLevel {Fixed level}
# ====== TODO To be translated ======
translate H Opening {Opening}
# ====== TODO To be translated ======
translate H RandomLevel {Random level}
# ====== TODO To be translated ======
translate H StartFromCurrentPosition {Start from current position}
# ====== TODO To be translated ======
translate H FixedDepth {Fixed depth}
# ====== TODO To be translated ======
translate H Nodes {Nodes}
# ====== TODO To be translated ======
translate H Depth {Depth}
# ====== TODO To be translated ======
translate H Time {Time}
# ====== TODO To be translated ======
translate H Auto {Auto}
# ====== TODO To be translated ======
translate H Score {Score}
# ====== TODO To be translated ======
translate H {Score Combo} {Score Combo}
# ====== TODO To be translated ======
translate H {Time Combo} {Time Combo}
# ====== TODO To be translated ======
translate H SecondsPerMove {Seconds per move}
# ====== TODO To be translated ======
translate H DepthPerMove {Depth per move}
# ====== TODO To be translated ======
translate H MoveControl {Move Control}
# ====== TODO To be translated ======
translate H TimeLabel {Time per move}
# ====== TODO To be translated ======
translate H AddVars {Add Variations}
# ====== TODO To be translated ======
translate H AddScores {Add Score}
# ====== TODO To be translated ======
translate H Engine {Engine}
# ====== TODO To be translated ======
translate H TimeMode {Time mode}
# ====== TODO To be translated ======
translate H TimeBonus {Time + bonus}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate H TimeMin {min}
# ====== TODO To be translated ======
translate H TimeSec {sec}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate H AllExercisesDone {All exercises done}
# ====== TODO To be translated ======
translate H MoveOutOfBook {Move out of book}
# ====== TODO To be translated ======
translate H LastBookMove {Last book move}
# ====== TODO To be translated ======
translate H AnnotateSeveralGames {Annotate several games\nfrom current to :}
# ====== TODO To be translated ======
translate H FindOpeningErrors {Find opening errors}
# ====== TODO To be translated ======
translate H MarkTacticalExercises {Mark tactical exercises}
# ====== TODO To be translated ======
translate H UseBook {Use book}
# ====== TODO To be translated ======
translate H MultiPV {Multiple variations}
# ====== TODO To be translated ======
translate H Hash {Hash memory}
# ====== TODO To be translated ======
translate H OwnBook {Use engine book}
# ====== TODO To be translated ======
translate H BookFile {Opening book}
# ====== TODO To be translated ======
translate H AnnotateVariations {Annotate variations}
# ====== TODO To be translated ======
translate H ShortAnnotations {Short annotations}
# ====== TODO To be translated ======
translate H addAnnotatorTag {Add annotator tag}
# ====== TODO To be translated ======
translate H AddScoreToShortAnnotations {Add score to short annotations}
# ====== TODO To be translated ======
translate H Export {Export}
# ====== TODO To be translated ======
translate H BookPartiallyLoaded {Book partially loaded}
# ====== TODO To be translated ======
translate H AddLine {Add Line}
# ====== TODO To be translated ======
translate H RemLine {Remove Line}
# ====== TODO To be translated ======
translate H Calvar {Calculation of variations}
# ====== TODO To be translated ======
translate H ConfigureCalvar {Configuration}
# ====== TODO To be translated ======
# ====== TODO To be translated ======
translate H Reti {Reti}
# ====== TODO To be translated ======
translate H English {English}
# ====== TODO To be translated ======
translate H d4Nf6Miscellaneous {1.d4 Nf6 Miscellaneous}
# ====== TODO To be translated ======
translate H Trompowsky {Trompowsky}
# ====== TODO To be translated ======
translate H Budapest {Budapest}
# ====== TODO To be translated ======
translate H OldIndian {Old Indian}
# ====== TODO To be translated ======
translate H BenkoGambit {Benko Gambit}
# ====== TODO To be translated ======
translate H ModernBenoni {Modern Benoni}
# ====== TODO To be translated ======
translate H DutchDefence {Dutch Defence}
# ====== TODO To be translated ======
translate H Scandinavian {Scandinavian}
# ====== TODO To be translated ======
translate H AlekhineDefence {Alekhine Defence}
# ====== TODO To be translated ======
translate H Pirc {Pirc}
# ====== TODO To be translated ======
translate H CaroKann {Caro-Kann}
# ====== TODO To be translated ======
translate H CaroKannAdvance {Caro-Kann Advance}
# ====== TODO To be translated ======
translate H Sicilian {Sicilian}
# ====== TODO To be translated ======
translate H SicilianAlapin {Sicilian Alapin}
# ====== TODO To be translated ======
translate H SicilianClosed {Sicilian Closed}
# ====== TODO To be translated ======
translate H SicilianRauzer {Sicilian Rauzer}
# ====== TODO To be translated ======
translate H SicilianDragon {Sicilian Dragon}
# ====== TODO To be translated ======
translate H SicilianScheveningen {Sicilian Scheveningen}
# ====== TODO To be translated ======
translate H SicilianNajdorf {Sicilian Najdorf}
# ====== TODO To be translated ======
translate H OpenGame {Open Game}
# ====== TODO To be translated ======
translate H Vienna {Vienna}
# ====== TODO To be translated ======
translate H KingsGambit {King's Gambit}
# ====== TODO To be translated ======
translate H RussianGame {Russian Game}
# ====== TODO To be translated ======
translate H ItalianTwoKnights {Italian/Two Knights}
# ====== TODO To be translated ======
translate H Spanish {Spanish}
# ====== TODO To be translated ======
translate H SpanishExchange {Spanish Exchange}
# ====== TODO To be translated ======
translate H SpanishOpen {Spanish Open}
# ====== TODO To be translated ======
translate H SpanishClosed {Spanish Closed}
# ====== TODO To be translated ======
translate H FrenchDefence {French Defence}
# ====== TODO To be translated ======
translate H FrenchAdvance {French Advance}
# ====== TODO To be translated ======
translate H FrenchTarrasch {French Tarrasch}
# ====== TODO To be translated ======
translate H FrenchWinawer {French Winawer}
# ====== TODO To be translated ======
translate H FrenchExchange {French Exchange}
# ====== TODO To be translated ======
translate H QueensPawn {Queen's Pawn}
# ====== TODO To be translated ======
translate H Slav {Slav}
# ====== TODO To be translated ======
translate H QGA {QGA}
# ====== TODO To be translated ======
translate H QGD {QGD}
# ====== TODO To be translated ======
translate H QGDExchange {QGD Exchange}
# ====== TODO To be translated ======
translate H SemiSlav {Semi-Slav}
# ====== TODO To be translated ======
translate H QGDwithBg5 {QGD with Bg5}
# ====== TODO To be translated ======
translate H QGDOrthodox {QGD Orthodox}
# ====== TODO To be translated ======
translate H Grunfeld {Gr�nfeld}
# ====== TODO To be translated ======
translate H GrunfeldExchange {Gr�nfeld Exchange}
# ====== TODO To be translated ======
translate H GrunfeldRussian {Gr�nfeld Russian}
# ====== TODO To be translated ======
translate H Catalan {Catalan}
# ====== TODO To be translated ======
translate H CatalanOpen {Catalan Open}
# ====== TODO To be translated ======
translate H CatalanClosed {Catalan Closed}
# ====== TODO To be translated ======
translate H QueensIndian {Queen's Indian}
# ====== TODO To be translated ======
translate H NimzoIndian {Nimzo-Indian}
# ====== TODO To be translated ======
translate H NimzoIndianClassical {Nimzo-Indian Classical}
# ====== TODO To be translated ======
translate H NimzoIndianRubinstein {Nimzo-Indian Rubinstein}
# ====== TODO To be translated ======
translate H KingsIndian {King's Indian}
# ====== TODO To be translated ======
translate H KingsIndianSamisch {King's Indian S�misch}
# ====== TODO To be translated ======
translate H KingsIndianMainLine {King's Indian Main Line}
# ====== TODO To be translated ======

translate H ConfigureFics {FICS be�ll�t�sa}
translate H FICSLogin {Bel�p�s}
translate H FICSGuest {Bel�p�s vend�gk�nt}
translate H FICSServerPort {Szerverport}
# ====== TODO To be translated ======
translate H FICSServerAddress {IP Address}
# ====== TODO To be translated ======
translate H FICSRefresh {Refresh}
translate H FICSTimeseal {Id�b�lyeg}
translate H FICSTimesealPort {Id�b�lyegport}
translate H FICSSilence {Csend}
translate H FICSOffers {Aj�nlatok}
# ====== TODO To be translated ======
translate H FICSMakeOffer {Make Offer}
translate H FICSGames {J�tszm�k}
translate H FICSFindOpponent {Ellenf�lkeres�}
translate H FICSTakeback {Visszav�tel}
translate H FICSTakeback2 {Visszav�tel 2}
translate H FICSInitTime {Kezdeti id� (perc)}
translate H FICSIncrement {N�vekm�ny (m�sodperc)}
translate H FICSRatedGame {�les j�tszma}
translate H FICSAutoColour {automatikus}
translate H FICSManualConfirm {k�zi meger�s�t�s}
translate H FICSFilterFormula {Sz�r�formula}
translate H FICSIssueSeek {Keres�s}
translate H FICSAccept {elfogad}
translate H FICSDecline {elutas�t}
translate H FICSColour {Sz�n}
translate H FICSSend {k�ld}
translate H FICSConnect {Csatlakoz�s}
# ====== TODO To be translated ======
translate H FICSShouts {Shouts}
# ====== TODO To be translated ======
translate H FICSTells {Tells}
# ====== TODO To be translated ======
translate H FICSOpponent {Opponent Info}
# ====== TODO To be translated ======
translate H FICSInfo {Info}
# ====== TODO To be translated ======
translate H FICSDraw {Offer Draw}
# ====== TODO To be translated ======
translate H FICSRematch {Rematch}
# ====== TODO To be translated ======
translate H FICSQuit {Quit FICS}
# ====== TODO To be translated ======
translate H FICSCensor {Censor}


translate H CCDlgConfigureWindowTitle {Levelez�si sakk be�ll�t�sai}
translate H CCDlgCGeneraloptions {�ltal�nos lehet�s�gek}
translate H CCDlgDefaultDB {Alap�rtelmez�s� adatb�zis:}
translate H CCDlgInbox {Bej�v� postafi�k (�tvonal):}
translate H CCDlgOutbox {Kimen� postafi�k (�tvonal):}
translate H CCDlgXfcc {Xfcc-be�ll�t�s:}
translate H CCDlgExternalProtocol {K�ls� protokollkezel� (pl. Xfcc)}
translate H CCDlgFetchTool {Bek�r� eszk�z:}
translate H CCDlgSendTool {K�ld� eszk�z:}
translate H CCDlgEmailCommunication {eMail-kapcsolat}
translate H CCDlgMailPrg {Levelez�program:}
translate H CCDlgBCCAddr {(B)CC-c�m:}
translate H CCDlgMailerMode {�zemm�d:}
translate H CCDlgThunderbirdEg {pl. Thunderbird, Mozilla Mail, Icedove...}
translate H CCDlgMailUrlEg {pl. Evolution}
translate H CCDlgClawsEg {pl. Sylpheed Claws}
translate H CCDlgmailxEg {pl. mailx, mutt, nail...}
translate H CCDlgAttachementPar {Mell�kletparam�ter:}
translate H CCDlgInternalXfcc {Bels� Xfcc-t�mogat�s haszn�lata}
# ====== TODO To be translated ======
translate H CCDlgConfirmXfcc {Confirm moves}
translate H CCDlgSubjectPar {T�rgyparam�ter:}
translate H CCDlgDeleteBoxes {Be/kimen� postafi�k ki�r�t�se}
translate H CCDlgDeleteBoxesText {T�nyleg ki akarod �r�teni a levelez�si sakk be- �s kimen� postafi�kjait? Ehhez �jra szinkroniz�lni kell, amely j�tszm�id utols� �llapot�t mutatja.}
# ====== TODO To be translated ======
translate H CCDlgConfirmMove {Confirm move}
# ====== TODO To be translated ======
translate H CCDlgConfirmMoveText {If you confirm, the following move and comment will be sent to the server:}
# ====== TODO To be translated ======
translate H CCDlgDBGameToLong {Inconsistent Mainline}
# ====== TODO To be translated ======
translate H CCDlgDBGameToLongError {The mainline in your database is longer than the game in your Inbox. If the Inbox contains current games, i.e. right after a sync, some moves were added to the mainline in the database erroneously.\nIn this case please shorten the mainline to (at max) move\n}
translate H CCDlgStartEmail {Start new eMail game}
translate H CCDlgYourName {Neved:}
translate H CCDlgYourMail {eMail-c�med:}
translate H CCDlgOpponentName {Az ellenf�l neve:}
translate H CCDlgOpponentMail {Az ellenf�l eMail-c�me:}
translate H CCDlgGameID {J�tszmaazonos�t� (egyedi):}
translate H CCDlgTitNoOutbox {Scid: A levelez�si sakk kimen� postafi�kja}
translate H CCDlgTitNoInbox {Scid: A levelez�si sakk bej�v� postafi�kja}
translate H CCDlgTitNoGames {Scid: Nincsenek levelez�si j�tszm�k.}
translate H CCErrInboxDir {A levelez�si sakk bej�v� postafi�kj�nak k�nyvt�ra:}
translate H CCErrOutboxDir {A levelez�si sakk kimen� postafi�kj�nak k�nyvt�ra:}
translate H CCErrDirNotUsable {nem l�tezik vagy nem hozz�f�rhet�!\nEllen�rizd �s jav�tsd ki a be�ll�t�sokat.}
translate H CCErrNoGames {nem tartalmaz j�tszm�t!\nEl�bb k�rd be �ket.}
translate H CCDlgTitNoCCDB {Scid: Nincs levelez�si adatb�zis.}
translate H CCErrNoCCDB {Nincs megnyitva "levelez�si" t�pus� adatb�zis. Nyiss meg egyet miel�tt levelez�si funkci�kat akarn�l haszn�lni.}
translate H CCFetchBtn {K�rj be j�tszm�kat a szervert�l, �s dolgozd fel a bej�v� postafi�kot.}
translate H CCPrevBtn {Menj az el�z� j�tszm�hoz.}
translate H CCNextBtn {Menj a k�vetkez� j�tszm�hoz.}
translate H CCSendBtn {L�p�s elk�ld�se}
translate H CCEmptyBtn {A postafi�kok ki�r�t�se}
translate H CCHelpBtn {Seg�ts�g ikonokhoz �s �llapotjelz�kh�z\n�ltal�nos seg�ts�g�rt nyomd meg F1-et!}
translate H CCDlgServerName {Szervern�v:}
translate H CCDlgLoginName  {Bejelentkez� n�v:}
translate H CCDlgPassword   {Jelsz�:}
translate H CCDlgURL        {Xfcc-URL:}
translate H CCDlgRatingType {�rt�ksz�m t�pusa:}
translate H CCDlgDuplicateGame {Nem egyedi j�tszmaazonos�t�}
translate H CCDlgDuplicateGameError {Ez a j�tszma egyn�l t�bbsz�r fordul el� adatb�zisodban. T�r�ld a m�solatokat, �s t�m�r�tsd j�tszmaf�jlodat (F�jl/Gondoz�s/Adatb�zis t�m�r�t�se).}
# ====== TODO To be translated ======
translate H CCDlgSortOption {Sorting:}
# ====== TODO To be translated ======
translate H CCDlgListOnlyOwnMove {Only games I have the move}
# ====== TODO To be translated ======
translate H CCOrderClassicTxt {Site, Event, Round, Result, White, Black}
# ====== TODO To be translated ======
translate H CCOrderMyTimeTxt {My Clock}
# ====== TODO To be translated ======
translate H CCOrderTimePerMoveTxt {Time per move till next time control}
# ====== TODO To be translated ======
translate H CCOrderStartDate {Start date}
# ====== TODO To be translated ======
translate H CCOrderOppTimeTxt {Opponents Clock}
# ====== TODO To be translated ======
translate H CCDlgConfigRelay {Configure ICCF observations}
# ====== TODO To be translated ======
translate H CCDlgConfigRelayHelp {Go to the games page on http://www.iccf-webchess.com and display the game to be observed.  If you see the chessboard copy the URL from your browser to the list below. One URL per line only!\nExample: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}

# ====== TODO To be translated ======
translate H ExtHWConfigConnection {Configure external hardware}
# ====== TODO To be translated ======
translate H ExtHWPort {Port}
# ====== TODO To be translated ======
translate H ExtHWEngineCmd {Engine command}
# ====== TODO To be translated ======
translate H ExtHWEngineParam {Engine parameter}
# ====== TODO To be translated ======
translate H ExtHWShowButton {Show button}
# ====== TODO To be translated ======
translate H ExtHWHardware {Hardware}
# ====== TODO To be translated ======
translate H ExtHWNovag {Novag Citrine}
# ====== TODO To be translated ======
translate H ExtHWInputEngine {Input Engine}
# ====== TODO To be translated ======
translate H ExtHWNoBoard {No board}
# ====== TODO To be translated ======
translate H IEConsole {Input Engine Console}
# ====== TODO To be translated ======
translate H IESending {Moves sent for}
# ====== TODO To be translated ======
translate H IESynchronise {Synchronise}
# ====== TODO To be translated ======
translate H IERotate  {Rotate}
# ====== TODO To be translated ======
translate H IEUnableToStart {Unable to start Input Engine:}
# ====== TODO To be translated ======
translate H DoneWithPosition {Done with position}
translate H Board {Sakkt�bla}
translate H showGameInfo {A j�tszma adatai}
translate H autoResizeBoard {A sakkt�bla automatikus �tm�retez�se}
translate H DockTop {Mozgat�s fel�lre}
translate H DockBottom {Mozgat�s alulra}
translate H DockLeft {Mozgat�s balra}
translate H DockRight {Mozgat�s jobbra}
translate H Undock {Felold�s}
# ====== TODO To be translated ======
translate H ChangeIcon {Change icon}
# ====== TODO To be translated ======
translate H More {More}

# Drag & Drop
# ====== TODO To be translated ======
translate H CannotOpenUri {Cannot open the following URI:}
# ====== TODO To be translated ======
translate H InvalidUri {Drop content is not a valid URI list.}
# ====== TODO To be translated ======
translate H UriRejected	{The following files are rejected:}
# ====== TODO To be translated ======
translate H UriRejectedDetail {Only the listed file types can be handled:}
# ====== TODO To be translated ======
translate H EmptyUriList {Drop content is empty.}
# ====== TODO To be translated ======
translate H SelectionOwnerDidntRespond {Timeout during drop action: selection owner didn't respond.}
# ====== TODO To be translated ======
translate H PasteAnal {Paste Analysis}
# ====== TODO To be translated ======
translate H SortOpcodes {Sort Opcodes}
# ====== TODO To be translated ======
translate H AddPosition {Add Position}
# ====== TODO To be translated ======
translate H FindPos {Find Deepest Game Position}
# ====== TODO To be translated ======
translate H AnalPosition {Analyze Positions}
# ====== TODO To be translated ======
translate H StripOpcodes {Strip Opcodes}
# ====== TODO To be translated ======
translate H NoMoves {No moves from this position}
# ====== TODO To be translated ======
translate H CountBestMoves {Count Best Moves}

}

# Tips of the day in Hungarian

set tips(H) {
  {
    Scid-ben t�bb mint 30 oldalnyi <a Index>seg�ts�g</a> van, �s a legt�bb Scid-ablakban
    az <b>F1</b> billenty� megnyom�s�ra el�bukkan egy arra az ablakra vonatkoz�
    seg�t� sz�veg.
  }
  {
    Egyes Scid-ablakoknak (pl. a j�tszmainform�ci�s ter�let, az
    <a Switcher>adatb�zisv�lt�</a>) jobbeg�rgombos men�j�k van.
    Nyomd meg a jobb eg�rgombot az egyes ablakokban, �s megl�tod,
    hogy ott is van-e, �s milyen lehet�s�geket k�n�l.
  }
  {
    Scid t�bb lehet�s�get is k�n�l l�p�sek bevitel�re, amelyek
    k�z�l kedved szerint v�laszthatsz. Haszn�lhatod az egeret
    (l�p�sjavaslattal vagy an�lk�l) vagy a billenty�zetet
    (l�p�skieg�sz�t�ssel vagy an�lk�l). Olvasd el a r�szleteket a
    <a Moves>L�p�sek bevitele</a> c�m� seg�t�lapon.
  }
  {
    Ha bizonyos adatb�zisokat gyakran haszn�lsz, jel�ld meg �ket egy-egy
    <a Bookmarks>k�nyvjelz�</a> seg�ts�g�vel, s ezut�n a k�nyvjelz�men�
    �tj�n gyorsabban tudod megnyitni �ket.
  }
  {
    A <a PGN>PGN-ablak</a> r�v�n az aktu�lis j�tszma �sszes
    l�p�s�t l�thatod (el�gaz�sokkal �s megjegyz�sekkel).
    A PGN-ablakban b�rmelyik l�p�shez elugorhatsz, ha r�kattintasz a bal
    eg�rgombbal; a k�z�ps� vagy a jobb eg�rgomb haszn�lat�val pedig
    a l�p�shez tartoz� �ll�st tekintheted meg.
  }
  {
    A bal eg�rgomb r�v�n �th�z�ssal egyik adatb�zisb�l a m�sikba
    m�solhatsz j�tszm�kat az <a Switcher>adatb�zisv�lt�</a> ablakban.
  }
  {
    Ha egy nagy adatb�zist gyakran haszn�lsz a <a Tree>faszerkezet</a>-ablakkal,
    �rdemes a <b>Cache-f�jl felt�lt�se</b> pontot v�lasztani a faszerkezet-ablak
    F�jl men�j�b�l. Ez megjegyzi sok gyakori megnyit�s faszerkezet-adatait,
    mi�ltal gyorsabb lesz a hozz�f�r�s az adatb�zishoz.
  }
  {
    A <a Tree>faszerkezet</a>-ablak megmutatja az �sszes l�p�st, amelyet
    az adott �ll�sban tettek, de ha az �sszes l�p�ssorrendet l�tni akarod,
    amely ehhez az �ll�shoz vezetett, <a OpReport>megnyit�si �sszefoglal�</a>
    l�trehoz�s�val megkaphatod.
  }
  {
    A <a GameList>j�tszm�k list�ja</a> ablakban egy oszlop fejl�c�re
    kattintva m�dos�thatod az oszlop sz�less�g�t.
  }
  {
    A <a PInfo>j�t�kosinform�ci�</a>-ablak seg�ts�g�vel (kinyit�s�hoz
    egyszer�en kattints valamelyik j�t�kos nev�re a f�ablak sakkt�bl�ja alatt
    tal�lhat� j�tszmainform�ci�s ter�leten) k�nnyed�n be�ll�that� �gy
    a <a Searches Filter>sz�r�</a>, hogy bizonyos j�t�kos bizonyos eredm�nnyel
    v�gz�d�tt �sszes j�tszm�j�t tartalmazza. Ehhez csak a <red>piros sz�n�</red>
    �rt�kek valamelyik�re kell kattintani.
  }
  {
    Megnyit�s tanulm�nyoz�sakor egy fontos �ll�sban nagyon hasznos lehet a
    <a Searches Board>poz�ci�keres�s</a> <b>Gyalogok</b> vagy
    <b>Oszlopok</b> be�ll�t�ssal, mert ez megmutathatja,
    hogy m�g mely megnyit�sok vezetnek ugyanehhez a gyalogszerkezethez.
  }
  {
    Ha a j�tszmainform�ci�s ter�leten (a sakkt�bla alatt) megnyomod
    a jobb eg�rgombot, el�bukkan egy men�, amellyel testre szabhat�.
    P�ld�ul megk�rheted Scidet, hogy rejtse el a k�vetkez� l�p�st, ami
    edz�sn�l hasznos, ha egy j�tszma l�p�seit ki akarod tal�lni.
  }
  {
    Ha gyakran v�gzel <a Maintenance>gondoz�s</a>t nagy adatb�zison,
    egyszerre hajthatsz v�gre t�bb gondoz�si feladatot a
    <a Maintenance Cleaner>takar�t�</a> seg�ts�g�vel.
  }
  {
    Ha nagy adatb�zisod van, amelyben a legt�bb j�tszm�n�l az esem�ny ideje
    is fel van t�ntetve, �s a j�tszm�kat id� szerint szeretn�d rendezni, v�gezd
    a <a Sorting>rendez�s</a>t az esem�ny ideje majd esem�ny szerint,
    s ne ford�tva. �gy ugyanannak a versenynek a k�l�nb�z� keltez�s� j�tszm�i
    egy�tt fognak maradni (term�szetesen csak akkor, ha mindegyikn�l azonos
    az esem�ny keltez�se).
  }
  {
    <a Maintenance Twins>Ikerj�tszm�k t�rl�se</a> el�tt c�lszer�
    <a Maintenance Spellcheck>helyes�r�sellen�rz�s</a> al� vetni
    az adatb�zist, mert �gy Scid t�bb ikret tud megtal�lni �s t�rl�sre kijel�lni.
  }
  {
    <a Flags>Megjel�l�sek</a> r�v�n az adatb�zis j�tszm�inak olyan
    jellegzetess�geit lehet kiemelni, amelyek alapj�n k�s�bb keres�st
    akarsz v�gezni (gyalogszerkezet, taktikai mot�vum stb.).
    Megjel�l�sekre <a Searches Header>keres�s fejl�c alapj�n</a> lehet
    keresni.
  }
  {
    Ha egy j�tszm�t tanulm�nyozva szeretn�l kipr�b�lni l�p�seket
    a j�tszma megv�ltoztat�sa n�lk�l, egyszer�en kapcsold be a
    V�ltozat kipr�b�l�sa �zemm�dot (a <b>Ctrl+space</b>
    billenty�kombin�ci�val vagy az eszk�zt�r ikonj�val), majd kapcsold ki,
    ha v�gezt�l, �s vissza akarsz t�rni az eredeti j�tszm�hoz.
  }
  {
    Ha meg akarod keresni egy adott �ll�shoz vezet� legkiemelked�bb
    j�tszm�kat (nagy �rt�ksz�m� ellenfelek k�z�tt), nyisd ki a
    <a Tree>faszerkezet</a>-ablakot, majd onnan nyisd ki a legjobb
    j�tszm�k list�j�t. M�g ezt a list�t is sz�k�theted, hogy csak
    meghat�rozott eredm�nnyel v�gz�d� j�tszm�kat mutasson.
  }
  {
    Remek�l lehet megnyit�st tanulm�nyozni nagy adatb�zisra
    t�maszkodva oly m�don, hogy a <a Tree>faszerkezet</a>-ablakban
    bekapcsolod az edz�st, majd az adatb�zis ellen j�tszva megn�zheted,
    mely el�gaz�sok fordulnak el� gyakran.
  }
  {
    Ha k�t adatb�zisod van nyitva, �s l�tni szeretn�d az els� adatb�zis
    <a Tree>faszerkezet</a>-adatait, mik�zben a m�siknak egyik
    j�tszm�j�t tanulm�nyozod, a <b>R�gz�t�s</b> gomb megnyom�s�val
    r�gz�tsd a f�t az els� adatb�zishoz, majd v�lts �t a m�sikra.
  }
  {
    A <a Tmt>versenykeres�</a> nemcsak arra val�, hogy megkeress
    vele egy versenyt. Arra is haszn�lhat�, hogy megn�zd, hogy egy j�t�kos
    mely versenyeken indult mostan�ban, vagy v�gign�zd egy adott orsz�gban
    rendezett legkiemelked�bb versenyeket.
  }
  {
    Az <a Searches Material>Anyag/szerkezet</a> keres�ablakban
    megtal�lhat� n�h�ny gyakran el�fordul� �ll�sszerkezet, amely
    hasznos lehet megnyit�s vagy k�z�pj�t�k tanulm�nyoz�sakor.
  }
  {
    Ha meghat�rozott anyagi helyzetre keresel az
    <a Searches Material>Anyag/szerkezet</a> keres�ablakban, sokszor c�lszer�
    a keres�st olyan j�tszm�kra korl�tozni, amelyek t�bb l�p�sen kereszt�l
    megfelelnek a felt�teleknek. Ily m�don ki lehet z�rni azokat a j�tszm�kat,
    amelyekben a keresett helyzet csak r�vid ideig �llt fenn.
  }
  {
    Ha egy fontos adatb�zist nem szeretn�l v�letlen�l megv�ltoztatni,
    megnyit�sa ut�n v�laszd az <b>�r�sv�delem...</b> pontot a
    <b>F�jl</b> men�b�l, vagy �ll�tsd �t attrib�tum�t csak olvashat�ra.
  }
  {
    Ha XBoardot vagy WinBoardot haszn�lod (vagy m�s olyan sakkprogramot,
    amely egy sakk�ll�st szabv�nyos FEN-jel�l�ssel a v�g�lapra tud m�solni),
    �s �t akarod m�solni a rajta l�v� �ll�st Scidbe, ennek leggyorsabb �s
    legegyszer�bb m�dja az, hogy XBoard/WinBoard File men�j�b�l
    <b>Copy Position</b> r�v�n, majd Scid Szerkeszt�s men�j�b�l
    <b>Kezd��ll�s beilleszt�se</b> �tj�n �temeled az �ll�st.
  }
  {
    <a Searches Header>Keres�s fejl�c alapj�n</a> eset�ben a
    j�t�kos-, esem�ny-, helysz�n- �s fordul�nevek nem �rz�kenyek
    kis- vagy nagybet� szempontj�b�l, �s az egyez�s n�v belsej�ben is lehet.
    Ehelyett v�geztethetsz kis- vagy nagybet� szempontj�b�l �rz�keny
    dzs�kerkeres�st is (ahol "?" = b�rmilyen karakter, "*" = esetleges
    tov�bbi karakterek), ha a keresend� sz�veget "id�z�jelben" adod meg.
    P�ld�ul �rj "*BEL"-t (id�z�jelekkel) a helysz�nmez�be, ha meg akarod tal�lni
    a Belgiumban j�tszott j�tszm�kat, de a Belgr�dban j�tszottakat nem.
  }
  {
    Ha egy j�tszm�ban helyesb�teni akarsz egy l�p�st, de nem szeretn�d,
    ha az �t k�vet� l�p�sek elveszn�nek, nyisd ki az <a Import>Import</a>
    ablakot, nyomd meg a <b>Beilleszti az aktu�lis j�tszm�t.</b> gombot,
    jav�tsd ki a t�ves l�p�st, majd nyomd meg az <b>Import</b> gombot.
  }
  {
    Ha van bet�ltve ECO-oszt�lyoz� f�jlod, a <b>J�tszma</b> men�b�l
    <b>Megnyit�s azonos�t�sa</b> �tj�n (gyorsbillenty�: Ctrl+Shift+D)
    elugorhatsz az aktu�lis j�tszm�ban el�fordul� legm�lyebb oszt�lyozott �ll�shoz.
    .
  }
  {
    Ha meg akarod n�zni egy f�jl m�ret�t vagy utols� m�dos�t�s�nak
    id�pontj�t, miel�tt megnyitn�d, haszn�ld megnyit�s�ra a
    <a Finder>f�jlkeres�</a>t.
  }
  {
    A <a OpReport>megnyit�si �sszefoglal�</a> nagyszer� lehet�s�get ny�jt
    egy �ll�s megismer�s�re. Megn�zheted, mennyire eredm�nyes,
    gyakran vezet-e r�vid d�ntetlenre, megmutatja a gyakran el�fordul�
    poz�ci�s t�m�kat.
  }
  {
    A leghaszn�latosabb �rt�kel� jeleket (!, !?, += stb.) a
    <a Comment>megjegyz�sszerkeszt�<a> haszn�lata n�lk�l,
    billenty�z�ssel is hozz� lehet f�zni az aktu�lis l�p�shez vagy �ll�shoz.
    P�ld�ul "!", majd Enter le�t�s�vel be tudod sz�rni a "!" jelet.
    B�vebb ismertet�st a <a Moves>L�p�sek bevitele</a> c�m� seg�t�lap
    ny�jt.
  }
  {
    Ha egy adatb�zis megnyit�sai k�z�tt <a Tree>faszerkezet</a> seg�ts�g�vel
    b�ng�szel, hasznos �sszefoglal�t kaphatsz arr�l, hogy a vizsg�lt megnyit�s
    milyen eredm�nyes volt az ut�bbi id�ben er�s j�t�kosok k�z�tt. Ehhez nyisd ki
    a Statisztika ablakot (gyorsbillenty�: Ctrl+I).
  }
  {
    Megv�ltoztathatod a f�ablak sakkt�bl�j�nak m�ret�t, ha a <b>Ctrl</b>
    �s a <b>Shift</b> billenty�k nyomva tart�sa mellett megnyomod a
    <b>bal</b> vagy a <b>jobb</b> nyilat.
  }
  {
    <a Searches>Keres�s</a> ut�n k�nny�szerrel v�gign�zheted a tal�lt
    j�tszm�kat. Tartsd nyomva a <b>Ctrl</b> billenty�t, �s nyomd meg a
    <b>fel</b> vagy a <b>le</b> nyilat az el�z� vagy a k�vetkez�
    <a Searches Filter>sz�r�</a>j�tszma bet�lt�s�hez.
  }
}

# end of hungary.tcl
