#
# finnish.tcl
#
# Author Mika Kaakinen
#

addLanguage L Finnish 0 ;#iso8859-1

proc setLanguage_L {} {

# File menu:
menuText L File "Tiedosto" 0
menuText L FileNew "Uusi" 0 {Luo uusi Scid-tietokanta}
menuText L FileOpen "Avaa" 0 {Avaa olemassaoleva Scid-tietokanta}
menuText L FileClose "Sulje" 0 {Sulje aktiivisena oleva Scid-tietokanta}
menuText L FileFinder "L�yd�" 0 {Avaa tiedoston hakuikkuna}
menuText L FileSavePgn "Tallenna PGN" 0 {Tallenna t�m� peli tiedostoon}
menuText L FileOpenBaseAsTree "Avaa tietokanta puuna" 13   {Avaa tietokanta ja k�yt� sit� puuikkunassa}
menuText L FileOpenRecentBaseAsTree "Avaa viimeisin tietokanta puuna" 0   {Avaa viimeisin tietokanta ja k�yt� sit� puuikkunassa}
menuText L FileBookmarks "Kirjanmerkkivalikko" 0 {Kirjanmerkkivalikko}
menuText L FileBookmarksAdd "Lis�� kirjanmerkki" 0 \
  {Kirjanmerkitse nykyinen tietokanta ja asema}
menuText L FileBookmarksFile "Tiedosto kirjanmerkki" 0 \
  {Kirjainmerkitse nykyinen peli ja asema}
menuText L FileBookmarksEdit "K�sittele kirjanmerkki" 0 \
  {Muokkaa kirjanmerkkivalikoita}
menuText L FileBookmarksList "Esit� kansiot yhten� listana" 0 \
  {Esit� kirjanmerkkivalikot yhten� listana eik� alivalikkoina}
menuText L FileBookmarksSub "Esit� kansiot alavalikkona" 0 \
  {Esit� kirjainmerkkikansiot alivalikkoina eik� yhten� listana}

menuText L FileReadOnly "Kirjoitussuojattu" 0 \
  {Kohtele nykyist� tietokantaa kirjoitussuojattuna est�en muutokset}
menuText L FileSwitch "Vaihda tietokantaan" 1 \
  {Vaihda eri avattuun tietokantaan}
menuText L FileExit "Poistu" 1 {Poistu Scidist�}

# Edit menu:
menuText L Edit "Muokkaa" 0
menuText L EditAdd "Lis�� muunnelma" 0 {Lis�� muunnelma pelin t�h�n siirtoon}
menuText L EditPasteVar "Liit� muunnelma" 0
menuText L EditDelete "Poista muunnelma" 0 {Poista t�t� siirtoa varten oleva muunnelma}
menuText L EditFirst "Tee ensimm�inen muunnelma" 5 \
  {Ylenn� muunnelma listan ensimm�iseksi}
menuText L EditMain "Ylenn� muunnelma" 21 \
  {Ylenn� muunnelma p��muunnelmaksi}
menuText L EditTrial "Yrit� muunnelmaa" 0 \
  {Aloita/lopeta kokeilumoodi idean testaamiseksi laudalla}
menuText L EditStrip "Poista" 0 {Poista kommentit tai muunnelmat t�st� pelist�}
menuText L EditUndo "Peru" 0 {Peru viimeinen pelin muutos}
menuText L EditRedo "Tee uudestaan" 0 {Tee uudestaan viimeinen pelin muutos}
menuText L EditStripComments "Kommentit" 0 \
  {Poista kaikki kommentit ja huomautukset t�st� pelist�}
menuText L EditStripVars "Muunnelmat" 0 {Poista kaikki muunnelmat t�st� pelist�}
menuText L EditStripBegin "Siirrot alusta" 11 \
  {Poista siirrot t�m�n pelin alusta}
menuText L EditStripEnd "Siirrot loppuun asti" 9 \
  {Poista siirrot pelin loppuun asti}
# ====== TODO To be translated ======
menuText L EditFlip "Flip Board" 0 {Flip the board}
menuText L EditReset "Tyhjenn� leikep�yt�" 0 \
  {Alusta leikep�yt� kokonaan tyhj�ksi}
menuText L EditCopy "Kopioi leikep�yd�lle" 1 \
  {Kopioi t�m� peli leikep�yd�n tietokantaan}
menuText L EditPaste "Liit� leikep�yd�lt�" 1 \
  {Liit� aktiivinen leikep�yd�n peli t�h�n}
menuText L EditPastePGN "Liit� PGN" 0 \
  {Tulkitse leikep�yd�n teksti PGN-tiedostona ja liit� se t�h�n}
menuText L EditSetup "Aseta aloitusasema" 6 \
  {Aseta aloitusasema t�t� peli� varten}
menuText L EditCopyBoard "Kopioi FEN" 5 \
  {Kopio nykyinen asema FEN-notaationa tekstivalintaan (leikep�yt�)}
menuText L EditCopyPGN "Kopioi PGN" 0 \
  {Kopioi nykyinen PGN-tiedosto tekstivalintaan (leikep�yt�)}
menuText L EditPasteBoard "Liit� FEN" 6 \
  {Aseta aloitusasema nykyisest� tekstivalinnasta (leikep�yt�)}

# Game menu:
menuText L Game "Peli" 0
menuText L GameNew "Uusi peli" 0 {Palauta peli alkutilaan hyl�ten mitk� tahansa muutokset}
menuText L GameFirst "Lataa ensimm�inen" 5 {Lataa ensimm�inen suodatettu peli}
menuText L GamePrev "Lataa edellinen" 5 {Lataa edellinen suodatettu peli}
menuText L GameReload "Lataa peli uudelleen" 2 {Lataa uudelleeen t�m� peli hyl�ten kaikki tehdyt muutokset}
menuText L GameNext "Lataa seuraava" 7 {Lataa seuraava suodatettu peli}
menuText L GameLast "Lataa viimeinen" 8 {Lataa viimeinen suodatettu peli}
menuText L GameRandom "Lataa satunnainen peli" 8 {Lataa satunnainen suodatettu peli}
menuText L GameNumber "Lataa numeroitu peli" 5 {Lataa peli sy�tt�m�ll� sen numero}
menuText L GameReplace "Korvaa peli" 0 {Tallenna t�m� peli korvaten vanhan version}
menuText L GameAdd "Lis�� peli" 0 {Tallenna t�m� peli uutena pelin� tietokantaan}
menuText L GameInfo "Aseta pelin tiedot" 9
menuText L GameBrowse "Selaa pelej�" 0
menuText L GameList "Listaa kaikki pelit" 0
menuText L GameDelete "Poista peli" 0
menuText L GameDeepest "Identifoi avaus" 0 {Siirry syvimp��n ECO-avauskirjassa listattuun peliasemaan}
menuText L GameGotoMove "Siirry tiettyyn pelisiirtoon" 5 {Siirry tiettyyn pelisiirtoon t�ss� peliss�}
menuText L GameNovelty "L�yd� uutuus" 7 {L�yd� ensimm�inen aikaisemmin pelaamaton siirto t�ss� peliss�}

# Search Menu:
menuText L Search "Etsi" 0
menuText L SearchReset "Nollaa suodatin" 0 {Nollaa suodatin jotta kaikki pelit voidaan sis�llytt��}
menuText L SearchNegate "Kiell� suodatin" 0 {Kiell� suodatin sis�lt�m��n vain hyl�tyt pelit}
menuText L SearchEnd "Aseta suodatin viimeiseen siirtoon" 15 {Kaikki suodatetut pelit latautuvat loppuasemassa}
menuText L SearchCurrent "Nykyinen asema" 0 {Etsi nykyist� laudan asemaa}
menuText L SearchHeader "Yleinen" 0 {Etsi otsikkoinformaatio perusteella (pelaaja, tapahtuma, jne.)}
menuText L SearchMaterial "Materiaali/asema" 0 {Etsi materiaalin tai aseman malleja}
menuText L SearchMoves "Siirrot" 0 {}
menuText L SearchUsing "Lataa etsi-tiedosto" 0 {Etsi k�ytt�en etsi-vaihtoehdot tiedostoa}

# Windows menu:
menuText L Windows "Ikkunat" 0
menuText L WindowsGameinfo "Pelin tiedot" 0 {N�yt�/piilota pelitietopaneeli}
menuText L WindowsComment "Kommenttieditori" 9 {Avaa/sulje kommenttieditori}
menuText L WindowsGList "Pelilista" 0 {Avaa/sulje pelilistaikkuna}
menuText L WindowsPGN "PGN-ikkuna" 0 {Avaa/sulje PGN (pelinotaatio)-ikkuna}
menuText L WindowsCross "Turnaustaulukko" 0 {Avaa/sulje turnaustaulukko}
menuText L WindowsPList "Etsi pelaaja" 2 {Avaa/sulje pelaajanl�yt�j�}
menuText L WindowsTmt "Turnaukset" 2 {Avaa/sulje turnausl�yt�j�}
menuText L WindowsSwitcher "Tietokannat" 0  {Avaa/sulje tietokantavaihtajaikkuna}
menuText L WindowsMaint "Yll�pitoikkuna" 0 {Avaa/sulje yll�pitoikkuna}
menuText L WindowsECO "ECO-selain" 0 {Avaa/sulje ECO-selainikkuna}
menuText L WindowsStats "Tilastoikkuna" 0 {Avaa/sulje suodatintilastoikkuna}
menuText L WindowsTree "Puuikkuna" 0 {Avaa/sulje puuikkkuna}
menuText L WindowsTB "Loppupelitietokantaikkuna" 1 {Avaa/sulje loppupelitietokantaikkuna}
menuText L WindowsBook "Avauskirjastoikkuna" 0 {Avaa/sulje avauskirjastoikkuna}
menuText L WindowsCorrChess "Kirjeenvaihtoikkuna" 1 {Avaa/sulje kirjeenvaihtoikkuna}
# ====== TODO To be translated ======
menuText L Analyse "Analyse" 0
# ====== TODO To be translated ======
menuText L AnalyseEngineList "Analysis Engines" 0 {Configure analysis engines}
# ====== TODO To be translated ======
menuText L AnalyseRating "Player Ratings" 0 {Graph the rating history of the current game players}
# ====== TODO To be translated ======
menuText L AnalyseScore "Score Graph" 0 {Show the score graph window}
# ====== TODO To be translated ======
menuText L AnalyseStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText L AnalyseStartEngine2 "Start engine 2" 0  {Start engine 2}
# ====== TODO To be translated ======
menuText L AnalysePlayerReport "Player Report" 3 {Generate a player report}
# ====== TODO To be translated ======
menuText L AnalyseOpReport "Opening Report" 0 {Generate an opening report for the current position}

# Tools menu:
menuText L Tools "Ty�kalut" 0
menuText L ToolsAnalysis "Analyysiohjelma" 0 {Konfiguroi analyysiohjelmat}
menuText L ToolsEmail "S�hk�postimanageri" 0 {Avaa/sulje s�hk�postin shakkimanageri-ikkuna}
menuText L ToolsFilterGraph "Suhteellinen suodatingrafiikka" 12 {Avaa/sulje suodatingrafiikkaikkkuna suhteellisia arvoja varten}
menuText L ToolsAbsFilterGraph "Absoluuttinen suodatingrafiikka" 7 {Avaa/sulje suodatingrafiikkaikkuna absoluuttisia arvoja varten}
menuText L ToolsOpReport "Avausraportti" 0 {Luo avausraportti nykyist� asemaa varten}
menuText L ToolsTracker "Upseerinj�ljitt�j�"  6 {Avaa upseerinj�ljitt�j�ikkuna}
menuText L ToolsTraining "Harjoitus"  7 {Harjoitusty�kalut (taktiikat,avaukset,...) }
menuText L ToolsComp "Turnaus" 0 {Shakkiohjelmaturnaus}
menuText L ToolsTacticalGame "Shakkiohjelma - Phalanx"  0 {Pelaa taktinen peli}
menuText L ToolsSeriousGame "Shakkiohjelma - UCI-ohjelma"  11 {Pelaa UCI-ohjelmaa vastaan}
menuText L ToolsTrainTactics "#N shakkiteht�v�"  0 {Ratkaise "#N" teht�vi�}
menuText L ToolsTrainCalvar "Muunnelmien laskeminen"  0 {Stoyko-harjoitus}
menuText L ToolsTrainFindBestMove "L�yd� paras siirto"  0 {L�yd� paras siirto}
menuText L ToolsTrainFics "Internet (FICS)"  0 {Pelaa freechess.orgissa}
menuText L ToolsBookTuning "Avauskirjaston viritt�minen" 0 {Avauskirjaston viritt�minen}

menuText L ToolsMaint "Yll�pito" 0 {Scid-tietokannan yll�pitoty�kalut}
menuText L ToolsMaintWin "Yll�pitoikkuna" 0 {Avaa/sulje Scid-tietokannan yll�pitoikkuna}
menuText L ToolsMaintCompact "Kompakti tietokanta" 0 {Kompaktin tietokannnan tiedostot joista on poistettu h�vitetyt pelit ja k�ytt�m�tt�m�t nimet}
menuText L ToolsMaintClass "ECO-luokittele pelit" 2 {Laske uudestaan ECO-koodit kaikille peleille}
menuText L ToolsMaintSort "Lajittele tietokanta" 0 {Lajittele kaikki pelit tietokannassa}
menuText L ToolsMaintDelete "Poista kaksoispelit" 0 {L�yd� kaksoispelit ja aseta ne h�vitett�v�ksi}
menuText L ToolsMaintTwin "Kaksoispelien tarkastusikkuna" 0 {Avaa/p�ivit� kaksoispelien tarkastusikkuna}
menuText L ToolsMaintNameEditor "Nimieditori" 0 {Avaa/sulje nimieditori-ikkuna}
menuText L ToolsMaintNamePlayer "Tarkasta pelaajien nimien tavutus" 11 {Tarkasta pelaajien nimien tavutus k�ytt�en tavutuksen tarkastustiedostoa}
menuText L ToolsMaintNameEvent "Tarkasta tapahtumien nimien tavutus" 11 {Tarkasta tapahtumien nimien tavutus k�ytt�en tavutuksen tarkastustiedostoa}
menuText L ToolsMaintNameSite "Tarkasta paikannimien tavutus" 11 {Tarkasta paikannimien tavutus k�ytt�en tavutuksen tarkastustiedostoa}
menuText L ToolsMaintNameRound "Tarkista kierroksen nimien tavutus" 11 {Tarkasta kierroksen nimien tavutus k�ytt�en tavutuksen tarkastustiedostoa}
menuText L ToolsMaintFixBase "Korjaa tietokanta" 0 {Yrit� korjata vahingoittunut tietokanta}

menuText L ToolsConnectHardware "Yhdist� hardware" 0 {Yhdit� ulkoinen hardware}
menuText L ToolsConnectHardwareConfigure "Konfiguroi..." 0 {Konfiguroi ulkoinen hardware ja yhteys}
menuText L ToolsConnectHardwareNovagCitrineConnect "Yhdist� Novag Citrine" 9 {Yhdit� Novag Citrine Scidin kanssa}
menuText L ToolsConnectHardwareInputEngineConnect "Yhdist� sy�tt�ohjelma" 9 {Yhdist� sy�tt�ohjelma (esim. DGT-lauta) Scidin kanssa}

menuText L ToolsPInfo "Pelaajan tiedot"  0 \
  {Avaa/p�ivit� pelaajainformaatioikkuna}
menuText L ToolsPlayerReport "Pelaajaraportti" 3 \
  {Luo pelaajaraportti}
menuText L ToolsRating "Pelaajan ELO-luku" 0 \
  {Luo grafiikka nykyisen pelin pelaajien ELO-lukujen historiasta}
menuText L ToolsScore "Tulosgrafiikka" 0 {N�yt� tulosgrafiikkaikkuna}
menuText L ToolsExpCurrent "Vie nykyinen peli" 8 \
  {Kirjoita nykyinen peli tekstitiedostoon}
menuText L ToolsExpCurrentPGN "Vie peli PGN-muotoon" 15 \
  {Kirjoita nykyinen peli PGN-tiedostoksi}
menuText L ToolsExpCurrentHTML "Vie peli HTML-muotoon" 15 \
  {Kirjoita nykyinen peli HTML-tiedostoksi}
menuText L ToolsExpCurrentHTMLJS "Vie peli HTML- ja JavaScript-muotoon" 15 {Kirjoita nykyinen peli HTML- ja JavaScript-tiedostoksi}
menuText L ToolsExpCurrentLaTeX "Vie Peli LaTeX-muotoon" 15 {Kirjoita nykyinen peli LaTex-tiedostoksi k�ytt�en xSkak��}
menuText L ToolsExpFilter "Vie kaikki suodatetut pelit" 1 \
  {Kirjoita kaikki suodatetut pelit tekstitiedostoksi}
menuText L ToolsExpFilterPGN "Vie suodatin PGN-muotoon" 17 \
  {Kirjoita kaikki suodatetut pelit PGN-tiedostoksi}
menuText L ToolsExpFilterHTML "Vie suodatin HTML-muotoon" 17 \
  {Kirjoita kaikki suodatetut pelit HTML-tiedostoksi}
menuText L ToolsExpFilterHTMLJS "Vie suodatin HTML ja JavaScript-muotoon" 17 {Kirjoita kaikki suodatetut pelit HTML- ja JavaScrip-tiedostoksi}
menuText L ToolsExpFilterLaTeX "Vie suodatin LaTeX-muotoon" 17  {Kirjoita kaikki suodatetut pelit LaTex-tiedostoksi}
# ====== TODO To be translated ======
menuText L ToolsExpFilterEPD "Export Filter to EPD/FEN" 17 {Write all filtered games to an EPD File}
menuText L ToolsExpFilterGames "Vie pelilista tekstiksi" 19 {Tulosta muotoiltu pelilista}
menuText L ToolsImportOne "Tuo PGN-teksti" 0 \
  {Tuo peli PGN-tekstist�}
menuText L ToolsImportFile "Tuo PGN-tiedosto" 7 {Tuo pelit PGN-tiedostosta}
menuText L ToolsStartEngine1 "K�ynnist� ohjelma 1" 0  {K�ynnist� ohjelma 1}
menuText L ToolsStartEngine2 "K�ynnist� ohjelma 2" 0  {K�ynnist� ohjelma 2}
menuText L ToolsScreenshot "Kuvankaappaus laudasta" 0  {Ota kuvankaappaus}

# Play menue
menuText L Play "Pelaa" 0 {Pelaa pelej�}

# --- Correspondence Chess
menuText L CorrespondenceChess "Kirjeshakki" 0 {Toiminnot s�hk�postia ja Xfcc:�� varten perustuen kirjeshakkiin}
menuText L CCConfigure "Konfiguroi" 0 {Konfiguroi ulkoiset ty�kalut ja yleiset asetukset}
menuText L CCConfigRelay "Tarkkaile pelej�" 10 {Konfiguroi tarkkailtavat pelit}
menuText L CCOpenDB "Avaa tietokanta" 0 {Avaa oletuskirjeshakkitietokanta}
menuText L CCRetrieve "Palauta pelit" 0 {Palauta pelit ulkoisen (Xfcc-) avustajan kautta}
menuText L CCInbox "K�sittele saapuneet-laatikko" 8 {K�sittele kaikki tiedostot Scidin saapuneet-laatikossa}
menuText L CCSend "L�het� siirto" 0 {L�het� siirtosi s�hk�postin tai ulkoisen (Xfcc-) avustajan kautta}

menuText L CCResign "Antaudu" 1 {Antaudu (ei s�hk�postin kautta)}
menuText L CCClaimDraw "Vaadi tasapeli�" 6 {L�het� siirto ja vaadi tasapeli� (ei s�hk�postin kautta)}
menuText L CCOfferDraw "Tarjoa tasapeli�" 1 {L�het� siirto ja tarjoa tasapeli� (ei s�hk�postin kautta)}
menuText L CCAcceptDraw "Hyv�ksy tasapeli" 0 {Hyv�ksy tasapelitarjous (ei s�hk�postin kautta)}

menuText L CCNewMailGame "Uusi s�hk�postipeli" 2 {Aloita uusi s�hk�postipeli}
menuText L CCMailMove "Postita siirto" 0 {L�het� siirto s�hk�postin kautta vastustajalle}
menuText L CCGamePage "Pelisivu" 0 {Kutsu peli verkkoselaimen kautta}

# menu in cc window:
menuText L CCEditCopy "Kopio pelilista leikep�yd�lle" 0 {Kopio pelit CSV-listana leikep�yd�lle}


#  B    GHiJKL    Q  TUV XYZ

# Options menu:
menuText L Options "Vaihtoehdot" 0
menuText L OptionsBoard "Shakkilauta/nappulat" 0 {Shakkilaudan ulkoasu}
menuText L OptionsColour "V�rit" 0 {Oletustekstiwidgetin v�ri}
menuText L OptionsBackColour "Tausta" 0 {Oletustekstiwidgetin v�ri}
menuText L OptionsMainLineColour "P��muunnelman nuolet" 0 {P��muunnelman nuolet}
menuText L OptionsVarLineColour "Muunnelman nuolet" 0 {Muunnelman nuolet}
# ====== TODO To be translated ======
menuText L OptionsEngineLineColour "Engine Arrows" 0 {Engine arrows}
menuText L OptionsRowColour "Rivit" 0 {Oletus puu/kirja-rivin v�ri}
# ====== TODO To be translated ======
menuText L OptionsHighlightColour "Highlight" 0 {Default text highlight color}
menuText L OptionsSwitcherColour "Katkaisin" 0 {Oletus db-valitsijan v�ri}
menuText L OptionsProgressColour "Edistymispalkki" 0 {Edistymispalkin oletusv�ri}
menuText L OptionsScoreColour "Tulosgrafiikka" 0 {}
menuText L OptionsScoreBarColour "Nykyinen tulosgrafiikka" 0 {}
menuText L OptionsNames "Oman pelaajan nimet" 3 {Muokkaa oman pelaajan nimi�}
menuText L OptionsExport "Vienti" 0 {Muuta tekstinviennin vaihtoehtoja}
menuText L OptionsFonts "Kirjasintyypit" 0 {Muuta kirjasintyyppej�}
menuText L OptionsFontsRegular "Vakinainen" 0 {Muuta yleiskirjaisintyyppi}
menuText L OptionsFontsMenu "Valikko" 0 {Vaihda valikon kirjaisintyyppi}
menuText L OptionsFontsSmall "Pieni" 0 {Muuta pieni kirjaisintyyppi}
menuText L OptionsFontsFixed "Pysyv�" 0 {Muuta vakiolevyinen kirjaisintyyppi}
menuText L OptionsGInfo "Pelin tiedot" 0 {Pelitietojen vaihtoehdot}
menuText L OptionsFics "FICS" 0 {Free Chess Internet Server}
menuText L OptionsFicsAuto "Korota automaattisesti kuningattareksi" 0
# ====== TODO To be translated ======
menuText L OptionsFicsClk "Store Clock times" 0
menuText L OptionsFicsColour "Tekstin v�ri" 0
menuText L OptionsFicsSize "Laudan koko" 0
menuText L OptionsFicsButtons "K�ytt�j�n painikkeet" 0
menuText L OptionsFicsCommands "Alusta k�skyt" 0
menuText L OptionsFicsNoRes "Ei tuloksia" 0
menuText L OptionsFicsNoReq "Ei pyynt�j�" 0
menuText L OptionsFicsPremove "Salli etuk�teissiirto" 0

menuText L OptionsLanguage "Kieli" 0 {Valitse valikon kieli}
menuText L OptionsMovesTranslatePieces "K��nn� nappulat" 0 {K��nn� nappuloiden ensimm�inen kirjain}
menuText L OptionsMovesHighlightLastMove "Korosta viimeisin siirto" 0 {Korosta viimeisin siirto}
menuText L OptionsMovesHighlightLastMoveDisplay "N�yt�" 0 {N�yt� viimeisin siirto korostettuna}
menuText L OptionsMovesHighlightLastMoveWidth "Leveys" 0 {Viivan leveys}
menuText L OptionsMovesHighlightLastMoveColor "V�ri" 0 {Viivan v�ri}
# ====== TODO To be translated ======
menuText L OptionsMovesColorSelected "Color Selected Square" 0 {Color move}
menuText L OptionsMoves "Siirrot" 0 {Siirron suorittamisen vaihtoehdot}
menuText L OptionsMovesAsk "Kysy ennen siirtojen korvaamista" 0 \
  {Kysy ennen olemassaolevien siirtojen korvaamista}
menuText L OptionsMovesAnimate "Animaation aika" 1 \
  {Aseta animaatiosiirtojen aika}
menuText L OptionsMovesDelay "Automaattisen pelaamisen viiv�stys" 1 \
  {Aseta aikaviiv�stys automaattisen pelaamisen moodille}
menuText L OptionsMovesCoord "Koordinoi siirron tekeminen" 0 \
  {Hyv�ksy koordinaattityylinen siirron suoritus (esim. "g1f3")}
menuText L OptionsShowVarPopup "N�yt� muunnelmaikkuna" 0 {K��nn� p��lle/pois muunnelmaikkunan n�ytt�}
menuText L OptionsMovesSpace "Lis�� v�lily�ntej� siirron numeron j�lkeen" 0 {Lis�� v�lily�ntej� siirron numeron j�lkeen}
menuText L OptionsMovesKey "N�pp�imist�n t�ydent�minen" 0 \
  {K��nn� p��lle/pois n�pp�imist�siirron automaattinen t�ydennys}
menuText L OptionsMovesShowVarArrows "N�yt� muunnelman nuolet" 0 {K��nn� p��lle/pois muunnelmien siirtoja n�ytt�v�t nuolet}
menuText L OptionsNumbers "Numeroformaatti" 0 {Valitse numeroformaatti}
menuText L OptionsStartup "K�ynnistys" 3 {Valitse k�ynnistyksess� avattavat ikkunat}
menuText L OptionsTheme "Teema" 0 {Ttk-teema}
menuText L OptionsWindows "Ikkunat" 0 {Ikkunavaihtoehdot}
menuText L OptionsWindowsIconify "Automaattinen ikonisointi" 5 \
  {Ikonisoi kaikki ikkunat kun p��ikkuna ikonisoidaan}
menuText L OptionsWindowsRaise "Automaattinen nosto" 5 \
  {Nosta tietyt ikkunat (esim. edistymispalkit) aina kun ne ovat piilotetut}
menuText L OptionsSounds "��net" 2 {Konfiguroi siirtoilmoituksen ��net}
menuText L OptionsWindowsDock "Kiinnit� ikkunat" 0 {Kiinnit� ikkunat (tarvitsee uudelleenk�ynnistyksen)}
menuText L OptionsWindowsSaveLayout "Tallenna ulkoasu" 0 {Tallenna ulkoasu}
menuText L OptionsWindowsRestoreLayout "Palauta ulkoasu" 0 {Palauta ulkoasu}
menuText L OptionsWindowsShowGameInfo "N�yt� pelin tiedot" 0 {N�yt� pelin tiedot}
menuText L OptionsWindowsAutoLoadLayout "Lataa automaattisesti ensimm�inen ulkoasu" 0 {Lataa k�ynnistett�ess� automaattisesti ensimm�inen ulkoasu}
menuText L OptionsWindowsAutoResize "Muuta automaattisesti laudan koko" 0 {}
menuText L OptionsWindowsFullScreen "Kokon�ytt�" 0 {Vaihtele kokon�ytt�-moodi}
menuText L OptionsToolbar "Ty�kalupalkki" 0 {Konfiguroi p��ikkunan ty�kalupalkki}
menuText L OptionsECO "Lataa ECO-tiedosto" 7 {Lataa ECO-luokittelutiedosto}
menuText L OptionsSpell "Lataa tavutuksen tarkastustiedosto" 11 \
  {Lataa Scid-tavutuksen tarkistustiedosto}
menuText L OptionsTable "Loppupelitietokannan hakemisto" 10 \
  {Valitse loppupelitietokantatiedosto; kaikkia loppupelitietokantoja tullaan k�ytt�m��n omassa hakemistossaan}
menuText L OptionsRecent "�skeiset merkinn�t" 0 {Muuta tiedosto/peli-historia valikoiden kirjauksien m��r�}
menuText L OptionsBooksDir "Avauskirjaston hakemisto" 0 {Aseta avauskirjaston hakemisto}
menuText L OptionsTacticsBasesDir "Tietokantojen hakemisto" 0 {Aseta taktiikka (harjoitus)tietokantojen hakemisto}
menuText L OptionsInformant "Konfiguroi informantin arvot" 0
menuText L OptionsSave "Tallenna vaihtoehdot" 0 "Tallenna kaikki asetettavissa olevat vaihtoehdot $::optionsFile"
# ====== TODO To be translated ======
menuText L OptionsSaveBases "Save Bases as Default" 0
menuText L OptionsAutoSave "Tallenna automaattisesti vaihtoehdot poistuessa" 0 \
  {Tallenna automaattisesti kaikki vaihtoehdot poistuttaessa Scidist�}

# Help menu:
menuText L Help "Apu" 0
menuText L HelpContents "Apu" 0 {N�yt� apusis�ll�n sivu}
menuText L HelpIndex "Indeksi" 0 {N�yt� apuindeksin sivu}
menuText L HelpGuide "Nopea opas" 0 {N�yt� pikaoppaan apusivu}
menuText L HelpHints "Vihjeet" 1 {N�yt� vihjeiden apusivu}
menuText L HelpContact "Yhteydenoton tiedot" 1 {N�yt� yhteysinformaation apusivu}
menuText L HelpTip "P�iv�n vinkki" 0 {N�yt� hy�dyllinen Scid-vinkki}
menuText L HelpStartup "K�ynnistysikkuna" 0 {N�yt� k�ynnistysikkuna}
menuText L HelpAbout "Ohjelman tiedot" 0 {Tietoja Scid Vs PCst�}

# Game info box popup menu:
menuText L GInfoHideNext "Piilota seuraava siirto" 0
menuText L GInfoShow "Siirtovuorossa oleva puoli" 0
menuText L GInfoCoords "Vaihtele koordinaatteja" 0
menuText L GInfoMaterial "Vaihtele materiaalia" 7
menuText L GInfoFEN "FEN" 5
menuText L GInfoMarks "N�yt� v�ritetyt ruudut ja nuolet" 5
menuText L GInfoWrap "Pakkaa pitk�t muunnelmat" 0
menuText L GInfoFullComment "N�yt� koko kommentti" 10
menuText L GInfoPhotos "N�yt� valokuvat" 5
menuText L GInfoTBNothing "Loppupelitietokannat: ei mit��n" 12
menuText L GInfoTBResult "Loppupelitietokannat: ainoastaan tulos" 12
menuText L GInfoTBAll "Loppupelitietokannat: tulos ja parhaat siirrot" 19
menuText L GInfoDelete "Palauta poistettu peli" 4
menuText L GInfoMark "Poista t�m�n pelin merkint�" 4
menuText L GInfoMenuBar "Valikkorivi"  0
menuText L GInfoToolBar "Ty�kalurivi"  0
menuText L GInfoButtonBar "Painikerivi"  0
# TODO
menuText L GInfoStatusBar "Status Bar"  0

translate L FlipBoard {K��nn� lauta}
translate L RaiseWindows {Nosta ikkunat}
translate L AutoPlay {Automaattinen peli}
translate L TrialMode {Kokeilumoodi}
# ====== TODO To be translated ======
translate L KeepOpen {Keep open after startup}

# General buttons:
translate L Apply {Sovella}
translate L Back {Takaisin}
translate L Browse {Selaa}
translate L Cancel {Peruuta}
translate L Continue {Jatka}
translate L Clear {Tyhjenn�}
translate L Close {Sulje}
translate L Contents {Sis�ll�t}
translate L Defaults {Oletukset}
translate L Delete {Poista}
translate L Graph {Grafiikka}
translate L Help {Apu}
translate L Import {Tuo}
translate L Index {Indeksi}
translate L LoadGame {Lataa}
translate L BrowseGame {Selaa}
translate L MergeGame {Yhdist�}
translate L MergeGames {Yhdist� pelit}
# translate E Ok {Ok}
translate L Preview {Esikatselu}
translate L Revert {Palautus}
translate L Save {Tallenna}
translate L DontSave {�l� tallenna}
translate L Search {Etsi}
translate L Stop {Pys�yt�}
translate L Store {Varastoi}
translate L Update {P�ivit�}
translate L ChangeOrient {Muuta ikkunan suunta}
translate L ShowIcons {N�yt� kuvakkeet}
translate L ConfirmCopy {Vahvista kopionti}
translate L None {Ei mik��n}
translate L First {Ensimm�inen}
translate L Current {Nykyinen}
translate L Last {Viimeinen}
translate L Font {Kirjasin}
translate L Change {Vaihda}
translate L Random {Satunnainen}

# General messages:
translate L game {peli}
translate L games {pelit}
translate L move {siirto}
translate L moves {siirrot}
translate L all {kaikki}
translate L Yes {Kyll�}
translate L No {Ei}
translate L Both {Molemmat}
translate L King {Kuningas}
translate L Queen {Kuningatar}
translate L Rook {Torni}
translate L Bishop {L�hetti}
translate L Knight {Ratsu}
translate L Pawn {Sotilas}
translate L White {Valkoinen}
translate L Black {Musta}
translate L Player {Pelaaja}
translate L Rating {Elo-luku}
translate L RatingDiff {Elo-luvun ero}
translate L AverageRating {Keskim��r�inen Elo-luku}
translate L Event {Tapahtuma}
translate L Site {Paikka}
translate L Country {Maa}
translate L IgnoreColors {Sivuuta v�rit}
translate L MatchEnd {Ainoastaan loppuasema}
translate L Date {P�iv�m��r�}
translate L EventDate {Tapahtuman p�iv�m��r�}
translate L Decade {Vuosikymmen}
translate L Year {Vuosi}
translate L Month {Kuukausi}
translate L Months {Tammikuu Helmikuu Maaliskuu Huhtikuu Toukokuu Kes�kuu Hein�kuu Elokuu Syyskuu Lokakuu Marraskuu Joulukuu}
translate L Days {Ma Ti Ke To Pe La Su}
translate L YearToToday {Vuosi t�h�n p�iv��n}
translate L Result {Lopputulos}
translate L Round {Kierros}
translate L Length {Pituus}
translate L ECOCode {ECO-koodi}
translate L ECO {ECO}
translate L Deleted {Poistetut}
translate L SearchResults {Etsi lopputuloksia}
translate L OpeningTheDatabase {Avaustietokanta}
translate L Database {Tietokanta}
translate L Filter {Suodatin}
translate L Reset {Nollaa}
translate L IgnoreCase {Sivuuta tapaus}
translate L noGames {tyhj�}
translate L allGames {kaikki}
translate L empty {tyhj�}
translate L clipbase {leiketietokanta}
translate L score {tulos}
translate L Start {Alku}
translate L StartPos {Alkuasema}
translate L Total {Summa}
translate L readonly {kirjoitussuojattu}
translate L altered {muutettu}
translate L tagsDescript {Lis�tagit (Esimerkiksi: kommentoija "Anand")}
translate L prevTags {K�yt� edellist�}
# ====== TODO To be translated ======
translate L value {Value}

# Standard error messages:
translate L ErrNotOpen {T�m� ei ole avoin tietokanta.}
translate L ErrReadOnly {T�m� tietokanta on kirjoitussuojattu ja sit� ei voi muuttaa}
translate L ErrSearchInterrupted {Haku keskeytetty}

# Game information:
translate L twin {kaksonen}
translate L deleted {poistettu}
translate L comment {kommentti}
translate L hidden {piilotettu}
translate L LastMove {Edellinen}
translate L NextMove {Seuraava}
translate L GameStart {Pelin alku}
translate L LineStart {Muunnelman alku}
translate L GameEnd {Pelin loppu}
translate L LineEnd {Muunnelman loppu}

# Player information:
translate L PInfoAll {Kaikki pelit}
translate L PInfoFilter {Suodata pelit}
translate L PInfoAgainst {Vastaan}
translate L PInfoMostWhite {Yleisimm�t avaukset valkeilla nappuloilla}
translate L PInfoMostBlack {Yleisimm�t avaukset mustilla nappuloilla}
translate L PInfoRating {Elo-luvun historia}
translate L PInfoBio {El�m�kerta}
translate L PInfoEditRatings {Muokkaa Elo-lukuja}
translate L PinfoEditName {Muokkaa nime�}
translate L PinfoLookupName {Etsi nimi}

# Tablebase information:
translate L Draw {Tasapeli}
translate L stalemate {patti}
translate L checkmate {matti}
translate L withAllMoves {kaikilla siirroilla}
translate L withAllButOneMove {kaikilla paitsi yhdell� siirrolla}
translate L with {kanssa}
translate L only {ainoastaan}
translate L lose {tappio}
translate L loses {h�vi��}
translate L allOthersLose {kaikki muut h�vi�v�}
translate L matesIn {tekee matin tietyn siirtom��r�n j�lkeen}
translate L longest {pisin}
translate L WinningMoves {Voittavat siirrot}
translate L DrawingMoves {Tasapeliin johtavat siirrot}
translate L LosingMoves {H�vi�v�t siirrot}
translate L UnknownMoves {Tuntemattomaan lopputulokseen johtavat siirrot}

# Tip of the day:
translate L Tip {Vinkki}
translate L TipAtStartup {N�yt� vinkki k�ynnistett�ess�}

# Tree window menus:
menuText L TreeFile "Puu" 0
menuText L TreeFileFillWithBase "T�yt� v�limuisti tietokannalla" 0 {T�yt� v�limuisti kaikilla nykyisess� tietokannassa olevilla peleill�}
menuText L TreeFileFillWithGame "T�yt� v�limuisti pelill�" 0 {T�yt� v�limuistitiedosto nykyisen tietokannan nykyisell� pelill�}
menuText L TreeFileCacheInfo "V�limuistin tiedot" 0 {Hanki tietoa v�limuistin k�yt�st�}
menuText L TreeFileSave "Tallenna v�limuistitiedosto" 0 {Tallenna puuv�limuisti (.stc)tiedosto}
menuText L TreeFileFill "T�yt� v�limuistitiedosto" 0 \
  {T�yt� v�limuistitiedosto yleisill� avausasemilla}
menuText L TreeFileBest "Parhaat pelit" 0 {N�yt� parhaiten yhteensopivat pelit}
menuText L TreeFileGraph "Grafiikkaikkuna" 0 {N�yt� grafiikka t�lle puuhaaralle}
menuText L TreeFileCopy "Kopioi puuteksti leikep�yd�lle" 1 \
  {Kopioi puutilastot leikep�yd�lle}
menuText L TreeFileClose "Sulje puuikkuna" 0 {Sulje puuikkuna}
menuText L TreeMask "Naamio" 0
menuText L TreeMaskNew "Uusi" 0 {Uusi naamio}
menuText L TreeMaskOpen "Avaa" 0 {Avaa naamio}
menuText L TreeMaskOpenRecent "Avaa �skett�inen" 0 {Avaa �skett�inen naamio}
menuText L TreeMaskSave "Tallenna" 0 {Tallenna naamio}
menuText L TreeMaskClose "Sulje" 0 {Sulje naaamio}
menuText L TreeMaskFillWithLine "T�yt� muunnelmalla" 0 {T�yt� naamio kaikilla edellisill� siirroilla}
menuText L TreeMaskFillWithGame "T�yt� pelill�" 0 {T�yt� naamio pelill�}
menuText L TreeMaskFillWithBase "T�yt� tietokannalla" 0 {T�yt� naamio tietokannan kaikilla peleill�}
menuText L TreeMaskInfo "Info" 0 {N�yt� tilastot nykyiselle naamiolle}
menuText L TreeMaskDisplay "N�yt� naamion kartta" 0 {N�yt� naamion tiedot puumuodossa}
menuText L TreeMaskSearch "Etsi" 0 {Etsi nykyisess� naamiossa}
menuText L TreeSort "Lajittele" 0
menuText L TreeSortAlpha "Aakkosellinen" 0
menuText L TreeSortECO "ECO-koodi" 0
menuText L TreeSortFreq "Yleisyys" 0
menuText L TreeSortScore "Tulos" 0
menuText L TreeOpt "Vaihtoehdot" 0
menuText L TreeOptSlowmode "Hidas moodi" 0 {Hidas moodi p�ivityksi� varten (korkea tarkkuus)}
menuText L TreeOptFastmode "Nopea moodi" 0 {Nopea moodi p�ivityksi� varten (ei siirtovaihtoa)}
menuText L TreeOptFastAndSlowmode "Nopea ja hidas moodi" 0 {Nopea moodi ja sitten hidas moodi p�ivityksi� varten}
menuText L TreeOptStartStop "Automaattinen virkist�minen" 0 {Vaihtelee puuikkunan automaattista virkist�mist�}
menuText L TreeOptLock "Lukitse" 0 {Lukitse/vapauta puu nykyiseen tietokantaan}
menuText L TreeOptTraining "Harjoitus" 0 {K��nn� p��lle/pois puuharjoitusmoodi}
menuText L TreeOptShort "Lyhyt n�ytt�" 0 {�l� n�yt� ELO-informaatiota}
menuText L TreeOptAutosave "Tallenna automaattisesti v�limuisti" 0 {Tallenna automaattisesti v�limuistitiedosto puuikkunaa suljettaessa}
menuText L TreeOptAutomask "Lataa automaattisesti naamio" 0 "Lataa automaattisesti �skett�isin naamio auki olevalla puulla."
menuText L TreeOptCacheSize "V�limuistin koko" 0 {Aseta v�limuistin koko}
menuText L TreeOptShowBar "N�yt� edistymispalkki" 0 "N�yt� puun edistymispalkki."
# ====== TODO To be translated ======
menuText L TreeOptShowFrame "Show Button Bar" 0 "Show tree button bar."
menuText L TreeOptSortBest "Lajittele parhaat pelit" 0 "Lajittele parhaat pelit ECOn mukaan."
menuText L TreeHelp "Apu" 0
menuText L TreeHelpTree "Puuapu" 0
menuText L TreeHelpIndex "Apuindeksi" 0
translate L SaveCache {Tallenna v�limuisti}
translate L Training {Harjoittelu}
translate L LockTree {Lukitse}
translate L TreeLocked {lukittu}
translate L TreeBest {Paras}
translate L TreeBestGames {Parhaat pelit}
translate L TreeAdjust {Mukauta suodatin}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate L TreeTitleRow      {    Siirto      Yleisyys    Tulos  Tasapeli Keskim�.Elo Perf Keskim�.Vuosi ECO}
translate L TreeTitleRowShort {    Siirto      Yleisyys    Tulos  Tasapeli}
translate L TreeTotal: {SUMMA:}
translate L DoYouWantToSaveFirst {Haluatko tallentaa}
translate L AddToMask {Lis�� naamioon}
translate L RemoveFromMask {Poista naamiosta}
translate L AddThisMoveToMask {Lis�� siirto naamioon}
translate L SearchMask {Etsi naamiosta}
translate L DisplayMask {N�yt� naamio}
translate L Nag {Nalkuta-koodi}
translate L Marker {Merkki}
translate L Include {Sis�llyt�}
translate L Exclude {Poissulje}
translate L MainLine {P��muunnelma}
translate L Bookmark {Kirjanmerkki}
translate L NewLine {Uusi muunnelma}
translate L ToBeVerified {Todenna}
translate L ToTrain {Harjoittele}
translate L Dubious {Kyseenalainen}
translate L ToRemove {Poista}
translate L NoMarker {Ei merkki�}
translate L ColorMarker {V�ri}
translate L WhiteMark {Valkoinen}
translate L GreenMark {Vihre�}
translate L YellowMark {Keltainen}
translate L BlueMark {Sininen}
translate L RedMark {Punainen}
translate L CommentMove {Kommenttisiirto}
translate L CommentPosition {Kommenttiasema}
translate L AddMoveToMaskFirst {Lis�� siirto ensiksi naamioon}
translate L OpenAMaskFileFirst {Avaa ensiksi naamiotiedosto}
# ====== TODO To be translated ======
translate L positions {positions}
translate L Moves {Siirrot}

# Finder window:
menuText L FinderFile "Hakulaite" 0
menuText L FinderFileSubdirs "Katso alavalikoista" 0
menuText L FinderFileClose "Sulje" 0
menuText L FinderSort "Lajittele tietyn kriteerin mukaan" 0
menuText L FinderSortType "Tyyppi" 0
menuText L FinderSortSize "Pelit" 0
menuText L FinderSortMod "Muokattu" 0
menuText L FinderSortName "Nimi" 0
menuText L FinderSortPath "Polku" 0
menuText L FinderTypes "Tyypit" 0
menuText L FinderTypesScid "Scid-tietokannat" 0
menuText L FinderTypesOld "Vanhantyyppiset Scid-tietokannat" 0
menuText L FinderTypesPGN "PGN-tiedostot" 0
menuText L FinderTypesEPD "EPD-tiedostot" 0
menuText L FinderHelp "Apu" 0
menuText L FinderHelpFinder "Hakulaiteapu" 0
menuText L FinderHelpIndex "Indeksi" 0
translate L FileFinder {Tiedostohakija}
translate L FinderDir {Hakemisto}
translate L FinderDirs {Hakemistot}
translate L FinderFiles {Tiedostot}
translate L FinderUpDir {yl�s}
translate L FinderCtxOpen {Avaa}
translate L FinderCtxBackup {Varmuuskopio}
translate L FinderCtxCopy {Kopioi}
translate L FinderCtxMove {Siirr�}
translate L FinderCtxDelete {Poista}
# ====== TODO To be translated ======
translate L FinderDirOpen {Open Directory}

# Player finder:
menuText L PListFile "Pelaajan hakulaite" 0
menuText L PListFileUpdate "P�ivit�" 0
menuText L PListFileClose "Sulje" 0
menuText L PListSort "Lajittele" 0
menuText L PListSortName "Nimi" 0
menuText L PListSortElo "Elo" 0
menuText L PListSortGames "Pelit" 0
menuText L PListSortOldest "Vanhin" 0
menuText L PListSortNewest "Uusin" 2

# Tournament finder:
menuText L TmtFile "Turnaushakulaite" 0
menuText L TmtFileUpdate "P�ivit�" 0
menuText L TmtFileClose "Sulje" 0
menuText L TmtSort "Lajittele" 0
menuText L TmtSortDate "P�iv�m��r�" 0
menuText L TmtSortPlayers "Pelaajat" 0
menuText L TmtSortGames "Pelit" 0
menuText L TmtSortElo "Elo" 0
menuText L TmtSortSite "Sijainti" 0
menuText L TmtSortEvent "Tapahtuma" 1
menuText L TmtSortWinner "Voittaja" 0
translate L TmtLimit "Listan koko"
translate L TmtMeanElo "Keskim��r�inen Elo"
translate L TmtNone "Sopivia turnauksia ei l�ytynyt."

# Graph windows:
menuText L GraphFile "Tiedosto" 0
menuText L GraphFileColor "Tallenna PostScript-v�rin�" 8
menuText L GraphFileGrey "Tallenna mustavalkoisena PostScriptin�" 8
menuText L GraphFileClose "Sulje" 0
menuText L GraphOptions "Vaihtoehdot" 0
menuText L GraphOptionsWhite "Valkoinen" 0
menuText L GraphOptionsBlack "Musta" 0
menuText L GraphOptionsDots "N�yt� pisteet" 0
menuText L GraphOptionsBar "Korosta nykyinen siirto" 0
menuText L GraphOptionsBoth "Molemmat" 1
menuText L GraphOptionsPInfo "Pelaaja Tieto pelaaja" 0
translate L GraphFilterTitle "Yleisyys 1000:ssa peliss�"
translate L GraphAbsFilterTitle "Pelin yleisyys"
translate L ConfigureFilter "Konfiguroi X-akseli"
translate L FilterEstimate "Arvioi"
translate L TitleFilterGraph "Scid: Suodatingrafiikka"

# Analysis window:
translate L AddVariation {Lis�� muunnelma}
translate L AddAllVariations {Lis�� kaikki muunnelmat}
translate L AddMove {Lis�� siirto}
translate L Annotate {Kommentoi}
translate L ShowAnalysisBoard {N�yty analyysilauta}
translate L ShowInfo {N�yt� ohjelman tiedot}
translate L FinishGame {Lopeta peli}
translate L StopEngine {Pys�yt� ohjelma}
translate L StartEngine {K�ynnist� ohjelma}
translate L ExcludeMove {Hylk�� siirto}
translate L LockEngine {Lukitse ohjelma nykyiseen asemaan}
translate L AnalysisCommand {Analyysik�sky}
translate L PreviousChoices {Edelliset vaihtoehdot}
translate L AnnotateTime {Sekunnit siirtoa kohden}
translate L AnnotateWhich {Kumpi puoli}
translate L AnnotateAll {Molempien puolten siirrot}
translate L AnnotateAllMoves {Kaikki siirrot}
translate L AnnotateWhite {Ainoastaan valkoisen siirrot}
translate L AnnotateBlack {Ainoastaan mustan siirrot}
translate L AnnotateNotBest {Kun siirto ei ole paras}
translate L AnnotateBlundersOnly {Kun siirto on m�hl�ys}
translate L BlundersNotBest {M�hl�ykset/ei paras siirto}
translate L AnnotateTitle {Konfiguroi kommentti}
translate L AnnotateMissedMates {Huomaamatta j��neet/lyhyemm�t matit}
# ====== TODO To be translated ======
translate L AnnotateEnd {At end of game}
translate L BlundersThreshold {Raja-arvo}
translate L ScoreFormat {Lopputuloksen formaatti}
translate L CutOff {Katkaise}
translate L LowPriority {Matala CPU-prioriteetti}
translate L LogEngines {Lokin koko}
translate L LogName {Lis�� nimi}
translate L MaxPly {Maksimipuolisiirto}
translate L ClickHereToSeeMoves {Klikkaa t�h�n n�hd�ksesi siirrot}
translate L ConfigureInformant {Konfiguroi Informartti}
translate L Informant!? {Mielenkiintoinen siirto}
translate L Informant? {Huono siirto}
translate L Informant?? {M�hl�ys}
translate L Informant?! {Kyseenalainen siirto}
translate L Informant+= {Valkealla on hienoinen etu}
translate L Informant+/- {Valkoisella on kohtuullinen etu}
translate L Informant+- {Valkealla on ratkaiseva etu}
translate L Informant++- {Peli on voitettu}

# Book window
translate L Book {Avauskirjasto}
# ====== TODO To be translated ======
translate L OtherBook {Other Moves}
# ====== TODO To be translated ======
translate L Alphabetical {Alphabetical}
# ====== TODO To be translated ======
translate L TwoBooks {Two Books}

# Analysis Engine open dialog:
translate L EngineList {Analyysiohjelmat}
translate L EngineKey {Avain}
translate L EngineType {Tyyppi}
translate L EngineName {Nimi}
translate L EngineCmd {K�sky}
translate L EngineArgs {Parametrit}
translate L EngineDir {Hakemisto}
translate L EngineElo {Elo}
translate L EngineTime {P�iv�m��r�}
translate L EngineNew {Uusi}
translate L EngineEdit {Muokkaa}
translate L EngineRequired {Lihavoidut kent�t vaaditaan; muut ovat valinnaisia}

# Stats window menus:
menuText L StatsFile "Tilastot" 0
menuText L StatsFilePrint "Tulosta tiedostoon" 0
menuText L StatsFileClose "Sulje ikkuna" 0
menuText L StatsOpt "Vaihtoehdot" 0

# PGN window menus:
menuText L PgnFile "PGN" 0
menuText L PgnFileCopy "Kopioi leikep�yd�lle" 0
menuText L PgnFilePrint "Tallenna peli tietyss� muodossa" 0
menuText L PgnFileClose "Sulje" 10
menuText L PgnOpt "Vaihtoehdot" 0
menuText L PgnOptColor "V�rin�ytt�" 0
menuText L PgnOptShort "Lyhyt yl�tunniste" 6
menuText L PgnOptSymbols "Symboliset kommentit" 1
menuText L PgnOptIndentC "Sisenn� kommentit" 0
menuText L PgnOptIndentV "Sisenn� muunnelmat" 7
menuText L PgnOptColumn "Saraketyyli" 1
menuText L PgnOptSpace "V�lily�nti siirron mumeron j�lkeen" 18
menuText L PgnOptStripMarks "Piilota ruutu/nuoli-koodit" 1
menuText L PgnOptChess "Nappulat" 6
menuText L PgnOptScrollbar "Vierityspalkki" 6
menuText L PgnOptBoldMainLine "Lihavoitu p��muunnelma" 4
menuText L PgnColor "V�rit" 0
menuText L PgnColorHeader "Yl�tunniste" 0
menuText L PgnColorAnno "Huomautukset" 0
menuText L PgnColorComments "Kommentit" 0
menuText L PgnColorVars "Muunnelmat" 0
menuText L PgnColorBackground "Tausta" 0
menuText L PgnColorMain "P��muunnelma" 0
menuText L PgnColorCurrent "Nykyinen siirto" 1
menuText L PgnColorNextMove "Seuraava siirto" 0
menuText L PgnHelp "Apu" 0
menuText L PgnHelpPgn "PGN-apu" 0
menuText L PgnHelpIndex "Indeksi" 0
translate L PgnWindowTitle {PGN: peli %u}

# Crosstable window menus:
menuText L CrosstabFile "Turnaustaulukko" 0
menuText L CrosstabFileText "Tallenna tekstin�" 8
menuText L CrosstabFileHtml "Tallenna HTML-muodossa" 8
menuText L CrosstabFileLaTeX "Tallenna LaTeX-muodossa" 8
menuText L CrosstabFileClose "Sulje" 0
menuText L CrosstabEdit "Muokkaa" 0
menuText L CrosstabEditEvent "Tapahtuma" 0
menuText L CrosstabEditSite "Paikkakunta" 0
menuText L CrosstabEditDate "P�iv�m��r�" 0
menuText L CrosstabOpt "Vaihtoehdot" 0
menuText L CrosstabOptColorPlain "Pelkk� teksti" 0
menuText L CrosstabOptColorHyper "Hyperteksti" 0
menuText L CrosstabOptTieWin "Tiebreak-voittojen mukaan" 1
menuText L CrosstabOptTieHead "Tiebreak vastakkain" 1
menuText L CrosstabOptThreeWin "3 pistett� voitosta " 1
menuText L CrosstabOptAges "I�t vuosina" 8
menuText L CrosstabOptNats "Kansakunnat" 0
menuText L CrosstabOptTallies "Voitto/tappio/tasapeli" 0
menuText L CrosstabOptRatings "Ohjearvot" 0
menuText L CrosstabOptTitles "Arvonimet" 0
menuText L CrosstabOptBreaks "Tiebreak-tulokset" 4
menuText L CrosstabOptDeleted "Sis�llyt� poistetut pelit" 8
menuText L CrosstabOptColors "V�ritiedot (Ainoastaan Swiss)" 0
menuText L CrosstabOptColorRows "Rivien v�ri" 0
menuText L CrosstabOptRowsColor "Turnaustaulukon rivit" 0 {Tulostaulukon rivin v�ri}
menuText L CrosstabOptColumnNumbers "Numeroidut sarakkeet (Ainoastaan kaikki-pelaa-kaikki)" 2
menuText L CrosstabOptGroup "Ryhm�n tulokset" 0
menuText L CrosstabSort "Lajittele tietyn kriteerin mukaan" 0
menuText L CrosstabSortName "Nimi" 0
menuText L CrosstabSortRating "Ohjearvo" 0
menuText L CrosstabSortScore "Tulos" 0
menuText L CrosstabSortCountry "Maa" 0
menuText L CrosstabType "Formaatti" 0
menuText L CrosstabTypeAll "Kaikki-pelaa-kaikki" 0
menuText L CrosstabTypeSwiss "Swiss" 0
menuText L CrosstabTypeKnockout "Kierrokset" 0
menuText L CrosstabTypeAuto "Automaattinen" 1
menuText L CrosstabHelp "Apu" 0
menuText L CrosstabHelpCross "Turnaustaulukkoapu" 0
menuText L CrosstabHelpIndex "Apuindeksi" 0
translate L SetFilter {Aseta suodatin}
translate L AddToFilter {Lis�� suodattimeen}
translate L Swiss {Swiss}
translate L Category {Kategoria}

# Opening report window menus:
menuText L OprepFile "Raportti" 0
menuText L OprepFileText "Tulosta tekstiksi" 9
menuText L OprepFileHtml "Tulosta HTML�mm�ksi" 9
menuText L OprepFileLaTeX "Tulosta LaTeXsiksi" 9
menuText L OprepFileOptions "Vaihtoehdot" 0
menuText L OprepFileClose "Sulje raportti-ikkuna" 0
menuText L OprepFavorites "Suosikit" 1
menuText L OprepFavoritesAdd "Lis�� raportti" 0
menuText L OprepFavoritesEdit "Muokkaa raportin suosikit" 0
menuText L OprepFavoritesGenerate "Luo raportit" 0
menuText L OprepHelp "Apu" 0
menuText L OprepHelpReport "Avausraporttiapu" 0
menuText L OprepHelpIndex "Apuindeksi" 0

# Header search:
translate L HeaderSearch {Yleinen haku}
translate L EndSideToMove {Siirtovuorossa oleva puoli pelin lopussa}
translate L GamesWithNoECO {Pelit ilman ECOa?}
translate L GameLength {Pelin pituus}
translate L FindGamesWith {L�yd� liputetut pelit}
translate L StdStart {Ei standardialku}
translate L Promotions {Korottuminen}
translate L UnderPromo {Alikorotus}
translate L Comments {Kommentit}
translate L Variations {Muunnelmat}
translate L Annotations {Huomautukset}
translate L DeleteFlag {Poista lippu}
translate L WhiteOpFlag {Valkoisen avaus}
translate L BlackOpFlag {Mustan avaus}
translate L MiddlegameFlag {Keskipeli}
translate L EndgameFlag {Loppupeli}
translate L NoveltyFlag {Uutuus}
translate L PawnFlag {Sotilasasema}
translate L TacticsFlag {Taktiikat}
translate L QsideFlag {Kuningatarsivustan peli}
translate L KsideFlag {Kuningassivustan peli}
translate L BrilliancyFlag {Loistokkuus}
translate L BlunderFlag {M�hl�ys}
translate L UserFlag {K�ytt�j�}
translate L PgnContains {PGN sis�lt�� teksti�}
# ====== TODO To be translated ======
translate L PreComment {Pre-game Comment}
# ====== TODO To be translated ======
translate L PostComment {End Comment}

# Game list window:
translate L GlistNumber {Numero}
translate L GlistWhite {Valkoinen}
translate L GlistBlack {Musta}
translate L GlistWElo {V-Elo}
translate L GlistBElo {M-Elo}
translate L GlistEvent {Tapahtuma}
translate L GlistSite {Paikka}
translate L GlistRound {Kierros}
translate L GlistDate {P�iv�m��r�}
translate L GlistYear {Vuosi}
translate L GlistEventDate {Tapahtuman p�iv�m��r�}
translate L GlistResult {Tulos}
translate L GlistLength {Pituus}
translate L GlistCountry {Maa}
translate L GlistECO {ECO}
translate L GlistOpening {Siirrot}
translate L GlistEndMaterial {Loppumateraali}
translate L GlistDeleted {Poistetut}
translate L GlistFlags {Liput}
translate L GlistVariations {Muunnelmat}
translate L GlistComments {Kommentit}
translate L GlistAnnos {Huomautukset}
translate L GlistStart {Alku}
translate L GlistGameNumber {Pelin numero}
translate L GlistFindText {L�yd�}
translate L GlistMoveField {Siirto}
translate L GlistEditField {Konfiguroi}
translate L GlistAddField {Lis��}
translate L GlistDeleteField {Poista}
translate L GlistColor {V�ri}
translate L GlistSort {Lajittele tietokanta}

# menu shown with right mouse button down on game list.
translate L GlistRemoveThisGameFromFilter  {Poista}
translate L GlistRemoveGameAndAboveFromFilter  {Poista kaikki ylh��ll�}
translate L GlistRemoveGameAndBelowFromFilter  {Poista kaikki alhaalla}
translate L GlistDeleteGame {Poista t�m� peli}
translate L GlistDeleteAllGames {Poista suodattimen kaikki pelit}
translate L GlistUndeleteAllGames {Palauta suodattimen kaikki pelit}

translate L GlistAlignL {Tasaa vasemmalle}
translate L GlistAlignR {Tasaa oikealle}
translate L GlistAlignC {Tasaa keskelle}

# Maintenance window:
translate L DatabaseName {Tietokannan nimi:}
translate L TypeIcon {Tietokannan tyyppi}
translate L NumOfGames {Pelit:}
translate L NumDeletedGames {Poistetut pelit:}
translate L NumFilterGames {Suodattimen pelit:}
translate L YearRange {Vuoden vaihteluv�li:}
translate L RatingRange {Elo-luvun vaihteluv�li:}
translate L Description {Kuvaus}
translate L Flag {Lippu}
translate L CustomFlags {Mukautetut liput}
translate L DeleteCurrent {Poista nykyinen peli}
translate L DeleteFilter {Poista suodatinpelit}
translate L DeleteAll {Poista kaikki pelit}
translate L UndeleteCurrent {Palauta nykyinen peli}
translate L UndeleteFilter {Palauta suodatinpelit}
translate L UndeleteAll {Palauta kaikki pelit}
translate L DeleteTwins {Poista kaksoispelit}
translate L MarkCurrent {Merkitse nykyinen peli}
translate L MarkFilter {Merkitse suodatinpeli}
translate L MarkAll {Merkitse kaikki pelit}
translate L UnmarkCurrent {Poista merkint� nykyisest� pelist�}
translate L UnmarkFilter {Poista merkint� suodatinpelist�}
translate L UnmarkAll {Poista merkint� kaikista peleist�}
translate L Spellchecking {Tavutuksen tarkastus}
translate L MakeCorrections {Tee korjaukset}
translate L Ambiguous {Moniselitteinen}
translate L Surnames {Sukunimet}
translate L Players {Pelaajat}
translate L Events {Tapahtumat}
translate L Sites {Paikat}
translate L Rounds {Kierrokset}
translate L DatabaseOps {Tietokantatoiminnat}
translate L ReclassifyGames {ECO-luokittele pelit}
translate L CompactDatabase {Kompakti tietokanta}
translate L SortDatabase {Lajittele tietokanta}
translate L AddEloRatings {Lis�� Elo-luvut}
translate L AutoloadGame {Lataa peli automaattisesti}
translate L StripTags {Poista ylim��r�iset tagit}
translate L StripTag {Poista tag}
translate L CheckGames {Tarkista pelit}
translate L Cleaner {Puhdistaja}
translate L CleanerHelp {
Puhdistaja suorittaa kaikki alla valitut toiminnot nykyisess� tietokannassa.

Nykyiset asetukset ECO-luokituksessa ja kaksoispelien poistossa p�tev�t jos ne on valittu.
}
translate L CleanerConfirm {
Kun puhdistajan huolto on aloitettu sit� ei voi keskeytt��.

T�m� voi vied� pitk��n. Oletko varma, ett� haluat suorittaa valitut huoltotoiminnot?
}
# Twinchecker
translate L TwinCheckUndelete {vaihtele)}
translate L TwinCheckprevPair {Edellinen pari}
translate L TwinChecknextPair {Seuraava pari}
translate L TwinChecker {Kaksoispelien tarkastaja}
translate L TwinCheckTournament {Turnauksen pelit:}
translate L TwinCheckNoTwin {Ei kaksonen}
translate L TwinCheckNoTwinfound {T�h�n peliin ei havaittu kaksosta.\nTo k�yt� ensin "Poista kaksoispelit" toimintoa n�ytt��ksesi kaksoset k�ytt�en t�t� ikkunaa.}
translate L TwinCheckTag {Jaa tagit...}
translate L TwinCheckFound1 {Scid l�ysi $result kaksoispeli�}
translate L TwinCheckFound2 {ja aseta niiden poistoliput}
translate L TwinCheckNoDelete {T�ss� tietokannassa ei ole pelej� poistettavaksi.}
# bug here... can't use \n\n
translate L TwinCriteria1 {Heikko kriteerivaroitus\n}
translate L TwinCriteria2 {Olet valinnut "Ei" "Samat siirrot" varten, joka on eritt�in huono.\n
Jatka kuitenkin?}
translate L TwinCriteria3 {Sinun t�ytyy m��ritell� "Kyll�" v�hint��n kahdelle "Sama Puoli", "Sama Kierros" ja "Sama Vuosi"-asetuksille.\n
Jatka kuitenkin?}
translate L TwinCriteriaConfirm {Scid: Vahvista kaksoisasetukset}
translate L TwinChangeTag "Vaihda seuraavat pelitagit:\n\n"
translate L AllocRatingDescription "Lis�� pelaajan Elo-luvut asiaankuuluville peleille k�ytt�en tietoja tavutus (Elo-luvut)-tiedostoa."
translate L RatingOverride "Kirjoita olemassaolevien Elo-lukujen p��lle?"
translate L AddRatings "Lis�� Elo-luvut"
translate L AddedRatings {Scid lis�si $r Elo-lukua $g peliin.}

#Bookmark editor
translate L NewSubmenu "Lis�� valikko"

# Comment editor:
translate L AnnotationSymbols  {Huomautukset}
translate L Comment {Kommentit}
translate L InsertMark {Merkit}
translate L InsertMarkHelp {
Liit�/poista-merkki: Valitse v�ri, tyyppi, ruutu.
Liit�/poista-nuoli: Napauta hiiren oikealla n�pp�imell� kahta ruutua.
}

# Nag buttons in comment editor:
translate L GoodMove {Hyv� siirto}
translate L PoorMove {Huono siirto}
translate L ExcellentMove {Erinomainen siirto}
translate L Blunder {M�hl�ys}
translate L InterestingMove {Mielenkiintoinen siirto}
translate L DubiousMove {Kyseenalainen siirto}
translate L WhiteDecisiveAdvantage {Valkoisella on ratkaiseva etu}
translate L BlackDecisiveAdvantage {Mustalla on ratkaiseva etu}
translate L WhiteClearAdvantage {Valkealla on selv� etu}
translate L BlackClearAdvantage {Mustalla on selv� etu}
translate L WhiteSlightAdvantage {Valkealla on liev� etu}
translate L BlackSlightAdvantage {Mustalla on liev� etu}
translate L Equality {Tasa-asema}
translate L Unclear {Ep�selv�}
translate L Diagram {Kuvio}

# Board search:
translate L BoardSearch {Laudan etsint�}
translate L FilterOperation {Suodattimen asetus}
translate L FilterAnd {Rajoita suodatin (JA)}
translate L FilterOr {Lis�� suodattimeen (TAI)}
translate L FilterIgnore {Nollaa suodatin}
translate L SearchType {Etsi tyyppi�}
translate L SearchBoardExact {Tarkka asema (kaikki nappulat samoissa ruuduissa)}
translate L SearchBoardPawns {Sotilaat (sama materiaali, kaikki sotilaat samoissa ruuduissa)}
translate L SearchBoardFiles {Linjat (sama materiaali, kaikki sotilaat samoilla linjoilla)}
translate L SearchBoardAny {Mik� tahansa (sama materiaali, sotilaat ja upseerit miss� tahansa)}
translate L SearchInRefDatabase {Etsi tietokannasta }
translate L LookInVars {Katso muunnelmista}
# ====== TODO To be translated ======
translate L CQLLabel {CQL Script}
# ====== TODO To be translated ======
translate L CQLComments {Allow Comments}
# ====== TODO To be translated ======
translate L CQLStrip {Strip Match Comments}

# Material search:
translate L MaterialSearch {Materiaalihaku}
translate L Material {Materiaali}
translate L Patterns {Kuviot}
translate L Zero {Nolla}
translate L Any {Mik� tahansa}
translate L CurrentBoard {Nykyinen lauta}
translate L CommonEndings {Yleiset loppupelit}
translate L CommonPatterns {Yleiset kuviot}
translate L MaterialDiff {Materiaaliero}
translate L squares {ruudut}
translate L SameColor {Sama v�ri}
translate L OppColor {Vastakkainen v�ri}
translate L Either {Jompikumpi}
translate L MoveNumberRange {Siirtonumeron vaihteluv�li}
translate L MatchForAtLeast {T�sm�t� v�hint��n}
translate L HalfMoves {Puolisiirrot}

# Common endings in material search:
translate L EndingPawns {Sotilasloppupelit}
translate L EndingRookVsPawns {Torni vastaan sotilas/sotilaat}
translate L EndingRookPawnVsRook {Torni ja 1 sotilas vastaan torni}
translate L EndingRookPawnsVsRook {Torni ja sotilas/sotilaat vastaan torni}
translate L EndingRooks {Torni vastaan torni -loppupelit}
translate L EndingRooksPassedA {Torni vastaan torni -loppupelit a-linjan vapaasotilaan kanssa}
translate L EndingRooksDouble {Kahden tornin loppupelit}
translate L EndingBishops {L�hetti vastaan l�hetti-loppupelit}
translate L EndingBishopVsKnight {L�hetti vastaan ratsu -loppupelit}
translate L EndingKnights {Ratsu vastaan ratsu -loppupelit}
translate L EndingQueens {Kuningatar vastaan kuningatar -loppupelit}
translate L EndingQueenPawnVsQueen {Kuningatar ja 1 sotilas vastaan kuningatar}
translate L BishopPairVsKnightPair {Kaksi l�hetti� vastaan kaksi ratsua -keskipeli}

# Common patterns in material search:
translate L PatternWhiteIQP {Valkoinen eristetty kuningatarsotilas}
translate L PatternWhiteIQPBreakE6 {Valkoinen eristetty kuningatarsotilas: d4-d5 murto vastaan e6}
translate L PatternWhiteIQPBreakC6 {Valkoinen eristetty kuningatarsotilas: d4-d5 murto vastaan c6}
translate L PatternBlackIQP {Musta eristetty kuningatarsotilas}
translate L PatternWhiteBlackIQP {Valkoinen eristetty kuningatarsotilas vastaan musta rristetty kuningatarsotilas}
translate L PatternCoupleC3D4 {Valkoinen c3+d4 eristetty sotilaspari}
translate L PatternHangingC5D5 {Mustan riippuvat sotilaat c5:ss� ja d5:ss�}
translate L PatternMaroczy {Maroczy-keskusta (Sotilaat c4 ja e4-ruuduissa)}
translate L PatternRookSacC3 {Torninuhraus c3:ssa}
translate L PatternKc1Kg8 {O-O-O vastaan O-O (Kc1 vastaan Kg8)}
translate L PatternKg1Kc8 {O-O vastaan O-O-O (Kg1 vastaan Kc8)}
translate L PatternLightFian {Valkean ruudun sivustointi (L�hetti-g2 vastaan l�hetti-b7)}
translate L PatternDarkFian {Mustan ruudun sivustointi (L�hetti-b2 vastaan l�hetti-g7)}
translate L PatternFourFian {Nelj� sivustointia (L�hetit b2:ssa,g2:ssa,b7:ssa ja g7:ssa)}

# Game saving:
translate L Today {T�n��n}
translate L ClassifyGame {Luokittele peli}

# Setup position:
translate L EmptyBoard {Tyhjenn� lauta}
translate L InitialBoard {Alkuasema}
translate L SideToMove {Siirtovuorossa oleva puoli}
translate L MoveNumber {Siirron numero}
translate L Castling {Linnoitus}
translate L EnPassantFile {Ohestaly�nnin linja}
translate L ClearFen {Tyhjenn� FEN}
translate L PasteFen {Liit� FEN}

translate L SaveAndContinue {Tallenna ja jatka}
translate L DiscardChangesAndContinue {Hylk�� muutokset}
translate L GoBack {Mene takaisin}

# Replace move dialog:
translate L ReplaceMove {Korvaa siirto}
translate L AddNewVar {Lis�� muunnelma}
translate L NewMainLine {Uusi p��muunnelma}
translate L ReplaceMoveMessage {Siirto on jo olemassa. Ole hyv� ja sy�t� valinta.
Korvaa siirto hylk�� kaikki seuraavat siirrot.}

# Make database read-only dialog:
translate L ReadOnlyDialog {Haluatko tehd� t�st� tietokannasta kirjoitussuojatun?

(Voit tehd� tietokannasta uudelleen kirjoituskelpoisen sulkemalla ja uudelleenavaamalla sen.)}

translate L ExitDialog {Haluatko todella poistua Scid-ohjelmasta?}
translate L ClearGameDialog {T�t� peli� on muutettu.\nDo haluatko tallentaa sen?}
translate L ExitUnsaved {Seuraavissa tietokannoissa on tallentamattomia pelej�. Jos poistut nyt niin n�m� muutokset h�vi�v�t.}
# ====== TODO To be translated ======
translate L ChangeTextDialog {Enabling text colour globally requires restart.}
# ====== TODO To be translated ======
translate L ChangeDockDialog {Changing Docking requires a restart.}
# ====== TODO To be translated ======
translate L FontSelectDialog "This is some sample text\nDouble click above to change font, then select 'ok'\nAaBbCcDdEeFfGgHhIiJjKkLlMm 0123456789. +=-"
# ====== TODO To be translated ======
translate L ExitNow {Exit now ?}

# Import window:
translate L PasteCurrentGame {Liit� nykyinen peli}
translate L ImportHelp1 {Kirjoita tai liit� PGN yl�puolella olevaan kehykseen}
translate L ImportHelp2 {Peli� tuotaessa ilmenneet virheet n�ytet��n t�ss�}
translate L OverwriteExistingMoves {Kirjoita olomassaolevien siirtojen p��lle?}

# ECO Browser:
translate L ECOAllSections {Kaikki ECO-osat}
translate L ECOSection {ECO-osa}
translate L ECOSummary {Yhteenveto jotakin varten}
translate L ECOFrequency {Alakoodien yleisyys jotakin varten}

# Opening Report:
translate L OprepTitle {Avausraportti}
translate L OprepReport {Raportti}
translate L OprepGenerated {Luotu jonkin toimesta}
translate L OprepStatsHist {Tilastot ja historia}
translate L OprepStats {Tilastot}
translate L OprepStatAll {Kaikki raportin pelit}
translate L OprepStatBoth {Molemmat arvioitu}
translate L OprepStatSince {Siit� l�htien}
translate L OprepOldest {Vanhimmat pelit}
translate L OprepNewest {Uusimmat pelit}
translate L OprepPopular {Nykyinen suosio}
translate L OprepFreqAll {Yleisyys kaikkina vuosina:   }
translate L OprepFreq1   {Viimeisimm�n vuoden aikana: }
translate L OprepFreq5   {Viimeisten viiden vuoden aikana: }
translate L OprepFreq10  {Viimeisten kymmenen vuoden aikana: }
translate L OprepEvery {kerran joka %u pelit}
translate L OprepUp {yl�s %u%s kaikista vuosista}
translate L OprepDown {alas %u%s kaikista vuosista}
translate L OprepSame {ei muutosta kaikista vuosista}
translate L OprepMostFrequent {Yleisimm�t pelaajat}
translate L OprepMostFrequentOpponents {Yleisimm�t vastustajat}
translate L OprepRatingsPerf {Elo-luvut ja suoritus}
translate L OprepAvgPerf {Keskim��r�iset Elo-luvut ja suoritus}
translate L OprepWRating {Valkean Elo-luku}
translate L OprepBRating {Mustan Elo-luku}
translate L OprepWPerf {Valkean suoritus}
translate L OprepBPerf {Mustan suoritus}
translate L OprepHighRating {Korkeimpien keskim��r�isten Elo-lukujen pelit}
translate L OprepTrends {Tuloksen trendit}
translate L OprepResults {Tuloksen pituudet ja yleisyydet}
translate L OprepLength {Pelin pituus}
translate L OprepFrequency {Yleisyys}
translate L OprepWWins {Valkoinen voittaa: }
translate L OprepBWins {Musta voittaa: }
translate L OprepDraws {Pelit:      }
translate L OprepWholeDB {koko tietokanta}
translate L OprepShortest {Lyhyimm�t voitot}
translate L OprepMovesThemes {Siirrot ja teemat}
translate L OprepMoveOrders {Siirtovaihdot raportin asemaan saapuessa}
translate L OprepMoveOrdersOne \
  {T�h�n asemaan saavuttaessa oli vain yksi siirtovaihto:}
translate L OprepMoveOrdersAll \
  {T�h�n asemaan saavuttaessa oli %u siirtovaihtoa:}
translate L OprepMoveOrdersMany \
  {T�h�n asemaan saavuttaessa oli %u siirtovaihtoa. K�rjess� %u ovat:}
translate L OprepMovesFrom {Siirrot raportin asemasta}
translate L OprepMostFrequentEcoCodes {Yleisimm�t ECO-koodit}
translate L OprepThemes {Asemalliset teemat}
translate L OprepThemeDescription {Teemojen yleisyys jokaisen pelin ensimm�isiss� %u siirroissa}
translate L OprepThemeSameCastling {Saman puolen linnoittuminen}
translate L OprepThemeOppCastling {Vastakkainen linnoittuminen}
translate L OprepThemeNoCastling {Molemmat kuninkaat linnoittamatta}
translate L OprepThemeKPawnStorm {Kuningassivustan sotilasruynn�kk�}
translate L OprepThemeQueenswap {Kuningattaret vaihdettu}
translate L OprepThemeWIQP {Valkoisen eristetty kuningatarsotilas}
translate L OprepThemeBIQP {Mustan eristetty kuningatarsotilas}
translate L OprepThemeWP567 {Valkean sotilas 5/6/7:ll� rivill�}
translate L OprepThemeBP234 {Mustan sotilas 2/3/4:ll� rivill�}
translate L OprepThemeOpenCDE {Avoin c/d/e-linja}
translate L OprepTheme1BishopPair {Vain yhdell� puolella on l�hettipari}
translate L OprepEndgames {Loppupelit}
translate L OprepReportGames {Raportin pelit}
translate L OprepAllGames    {Kaikki pelit}
translate L OprepEndClass {Materiaali jokaisen pelin lopussa }
translate L OprepTheoryTable {Teoriataulukko}
translate L OprepTableComment {Luotu %u korkeimman Elo-luvun peleist�}
translate L OprepExtraMoves {Ylim��r�iset huomatussiirrot teoriataulukossa}
translate L OprepMaxGames {Maksimim��r� pelej� teoriataulukossa}
# ====== TODO To be translated ======
translate L OprepMaxLines {Maximum games for statistics}
translate L OprepViewHTML {N�yt� HTML}
translate L OprepViewLaTeX {N�yt� LaTeX}

# Player Report:
translate L PReportTitle {Pelaajaraportti}
translate L PReportColorWhite {Valkeilla nappuloilla}
translate L PReportColorBlack {Mustilla nappuloilla}
translate L PReportBeginning {Aloittamalla t�m�n kanssa}
translate L PReportMoves {j�lkeen %s}
translate L PReportOpenings {Avaukset}
translate L PReportClipbase {Tyhjenn� leikep�yt� ja kopioi sopivat pelit siihen}

# Piece Tracker window:
translate L TrackerSelectSingle {Hiiren vasen n�pp�in valitsee t�m�n nappulan.}
translate L TrackerSelectPair {Hiiren vasen n�pp�in valitsee t�m�n nappulan; oikea n�pp�in valitsee my�s sen sisarukset}
translate L TrackerSelectPawn {Hiiren vasen n�pp�in valitsee t�m�n sotilaan; oikea n�pp�in valitsee kaikki 8 sotilasta}
translate L TrackerStat {Tilastotieto}
translate L TrackerGames {% pelit, joissa siirto ruutuun}
translate L TrackerTime {% aika jokaisessa ruudussa}
translate L TrackerMoves {Siirrot}
translate L TrackerMovesStart {Sy�t� siirtonumero jossa j�ljityksen pit�isi alkaa}
translate L TrackerMovesStop {Sy�t� siirtonumero jossa j�ljityksen pit�isi pys�hty�}

# Game selection dialogs:
translate L SelectAllGames {Kaikki pelit}
translate L SelectFilterGames {Suodata pelit}
translate L SelectTournamentGames {Vain nykyisen turnauksen pelit}
translate L SelectOlderGames {Vain vanhemmat pelit}

# Delete Twins window:
translate L TwinsNote {Jotta pelit merkit��n kaksoispeleiksi niill� t�ytyy olla samat pelaajat ja muita kriteerej� kuten alla. On parasta tehd� tietokannan tavutuksen tarkastus ennen kaksoispelien havaitsemista. }
translate L TwinsCriteria {Kaksoispelin kriteeri}
translate L TwinsWhich {Tarkastele kaikki/suodata}
translate L TwinsColors {Saman pelaajan v�rit}
translate L TwinsEvent {Sama tapahtuma}
translate L TwinsSite {Sama paikka}
translate L TwinsRound {Sama kierros}
translate L TwinsYear {Sama vuosi}
translate L TwinsMonth {Sama kuukausi}
translate L TwinsDay {Sama p�iv�}
translate L TwinsResult {Sama tulos}
translate L TwinsECO {Sama ECO-koodi}
translate L TwinsMoves {Samat siirrot}
translate L TwinsPlayers {Pelaajien nimet}
translate L TwinsPlayersExact {T�sm�llinen vastaavuus}
translate L TwinsPlayersPrefix {Ainoastaan ensimm�iset nelj� kirjainta}
translate L TwinsWhen {Poistettaessa kaksoispelej�}
translate L TwinsSkipShort {�l� ota huomioon alle 5-siirtoisia pelej�}
translate L TwinsUndelete {Palauta kaikki pelit ensiksi}
translate L TwinsSetFilter {Aseta suodatin poistettaville kaksoispeleille}
translate L TwinsComments {Pid� aina kommentoidut pelit}
translate L TwinsVars {Pid� aina muunnelmia sis�lt�v�t pelit}
translate L TwinsDeleteWhich {Poista mik� peli?}
translate L TwinsDeleteShorter {Lyhyempi peli}
translate L TwinsDeleteOlder {Pienempi pelinumero}
translate L TwinsDeleteNewer {Suurempi pelinumero}
translate L TwinsDelete {Poista pelit}

# Name editor window:
translate L NameEditType {Nime� muokattava tyyppi}
translate L NameEditSelect {Muokattavat pelit}
translate L NameEditReplace {Korvaa}
translate L NameEditWith {Kanssa}
translate L NameEditMatches {Vastaa: Paina Ctrl+1:sta  Ctrl+9:een valitaksesi}

# Check games window:

# Classify window:
translate L Classify {Luokittele}
translate L ClassifyWhich {ECO-luokittele}
translate L ClassifyAll {Kaikki pelit (kirjoita vanhojen ECO-koodien p��lle)}
translate L ClassifyYear {Kaikki viime vuonna pelatut pelit}
translate L ClassifyMonth {Kaikki viime kuukautena pelatut pelit}
translate L ClassifyNew {Ainoastaan viel� ilman ECO -koodia olevat pelit}
translate L ClassifyCodes {K�ytett�v�t ECO-koodit}
translate L ClassifyBasic {Ainoastaan peruskoodit ("B12", ...)}
translate L ClassifyExtended {Scidin laajennukset ("B12j", ...)}

# Compaction:
translate L NameFile {Nime� tiedosto}
translate L GameFile {Pelitiedosto}
translate L Names {Nimet}
translate L Unused {K�ytt�m�tt�m�t}
translate L SizeKb {Koko (kb)}
translate L CurrentState {Nykyinen tila}
translate L AfterCompaction {Pakkaamisen j�lkeen}
translate L CompactNames {Pakatun tiedoston nimi}
translate L CompactGames {Pakatun pelin tiedosto}
translate L NoUnusedNames "K�ytt�m�tt�mi� nimi� ei ole joten nimi on jo t�ysin pakattu."
translate L NoUnusedGames "Peli on jo t�ysin pakattu."
translate L NameFileCompacted {Nimitiedosto "[file tail [sc_base filename]]"a varten pakattiin.}
translate L GameFileCompacted {Pelitiedosto "[file tail [sc_base filename]]"a varten pakattiin.}

# Sorting:
translate L SortCriteria {Kriteeri}
translate L AddCriteria {Lis�� kriteeri}
translate L CommonSorts {Yleset lajittelut}
translate L Sort {Lajittele}

# Exporting:
translate L AddToExistingFile {Lis�� pelit olemassaolevaan tiedostoon?}
translate L ExportComments {Vie kommentit?}
translate L ExportVariations {Vie muunnelmat?}
translate L IndentComments {Sisenn� kommentit?}
translate L IndentVariations {Sisenn� muunnelmat?}
# ====== TODO To be translated ======
translate L InsertNewlines {Insert newlines every 80 chars?}
translate L ExportColumnStyle {Sarakkeen tyyli (yksi siirto rivi� kohden)?}
translate L ExportSymbolStyle {Symbolinen huomautustyyli:}
translate L ExportStripMarks {Poista ruutu/nuoli-merkkikoodit kommenteista?}
# ====== TODO To be translated ======
translate L ExportFlags {Export Scid Flags}

# Goto game/move dialogs:
translate L LoadGameNumber {Lataa peli numero}
translate L GotoMoveNumber {Mene siirtonumeroon}

# Copy games dialog:
translate L CopyGames {Pelien kopionti}
translate L CopyConfirm {
Kopioi [::hy�dyt::tuhannet $nGamesToCopy] peli(t) jostakin "$fromName" johonkin "$targetName"?
}
translate L CopyErr {Pelej� ei voi kopioda}
translate L CopyErrSource {L�hdetietokanta}
translate L CopyErrTarget {Kohdetietokanta}
translate L CopyErrNoGames {ei pelej� suodattimessa}
translate L CopyErrReadOnly {Kirjoitussuojattu}
translate L CopyErrNotOpen {ei avoinna}

# Colors:
translate L LightSquares {Valkeat ruudut}
translate L DarkSquares {Mustat ruudut}
translate L SelectedSquares {Valitut}
translate L Grid {Ruudukko}
translate L Previous {Edellinen}
translate L WhitePieces {Valkeat nappulat}
translate L BlackPieces {Mustat nappulat}
translate L WhiteBorder {Valkoinen raja}
translate L BlackBorder {Musta raja}
translate L ArrowMain   {P��nuoli}
translate L ArrowVar    {Muunnelmanuolet}
# ====== TODO To be translated ======
translate L ShowArrows  {Show Arrows}

# Novelty window:
translate L FindNovelty {L�yd� uutuus}
translate L Novelty {Uutuus}
translate L NoveltyInterrupt {Uutuuden etsint� keskeytetty}
translate L NoveltyNone {Uutuutta ei l�ydetty t�h�n peliin}
translate L NoveltyHelp {L�yd� ensimm�inen ainutlaatuinen siirto valitussa tietokannassa}

# Sounds configuration:
translate L SoundsFolder {��nikansio}
translate L SoundsFolderHelp {Kansion pit�� sis�lt�� tiedostot Kuningas.wav, 1.wav, jne}
translate L SoundsAnnounceOptions {Siirron ilmoitukset}
translate L SoundsAnnounceNew {Ilmoita uudet siirrot}
translate L SoundsAnnounceForward {Ilmoita siirrytt�ess� eteenp�in}
translate L SoundsAnnounceBack {Ilmota siirrytt�ess� taaksep�in}

# Upgrading databases:
translate L Upgrading {P�ivitys}
translate L ConfirmOpenNew {
T�m� on vanhan formaatin (si3) tietokanta jota ei voi avata Scid 4.0:ssa, mutta uusi formaatti versio (si4) on jo luotu.

Haluatko avata tietokannan uuden formaatin version?
}
translate L ConfirmUpgrade {
T�m� on "si3"-formaatti tietokanta. Se t�ytyy k��nt�� "si4"-formaatiksi ennen kuin sit� voi k�ytt�� Scid vs. PC 4.0:ss�.

T�m� prosessi on peruuttamaton ja se t�ytyy tehd� vain kerran. Voit peruuttaa sen jos se vie liian pitk�n ajan.

Haluatko p�ivitt�� t�m�n tietokannan nyt?
}

# Recent files options:
translate L RecentFilesMenu {Tiedostovalikossa olevien tiedostojen lukum��r�}
translate L RecentFilesExtra {Alivalikossa olevien tiedostojen lukum��r�}

translate L MyPlayerNamesDescription {
Sy�t� ensisijaisten pelaajien nimet alle, yksi nimi per rivi.
P��shakkilautaa k��nnet��n tarvittaessa joka kerta kun listassa olevan pelaajan peli ladataan.
}

#Coach
translate L showblunderexists {n�yt� falangin m�hl�ys}
translate L showblundervalue {n�yt� m�hl�yksen arvo}
translate L showscore {n�yt� pistem��r�}
translate L coachgame {valmennuspeli}
translate L configurecoachgame {Konfiguroi taktinen peli}
translate L configuregame {Konfiguroi UCI-peli}
translate L Phalanxengine {Falangin ohjelma}
translate L Coachengine {Valmennuohjelma}
translate L difficulty {vaikeus}
translate L hard {vaikea}
translate L easy {helppo}
translate L Playwith {Pelaa jonkun kanssa}
translate L white {valkoinen}
translate L black {musta}
translate L both {molemmat}
translate L Play {Pelaa}
translate L Noblunder {Ei m�hl�ys}
translate L blunder {m�hl�ys}
translate L Noinfo {-- Ei tietoja --}
translate L moveblunderthreshold {siirto on m�hl�ys jos menestys on suurempi kuin}
translate L limitanalysis {Valmentajan analyysiaika}
translate L seconds {sekunnit}
translate L Abort {Keskeyt�}
translate L Resume {Jatka}
translate L Restart {Aloita uudelleen}
translate L OutOfOpening {Avauksen ulkopuolella}
translate L NotFollowedLine {Et seurannut muunnelmaa}
translate L DoYouWantContinue {Haluatko jatkaa?}
translate L CoachIsWatching {Valmentaja seuraa}
translate L Ponder {Pysyv� pohdinta}
translate L LimitELO {Rajaa ELO-vahvuus}
translate L DubiousMovePlayedTakeBack {Pelasit kyseenalaisen siirron, haluatko perua?}
translate L WeakMovePlayedTakeBack {Pelasit heikon siirron, haluatko perua?}
translate L BadMovePlayedTakeBack {Pelasit huonon siirron, haluatko perua?}
translate L Iresign {Antaudun}
translate L yourmoveisnotgood {siirtosi ei ole hyv�}
translate L EndOfVar {Muunnelman loppu}
translate L Openingtrainer {Avausvalmentaja}
translate L DisplayCM {N�yt� ehdokassiirrot}
translate L DisplayCMValue {N�yt� ehdokassiirtojen arvo}
translate L DisplayOpeningStats {N�yt� tilastot}
translate L ShowReport {N�yt� raportti}
translate L NumberOfGoodMovesPlayed {pelatut hyv�t siirrot}
translate L NumberOfDubiousMovesPlayed {pelatut ep�ilytt�v�t siirrot}
translate L NumberOfTimesPositionEncountered {aseman kohtaamiskerrat}
translate L PlayerBestMove  {Salli ainoastaan parhaat siirrot}
translate L OpponentBestMove {Vastustaja pelaa parhaat siirrot}
translate L OnlyFlaggedLines {Vain liputetut muunnelmat}
translate L resetStats {Nollaa tilastot}
translate L Movesloaded {Ladatut siirrot}
translate L PositionsNotPlayed {Pelaamattomat asemat}
translate L PositionsPlayed {Pelatut asemat}
translate L Success {Menestys}
translate L DubiousMoves {Ep�ilytt�v�t siirrot}
translate L ConfigureTactics {Valitse pulma}
translate L ResetScores {Nollaa tulokset}
translate L LoadingBase {Tietokannan lataus}
translate L Tactics {Taktiikat}
translate L ShowSolution {N�yt� ratkaisu}
translate L Next {Seuraava}
translate L ResettingScore {Tuloksen nollaus}
translate L LoadingGame {Pelin lataus}
translate L MateFound {Matti l�ytynyt}
translate L BestSolutionNotFound {Parasta ratkaisua EI l�ydetty!}
translate L MateNotFound {Mattia ei l�ydetty}
translate L ShorterMateExists {Lyhyempi matti on olemassa}
translate L ScorePlayed {Pelattu tulos}
translate L Expected {odotettu}
translate L ChooseTrainingBase {Valitse harjoitustietokanta}
translate L Thinking {Ajattelee}
translate L AnalyzeDone {Analyysi tehty}
translate L WinWonGame {Voita voittopeli}
translate L Lines {Muunnelmat}
translate L ConfigureUCIengine {Konfiguroi ohjelma}
translate L SpecificOpening {Tietty avaus}
# ====== TODO To be translated ======
translate L ImportECO {Import ECO}
translate L StartNewGame {Aloita uusi peli}
translate L FixedLevel {M��r�tty taso}
translate L Opening {Avaus}
translate L RandomLevel {Satunnainen taso}
translate L StartFromCurrentPosition {Aloita nykyisest� asemasta}
translate L FixedDepth {M��r�tty syvyys}
translate L Nodes {Solmut}
translate L Depth {Syvyys}
translate L Time {Aika}
# ====== TODO To be translated ======
translate L Auto {Auto}
# ====== TODO To be translated ======
translate L Score {Score}
# ====== TODO To be translated ======
translate L {Score Combo} {Score Combo}
# ====== TODO To be translated ======
translate L {Time Combo} {Time Combo}
translate L SecondsPerMove {Sekunnit per siirto}
translate L DepthPerMove {Syvyys per siirto}
translate L MoveControl {Siirtokontrolli}
translate L TimeLabel {Aika per siirto}
translate L AddVars {Lis�� muunnelmat}
translate L AddScores {Lis�� tulokset}
translate L Engine {Ohjelma}
translate L TimeMode {Aikamoodi}
translate L TimeBonus {Aika + lis�ys}
translate L TimeMin {minuutti}
translate L TimeSec {sekunti}
translate L AllExercisesDone {Kaikki harjoitukset tehty}
translate L MoveOutOfBook {Avauskirjaston ulkopuolinen siirto}
translate L LastBookMove {Avauskirjaston viimeinen siirto}
translate L AnnotateSeveralGames {Joukkohuomautus\nFrom nykyisest� johonkin :}
translate L FindOpeningErrors {Vain avausvirheet}
translate L MarkTacticalExercises {Merkitse taktiset harjoitukset}
translate L UseBook {K�yt� avauskirjastoa}
translate L MultiPV {Useat muunnelmat}
translate L Hash {Hash-muisti}
translate L OwnBook {K�yt� ohjelman avauskirjastoa}
translate L BookFile {Avauskirjasto}
translate L AnnotateVariations {Prosessoi muunnelmat}
translate L ShortAnnotations {Lyhyet huomautukset}
translate L addAnnotatorTag {Lis�� huomautuksen tekij�n merkki}
translate L AddScoreToShortAnnotations {Lis�� tulos huomautuksiin}
translate L Export {Vie}
translate L BookPartiallyLoaded {Avauskirjasto osittain ladattu}
translate L AddLine {Lis�� muunnelma}
translate L RemLine {Poista muunnelma}
translate L Calvar {Muunnelmien laskeminen}
translate L ConfigureCalvar {Asetukset}
# Opening names used in tacgame.tcl
translate L Reti {Retin avaus}
translate L English {Englantilainen peli}
translate L d4Nf6Miscellaneous {1.d4 Nf6 Sekalaiset avaukset}
translate L Trompowsky {Trompowskyn hy�kk�ys}
translate L Budapest {Budapestin gambiitti}
translate L OldIndian {Vanhaintialainen}
translate L BenkoGambit {Benk�-gambiitti}
translate L ModernBenoni {Moderni Benoni}
translate L DutchDefence {Hollantilainen puolustus}
translate L Scandinavian {Skandinaavilainen avaus}
translate L AlekhineDefence {Alehinin puolustus}
translate L Pirc {Pircin avaus}
translate L CaroKann {Caro-Kannin puolustus}
translate L CaroKannAdvance {Caro-Kannin etenemismuunnelma}
translate L Sicilian {Sisilialainen puolustus}
translate L SicilianAlapin {Sisilialaisen puolustuksen Alapinin muunnelma}
translate L SicilianClosed {Suljettu sisilialainen}
translate L SicilianRauzer {Sisilialaisen puolustuksen Rauzerin muunnelma}
translate L SicilianDragon {Sicilian puolustuksen lohik��rmemuunnelma}
translate L SicilianScheveningen {Sicilian puolustuksen Scheveningenin muunnelma}
translate L SicilianNajdorf {Sicilian puolustuksen Najdorfin muunnelma}
translate L OpenGame {Avopeli}
translate L Vienna {Wienil�inen peli}
translate L KingsGambit {Kuningasgambiitti}
translate L RussianGame {Ven�l�inen peli}
translate L ItalianTwoKnights {Italialainen peli/Kaksiratsupeli}
translate L Spanish {Espanjalainen peli}
translate L SpanishExchange {Espanjalaisen pelin vaihtomuunnelma}
translate L SpanishOpen {Avoin espanjalainen}
translate L SpanishClosed {Suljettu espanjalainen}
translate L FrenchDefence {Ranskalainen puolustus}
translate L FrenchAdvance {Ranskalainen puolustuksen etenemismuunnelma}
translate L FrenchTarrasch {Ranskalainen puolustuksen Tarraschin muunnelma}
translate L FrenchWinawer {Ranskalainen puolustuksen Winawerin muunnelma}
translate L FrenchExchange {Ranskalainen puolustuksen vaihtomuunnelma}
translate L QueensPawn {Kuningatarsotilaspelit}
translate L Slav {Slaavilainen puolustus}
translate L QGA {Vastaanotettu kuningatargambiitti}
translate L QGD {Hyl�tty kuningatargambiitti}
translate L QGDExchange {Hyl�tyn kuningatargambiitin vaihtomuunnelma}
translate L SemiSlav {Semi-slaavilainen puolustus}
translate L QGDwithBg5 {Hyl�tyn kuningatargambiitin Lg5-muunnelma}
translate L QGDOrthodox {Hyl�tyn kuningatargambiitin perinteinen muunnelma}
translate L Grunfeld {Gr�nfeldin puolustus}
translate L GrunfeldExchange {Gr�nfeldin puolustuksen vaihtomuunnelma}
translate L GrunfeldRussian {Gr�nfeldin puolustuksen ven�l�inen muunnelma}
translate L Catalan {Katalonialainen avaus}
translate L CatalanOpen {Katalonialaisen avauksen avoin muunnelma}
translate L CatalanClosed {Katalonialaisen avauksen suljettu muunnelma}
translate L QueensIndian {Kuningatarintialainen puolustus}
translate L NimzoIndian {Nimzo-intialainen puolustus}
translate L NimzoIndianClassical {Nimzo-intialainen puolustuksen klassinen muunnelma}
translate L NimzoIndianRubinstein {Nimzo-intialainen puolustuksen Rubinsteinin muunnelma}
translate L KingsIndian {Kuningasintialainen puolustus}
translate L KingsIndianSamisch {Kuningasintialainen puolustuksen S�mischin muunnelma}
translate L KingsIndianMainLine {Kuningasintialainen puolustuksen p��muunnelma}

# FICS
translate L ConfigureFics {Konfiguroi FICS}
translate L FICSLogin {Sis��nkirjautuminen}
translate L FICSGuest {Kirjaudu sis��n vieraana}
translate L FICSServerPort {Palvelinportti}
translate L FICSServerAddress {IP-osoite}
translate L FICSRefresh {Lataa uudelleen}
translate L FICSTimeseal {Timeseal}
translate L FICSTimesealPort {Timeseal-portti}
translate L FICSSilence {Konsolisuodatin}
translate L FICSOffers {Tarjoukset}
# ====== TODO To be translated ======
translate L FICSMakeOffer {Make Offer}
translate L FICSGames {Pelit}
translate L FICSFindOpponent {L�yd� vastustaja}
translate L FICSTakeback {Peru}
translate L FICSTakeback2 {Peru 2}
translate L FICSInitTime {Aika (minuutti)}
translate L FICSIncrement {Lis�ys (sekunti)}
translate L FICSRatedGame {Pisteytetty peli}
translate L FICSAutoColour {Automaattinen}
translate L FICSManualConfirm {Vahvista manuaalisesti}
translate L FICSFilterFormula {Suodata kaavalla}
translate L FICSIssueSeek {Julkaise haku}
translate L FICSAccept {Hyv�ksy}
translate L FICSDecline {Kielt�ydy}
translate L FICSColour {V�ri}
translate L FICSSend {L�het�}
translate L FICSConnect {Yhdist�}
translate L FICSShouts {Huudot}
translate L FICSTells {Kehoitukset}
translate L FICSOpponent {Vastustajan tiedot}
translate L FICSInfo {Tiedot}
translate L FICSDraw {Ehdota tasapeli�}
translate L FICSRematch {Revanssi}
translate L FICSQuit {Lopeta FICS}
translate L FICSCensor {Sensori}


# Correspondence Chess Dialogs:
translate L CCDlgConfigureWindowTitle {Konfiguroi kirjeshakki}
translate L CCDlgCGeneraloptions {Yleiset vaihtoehdot}
translate L CCDlgDefaultDB {Oletustietokanta:}
translate L CCDlgInbox {Saapuneet-laatikko (polku):}
translate L CCDlgOutbox {L�hetetyt-laatikko (polku):}
translate L CCDlgXfcc {Xfcc-konfiguraatio:}
translate L CCDlgExternalProtocol {Ulkoinen protokolla-ajuri (esim. Xfcc)}
translate L CCDlgFetchTool {Hakuty�kalu:}
translate L CCDlgSendTool {L�hetysty�kalu:}
translate L CCDlgEmailCommunication {S�hk�postikommunikaatio}
translate L CCDlgMailPrg {Postiohjelma:}
translate L CCDlgBCCAddr {(B)CC-osoite:}
translate L CCDlgMailerMode {Moodi:}
translate L CCDlgThunderbirdEg {esim. Thunderbird, Mozilla Mail, Icedove...}
translate L CCDlgMailUrlEg {esim. Evolution}
translate L CCDlgClawsEg {esim. Sylpheed Claws}
translate L CCDlgmailxEg {esim. mailx, mutt, nail...}
translate L CCDlgAttachementPar {Liiteparametri:}
translate L CCDlgInternalXfcc {K�yt� sis�ist� Xfcc-tukea}
translate L CCDlgConfirmXfcc {Vahvista siirrot}
translate L CCDlgSubjectPar {Kohdeparametri:}
translate L CCDlgDeleteBoxes {Tyhjenn� saapuneet/l�hteneet-laatikko}
translate L CCDlgDeleteBoxesText {Haluatko todella tyhjent�� kirjeshakin saapuneet- ja l�hteneet-laatikoiden kansiot?\nT�m� vaatii uuden tahdistuksen n�ytt��kseen peliesi viimeisen vaiheen.}
translate L CCDlgConfirmMove {Vahvista siirto}
translate L CCDlgConfirmMoveText {Jos vahvistat niin seuraava siirto ja kommentti l�hetet��n palvelimelle:}
translate L CCDlgDBGameToLong {Ep�johdonmukainen p��muunnelma}
translate L CCDlgDBGameToLongError {Tietokannassasi oleva p��muunnelma on pidempi kuin peli saapuneet-laatikossasi. Jos saapuneet-laatikko sis�lt�� nykyisi� pelej� t.s. juuri tahdistuksen j�lkeen niin jotkut siirrot lis�ttiin tietokannan p��muunnelmaan virheellisesti.

T�ss� tapauksessa ole hyv� ja lyhenn� p��muunnelma (maksimi)-siirtoon
}

translate L CCDlgStartEmail {Aloita uusi s�hk�postipeli}
translate L CCDlgYourName {Nimesi:}
translate L CCDlgYourMail {S�hk�postiosoitteesi:}
translate L CCDlgOpponentName {Vastustajan nimi:}
translate L CCDlgOpponentMail {Vastustajan s�hk�postiosoite:}
translate L CCDlgGameID {Pelin ID (ainutkertainen):}

translate L CCDlgTitNoOutbox {Scid: Kirjeshakin l�hteneet-laatikko}
translate L CCDlgTitNoInbox {Scid: Kirjeshakin saapuneet-laatikko}
translate L CCDlgTitNoGames {Scid: Ei kirjeshakkipelej�}
translate L CCErrInboxDir {Kirjeshakin saapuneet-laatikon hakemisto:}
translate L CCErrOutboxDir {Kirjeshakin l�htev�t-laatikon hakemisto:}
translate L CCErrDirNotUsable {ei ole olemassa tai ei ole luoksep��st�v�!\nOle hyv� ja tarkista ja korjaa asetukset}
translate L CCErrNoGames {ei sis�ll� yht��n peli�!\nOle hyv� ja nouda ne ensin}

translate L CCDlgTitNoCCDB {Scid: Ei kirjeshakkitietokantaa}
translate L CCErrNoCCDB {Yht��n kirjeshakkitietokantaa ei ole avattu. Ole hyv� ja avaa yksi ennenkuin k�yt�t kirjeshakkitoimintoja}

translate L CCFetchBtn {Nouda pelit palvelimelta ja k�sittele saapuneet-laatikko}
translate L CCPrevBtn {Mene edelliseen peliin}
translate L CCNextBtn {Mene seuraavaan peliin}
translate L CCSendBtn {L�het� siirto}
translate L CCEmptyBtn {Tyhjenn� saapuneet- ja l�htev�t-kansiot}
translate L CCHelpBtn {Kuvakkeiden ja tilaindikaattorien apu.\nYleist� apua varten paina F1!}

translate L CCDlgServerName {Palvelimen nimi}
translate L CCDlgLoginName  {Kirjautumisen nimi}
translate L CCDlgPassword   {Salasana}
translate L CCDlgURL        {Xfcc-URL}
translate L CCDlgRatingType {Luokittamisen tyyppi}

translate L CCDlgDuplicateGame {Ei-ainutlaatuinen pelin ID}
translate L CCDlgDuplicateGameError {T�m� peli on olemassa enemm�n kuin kerran teitokannassa. Ole hyv� ja
poista kaksoispelit ja tiivist� pelitiedostosi (Tiedosto/huolto/tiivistetty tietokanta)}

translate L CCDlgSortOption {Lajittelu:}
translate L CCDlgListOnlyOwnMove {Vain pelit jotka minun pit�� siirt��}
translate L CCOrderClassicTxt {Paikka, Tapahtuma, Kierros, Tulos, Valkoinen, Musta}
translate L CCOrderMyTimeTxt {Kelloni}
translate L CCOrderTimePerMoveTxt {Aika siirtoa kohden seuraavaan ajantarkistukseen}
translate L CCOrderStartDate {Aloitusp�iv�m��r�}
translate L CCOrderOppTimeTxt {Vastustajien kello}

translate L CCDlgConfigRelay {Tarkkaile pelej�}
translate L CCDlgConfigRelayHelp {Mene pelisivustolle http://www.iccf-webchess.com ja n�yt� tarkkailtava peli.
Jos n�et shakkilaudan, niin kopioi URL-osoite selaimestasi allaolevaan listaan. Vain yksi URL-osoite rivi� kohti!\nEsimerkki: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}


# Connect Hardware dialoges
translate L ExtHWConfigConnection {Konfiguroi ulkoinen hardware}
translate L ExtHWPort {Portti}
translate L ExtHWEngineCmd {Ohjelman k�sky}
translate L ExtHWEngineParam {Ohjelman parametri}
translate L ExtHWShowButton {N�yt� painike p��ikkunassa}
translate L ExtHWHardware {Hardware}
translate L ExtHWNovag {Novag Citrine}
translate L ExtHWInputEngine {Sy�tt�ohjelma}
translate L ExtHWNoBoard {Ei shakkilautaa}

# Input Engine dialogs
translate L IEConsole {Sy�tt�ohjelman konsoli}
translate L IESending {L�hetetyt siirrot jotakin varten}
translate L IESynchronise {Tahdista}
translate L IERotate  {K��nn�}
translate L IEUnableToStart {Sy�tt�ohjelmaa ei voida k�ynnist��:}
# Calculation of Variations
translate L DoneWithPosition {Asema k�sitelty}

translate L Board {Shakkilauta}
translate L showGameInfo {N�yt� pelin tiedot}
translate L autoResizeBoard {Shakkilaudan koon automaattinen muutos}
translate L DockTop {Siirry yl�s}
translate L DockBottom {Siirry alas}
translate L DockLeft {Siirry vasemmalle}
translate L DockRight {Siirry oikealle}
translate L Undock {Poista kiinnityksest�}

# Switcher window
translate L ChangeIcon {Vaihda kuvake}
translate L More {Enemm�n}

# Drag & Drop
translate L CannotOpenUri {Seuraavaa URI-osoitetta ei pystyt� avaamaan:}
translate L InvalidUri {Pudotussis�lt� ei ole p�tev� URI-lista.}
translate L UriRejected	{Seuraavat tiedostot hyl�t��n:}
translate L UriRejectedDetail {Vain listatut tiedostotyypit voidaan k�sitell�:}
translate L EmptyUriList {Pudotussis�lt� on tyhj�.}
translate L SelectionOwnerDidntRespond {Aikakatkaisu pudotustoiminnon aikana: valinnan omistaja ei vastannut}
# ====== TODO To be translated ======
translate L PasteAnal {Paste Analysis}
# ====== TODO To be translated ======
translate L SortOpcodes {Sort Opcodes}
# ====== TODO To be translated ======
translate L AddPosition {Add Position}
# ====== TODO To be translated ======
translate L FindPos {Find Deepest Game Position}
# ====== TODO To be translated ======
translate L AnalPosition {Analyze Positions}
# ====== TODO To be translated ======
translate L StripOpcodes {Strip Opcodes}
# ====== TODO To be translated ======
translate L NoMoves {No moves from this position}
# ====== TODO To be translated ======
translate L CountBestMoves {Count Best Moves}

}
# end of finnish.tcl
