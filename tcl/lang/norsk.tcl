#
# norsk.tcl
#
# Text for menu names and status bar help messages in Norwegian.
# First created for Scid 3.2.beta2
# Thanks to Martin Skjöldebrand, swedish.tcl was of great help to me.
# Massive update for Scid vs PC 4.19. Translated missing strings, 
# fixed some inconsistencies and aligned with english.tcl. 180815 MS
# Updated for Scid vs PC 4.20 190324 MS
#
# (1) Choose a letter code for the language. Currently assigned codes are:
#      E=English, D=Deutsch, F=Francais, S=Spanish, B=Brasil Portuguese, U=Portuguese
#      P=Polish, N=Nederlands, W=Swedish, O=Norsk, C=Czech, H=Hungarian,
#      Y=Serbian, L=Finnish (Linus!)
#
# (2) Edit the code below that has the lines "addLanguage ..." and add your
#     new language. The final digit in each line is the index of the
#     letter to underline in the menu, counting from 0 as the first letter.
#
# (3) Change anything "in quotes" or {in braces} for the menuText and translate commands.
#
#     A menu command has the format:
#         menuText L tag "Name..." underline {HelpMessage}
#
#     A general word or message translation has the format:
#         translate L tag {message}
#
# Notes:
#
#     "HelpMessage" can be left out if desired, as they are not currently used in Scid vs. PC
#
#     "underline" is the index of the letter to underline, counting from 0
#     as the first letter. Two menu entries
#     that appear in the same menu should have a different underlined letter.
#     If in doubt, just make them all "0"
#

addLanguage O Norsk 1 ;#utf-8

proc setLanguage_O {} {

# File menu:
menuText O File "Fil" 0
menuText O FileNew "Ny..." 0 {Lag en ny Scid-database}
menuText O FileOpen "Åpne..." 0 {Åpne en Scid-database}
menuText O FileClose "Lukk" 2 {Lukk aktiv Scid-database}
menuText O FileFinder "Søk" 0 {Åpne søkevinduet}
menuText O FileSavePgn "Lagre Pgn..." 0 {}
menuText O FileOpenBaseAsTree "Åpne base i trevisning" 14   {Åpne en base og bruk det i trevinduet}
menuText O FileOpenRecentBaseAsTree "Åpne siste i trevisning" 6   {Åpne en nylig brukt base i trevinduet}
menuText O FileBookmarks "Bokmerker" 3 {Bokmerkemeny (snarvei: Ctrl+B)}
menuText O FileBookmarksAdd "Legg til bokmerke" 0 \
  {Sett bokmerke til nåværende database, parti og stilling}
menuText O FileBookmarksFile "Lagre bokmerke" 0 \
  {Lagre et bokmerke for nåværende database, parti og stilling}
menuText O FileBookmarksEdit "Ordne bokmerker" 0 \
  {Vedlikehold av bokmerkene}
menuText O FileBookmarksList "Vis kataloger som enkel liste" 24 \
  {Vis bokmerker som liste, ikke undermenyer}
menuText O FileBookmarksSub "Vis kataloger som undermenyer" 18 \
  {Vis bokmerke-katalogene som undermenyer, ikke liste}

menuText O FileReadOnly "Skrivebeskytt..." 6 \
  {Hindrer endringer på databasen}
menuText O FileSwitch "Bytt til database" 9 \
  {Bytt til en annen åpen database}
menuText O FileExit "Avslutt" 1 {Avslutt Scid vs PC} # Hurtigtast fungerer ikke?

# Edit menu: TODO: snarveier
menuText O Edit "Rediger" 0
menuText O EditAdd "Legg til variasjon" 0 {Legg til en variasjon av dette trekket i partiet}
menuText O EditPasteVar "Lim inn variasjon" 0
menuText O EditDelete "Slett variasjon" 0 {Slett en variasjon av dette trekket}
menuText O EditFirst "Flytt variasjon øverst" 0 \
  {Gjør variasjonen til den øverste på listen}
menuText O EditMain "Gjør variasjon til hovedlinje" 0 \
  {Gjør variasjon til hovedlinje}
menuText O EditTrial "Prøv variasjon" 0 \
  {Start/avslutt prøvemodus, for å teste ut en ide på brettet}
menuText O EditStrip "Fjern" 0 {Fjern kommentarer eller variasjoner fra partiet}
menuText O EditUndo "Angre" 0 {Angre siste endring i parti}
menuText O EditRedo "Gjenta" 0 {Gjør om angret handling}
menuText O EditStripComments "Kommentarer" 0 \
  {Fjern alle kommentarer og annotasjoner fra dette partiet}
menuText O EditStripVars "Variasjoner" 0 {Fjern alle variasjoner fra dette partiet}
menuText O EditStripBegin "Trekk fra begynnelsen" 1 \
  {Fjern trekk fra begynnelsen av partiet}
menuText O EditStripEnd "Trekk til slutten" 0 \
  {Fjern trekk til slutten av partiet}
menuText O EditReset "Rensk utklippsbase" 0 \
  {Tømmer utklippsbasen fullstendig}
menuText O EditCopy "Kopier partiet til utklippsbasen" 0 \
  {Kopier dette partiet til utklippsbasen}
menuText O EditPaste "Lim inn siste parti fra utklippsbasen" 0 \
  {Limer inn gjeldende parti fra utklippsbasen her}
menuText O EditPastePGN "Lim inn utklippstavle som PGN..." 0 \
  {Leser PGN fra utklippstavlen og limer det inn her}
menuText O EditSetup "Sett opp stilling..." 0 \
  {Angi utgangsstilling for dette partiet}
menuText O EditCopyBoard "Kopier stilling" 0 \
  {Kopier brettet som FEN til utklippstavlen}
menuText O EditCopyPGN "Kopier PGN" 0 \
  {Kopierer partiet som PGN til utklippstavle}
menuText O EditPasteBoard "Lim inn stilling" 0 \
  {Lag en startstilling fra gjeldende utvalg (utklippstavle)}

# Game menu: TODO: snarveier
menuText O Game "Parti" 0
menuText O GameNew "Nytt parti" 0 {Sletter alle trekk og starter et nytt parti}
menuText O GameFirst "Hent første parti" 0 {Henter første parti fra filteret}
menuText O GamePrev "Hent forrige parti" 0 {Henter forrige parti fra filteret}
menuText O GameReload "Hent dette partiet" 0 {Henter dette partiet på nytt og fjerner alle endringer}
menuText O GameNext "Hent neste parti" 0 {Henter neste parti fra filteret}
menuText O GameLast "Hent siste parti" 0 {Henter siste parti fra filteret}
menuText O GameRandom "Hent tilfeldig parti" 8 {Hent tilfeldig parti fra filteret}
menuText O GameNumber "Hent parti nummer..." 0 {Finn et parti ved å angi nummeret}
menuText O GameReplace "Overskriv parti..." 0 {Lagre og overskriv dette partiet}
menuText O GameAdd "Lagre som nytt parti..." 0 {Lagre dette partiet som et nytt parti}
menuText O GameInfo "Endre parti" 0
menuText O GameBrowse "Bla gjennom partier" 0
menuText O GameList "Vis alle partier" 0
menuText O GameDelete "Slett parti" 0
menuText O GameDeepest "Identifiser åpning" 0 {Gå til dypeste posisjon i dette partiet listet i ECO-boken}
menuText O GameGotoMove "Gå til trekk..." 0 {Gå til et angitt trekk i dette partiet}
menuText O GameNovelty "Finn nyhet" 0 {Finn det første trekket i dette partiet som ikke har blitt spilt tidligere}

# Search Menu: TODO: snarveier
menuText O Search "Søk" 0
menuText O SearchReset "Nullstill filter" 0 {Nullstill filteret til å inneholde alle partier}
menuText O SearchNegate "Snu filter" 0 {Reverserer filteret til å kun inneholde eksluderte partier}
menuText O SearchEnd "Flytt til Siste Filter" 0
menuText O SearchCurrent "Stilling..." 0 {Søk etter denne stillingen}
menuText O SearchHeader "Header..." 0 {Søk etter Header (partier, turnering etc) informasjon}
menuText O SearchMaterial "Kvalitet/stilling..." 0 {Søk på kvalitet eller stilling}
menuText O SearchMoves "Trekk" 0 {}
menuText O SearchUsing "Bruk søkefil..." 0 {Søk med lagrede søkevilkår}

# Windows menu: TODO: snarveier
menuText O Windows "Vinduer" 0
menuText O WindowsGameinfo "Info om parti" 0 {Show/hide the game info panel}
menuText O WindowsComment "Kommentarer" 0 {Åpne/lukk kommentarvinduet}
menuText O WindowsGList "Partioversikt" 0 {Åpne/lukk partioversikten}
menuText O WindowsPGN "PGN-vindu" 0 {Åpne/lukk PGN-vinduet}
menuText O WindowsCross "Krysstabell" 0 {Vis turnerigskrystabellen for dette partiet}
menuText O WindowsPList "Finn spillere" 2 {}
menuText O WindowsTmt "Turneringer" 0 {Åpne/lukk turneringssøkeren}
menuText O WindowsSwitcher "Databaser" 0 {Åpne/lukk databasebytteren}
menuText O WindowsMaint "Vedlikeholdsvindu" 0 {Åpne/lukk vedlikeholdsvinduet}
menuText O WindowsECO "ECO-oversikt" 0 {Åpne/lukk ECO-oversikten}
menuText O WindowsStats "Statistikkvindu" 0 {Åpne/lukk statistikk for filteret}
menuText O WindowsTree "Trevindu" 0 {Åpne/lukk trevinduet}
menuText O WindowsTB "Sluttspilltabellvindu" 0 {Åpne/lukk sluttspilltabellen}
menuText O WindowsBook "Bokvindu" 0 {Åpne/lukke bok-vinduet}
menuText O WindowsCorrChess "Fjernsjakk" 0 {Åpne/lukke fjernsjakk-vinduet}

# Tools menu: TODO: snarveier
menuText O Tools "Verktøy" 0
menuText O ToolsAnalysis "Analysemotor..." 0 {Start/stopp en sjakkanalysemotor}
menuText O ToolsEmail "Epostbehandler" 0 {Åpne/lukk epostbehandlingsvinduet}
menuText O ToolsFilterGraph "Filtergraf" 7 {Åpne/lukk filtergrafvinduet}
menuText O ToolsAbsFilterGraph "Absolutt Filtergraf" 7 {Åpne/lukk filtergrafvinduet for absolutte verdier}
menuText O ToolsOpReport "Åpningsrapport" 0 {Lager en åpningsrapport for denne stillingen}
menuText O ToolsTracker "Brikkesporing"  0 {Åpne brikkesporingsvinduet}
menuText O ToolsTraining "Trening"  0 {Treningsverktøy (taktikk, åpninger...)}
menuText O ToolsComp "Turnering" 0 {Turnering mellom sjakkmotorer}
menuText O ToolsTacticalGame "Taktisk parti"  0 {Spill et parti med taktikker}
menuText O ToolsSeriousGame "Seriøst parti"  0 {Spill et seriøst parti mot en UCI-motor}
menuText O ToolsTrainTactics "Taktiske oppgaver"  0 {Løs taktiske oppgaver}
menuText O ToolsTrainCalvar "Regn på varianter"  0 {Trening i å bergegne varianter (Stoyko-øvelser)}
menuText O ToolsTrainFindBestMove "Finn beste trekk"  0 {Finn beste trekk}
menuText O ToolsTrainFics "Internet (FICS)"  0 {Spill på freechess.org}
menuText O ToolsBookTuning "Bokjustering" 0 {Finjuster åpningsbok}

menuText O ToolsMaint "Vedlikehold" 0 {Verktøy for å vedlikeholde Scid-databasen}
menuText O ToolsMaintWin "Vedlikeholdsvindu" 0 {Åpne/lukk Scids vedlikeholdsvindu}
menuText O ToolsMaintCompact "Komprimer database..." 0 {Sletter ubrukte partier og navn}
menuText O ToolsMaintClass "ECO-klassifiser partier..." 0 {Regn om ECO-koden for alle partier}
menuText O ToolsMaintSort "Sorter database..." 0 {Sorter alle partier i databasen}
menuText O ToolsMaintDelete "Slett duplikater..." 6 {Finner like partier og merker en av dem for sletting}
menuText O ToolsMaintTwin "Duplikatsjekkvindu" 1 {Åpne/oppdatere duplikatsjekkvinduet}
menuText O ToolsMaintNameEditor "Navneredigering" 5 {Åpne/lukk vinduet for navneredigering}
menuText O ToolsMaintNamePlayer "Kontroller spillere..." 0 {Sammenlign navn med stavekontroll-filen}
menuText O ToolsMaintNameEvent "Kontroller turneringer..." 11 {Sammenlign turneringer med stavekontroll-filen}
menuText O ToolsMaintNameSite "Kontroller stedsnavn..." 12 {Sammenlign stedsnavn med stavekontroll-filen}
menuText O ToolsMaintNameRound "Kontroller runde-navn..." 11 {Sammenlign rundenavn med stavekontroll-filen}
menuText O ToolsMaintFixBase "Reparer database" 0 {Prøver å reparere en ødelagt database}

menuText O ToolsConnectHardware "Koble til eksternt brett" 0 {Koble til eksternt brett}
menuText O ToolsConnectHardwareConfigure "Konfigurer..." 0 {Konfigurer tilkobling til eksternt brett}
menuText O ToolsConnectHardwareNovagCitrineConnect "Koble til Novag Citrine" 0 {Koble til Novag Citrine}
menuText O ToolsConnectHardwareInputEngineConnect "Koble til ekstern motor" 0 {Koble til ekstern motor (f.eks. DGT)}

menuText O ToolsPInfo "Spillerinformasjon"  0 \
  {Åpne/oppdater informasjonsvinduet for denne spilleren}
menuText O ToolsPlayerReport "Spiller-rapport" 0 \
  {Lag rapport om spiller}
menuText O ToolsRating "Ratinggraf" 0 \
  {Tegner ratingen til disse spillerene over tid}
menuText O ToolsScore "Poeng-graf" 0 {Viser poeng-grafen}
menuText O ToolsExpCurrent "Eksporter parti" 0 \
  {Skriv dette partiet til en tekstfil}
menuText O ToolsExpCurrentPGN "Eksporter parti til PGN-fil..." 0 \
  {Skriv dette partiet til en PGN-fil}
menuText O ToolsExpCurrentHTML "Eksporter parti til HTML fil..." 0 \
  {Skriv dette partiet til en HTML-fil}
menuText O ToolsExpCurrentHTMLJS "Eksporter parti til HTML/Javascript..." 0 {Skriv dette partiet som HTML/Javascript}
menuText O ToolsExpCurrentLaTeX "Eksporter partil til LaTeX fil..." 0 {Skriv dette partiet til en LaTeX-fil}
menuText O ToolsExpFilter "Eksporter alle partier i filteret" 0 \
  {Skriv alle partier i filteret til en tekstfil}
menuText O ToolsExpFilterPGN "Eksporter filter til PGN-fil..." 0 \
  {Skriv alle partier i filteret til en PGN-fil}
menuText O ToolsExpFilterHTML "Eksporter filter til HTML-fil..." 0 \
  {Skriv alle partier i filteret til en HTML-fil}
menuText O ToolsExpFilterHTMLJS "Eksporter filter til HTML/Javascript..." 0 {Lagre alle filtrerte partier til HTML/Javascript}
menuText O ToolsExpFilterLaTeX "Eksporter filter til LaTeX-fil..." 0 {Skriv alle partier i filteret til en LaTeX-fil}
# ====== TODO To be translated ======
menuText O ToolsExpFilterEPD "Export Filter to EPD/FEN" 17 {Write all filtered games to an EPD File}
menuText O ToolsExpFilterGames "Eksporter liste over partier som tekst" 0 {Lagrer en formatert liste over partiene}
menuText O ToolsImportOne "Importer ett PGN-parti..." 0 \
  {Importer ett parti fra en PGN-fil}
menuText O ToolsImportFile "Importer fil med PGN-partier..." 0 {Importer partier fra en PGN-fil}
menuText O ToolsStartEngine1 "Start motor 1" 0  {Start motor 1}
menuText O ToolsStartEngine2 "Start motor 2" 0  {Start motor 2}
menuText O ToolsScreenshot "Skjermbilde av brett" 0

# Play menue
menuText O Play "Spill" 0

# --- Correspondence Chess
menuText O CorrespondenceChess "Fjernsjakk" 0 {Funksjoner for epost- og Xfcc-basert fjernsjakk}
menuText O CCConfigure "Konfigurer..." 0 {Oppsett og innstillinger av eksterne verktøy}
menuText O CCConfigRelay "Følg partier..." 10 {Sett opp partier som skal følges}
menuText O CCOpenDB "Åpne database..." 0 {Åpne standard database for fjernsjakk}
menuText O CCRetrieve "Hent partier" 0 {Hent partier med Xfcc-hjelper}
menuText O CCInbox "Behandle innboks" 0 {Behandle alle filer i Scids innboks}
menuText O CCSend "Send trekk" 0 {Send ditt trekk via epost eller Xfcc}

menuText O CCResign "Gi opp" 0 {Gi opp (ikke via epost)}
menuText O CCClaimDraw "Krev remis" 0 {Send trekk og krev remis (ikke via epost)}
menuText O CCOfferDraw "Tilby remis" 0 {Send trekk og tilby remis (ikke via epost)}
menuText O CCAcceptDraw "Godta remis" 0 {Godta tilbytt remis (ikke via epost)}

menuText O CCNewMailGame "Nytt epost-parti..." 0 {Start nytt parti over epost}
menuText O CCMailMove "Send trekk..." 0 {Send trekk til motstander via epost}
menuText O CCGamePage "Parti-side..." 0 {Hent parti i nettleser}

# menu in cc window:
menuText O CCEditCopy "Kopier partiliste til utklippstavle" 0 {Kopier liste over partier til utklippstavle som CSV}




# Options menu: TODO: snarveier
menuText O Options "Innstillinger" 0
menuText O OptionsBoard "Sjakkbrett" 0 {Velg hvordan sjakkbrett skal se ut}
menuText O OptionsColour "Farge" 0 {Standard tekstfarge}
menuText O OptionsBackColour "Bakgrunn" 0 {Standard bakgrunnsfarge}
menuText O OptionsMainLineColour "Hovedlinje piler" 0 {}
menuText O OptionsVarLineColour "Variant piler" 0 {}
# ====== TODO To be translated ======
menuText O OptionsEngineLineColour "Engine Arrows" 0 {Engine arrows}
menuText O OptionsRowColour "Rader" 0 {}
menuText O OptionsSwitcherColour "Databasevelger" 0 {}
menuText O OptionsProgressColour "Fremdriftslinje" 0 {Standard farge for fremdriftslinje}
menuText O OptionsScoreColour "Poeng-graf" 0 {}
menuText O OptionsScoreBarColour "Gjeldene poeng-graf" 0 {}
menuText O OptionsNames "Mine spillernavn..." 0 {Rediger mine spillernavn}
menuText O OptionsExport "Eksport" 0 {Endre innstillinger for eksport av tekst}
menuText O OptionsFonts "Skrifttyper" 0 {Endre skrifttyper}
menuText O OptionsFontsRegular "Vanlig" 0 {Endre den vanlige skrifttypen}
menuText O OptionsFontsMenu "Meny" 0 {Velg skrifttype i menyer}
menuText O OptionsFontsSmall "Liten" 0 {Endre den lille skrifttypen}
menuText O OptionsFontsFixed "Fastbredde" 0 {Endre fastbreddeskrifttypen}
menuText O OptionsGInfo "Partiinformasjon" 0 {Informasjonsinnstillinger}
menuText O OptionsFics "FICS" 0
menuText O OptionsFicsAuto "Automatisk dronning" 0
# ====== TODO To be translated ======
menuText O OptionsFicsClk "Store klokker" 0
menuText O OptionsFicsColour "Tekstfarge" 0
menuText O OptionsFicsSize "Brettstørrelse" 0
menuText O OptionsFicsButtons "Brukerdefinerte knapper" 0
menuText O OptionsFicsCommands "Oppstartskommandoer" 0
menuText O OptionsFicsNoRes "Ingen resultater" 0
menuText O OptionsFicsNoReq "Ingen forespørsler" 0
menuText O OptionsFicsPremove "Tillat forhåndstrekk" 0

menuText O OptionsLanguage "Språk" 0 {Velg menyspråk}
menuText O OptionsMovesTranslatePieces "Oversett brikker" 0 {Oversett brikkenes første bokstav}
menuText O OptionsMovesHighlightLastMove "Marker siste trekk" 0 {Marker siste trekk}
menuText O OptionsMovesHighlightLastMoveDisplay "Vis" 0 {Vis markering av siste trekk}
menuText O OptionsMovesHighlightLastMoveWidth "Bredde" 0 {Tykkelse på linje}
menuText O OptionsMovesHighlightLastMoveColor "Farge" 0 {Farge på linje}
menuText O OptionsMovesColorSelected "Farge på valgt felt" 0 {Color move}
menuText O OptionsMoves "Trekk" 0 {Innstillinger for hvordan trekk angis}
menuText O OptionsMovesAsk "Spør før trekk erstattes" 0 \
  {Spør før eksisterende trekk erstattes av et nytt}
menuText O OptionsMovesAnimate "Animasjonslengde" 0 \
  {Angir tiden som brukes for å animere trekk}
menuText O OptionsMovesDelay "Autospillforsinkelse..." 0 \
  {Sett forsinkelsen ved automatisk gjennomgang av partiet}
menuText O OptionsMovesCoord "Koordinater" 0 \
  {Tillat angivelse av koordinater ("g1f3")}
menuText O OptionsShowVarPopup "Vis varianter-vindu" 0 {Skru vinduet med varianter av/på}
menuText O OptionsMovesSpace "Mellomrom etter trekknummer" 0 {Legg til mellomrom etter trekknummer}
menuText O OptionsMovesKey "Autofullfør" 0 \
  {Slå av/på autofullføriring av tastaturtrekk}
menuText O OptionsMovesShowVarArrows "Vis piler for varianter" 0 {Skru piler for varianter av/på}
menuText O OptionsNumbers "Tallformat" 0 {Angi tallformat}
menuText O OptionsStartup "Oppstart" 0 {Angi vinduer som skal åpne ved oppstart}
menuText O OptionsTheme "Tema" 0 {Endre utseende på grensesnitter}
menuText O OptionsWindows "Vinduer" 0 {Vindusinnstillinger}
menuText O OptionsWindowsIconify "Auto-minimer" 5 \
  {Minimerer alle vinduer sammen med hovedvinduet}
menuText O OptionsWindowsRaise "Autoheving" 0 \
  {Hever visse vinduer (fremdriftsvisere etc) når de er skjult}
menuText O OptionsSounds "Lyder..." 0 {Konfigurer lyder for trekk}
menuText O OptionsWindowsDock "Dokk vinduer" 0 {Dokk vinduer}
menuText O OptionsWindowsSaveLayout "Lagre layout" 0 {Lagre layout}
menuText O OptionsWindowsRestoreLayout "Gjenopprett layout" 0 {Gjenopprett layout}
menuText O OptionsWindowsShowGameInfo "Vis parti-informasjon" 0 {Vis parti-informasjon}
menuText O OptionsWindowsAutoLoadLayout "Hent første layout automatisk" 0 {Henter automatisk første layout ved oppstart}
menuText O OptionsWindowsAutoResize "Endre brettstørrelse automatisk" 0 {}
menuText O OptionsWindowsFullScreen "Fullskjerm" 0 {Skru fullskjerm av/på}
menuText O OptionsToolbar "Verktøylinje i hovedvindu" 0 {Vis/skjul menylinjen i hovedvinduet}
menuText O OptionsECO "Hent ECO-fil..." 0 {Henter filen med ECO-klassifiseringer}
menuText O OptionsSpell "Hent stavekontrollfil..." 0 \
  {Henter filen med stavekontrollen til Scid}
menuText O OptionsTable "Tabellbasekatalog..." 0 \
  {Velg en tabellbase; Alle tabellbaser i katalogen vil bli brukt}
menuText O OptionsRecent "Nylige filer..." 0 {Bestem hvor mange nylige filer som skal vises i fil-menyene}
menuText O OptionsBooksDir "Mappe med åpningsbøker..." 0 {Angir mappe med åpnignsbøker}
menuText O OptionsTacticsBasesDir "Mappe med oppgaver..." 0 {Angir mappe med taktiske oppgaver}
menuText O OptionsInformant "Kvalitetsverdier" 0
menuText O OptionsSave "Lagre innstillinger" 0 "Lagre alle instillinger til $::optionsFile"
menuText O OptionsSaveBases "Lagre baser som standard" 0 
menuText O OptionsAutoSave "Autolagre innstillinger ved avslutning" 0 \
  {Autolagre alle innstillinger når Scid avsluttes}

# Help menu: TODO: snarveier
menuText O Help "Hjelp" 0
menuText O HelpContents "Hjelp" 0 {Viser oversikten over hjelpe-systemet}
menuText O HelpIndex "Innhold" 0 {Hjelpesystemets innhold}
menuText O HelpGuide "Lynguide" 0 {Vis lynguiden}
menuText O HelpHints "Hint" 0 {Vis hint}
menuText O HelpContact "Kontaktinformasjon" 0 {Vis kontaktinformasjon}
menuText O HelpTip "Dagens tips" 0 {Vis et nyttig Scid-tips}
menuText O HelpStartup "Oppstartsvindu" 0 {Vis oppstartsvindu}
menuText O HelpAbout "Om Scid" 0 {Informasjon om Scid}

# Game info box popup menu:
menuText O GInfoHideNext "Skjul neste trekk" 0
menuText O GInfoShow "Side i trekket" 0
menuText O GInfoCoords "Vis koordinater" 0
menuText O GInfoMaterial "Vis kvalitet" 0
menuText O GInfoFEN "Vis FEN" 0
menuText O GInfoMarks "Vis fargede ruter og piler" 0
menuText O GInfoWrap "Tekstbryting" 0
menuText O GInfoFullComment "Vis full kommentar" 0
menuText O GInfoPhotos "Vis bilder" 4
menuText O GInfoTBNothing "Tabellbaser: ingenting" 0
menuText O GInfoTBResult "Tabellbaser: kun resultater" 0
menuText O GInfoTBAll "Tabellbaser: resultater og beste trekk" 0
menuText O GInfoDelete "Slett/gjenopprett dette partiet" 0
menuText O GInfoMark "(Av)Merk dette partiet" 0
menuText O GInfoMenuBar "Menylinje"  0
menuText O GInfoToolBar "Verktøylinje"  0
menuText O GInfoButtonBar "Knapperad"  0
menuText O GInfoStatusBar "Statuslinje"  0

translate O FlipBoard {Snu brettet}
translate O RaiseWindows {Vinduer til forgrunnen}
translate O AutoPlay {Spill automatisk}
translate O TrialMode {Prøvemodus}
translate O KeepOpen {Åpne ved oppstart}

# General buttons:
translate O Apply {Bruk}
translate O Back {Tilbake}
translate O Browse {Bla gjennom}
translate O Cancel {Avbryt}
translate O Continue {Fortsett}
translate O Clear {Slett}
translate O Close {Lukk}
translate O Contents {Innhold}
translate O Defaults {Standard}
translate O Delete {Slett}
translate O Graph {Graf}
translate O Help {Hjelp}
translate O Import {Importer}
translate O Index {Innhold}
translate O LoadGame {Hent parti}
translate O BrowseGame {Bla gjennom parti}
translate O MergeGame {Smelt parti}
translate O MergeGames {Flett partier}

translate O Preview {Forhåndsvis}
translate O Revert {Gjør om}
translate O Save {Lagre}
translate O DontSave {Ikke lagre}
translate O Search {Søk}
translate O Stop {Stopp}
translate O Store {Lagre}
translate O Update {Oppdater}
translate O ChangeOrient {Vend vindu}
translate O ShowIcons {Vis ikoner}
translate O ConfirmCopy {Bekreft kopiering}
translate O None {Ingen}
translate O First {Første}
translate O Current {Gjeldende}
translate O Last {Siste}
translate O Font {Font}
translate O Change {Endre}
translate O Random {Tilfeldig}

# General messages:
translate O game {parti}
translate O games {partier}
translate O move {trekk}
translate O moves {trekk}
translate O all {alle}
translate O Yes {Ja}
translate O No {Nei}
translate O Both {Begge}
translate O King {Konge}
translate O Queen {Dronning}
translate O Rook {Tårn}
translate O Bishop {Løper}
translate O Knight {Springer}
translate O Pawn {Bonde}
translate O White {Hvit}
translate O Black {Sort}
translate O Player {Spiller}
translate O Rating {Rating}
translate O RatingDiff {Ratingforskjell (Hvit - Sort)}
translate O AverageRating {Middels rating}
translate O Event {Turnering}
translate O Site {Sted}
translate O Country {Land}
translate O IgnoreColors {Overse farger}
translate O MatchEnd {Kun sluttstilling}
translate O Date {Dato}
translate O EventDate {Turneringsdato}
translate O Decade {Tiår}
translate O Year {År}
translate O Month {Måned}
translate O Months {Januar Februar Mars April Mai Juni Juli August September Oktober November Desember}
translate O Days {Søn Man Tir Ons Tor Fre Lør}
translate O YearToToday {Året til i dag}
translate O Result {Utfall}
translate O Round {Runde}
translate O Length {Lengde}
translate O ECOCode {ECO-kode}
translate O ECO {ECO}
translate O Deleted {Slettet}
translate O SearchResults {Søk i resultater}
translate O OpeningTheDatabase {Åpningsdatabase}
translate O Database {Database}
translate O Filter {Filter}
translate O Reset {Nullstill}
translate O IgnoreCase {Bland store/små bokstaver}
translate O noGames {ingen partier}
translate O allGames {alle partier}
translate O empty {tom}
translate O clipbase {utklippsbase}
translate O score {poeng}
translate O Start {Start}
translate O StartPos {Utgangsstilling}
translate O Total {Sammenlagt}
translate O readonly {skrivebeskyttet}
translate O altered {endret}
translate O tagsDescript {Ekstra tagger (f.eks.: Annotator "Anand")}
translate O prevTags {Bruk forrige}

# Standard error messages:
translate O ErrNotOpen {Dette er ikke en åpnet database.}
translate O ErrReadOnly {Database kan kun leses, ikke endres.}
translate O ErrSearchInterrupted {Søk ble avbrutt, resultater er ufullstendige.}

# Game information:
translate O twin {duplikat}
translate O deleted {slettet}
translate O comment {kommentar}
translate O hidden {skjult}
translate O LastMove {Siste trekk}
translate O NextMove {Neste}
translate O GameStart {Begynnelse på parti}
translate O LineStart {Begynnelse på linje}
translate O GameEnd {Slutt på parti}
translate O LineEnd {Slutt på linje}

# Player information:
translate O PInfoAll {alle partier}
translate O PInfoFilter {partier i filteret}
translate O PInfoAgainst {Resultater mot}
translate O PInfoMostWhite {Hyppigste åpning som hvit}
translate O PInfoMostBlack {Hyppigste åpning som sort}
translate O PInfoRating {Historisk rating}
translate O PInfoBio {Biografi}
translate O PInfoEditRatings {Rediger ratinger}
translate O PinfoEditName {Endre navn}
translate O PinfoLookupName {Slå opp navn}

# Tablebase information:
translate O Draw {Remis}
translate O stalemate {patt}
translate O checkmate {matt}
translate O withAllMoves {med alle trekk}
translate O withAllButOneMove {med alle trekk unntatt ett}
translate O with {med}
translate O only {kun}
translate O lose {tap}
translate O loses {taper}
translate O allOthersLose {alle andre taper}
translate O matesIn {setter matt i}
translate O longest {lengste}
translate O WinningMoves {Vinnende trekk}
translate O DrawingMoves {Trekk som gir remis}
translate O LosingMoves {Tapende trekk}
translate O UnknownMoves {Trekk med ukjent resultat}

# Tip of the day:
translate O Tip {Tips}
translate O TipAtStartup {Tips ved oppstart}

# Tree window menus:
menuText O TreeFile "Fil" 0
menuText O TreeFileFillWithBase "Fyll mellomlager fra database" 0 {Fyll mellomlageret med partier fra denne databasen}
menuText O TreeFileFillWithGame "Fyll mellomlager med parti" 0 {Fyll mellomlageret med dette partiet}
menuText O TreeFileCacheInfo "Mellomlager info" 0 {Vis informasjon om bruk av mellomlager}
menuText O TreeFileSave "Lagre mellomlager" 0 {Lagrer mellomlagerfilen (.stc)}
menuText O TreeFileFill "Fyll mellomlager" 0 \
  {Fyller hurtigbufferet med de hyppigste åpningsstillingene}
menuText O TreeFileBest "Idealparti" 0 {Show the best tree games list}
menuText O TreeFileGraph "Grafikk" 0 {Vis grafen for denne grenen av treet}
menuText O TreeFileCopy "Kopier treet til utklippstavlen" 0 \
  {Kopier statistikken for treet til utklippstavlen}
menuText O TreeFileClose "Lukk trevindu" 0 {Lukker trevinduet}
menuText O TreeMask "Maske" 0
menuText O TreeMaskNew "Ny" 0 {Ny maske}
menuText O TreeMaskOpen "Åpne" 0 {Åpne maske}
menuText O TreeMaskOpenRecent "Åpne nylig" 0 {Åpne nylig maske}
menuText O TreeMaskSave "Lagre" 0 {Lagre maske}
menuText O TreeMaskClose "Lukk" 0 {Lukk maske}
menuText O TreeMaskFillWithLine "Fyll med linje" 0 {Legg alle trekk hittil i masken}
menuText O TreeMaskFillWithGame "Fyll med parti" 0 {Legg hele partiet i masken}
menuText O TreeMaskFillWithBase "Fyll med base" 0 {Legg alle partier i databasen i masken}
menuText O TreeMaskInfo "Info" 0 {Vis statistikk for denne masken}
menuText O TreeMaskDisplay "Vis maskekart" 0 {Viser tre med data fra masken}
menuText O TreeMaskSearch "Søk" 0 {Søk i denne masken}
menuText O TreeSort "Sorter" 0
menuText O TreeSortAlpha "Alfabetisk" 0
menuText O TreeSortECO "ECO-kode" 0
menuText O TreeSortFreq "Hyppighet" 0
menuText O TreeSortScore "Poeng" 0
menuText O TreeOpt "Innstillinger" 0
menuText O TreeOptSlowmode "Treg modus" 0 {Oppdaterer tregere, men mer nøyaktig}
menuText O TreeOptFastmode "Rask modus" 0 {Oppdaterer raskere, men uten transponeringer}
menuText O TreeOptFastAndSlowmode "Rask og treg modus" 0 {Rask modus, og så treg oppdatering}
menuText O TreeOptStartStop "Oppdater automatisk" 0 {Angir om treet skal oppdateres automatisk}
menuText O TreeOptLock "Lås" 0 {Låser treet til nåværende database}
menuText O TreeOptTraining "Trening" 0 {Slår av/på treningsmodus}
menuText O TreeOptShort "Kort visning" 0 {Ikke vis ELO-informasjon}
menuText O TreeOptAutosave "Autolagre hurtigbuffer" 0 {Autolagrer hurtigbufferet når vinduet lukkes}
menuText O TreeOptAutomask "Åpne maske automatisk" 0 "Åpner siste maske med et åpent tre."
menuText O TreeOptCacheSize "Mellomlager" 0 {Størrelse på mellomlager}
menuText O TreeOptShowBar "Vis fremdrift" 0 "Viser fremdrift."
# ====== TODO To be translated ======
menuText O TreeOptShowFrame "Show Button Bar" 0 "Show tree button bar."
menuText O TreeOptSortBest "Sorter beste partier" 0 "Sorter beste partier etter ELO."
menuText O TreeHelp "Hjelp" 0
menuText O TreeHelpTree "Tre hjelp" 0
menuText O TreeHelpIndex "Innholdsfortegnelse" 0
translate O SaveCache {Lagre hurtigbuffer}
translate O Training {Trening}
translate O LockTree {Lås}
translate O TreeLocked {låst}
translate O TreeBest {Beste}
translate O TreeBestGames {Beste partier}
translate O TreeAdjust {Juster filter}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate O TreeTitleRow      {    Trekk     Hyppighet    Score Remis Elo   Prst År     ECO}
translate O TreeTitleRowShort {    Trekk     Hyppighet    Score Remis}
translate O TreeTotal: {SAMMENLAGT:}
translate O DoYouWantToSaveFirst {Vil du lagre}
translate O AddToMask {Legg til maske}
translate O RemoveFromMask {Fjern fra maske}
translate O AddThisMoveToMask {Legg trekk til maske}
translate O SearchMask {Søk i maske}
translate O DisplayMask {Vis maske}
translate O Nag {Kvalitet}
translate O Marker {Markør}
translate O Include {Inkluder}
translate O Exclude {Eksluder}
translate O MainLine {Hovedvariant}
translate O Bookmark {Bokmerk}
translate O NewLine {Ny linje}
translate O ToBeVerified {Skal sjekkes}
translate O ToTrain {Skal trenes}
translate O Dubious {Unøyaktig}
translate O ToRemove {Skal fjernes}
translate O NoMarker {Ingen markør}
translate O ColorMarker {Farge}
translate O WhiteMark {Hvit}
translate O GreenMark {Grønn}
translate O YellowMark {Gul}
translate O BlueMark {Blå}
translate O RedMark {Rød}
translate O CommentMove {Kommenter trekk}
translate O CommentPosition {Kommenter stilling}
translate O AddMoveToMaskFirst {Legg trekk til masken først}
translate O OpenAMaskFileFirst {Åpne en maskefil først}
# ====== TODO To be translated ======
translate O positions {positions}
translate O Moves {Trekk}

# Finder window:
menuText O FinderFile "Fil" 0
menuText O FinderFileSubdirs "Let i underkataloger" 0
menuText O FinderFileClose "Lukk søkevindu" 0
menuText O FinderSort "Sorter" 0
menuText O FinderSortType "Type" 0
menuText O FinderSortSize "Størrelse" 0
menuText O FinderSortMod "Endret" 0
menuText O FinderSortName "Navn" 0
menuText O FinderSortPath "Sti" 0
menuText O FinderTypes "Typer" 0
menuText O FinderTypesScid "Scid-databaser" 0
menuText O FinderTypesOld "Scid-databaser i gammelt format" 0
menuText O FinderTypesPGN "PGN-filer" 0
menuText O FinderTypesEPD "EPD-filer" 0
menuText O FinderHelp "Hjelp" 0
menuText O FinderHelpFinder "Søkehjelp" 0
menuText O FinderHelpIndex "Innholdsfortegnelse" 0
translate O FileFinder {Søkeverktøy}
translate O FinderDir {Katalog}
translate O FinderDirs {Kataloger}
translate O FinderFiles {Filer}
translate O FinderUpDir {opp}
translate O FinderCtxOpen {Åpne}
translate O FinderCtxBackup {Sikkerhetskopi}
translate O FinderCtxCopy {Kopier}
translate O FinderCtxMove {Flytt}
translate O FinderCtxDelete {Slett}
# ====== TODO To be translated ======
translate O FinderDirOpen {Open Directory}

# Player finder:
menuText O PListFile "Fil" 0
menuText O PListFileUpdate "Oppdater" 0
menuText O PListFileClose "Lukk spillersøk" 0
menuText O PListSort "Sorter" 0
menuText O PListSortName "Navn" 0
menuText O PListSortElo "Elo" 0
menuText O PListSortGames "Partier" 0
menuText O PListSortOldest "Eldste" 0
menuText O PListSortNewest "Nyeste" 0

# Tournament finder:
menuText O TmtFile "Fil" 0
menuText O TmtFileUpdate "Oppdater" 0
menuText O TmtFileClose "Lukk turneringssøker" 0
menuText O TmtSort "Sorter" 0
menuText O TmtSortDate "Dato" 0
menuText O TmtSortPlayers "Players" 0
menuText O TmtSortGames "Partier" 0
menuText O TmtSortElo "Elo" 0
menuText O TmtSortSite "Sted" 0
menuText O TmtSortEvent "Turnering" 1
menuText O TmtSortWinner "Vinner" 0
translate O TmtLimit "Listegrense"
translate O TmtMeanElo "Laveste middel-ELO"
translate O TmtNone "Ingen passende turneringer funnet."

# Graph windows:
menuText O GraphFile "Fil" 0
menuText O GraphFileColor "Lagre som farget PostScript..." 0
menuText O GraphFileGrey "Lagre som gråtonet PostScript..." 0
menuText O GraphFileClose "Lukk vindu" 0
menuText O GraphOptions "Innstillinger" 0
menuText O GraphOptionsWhite "Hvit" 0
menuText O GraphOptionsBlack "Sort" 0
menuText O GraphOptionsDots "Vis punkter" 0
menuText O GraphOptionsBar "Marker gjeldende trekk" 0
menuText O GraphOptionsBoth "Begge" 0
menuText O GraphOptionsPInfo "Spiller Info spiller" 0
translate O GraphFilterTitle "Filtergraf: hyppighet per 1000 partier"
translate O GraphAbsFilterTitle "Filtergraf: forekomster av partier"
translate O ConfigureFilter {Konfigurer X-akse}
translate O FilterEstimate "Anslag"
translate O TitleFilterGraph "Scid: Filtergraf"

# Analysis window:
translate O AddVariation {Legg til variant}
translate O AddAllVariations {Legg til alle varianter}
translate O AddMove {Legg til trekk}
translate O Annotate {Annoter}
translate O ShowAnalysisBoard {Vis analysebrett}
translate O ShowInfo {Vis info om motor}
translate O FinishGame {Fullfør parti}
translate O StopEngine {Stopp motor}
translate O StartEngine {Start motor}
translate O ExcludeMove {Eksluder trekk}
translate O LockEngine {Lås motor til denne stillingen}
translate O AnalysisCommand {Analysekommando}
translate O PreviousChoices {Tidligere valg}
translate O AnnotateTime {Tid mellom trekk i sekunder}
translate O AnnotateWhich {Legg til variasjoner}
translate O AnnotateAll {For trekk av begge sider}
translate O AnnotateAllMoves {Annoter alle trekk}
translate O AnnotateWhite {Kun for hvite trekk}
translate O AnnotateBlack {Kun for sorte trekk}
translate O AnnotateNotBest {Når trekket avviker fra beste linje}
translate O AnnotateBlundersOnly {Når trekket er en åpenbar bukk}
translate O BlundersNotBest {Bukk/ikke best}
translate O AnnotateTitle {Konfigurer annotasjon}
translate O AnnotateMissedMates {Mistet/kortere matt}
translate O BlundersThreshold {Grense}
translate O ScoreFormat {Score-format}
translate O CutOff {Cut Off}
translate O LowPriority {Lav CPU-prioritet}
translate O LogEngines {Loggstørrelse}
translate O LogName {Legg til navn}
translate O MaxPly {Maks halvtrekk}
translate O ClickHereToSeeMoves {Klikk her for å se trekk}
translate O ConfigureInformant {Angi kvalitetsverdier} ;
translate O Informant!? {Interessant trekk}
translate O Informant? {Dårlig trekk}
translate O Informant?? {Bukk}
translate O Informant?! {Unøyaktig trekk}
translate O Informant+= {Hvit står noe bedre}
translate O Informant+/- {Hvit står bedre}
translate O Informant+- {Hvit står betraktelig bedre}
translate O Informant++- {Partiet anses som vunnet}

# Book window
translate O Book {Bok}
translate O OtherBook {Andre trekk}
translate O Alphabetical {Alfabetisk}
translate O TwoBooks {To bøker}

# Analysis Engine open dialog:
translate O EngineList {Liste over analysemotorer}
translate O EngineKey {Tast}
translate O EngineType {Type}
translate O EngineName {Navn}
translate O EngineCmd {Kommandolinje}
translate O EngineArgs {Parametre}
translate O EngineDir {Katalog}
translate O EngineElo {Elo}
translate O EngineTime {Dato}
translate O EngineNew {Ny}
translate O EngineEdit {Rediger}
translate O EngineRequired {Fete felter er nødvendige, de øvrige er valgfrie}

# Stats window menus:
menuText O StatsFile "Fil" 0
menuText O StatsFilePrint "Skriv til fil..." 0
menuText O StatsFileClose "Lukk vindu" 0
menuText O StatsOpt "Innstillinger" 0

# PGN window menus:
menuText O PgnFile "Fil" 0
menuText O PgnFileCopy "Kopier parti til utklippstavle" 0
menuText O PgnFilePrint "Skriv til fil..." 0
menuText O PgnFileClose "Lukk PGN-vindu" 0
menuText O PgnOpt "Vis" 0
menuText O PgnOptColor "Vis farger" 0
menuText O PgnOptShort "Kort (3 linjer) header" 0
menuText O PgnOptSymbols "Symbolnotasjon" 0
menuText O PgnOptIndentC "Rykk inn kommentarer" 0
menuText O PgnOptIndentV "Rykk inn variasjoner" 0
menuText O PgnOptColumn "Bruk kolonner (ett trekk per linje)" 0
menuText O PgnOptSpace "Mellomrom etter trekknummer" 0
menuText O PgnOptStripMarks "Fjern fargekoder" 0
menuText O PgnOptChess "Sjakkbrikker" 0
menuText O PgnOptScrollbar "Rullefelt" 0
menuText O PgnOptBoldMainLine "Fet skrift på hovedlinje" 0
menuText O PgnColor "Farger" 0
menuText O PgnColorHeader "Header..." 0
menuText O PgnColorAnno "Annotasjoner..." 0
menuText O PgnColorComments "Kommentarer..." 0
menuText O PgnColorVars "Variasjoner..." 0
menuText O PgnColorBackground "Bakgrunn..." 0
menuText O PgnColorMain "Hovedlinje..." 0
menuText O PgnColorCurrent "Bakgrunn på gjeldende trekk..." 1
menuText O PgnColorNextMove "Bakgrunn på neste trekk..." 0
menuText O PgnHelp "Hjelp" 0
menuText O PgnHelpPgn "PGN-hjelp" 0
menuText O PgnHelpIndex "Innholdsfortegnelse" 0
translate O PgnWindowTitle {PGN: parti %u}

# Crosstable window menus:
menuText O CrosstabFile "Fil" 0
menuText O CrosstabFileText "Skriv til tekstfil..." 0
menuText O CrosstabFileHtml "Skriv til HTML-fil..." 0
menuText O CrosstabFileLaTeX "Skriv til LaTeX-fil..." 0
menuText O CrosstabFileClose "Lukk krysstabellvindu" 0
menuText O CrosstabEdit "Rediger" 0
menuText O CrosstabEditEvent "Turnering" 0
menuText O CrosstabEditSite "Sted" 0
menuText O CrosstabEditDate "Dato" 0
menuText O CrosstabOpt "Vis" 0
menuText O CrosstabOptColorPlain "Ren tekst" 0
menuText O CrosstabOptColorHyper "Hypertekst" 0
menuText O CrosstabOptTieWin "Kvalitet: partier vunnet" 0
menuText O CrosstabOptTieHead "Kvalitet: innbyrdes oppgjør" 0
menuText O CrosstabOptThreeWin "3 poeng for seier" 1
menuText O CrosstabOptAges "Aldre i år" 0
menuText O CrosstabOptNats "Nasjonaliteter" 0
menuText O CrosstabOptTallies "Seier/tap/remis" 0
menuText O CrosstabOptRatings "Ratinger" 0
menuText O CrosstabOptTitles "Titler" 0
menuText O CrosstabOptBreaks "Poengfordel" 0
menuText O CrosstabOptDeleted "Inkluder slettede partier" 0
menuText O CrosstabOptColors "Farger (kun sveitsisk)" 0
menuText O CrosstabOptColorRows "Fargede rader" 0
menuText O CrosstabOptRowsColor "Rader i krysstabell" 0 {}
menuText O CrosstabOptColumnNumbers "Nummererte kolonner (kun alle-mot-alle-tabeller)" 0
menuText O CrosstabOptGroup "Gruppepoeng" 0
menuText O CrosstabSort "Sorter" 0
menuText O CrosstabSortName "Navn" 0
menuText O CrosstabSortRating "Rating" 0
menuText O CrosstabSortScore "Poeng" 0
menuText O CrosstabSortCountry "Land" 0
menuText O CrosstabType "Format" 0
menuText O CrosstabTypeAll "Berger" 0
menuText O CrosstabTypeSwiss "Sveitsisk" 0
menuText O CrosstabTypeKnockout "Kun vinnere" 0
menuText O CrosstabTypeAuto "Auto" 0
menuText O CrosstabHelp "Hjelp" 0
menuText O CrosstabHelpCross "Krysstabell hjelp" 0
menuText O CrosstabHelpIndex "Innholdsfortegnelse" 0
translate O SetFilter {Sett filter}
translate O AddToFilter {Legg til i filter}
translate O Swiss {Sveitsisk}
translate O Category {Kategori}

# Opening report window menus:
menuText O OprepFile "Fil" 0
menuText O OprepFileText "Skriv til tekstfil..." 0
menuText O OprepFileHtml "Skriv til HTML-fil..." 0
menuText O OprepFileLaTeX "Skriv til LaTeX-fil..." 0
menuText O OprepFileOptions "Innstillinger..." 0
menuText O OprepFileClose "Lukk rapport-vindu" 0
menuText O OprepFavorites "Favoritter" 0
menuText O OprepFavoritesAdd "Legg til rapport..." 0
menuText O OprepFavoritesEdit "Rediger favorittrapporter..." 0
menuText O OprepFavoritesGenerate "Generer rapporter..." 0
menuText O OprepHelp "Hjelp" 0
menuText O OprepHelpReport "Åpningsrapport hjelp" 0
menuText O OprepHelpIndex "Innholdsfortegnelse" 0

# Header search:
translate O HeaderSearch {Headersøk}
translate O EndSideToMove {Farge i trekket ved partiets slutt}
translate O GamesWithNoECO {Partier uten ECO?}
translate O GameLength {Partilengde}
translate O FindGamesWith {Finn partier merket med...}
translate O StdStart {Vanlig utgangsstilling}
translate O Promotions {Bondeforvandlinger}
translate O UnderPromo {Under-forvandling}
translate O Comments {Kommentarer}
translate O Variations {Variasjoner}
translate O Annotations {Annotasjoner}
translate O DeleteFlag {Slettet}
translate O WhiteOpFlag {Hvit åpning}
translate O BlackOpFlag {Sort åpning}
translate O MiddlegameFlag {Midtspill}
translate O EndgameFlag {Sluttspill}
translate O NoveltyFlag {Avvik}
translate O PawnFlag {Bondestruktur}
translate O TacticsFlag {Taktikk}
translate O QsideFlag {Spill på dronningsiden}
translate O KsideFlag {Spill på kongesiden}
translate O BrilliancyFlag {Brillians}
translate O BlunderFlag {Tabbe}
translate O UserFlag {Bruker}
translate O PgnContains {PGN inneholder tekst}
translate O PreComment {Kommentar før partiet}
translate O PostComment {Slutt-kommentar}

# Game list window:
translate O GlistNumber {Nummer}
translate O GlistWhite {Hvit}
translate O GlistBlack {Sort}
translate O GlistWElo {H-Elo}
translate O GlistBElo {S-Elo}
translate O GlistEvent {Turnering}
translate O GlistSite {Sted}
translate O GlistRound {Runde}
translate O GlistDate {Dato}
translate O GlistYear {År}
translate O GlistEventDate {TurneringsDato}
translate O GlistResult {Resultat}
translate O GlistLength {Lengde}
translate O GlistCountry {Land}
translate O GlistECO {ECO}
translate O GlistOpening {Trekk}
translate O GlistEndMaterial {Slutt-kvalitet}
translate O GlistDeleted {Slettet}
translate O GlistFlags {Flagg}
translate O GlistVariations {Variasjoner}
translate O GlistComments {Kommentarer}
translate O GlistAnnos {Annotasjoner}
translate O GlistStart {Start}
translate O GlistGameNumber {Parti nummer}
translate O GlistFindText {Finn tekst}
translate O GlistMoveField {Trekk}
translate O GlistEditField {Still inn}
translate O GlistAddField {Legg til}
translate O GlistDeleteField {Slett}
translate O GlistColor {Farge}
translate O GlistSort {Sorter database}

# menu shown with right mouse button down on game list. 
translate O GlistRemoveThisGameFromFilter  {Fjern}
translate O GlistRemoveGameAndAboveFromFilter  {Fjern alle over}
translate O GlistRemoveGameAndBelowFromFilter  {Fjern alle under}
translate O GlistDeleteGame {(Angre) Sletting av partiet} 
translate O GlistDeleteAllGames {Slett alle partier i filteret}
translate O GlistUndeleteAllGames {Gjenopprett alle partier i filteret}

translate O GlistAlignL {Venstrejuster}
translate O GlistAlignR {Høyrejuster}
translate O GlistAlignC {Sentrer}

# Maintenance window:
translate O DatabaseName {Databasenavn:}
translate O TypeIcon {Ikon}
translate O NumOfGames {Partier:}
translate O NumDeletedGames {Slettede partier:}
translate O NumFilterGames {Partier i filter:}
translate O YearRange {Til/fra år:}
translate O RatingRange {Til/fra rating:}
translate O Description {Beskrivelse}
translate O Flag {Flagg}
translate O CustomFlags {Egne flagg}
translate O DeleteCurrent {Slett gjeldende parti}
translate O DeleteFilter {Slett filtrerte partier}
translate O DeleteAll {Slett alle partier}
translate O UndeleteCurrent {Gjenopprett gjeldende parti}
translate O UndeleteFilter {Gjenopprett filtrerte partier}
translate O UndeleteAll {Gjenopprett alle partier}
translate O DeleteTwins {Slett duplikatpartier}
translate O MarkCurrent {Merk gjeldende parti}
translate O MarkFilter {Merk filtrerte partier}
translate O MarkAll {Merk alle partier}
translate O UnmarkCurrent {Fjern merking på gjeldende parti}
translate O UnmarkFilter {Fjern merking på filtrerte partier}
translate O UnmarkAll {Fjern merking på alle partier}
translate O Spellchecking {Stavekontroll}
translate O MakeCorrections {Utfør rettelser}
translate O Ambiguous {Tvetydig}
translate O Surnames {Etternavn}
translate O Players {Spillere}
translate O Events {Turneringer}
translate O Sites {Steder}
translate O Rounds {Runder}
translate O DatabaseOps {Databasebehandling}
translate O ReclassifyGames {ECO-klassifiser partier}
translate O CompactDatabase {Komprimer database}
translate O SortDatabase {Sorter database}
translate O AddEloRatings {Legg til ELO-ratinger}
translate O AutoloadGame {Start med parti nummer}
translate O StripTags {Fjern PGN-merker}
translate O StripTag {Fjern merke}
translate O CheckGames {Sjekk partier}
translate O Cleaner {Opprydding}
translate O CleanerHelp {
Scid-opprydding vil utføre alle handlinger du velger fra listen under på gjeldende database.

Gjeldende innstillinger i ECO-klassifiseringen og duplikatslettingdialogene vil virke inn om du velger disse funksjonene.
}
translate O CleanerConfirm {
Når oppryddingen er i gang kan den ikke avbrytes!

Dette kan ta lang tid på en stor databse, avhengig av funksjonene du har valgt og disses gjeldende innstillinger.

Er du sikker på at du vil starte vedlikeholdsfunksjonene du har valgt?
}
# Twinchecker
translate O TwinCheckUndelete {for å snu)}
translate O TwinCheckprevPair {Forrige par}
translate O TwinChecknextPair {Neste par}
translate O TwinChecker {Tvillingsøk}
translate O TwinCheckTournament {Partier i turnering:}
translate O TwinCheckNoTwin {Ingen par}
translate O TwinCheckNoTwinfound {Ingen duplikat ble funnet til dette partiet.\nFor å vise duplikater i dette vinduet må du først bruke Duplikatsjekk-funskjonen. }
translate O TwinCheckTag {Del tagger...}
translate O TwinCheckFound1 {Scid fant $result duplikater}
translate O TwinCheckFound2 { og markerte dem som slettet}
translate O TwinCheckNoDelete {Ingen partier skal slettes i denne databasen.}
# bug here... can't use \n\n
translate O TwinCriteria1 {Advarsel: Svake kriterier\n}
translate O TwinCriteria2 {Du har angitt "Nei" for "Samme trekk", som kan være farlig.\n
Fortsett likevel?}
translate O TwinCriteria3 {Du bør angi "Ja" på minst to av "Samme sted", "Samme runde" og "Samme år".\n
Fortsett likevel?}
translate O TwinCriteriaConfirm {Scid: Bekreft duplikat-innstillinger}
translate O TwinChangeTag "Endre disse taggene:\n\n"
translate O AllocRatingDescription "Legger spilleres ratinger på relevante partier, med informasjon fra stave-/rating-filen."
translate O RatingOverride "Overskrive eksisterende ratinger?"
translate O AddRatings "Legg til ratinger på:"
translate O AddedRatings {Scid la $r ratinger til $g partier.}

#Bookmark editor
translate O NewSubmenu "New submenu"

# Comment editor:
translate O AnnotationSymbols  {Notasjonssymboler:}
translate O Comment {Kommentar:}
translate O InsertMark {Sett inn merke}
translate O InsertMarkHelp {
Sett inn merke: Velg farge, type, felt.
Sett inn pil: Høyre-klikk to felter.
}

# Nag buttons in comment editor:
translate O GoodMove {Bra trekk}
translate O PoorMove {Dårlig trekk}
translate O ExcellentMove {Utmerket trekk}
translate O Blunder {Bukk}
translate O InterestingMove {Interessant trekk}
translate O DubiousMove {Unøyaktig trekk}
translate O WhiteDecisiveAdvantage {Hvit står klart bedre}
translate O BlackDecisiveAdvantage {Sort står klart bedre}
translate O WhiteClearAdvantage {Hvit står bedre}
translate O BlackClearAdvantage {Sort står bedre}
translate O WhiteSlightAdvantage {Hvit står noe bedre}
translate O BlackSlightAdvantage {Sort står noe bedre}
translate O Equality {Jevnt}
translate O Unclear {Uklart}
translate O Diagram {Diagram}

# Board search:
translate O BoardSearch {Stillingsøk}
translate O FilterOperation {Operasjoner på gjeldende filter:}
translate O FilterAnd {AND (Kun på filter)}
translate O FilterOr {OR (Legg til filter)}
translate O FilterIgnore {IGNORE (Nullstill filter)}
translate O SearchType {Søketype:}
translate O SearchBoardExact {Nøyaktig stilling (alle brikker på samme felt)}
translate O SearchBoardPawns {Bønder (samme kvalitet, alle bønder på samme felt)}
translate O SearchBoardFiles {Kolonner (samme kvalitet, alle bønder på samme kolonner)}
translate O SearchBoardAny {Alle (samme kvalitet, bønder og brikker hvor som helst)}
translate O SearchInRefDatabase { Søk i base }
translate O LookInVars {Søk i varianter}

translate O CQLLabel {CQL skript}
translate O CQLComments {Tillat kommentarer}
translate O CQLStrip {Fjern matchende kommentarer}

# Material search:
translate O MaterialSearch {Kvalitetssøk}
translate O Material {Kvalitet}
translate O Patterns {Mønstre}
translate O Zero {Null}
translate O Any {Alle}
translate O CurrentBoard {Gjeldende stilling}
translate O CommonEndings {Vanlige sluttspill}
translate O CommonPatterns {Vanlige mønstre}
translate O MaterialDiff {Kvalitetsforskjell}
translate O squares {felt}
translate O SameColor {Samme farge}
translate O OppColor {Motsatt farge}
translate O Either {Begge}
translate O MoveNumberRange {Fra/til trekk nummer}
translate O MatchForAtLeast {Treff i minst}
translate O HalfMoves {halvtrekk}

# Common endings in material search:
translate O EndingPawns {Bondesluttspill}
translate O EndingRookVsPawns {Tårn mot bonde/bønder}
translate O EndingRookPawnVsRook {Tårn og bonde mot tårn}
translate O EndingRookPawnsVsRook {Tårn og bønder mot tårn}
translate O EndingRooks {Tårn mot tårn}
translate O EndingRooksPassedA {Tårn mot tårn med fribonde på a}
translate O EndingRooksDouble {Doble tårnsluttspill}
translate O EndingBishops {Løper mot løper}
translate O EndingBishopVsKnight {Løper mot springer}
translate O EndingKnights {Springer mot springer}
translate O EndingQueens {Dronning mot dronning}
translate O EndingQueenPawnVsQueen {Dronning og bonde mot dronning}
translate O BishopPairVsKnightPair {Midtspill med to løpere mot to springere}

# Common patterns in material search:
translate O PatternWhiteIQP {Hvit IDB}
translate O PatternWhiteIQPBreakE6 {Hvit IDB: d4-d5-brudd mot e6}
translate O PatternWhiteIQPBreakC6 {Hvit IDB: d4-d5-brudd mot c6}
translate O PatternBlackIQP {Sort IDB}
translate O PatternWhiteBlackIQP {Hvit IDB mot sort IDB}
translate O PatternCoupleC3D4 {Hvit c3+d4 isolerte bønder}
translate O PatternHangingC5D5 {Sorte løse bønder på c5 og d5}
translate O PatternMaroczy {Maroczy-senter (bønder på c4 og e4)}
translate O PatternRookSacC3 {Tårnoffer på c3}
translate O PatternKc1Kg8 {O-O-O mot O-O (Kc1 mot Kg8)}
translate O PatternKg1Kc8 {O-O mot O-O-O (Kg1 mot Kc8)}
translate O PatternLightFian {Fianchetto på lyse felt (Lg2 mot Lb7)}
translate O PatternDarkFian {Fianchetto på mørke felt (Lb2 mot Lg7)}
translate O PatternFourFian {Fire fianchettoer (Lb2, Lg2, Lb7, Lg7)}

# Game saving:
translate O Today {I dag}
translate O ClassifyGame {Klassifiser parti}

# Setup position:
translate O EmptyBoard {Tøm brett}
translate O InitialBoard {Utgangsstilling}
translate O SideToMove {Side i trekk}
translate O MoveNumber {Trekk nummer}
translate O Castling {Rokade}
translate O EnPassantFile {En Passant-kolonne}
translate O ClearFen {Slett FEN}
translate O PasteFen {Lim inn FEN}

translate O SaveAndContinue {Lagre og fortsett}
translate O DiscardChangesAndContinue {Forkast endringer}
translate O GoBack {Gå tilbake}

# Replace move dialog:
translate O ReplaceMove {Erstatt trekk}
translate O AddNewVar {Legg til ny variasjon}
translate O NewMainLine {Ny hovedlinje}
translate O ReplaceMoveMessage {Et trekk eksisterer allerede her.

Du kan erstatte det og slette alle følgende trekk, eller du kan legge det til som en variasjon.
(Du kan unngå denne meldingen i fremtiden ved å slå av Spør før trekk erstattes-innstillingen i Innstillinger:Trekk-menyen.)}

# Make database read-only dialog:
translate O ReadOnlyDialog {Ønsker du å skrivebeskytte databasen?

()Du kan enkelt slå av skrivebeskyttelsen på databasen ved å lukke og gjenåpne den.)}

translate O ExitDialog {Vil du virkelig avslutte Scid?}
translate O ClearGameDialog {Partiet er endret.\nVil du lagre det?}
translate O ExitUnsaved {Følgende baser har ulagrede endringer i partier. Hvis du avslutter nå vil disse endringene gå tapt.}
# ====== TODO To be translated ======
translate O ChangeTextDialog {Enabling text colour globally requires restart.}
# ====== TODO To be translated ======
translate O ChangeDockDialog {Changing Docking requires a restart.}
# ====== TODO To be translated ======
translate O ExitNow {Exit now ?}

# Import window:
translate O PasteCurrentGame {Lim inn gjeldende parti}
translate O ImportHelp1 {Skriv eller lim inn et PGN-parti i feltet over.}
translate O ImportHelp2 {Feil i importen vil vises her.}
translate O OverwriteExistingMoves {Overskrive eksisterende trekk?}

# ECO Browser:
translate O ECOAllSections {alle ECO-deler}
translate O ECOSection {ECO-del}
translate O ECOSummary {Sammendrag for}
translate O ECOFrequency {Hyppighet eller underkoder for}

# Opening Report:
translate O OprepTitle {Åpningsrapport}
translate O OprepReport {Rapport}
translate O OprepGenerated {Generert av}
translate O OprepStatsHist {Statistikk og historie}
translate O OprepStats {Statistikk}
translate O OprepStatAll {Alle rapporterte partier}
translate O OprepStatBoth {Begge med rating}
translate O OprepStatSince {Siden}
translate O OprepOldest {Eldste partier}
translate O OprepNewest {Nyeste partier}
translate O OprepPopular {Trend}
translate O OprepFreqAll {Frekvens i år:   }
translate O OprepFreq1   {Det siste året: }
translate O OprepFreq5   {De siste 5 årene: }
translate O OprepFreq10  {De siste 10 årene: }
translate O OprepEvery {hvert %u parti}
translate O OprepUp {opp %u%s fra alle år}
translate O OprepDown {ned %u%s fra alle år}
translate O OprepSame {ingen endring fra alle år}
translate O OprepMostFrequent {Hyppigste spillere}
translate O OprepMostFrequentOpponents {Mest hyppige motstandere}
translate O OprepRatingsPerf {Ratinger og resultater}
translate O OprepAvgPerf {Middelratinger og -resultater}
translate O OprepWRating {Hvit rating}
translate O OprepBRating {Sort rating}
translate O OprepWPerf {Hvite resultater}
translate O OprepBPerf {Sorte resultater}
translate O OprepHighRating {Parti med høyeste gjennomsnittsrating}
translate O OprepTrends {Resultattrend}
translate O OprepResults {Resultatlengde og -hyppighet}
translate O OprepLength {Partilengde}
translate O OprepFrequency {Hyppighet}
translate O OprepWWins {Hvit vinner: }
translate O OprepBWins {Sort vinner: }
translate O OprepDraws {Uavgjort:      }
translate O OprepWholeDB {hele databasen}
translate O OprepShortest {Korteste seire}
translate O OprepMovesThemes {Trekk og temaer}
translate O OprepMoveOrders {Trekkrekkefølger til rapportert stilling}
translate O OprepMoveOrdersOne \
  {Det var kun en trekkrekkefølge som førte til denne stillingen:}
translate O OprepMoveOrdersAll \
  {Det var %u trekkrekkefølger som førte til denne stillingen:}
translate O OprepMoveOrdersMany \
  {There were %u move orders reaching this position. The top %u are:}
translate O OprepMovesFrom {Trekk fra rapportert stilling}
translate O OprepMostFrequentEcoCodes {Mest hyppige ECO-koder}
translate O OprepThemes {Stillingstemaer}
translate O OprepThemeDescription {Hyppighet av temaer i de første %u trekk i hvert parti}
translate O OprepThemeSameCastling {Rokkade til samme side}
translate O OprepThemeOppCastling {Rokkade til motsatt side}
translate O OprepThemeNoCastling {Ingen konger rokert}
translate O OprepThemeKPawnStorm {Bondestorm på kongesiden}
translate O OprepThemeQueenswap {Byttede dronninger}
translate O OprepThemeWIQP {Hvit isolert dronningbonde}
translate O OprepThemeBIQP {Sort isolert dronningbond}
translate O OprepThemeWP567 {Hvit bonde på rekke 5/6/7}
translate O OprepThemeBP234 {Sort bonde på rekke 2/3/4}
translate O OprepThemeOpenCDE {Åpen c/d/e-kolonne}
translate O OprepTheme1BishopPair {Kun en side har to løpere}
translate O OprepEndgames {Sluttspill}
translate O OprepReportGames {Rapporterte partier}
translate O OprepAllGames    {Alle partier}
translate O OprepEndClass {Materiale i sluttspillet}
translate O OprepTheoryTable {Teoritabell}
translate O OprepTableComment {Generert fra de %u høyest ratede partiene.}
translate O OprepExtraMoves {Ytterligere trekk notert i teoritabellen}
translate O OprepMaxGames {Maksimalt antall partier i teoritabellen}
translate O OprepViewHTML {Vis HTML}
translate O OprepViewLaTeX {Vis LaTeX}

# Player Report:
translate O PReportTitle {Spiller-rapport}
translate O PReportColorWhite {med hvite brikker}
translate O PReportColorBlack {med sorte brikker}
translate O PReportBeginning {Begynner med}
translate O PReportMoves {etter %s}
translate O PReportOpenings {Åpninger}
translate O PReportClipbase {Tøm utklippsbase og kopier søkeresultater til den}

# Piece Tracker window:
translate O TrackerSelectSingle {Venstre museknapp merker denne brikken}
translate O TrackerSelectPair {Venstre museknapp merker denne brikken; høyre merker alle brikker av denne typen.}
translate O TrackerSelectPawn {Venstre museknapp merker denne brikken; høyre merker alle brikker av denne typen.}
translate O TrackerStat {Statistikk}
translate O TrackerGames {% partier med trekk til felt}
translate O TrackerTime {% tid på hvert felt}
translate O TrackerMoves {Trekk}
translate O TrackerMovesStart {Oppgi trekket hvor sporingen skal begynne.}
translate O TrackerMovesStop {Oppgi trekket hvor sporingen skal stoppe.}

# Game selection dialogs:
translate O SelectAllGames {Alle partier i databasen}
translate O SelectFilterGames {Kun partier i filteret}
translate O SelectTournamentGames {Kun partier i gjeldende turnering}
translate O SelectOlderGames {Kun eldre partier}

# Delete Twins window:
translate O TwinsNote {For å være duplikater må to partier minst ha de samme to spillerene, og kriterier du kan angi under. Når to duplikater finnes blir det korteste partiet slettet. Tips: Det er best å kjøre en stavekontroll før duplikatsjekken, da det forbedrer søket.}
translate O TwinsCriteria {Kriterier: Duplikater må ha...}
translate O TwinsWhich {Undersøk hvilke partier}
translate O TwinsColors {Spillere samme farge?}
translate O TwinsEvent {Samme turnering?}
translate O TwinsSite {Samme sted?}
translate O TwinsRound {Samme runde?}
translate O TwinsYear {Samme år?}
translate O TwinsMonth {Samme måned?}
translate O TwinsDay {Samme dag?}
translate O TwinsResult {Samme utfall?}
translate O TwinsECO {Samme ECO-kode?}
translate O TwinsMoves {Samme trekk?}
translate O TwinsPlayers {Sammenlign spillernavn:}
translate O TwinsPlayersExact {Nøyaktig like}
translate O TwinsPlayersPrefix {Kun første 4 bokstaver}
translate O TwinsWhen {Når duplikatpartier slettes}
translate O TwinsSkipShort {Overse alle partier kortere enn 5 trekk?}
translate O TwinsUndelete {Gjenopprett alle partier først?}
translate O TwinsSetFilter {Sett filter til alle slettede duplikatpartier?}
translate O TwinsComments {Behold alltid partier med kommentarer?}
translate O TwinsVars {Behold alltid partier med variasjoner?}
translate O TwinsDeleteWhich {Slett hvilket parti:}
translate O TwinsDeleteShorter {Korteste parti}
translate O TwinsDeleteOlder {Laveste partinummer}
translate O TwinsDeleteNewer {Høyeste partinummer}
translate O TwinsDelete {Slett partier}

# Name editor window:
translate O NameEditType {Navnetype som skal redigeres}
translate O NameEditSelect {Partier som skal redigeres}
translate O NameEditReplace {Erstatt}
translate O NameEditWith {med}
translate O NameEditMatches {Treff: Trykk Ctrl+1 til Ctrl+9 for å velge}

# Check games window:

# Classify window:
translate O Classify {Klassifiser}
translate O ClassifyWhich {ECO-klassifiser hvilke partier}
translate O ClassifyAll {Alle partier (overskriv gamle ECO-koder)}
translate O ClassifyYear {Aller partier det siste året}
translate O ClassifyMonth {Alle partier den siste måneden}
translate O ClassifyNew {Kun partier uten ECO-kode}
translate O ClassifyCodes {ECO-koder som skal brukes}
translate O ClassifyBasic {Kun standardkoder ("B12", ...)}
translate O ClassifyExtended {Scid-utvidet ("B12j", ...)}

# Compaction:
translate O NameFile {Navnefil}
translate O GameFile {Partifil}
translate O Names {Navn}
translate O Unused {Ubrukte}
translate O SizeKb {Størrelse (kb)}
translate O CurrentState {Nåværende}
translate O AfterCompaction {Etter komprimering}
translate O CompactNames {Komrimer navnefil}
translate O CompactGames {Komprimer partifil}
translate O NoUnusedNames "Det er ingen ubrukte navn i navnefilen."
translate O NoUnusedGames "Partifilen er allerede komprimert."
translate O NameFileCompacted {Navnefilen for "[file tail [sc_base filename]]" ble komprimert.}
translate O GameFileCompacted {Partifilen for "[file tail [sc_base filename]]" ble komprimert.}

# Sorting:
translate O SortCriteria {Kriterier}
translate O AddCriteria {Legg til kriterie}
translate O CommonSorts {Vanlige sorteringer}
translate O Sort {Sorter}

# Exporting:
translate O AddToExistingFile {Legg partier til en eksisterende fil}
translate O ExportComments {Eksporter kommentarer}
translate O ExportVariations {Eksporter variasjoner}
translate O IndentComments {Rykk inn kommentarer}
translate O IndentVariations {Rykk inn variasjoner}
translate O ExportColumnStyle {Bruk kolonner (ett trekk per linje)}
translate O ExportSymbolStyle {Symbolnotasjoner}
translate O ExportStripMarks {Fjern alle fargekoder og piler fra kommentarer?}
translate O ExportFlags {Eksporter Scid-flagg}

# Goto game/move dialogs:
translate O LoadGameNumber {Angi partinummer som skal lastes inn:}
translate O GotoMoveNumber {Gå til trekk nummer:}

# Copy games dialog:
translate O CopyGames {Kopier partier}
translate O CopyConfirm {
Vil du virkelig kopiere de [::utils::thousands $nGamesToCopy] filtrerte partiene 
fra "$fromName" til "$targetName"?
}
translate O CopyErr {Kan ikke kopiere partiene}
translate O CopyErrSource {kildedatabasen}
translate O CopyErrTarget {måldatabasen}
translate O CopyErrNoGames {har ingen partier i sitt filter}
translate O CopyErrReadOnly {er skrivebeskyttet}
translate O CopyErrNotOpen {er ikke åpnet}

# Colors:
translate O LightSquares {Lyse felt}
translate O DarkSquares {Mørke felt}
translate O SelectedSquares {Merkede felt}
translate O Grid {Ruter}
translate O Previous {Tidligere}
translate O WhitePieces {Hvite brikker}
translate O BlackPieces {Sorte brikker}
translate O WhiteBorder {Hvit ramme}
translate O BlackBorder {Sort ramme}
translate O ArrowMain   {Hovedpil}
translate O ArrowVar    {Andre piler}
# ====== TODO To be translated ======
translate O ShowArrows  {Show Arrows}

# Novelty window:
translate O FindNovelty {Finn nyhet}
translate O Novelty {Nyhet}
translate O NoveltyInterrupt {Søk etter nyhet avbrutt}
translate O NoveltyNone {Ingen nyheter ble funnet i dette partiet}
translate O NoveltyHelp {Scid vil finne det første trekket i det gjeldende partiet som fører til en stilling som ikke finnes i den valgte databasen eller i ECO-åpningsboken.}

# Sounds configuration:
translate O SoundsFolder {Mappe med lydfiler}
translate O SoundsFolderHelp {Mappen bør inneholde filene king.wav, a.vaw, 1.wav osv}
translate O SoundsAnnounceOptions {Innstillinger for opplesing av trekk}
translate O SoundsAnnounceNew {Les trekk når de gjøres}
translate O SoundsAnnounceForward {Les trekk når du blar ett trekk frem}
translate O SoundsAnnounceBack {Les når du trekker eller blar tilbake}

# Upgrading databases:
translate O Upgrading {Oppgraderer}
translate O ConfirmOpenNew {
Dette er en database i gammelt format (si3) som ikke kan åpnes i Scid 4, men et nytt format (si4) har allerede blitt opprettet.

Vil du åpne versjonen som er i det nye formatet?
}
translate O ConfirmUpgrade {
Dette er en database i gammelt format (si3). En versjon i nytt format må opprettes før den kan brukes i Scid 4.0.

Dette kan ta en stund, men det trenger kun å gjøres en gang. Du kan avbryte om du synes det tar for lang tid.

Ønsker du å oppgradere databasen nå?
}

# Recent files options:
translate O RecentFilesMenu {Antall nylige filer i filmenyen}
translate O RecentFilesExtra {Antall nylige filer i undermeny}

# My Player Names options:
translate O MyPlayerNamesDescription {
Legg inn foretrukne spillernavn, et navn per rad.
Hver gang du laster inn et parti med en av disse spillerene vil brettet snus for denne spilleren om nødvendig.
}
#Coach
translate O showblunderexists {vis om Phalanx bukker}
translate O showblundervalue {vis verdi på bukk}
translate O showscore {vis score}
translate O coachgame {parti med trener}
translate O configurecoachgame {Konfigurer taktisk parti}
translate O configuregame {Konfigurer UCI-parti}
translate O Phalanxengine {Phalanx motor}
translate O Coachengine {Trener-motor}
translate O difficulty {venskelighetsgrad}
translate O hard {vanskelig}
translate O easy {lett}
translate O Playwith {Spill som}
translate O white {hvit}
translate O black {sort}
translate O both {begge}
translate O Play {Spill}
translate O Noblunder {Ingen bukk}
translate O blunder {bukk}
translate O Noinfo {-- Ingen info --}
translate O moveblunderthreshold {trekk er en bukk om den taper mer enn}
translate O limitanalysis {begrens motors analysetid}
translate O seconds {sekunder}
translate O Abort {Avbryt}
translate O Resume {Fortsett}
translate O Restart {Start på nytt}
translate O OutOfOpening {Ute av åpning}
translate O NotFollowedLine {Du fulgte ikke linjen}
translate O DoYouWantContinue {Vil du fortsette?}
translate O CoachIsWatching {Trener følger med}
translate O Ponder {Husk analyser}
translate O LimitELO {Begrens ELO-styrke}
translate O DubiousMovePlayedTakeBack {Du spilte et unøyaktig trekk, vil du ta det tilbake?}
translate O WeakMovePlayedTakeBack {Du spilte et svakt trekk, vil du ta det tilbake?}
translate O BadMovePlayedTakeBack {Du bukket, vil du ta det tilbake?}
translate O Iresign {Jeg gir opp}
translate O yourmoveisnotgood {ikke et bra trekk}
translate O EndOfVar {Slutt på variasjon}
translate O Openingtrainer {Åpningstrener}
translate O DisplayCM {Vis kandidat-trekk}
translate O DisplayCMValue {Vis verdi på kandidat-trekk}
translate O DisplayOpeningStats {Vis statistikk}
translate O ShowReport {Vis rapport}
translate O NumberOfGoodMovesPlayed {gode trekk spilt}
translate O NumberOfDubiousMovesPlayed {unøyaktige trekk spilt}
translate O NumberOfTimesPositionEncountered {forekomster av stillingen}
translate O PlayerBestMove  {Tillat kun beste trekk}
translate O OpponentBestMove {Motstander spiller beste trekk}
translate O OnlyFlaggedLines {Kun flaggede linjer}
translate O resetStats {Nullstill statistikk}
translate O Movesloaded {Trekk lastet inn}
translate O PositionsNotPlayed {Stillinger ikke spilt}
translate O PositionsPlayed {Stillinger spilt}
translate O Success {Suksess}
translate O DubiousMoves {Unøyaktige trekk}
translate O ConfigureTactics {Velg oppgaver}
translate O ResetScores {Nullstill poeng}
translate O LoadingBase {Laster base}
translate O Tactics {Taktikk}
translate O ShowSolution {Vis løsning}
translate O Next {Neste}
translate O ResettingScore {Nullstiller poeng}
translate O LoadingGame {Laster parti}
translate O MateFound {Matt funnet}
translate O BestSolutionNotFound {Beste løsning IKKE funnet!}
translate O MateNotFound {Matt ikke funnet}
translate O ShorterMateExists {Det er en raskere matt}
translate O ScorePlayed {Poeng spilt}
translate O Expected {ventet}
translate O ChooseTrainingBase {Velg treningsbase}
translate O Thinking {Tenker}
translate O AnalyzeDone {Analyse fullført}
translate O WinWonGame {Vinn vunnet parti}
translate O Lines {Linjer}
translate O ConfigureUCIengine {Konfigurer UCI-motor}
translate O SpecificOpening {Spesifikk åpning}
translate O StartNewGame {Start nytt parti}
translate O FixedLevel {Fast nivå}
translate O Opening {Åpning}
translate O RandomLevel {Tilfeldig nivå}
translate O StartFromCurrentPosition {Start fra denne stillingen}
translate O FixedDepth {Låst dybde}
translate O Nodes {Noder}
translate O Depth {Dybde}
translate O Time {Tid}
# ====== TODO To be translated ======
translate O Auto {Auto}
# ====== TODO To be translated ======
translate O Score {Score}
# ====== TODO To be translated ======
translate O {Score Combo} {Score Combo}
# ====== TODO To be translated ======
translate O {Time Combo} {Time Combo}
translate O SecondsPerMove {Sekunder per trekk}
translate O DepthPerMove {Dybde per trekk}
translate O MoveControl {Trekk-kontroll}
translate O TimeLabel {Tid per trekk}
translate O AddVars {Legg til variasjoner}
translate O AddScores {Legg til poeng}
translate O Engine {Motor}
translate O TimeMode {Tidsbegrenset}
translate O TimeBonus {Tid + bonus}
translate O TimeMin {min}
translate O TimeSec {sek}
translate O AllExercisesDone {Alle øvelser fullført}
translate O MoveOutOfBook {Trekk er ute av bok}
translate O LastBookMove {Siste bok-trekk}
translate O AnnotateSeveralGames {Annoter flere partiner\nfra dette til :}
translate O FindOpeningErrors {Finn feil i åpning}
translate O MarkTacticalExercises {Marker taktiske øvelser}
translate O UseBook {Bruk bok}
translate O MultiPV {Flere variasjoner}
translate O Hash {Minne til hash}
translate O OwnBook {Bruk motors bok}
translate O BookFile {Åpningsbok}
translate O AnnotateVariations {Annoter variasjoner}
translate O ShortAnnotations {Kort annotasjon}
translate O addAnnotatorTag {Legg til tagg for annotator}
translate O AddScoreToShortAnnotations {Gi poeng til annotasjoner}
translate O Export {Eksport}
translate O BookPartiallyLoaded {Bok delvis lastet}
translate O AddLine {Legg til linje}
translate O RemLine {Fjern linje}
translate O Calvar {Beregning og variasjoner}
translate O ConfigureCalvar {Konfigurasjon}
# Opening names used in tacgame.tcl
translate O Reti {Reti}
translate O English {Engelsk}
translate O d4Nf6Miscellaneous {1.d4 Nf6 Forskjellige}
translate O Trompowsky {Trompowsky}
translate O Budapest {Budapest}
translate O OldIndian {Gammel-indisk}
translate O BenkoGambit {Benko Gambit}
translate O ModernBenoni {Moderne Benoni}
translate O DutchDefence {Hollandsk forsvar}
translate O Scandinavian {Skandinavisk}
translate O AlekhineDefence {Alekhines forsvar}
translate O Pirc {Pirc}
translate O CaroKann {Caro-Kann}
translate O CaroKannAdvance {Caro-Kann fremskutt}
translate O Sicilian {Siciliansk}
translate O SicilianAlapin {Siciliansk Alapin}
translate O SicilianClosed {Siciliansk lukket}
translate O SicilianRauzer {Siciliansk Rauzer}
translate O SicilianDragon {Siciliansk drage}
translate O SicilianScheveningen {Siciliansk Scheveningen}
translate O SicilianNajdorf {Siciliansk Najdorf}
translate O OpenGame {Åpnet parti}
translate O Vienna {Wiener}
translate O KingsGambit {Konge-gambit}
translate O RussianGame {Russisk}
translate O ItalianTwoKnights {Italiensk/to springere}
translate O Spanish {Spansk}
translate O SpanishExchange {Spansk avbytte}
translate O SpanishOpen {Spansk åpent}
translate O SpanishClosed {Spansk lukket}
translate O FrenchDefence {Fransk forsvar}
translate O FrenchAdvance {Fransk fremskutt}
translate O FrenchTarrasch {Fransk Tarrasch}
translate O FrenchWinawer {Fransk Winawer}
translate O FrenchExchange {Fransk avbytte}
translate O QueensPawn {Dronningbonde}
translate O Slav {Slavisk}
translate O QGA {Dronning-gambit mottatt}
translate O QGD {Dronning-gambit avvist}
translate O QGDExchange {Dronning-gambit avbytte}
translate O SemiSlav {Halv-Slavisk}
translate O QGDwithBg5 {DGA med Lg5}
translate O QGDOrthodox {DGA ortodoks}
translate O Grunfeld {Grünfeld}
translate O GrunfeldExchange {Grünfeld avbytte}
translate O GrunfeldRussian {Grünfeld russisk}
translate O Catalan {Katalansk}
translate O CatalanOpen {Katalansk åpen}
translate O CatalanClosed {Katalansk lukket}
translate O QueensIndian {Dronning-indisk}
translate O NimzoIndian {Nimzo-indisk}
translate O NimzoIndianClassical {Nimzo-indisk klassisk}
translate O NimzoIndianRubinstein {Nimzo-indisk Rubinstein}
translate O KingsIndian {Konge-indisk}
translate O KingsIndianSamisch {Konge-indisk Sämisch}
translate O KingsIndianMainLine {Konge-indisk hovedlinje}

# FICS
translate O ConfigureFics {Konfigurer FICS}
translate O FICSLogin {Logg inn}
translate O FICSGuest {Logg inn som gjest}
translate O FICSServerPort {Server-port}
translate O FICSServerAddress {IP-addresse}
translate O FICSRefresh {Oppdater}
translate O FICSTimeseal {Tidsstempel}
translate O FICSTimesealPort {Tidsstempel port}
translate O FICSSilence {Konsoll-filter}
translate O FICSOffers {Tilbud}
# ====== TODO To be translated ======
translate O FICSMakeOffer {Make Offer}
translate O FICSGames {Partier}
translate O FICSFindOpponent {Finn motstander}
translate O FICSTakeback {Angre}
translate O FICSTakeback2 {Angre 2}
translate O FICSInitTime {Tid (min)}
translate O FICSIncrement {Tillegg (sek)}
translate O FICSRatedGame {Ratet parti}
translate O FICSAutoColour {Automatisk}
translate O FICSManualConfirm {Bekreft manuelt}
translate O FICSFilterFormula {Filter med formel}
translate O FICSIssueSeek {Utfør søk}
translate O FICSAccept {Godta}
translate O FICSDecline {Avvis}
translate O FICSColour {Farge}
translate O FICSSend {Send}
translate O FICSConnect {Koble til}
translate O FICSShouts {Rop}
translate O FICSTells {Snakk}
translate O FICSOpponent {Info om motstander}
translate O FICSInfo {Info}
translate O FICSDraw {Tilby remis}
translate O FICSRematch {Omkamp}
translate O FICSQuit {Lukk FICS}
translate O FICSCensor {Sensur}


# Correspondence Chess Dialogs:
translate O CCDlgConfigureWindowTitle {Konfigurer fjern-sjakk}
translate O CCDlgCGeneraloptions {Generelle innstillinger}
translate O CCDlgDefaultDB {Standard database:}
translate O CCDlgInbox {Innboks (bane):}
translate O CCDlgOutbox {Utboks (bane):}
translate O CCDlgXfcc {Xfcc konfigurasjon:}
translate O CCDlgExternalProtocol {Ekstern håndtering av protokoller (f.eks. Xfcc)}
translate O CCDlgFetchTool {Hente-verktøy:}
translate O CCDlgSendTool {Sende-verktøy:}
translate O CCDlgEmailCommunication {epost-kommunikasjon}
translate O CCDlgMailPrg {epost-program:}
translate O CCDlgBCCAddr {(B)CC-adresse:}
translate O CCDlgMailerMode {Modus:}
translate O CCDlgThunderbirdEg {f.eks. Thunderbird, Mozilla Mail, Icedove...}
translate O CCDlgMailUrlEg {f.eks. Evolution}
translate O CCDlgClawsEg {f.eks. Sylpheed Claws}
translate O CCDlgmailxEg {f.eks. mailx, mutt, nail...}
translate O CCDlgAttachementPar {Parametre for vedlegg:}
translate O CCDlgInternalXfcc {Håndter Xfcc internt}
translate O CCDlgConfirmXfcc {Bekreft trekk}
translate O CCDlgSubjectPar {Parametre for tittel:}
translate O CCDlgDeleteBoxes {Tøm inn-/utboks}
translate O CCDlgDeleteBoxesText {Vil du virkelig tømme inn- og utboksen for fjernsjakk?\nDette krever en ny synkronisering for å vise fremgang i dine partier.}
translate O CCDlgConfirmMove {Bekreft trekk}
translate O CCDlgConfirmMoveText {Om du bekrefter vil dette trekket og kommentaren bli sendt til serveren:}
translate O CCDlgDBGameToLong {Inkonsistent hovedlinje}
translate O CCDlgDBGameToLongError {Hovedlinjen i databasen din er større enn partiet i innboksen. Om innboksen inneholder aktuelle partier, altså nylig synkroniserte, ble noen trekk lagt til hovedlinjen i databasen ved en feil.\n

I så fall, vennligst forkort hovedlinjen til (max) trekk\n
}

translate O CCDlgStartEmail {Start nytt epost-parti}
translate O CCDlgYourName {Ditt navn:}
translate O CCDlgYourMail {Din epost-adresse:}
translate O CCDlgOpponentName {Motstanders navn:}
translate O CCDlgOpponentMail {Motstanders mailadresse:}
translate O CCDlgGameID {Parti-ID (unikt):}

translate O CCDlgTitNoOutbox {Scid: Utboks for fjernsjakk}
translate O CCDlgTitNoInbox {Scid: Innboks for fjernsjakk}
translate O CCDlgTitNoGames {Scid: Ingen fjernsjakk-partier}
translate O CCErrInboxDir {Mappe med innboksen til fjernsjakk:}
translate O CCErrOutboxDir {Mappe med utboksen til fjernsjakk:}
translate O CCErrDirNotUsable {er ikke tilgjengelig eller finnes ikke!\nKontroller og korriger innstillingene.}
translate O CCErrNoGames {inneholder ikke noen partier!\nVennligst last dem ned først.}

translate O CCDlgTitNoCCDB {Scid: Ingen database for fjernsjakk}
translate O CCErrNoCCDB {Ingen database av typen 'Fjernsjakk' er åpen. Vennligst åne en før du bruker fjernsjakk-funskjonene.}

translate O CCFetchBtn {Last ned partier fra tjeneren og behandle innboksen}
translate O CCPrevBtn {Gå til tidligere parti}
translate O CCNextBtn {Gå til neste parti}
translate O CCSendBtn {Send trekk}
translate O CCEmptyBtn {Tøm inn- og utboks}
translate O CCHelpBtn {Hjelp om ikoner og status-indikatorer.\nFor generell hjelp, trykk F1!}

translate O CCDlgServerName {Tjenernavn:}
translate O CCDlgLoginName  {Brukernavn:}
translate O CCDlgPassword   {Passord:}
translate O CCDlgURL        {Xfcc-lenke:}
translate O CCDlgRatingType {Rating-type:}

translate O CCDlgDuplicateGame {Ikke-unik parti-ID}
translate O CCDlgDuplicateGameError {Dette partiet finnes flere steder i databasen din. Vennligst slett alle duplikater og komprimer partifilen (Verktøy/Vedlikehold/Komprimer database)).}

translate O CCDlgSortOption {Sortering:}
translate O CCDlgListOnlyOwnMove {Kun partier med meg i trekket}
translate O CCOrderClassicTxt {Sted, Turnering, Runde, Resultat, Hvit, Sort}
translate O CCOrderMyTimeTxt {Min klokke}
translate O CCOrderTimePerMoveTxt {Tid per trekk før neste tidskontroll}
translate O CCOrderStartDate {Start-dato}
translate O CCOrderOppTimeTxt {Motstanders klokke}

translate O CCDlgConfigRelay {Følg partier}
translate O CCDlgConfigRelayHelp {Gå til parti-siden på  http://www.iccf-webchess.com og vis partiet som skal følges. Om du ser sjakkbrettet, kopier URLen fra nettleseren din til listen under. Kun en URL per parti!\nEksempel: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452 }


# Connect Hardware dialoges
translate O ExtHWConfigConnection {Konfigurer ekstern maskinvare}
translate O ExtHWPort {Port}
translate O ExtHWEngineCmd {Motor-kommando}
translate O ExtHWEngineParam {Motor-parametre}
translate O ExtHWShowButton {Vis knapp}
translate O ExtHWHardware {Maskinvare}
translate O ExtHWNovag {Novag Citrine}
translate O ExtHWInputEngine {Inndata-motor}
translate O ExtHWNoBoard {Ingen brett}

# Input Engine dialogs
translate O IEConsole {Konsoll for inndata-motor}
translate O IESending {Trekk sendt for}
translate O IESynchronise {Synkroniser}
translate O IERotate  {Roter}
translate O IEUnableToStart {Klarer ikke å starte inndata-motor:}
# Calculation of Variations
translate O DoneWithPosition {Ferdig med stilling}

translate O Board {Brett}
translate O showGameInfo {Vis parti-informasjon}
translate O autoResizeBoard {Automatisk brettstørrelse}
translate O DockTop {Flytt til toppen}
translate O DockBottom {Flytt til bunnen}
translate O DockLeft {Flytt til venstre}
translate O DockRight {Flytt til høyre}
translate O Undock {Løsriv}

# Switcher window
translate O ChangeIcon {Endre ikon...}
translate O More {Mer}

# Drag & Drop
translate O CannotOpenUri {Kan ikke åpne følgende URI:}
translate O InvalidUri {Inneholder ikke en gyldig URI-liste.}
translate O UriRejected	{Disse filene er avvist:}
translate O UriRejectedDetail {Kun følgende filtyper kan håndteres:}
translate O EmptyUriList {Innholdet er tomt.}
translate O SelectionOwnerDidntRespond {Tidsavbrudd under slipp: eier av utvalg svarte ikke.}
# ====== TODO To be translated ======
translate O PasteAnal {Paste Analysis}
# ====== TODO To be translated ======
translate O SortOpcodes {Sort Opcodes}
# ====== TODO To be translated ======
translate O AddPosition {Add Position}
# ====== TODO To be translated ======
translate O FindPos {Find Deepest Game Position}
# ====== TODO To be translated ======
translate O AnalPosition {Analyze Positions}
# ====== TODO To be translated ======
translate O StripOpcodes {Strip Opcodes}
# ====== TODO To be translated ======
translate O NoMoves {No moves from this position}
# ====== TODO To be translated ======
translate O CountBestMoves {Count Best Moves}

}
# end of norsk.tcl
