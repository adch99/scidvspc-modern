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
menuText L FileFinder "Löydä" 0 {Avaa tiedoston hakuikkuna}
menuText L FileSavePgn "Tallenna PGN" 0 {Tallenna tämä peli tiedostoon}
menuText L FileOpenBaseAsTree "Avaa tietokanta puuna" 13   {Avaa tietokanta ja käytä sitä puuikkunassa}
menuText L FileOpenRecentBaseAsTree "Avaa viimeisin tietokanta puuna" 0   {Avaa viimeisin tietokanta ja käytä sitä puuikkunassa}
menuText L FileBookmarks "Kirjanmerkkivalikko" 0 {Kirjanmerkkivalikko}
menuText L FileBookmarksAdd "Lisää kirjanmerkki" 0 \
  {Kirjanmerkitse nykyinen tietokanta ja asema}
menuText L FileBookmarksFile "Tiedosto kirjanmerkki" 0 \
  {Kirjainmerkitse nykyinen peli ja asema}
menuText L FileBookmarksEdit "Käsittele kirjanmerkki" 0 \
  {Muokkaa kirjanmerkkivalikoita}
menuText L FileBookmarksList "Esitä kansiot yhtenä listana" 0 \
  {Esitä kirjanmerkkivalikot yhtenä listana eikä alivalikkoina}
menuText L FileBookmarksSub "Esitä kansiot alavalikkona" 0 \
  {Esitä kirjainmerkkikansiot alivalikkoina eikä yhtenä listana}

menuText L FileReadOnly "Kirjoitussuojattu" 0 \
  {Kohtele nykyistä tietokantaa kirjoitussuojattuna estäen muutokset}
menuText L FileSwitch "Vaihda tietokantaan" 1 \
  {Vaihda eri avattuun tietokantaan}
menuText L FileExit "Poistu" 1 {Poistu Scidistä}

# Edit menu:
menuText L Edit "Muokkaa" 0
menuText L EditAdd "Lisää muunnelma" 0 {Lisää muunnelma pelin tähän siirtoon}
menuText L EditPasteVar "Liitä muunnelma" 0
menuText L EditDelete "Poista muunnelma" 0 {Poista tätä siirtoa varten oleva muunnelma}
menuText L EditFirst "Tee ensimmäinen muunnelma" 5 \
  {Ylennä muunnelma listan ensimmäiseksi}
menuText L EditMain "Ylennä muunnelma" 21 \
  {Ylennä muunnelma päämuunnelmaksi}
menuText L EditTrial "Yritä muunnelmaa" 0 \
  {Aloita/lopeta kokeilumoodi idean testaamiseksi laudalla}
menuText L EditStrip "Poista" 0 {Poista kommentit tai muunnelmat tästä pelistä}
menuText L EditUndo "Peru" 0 {Peru viimeinen pelin muutos}
menuText L EditRedo "Tee uudestaan" 0 {Tee uudestaan viimeinen pelin muutos}
menuText L EditStripComments "Kommentit" 0 \
  {Poista kaikki kommentit ja huomautukset tästä pelistä}
menuText L EditStripVars "Muunnelmat" 0 {Poista kaikki muunnelmat tästä pelistä}
menuText L EditStripBegin "Siirrot alusta" 11 \
  {Poista siirrot tämän pelin alusta}
menuText L EditStripEnd "Siirrot loppuun asti" 9 \
  {Poista siirrot pelin loppuun asti}
menuText L EditReset "Tyhjennä leikepöytä" 0 \
  {Alusta leikepöytä kokonaan tyhjäksi}
menuText L EditCopy "Kopioi leikepöydälle" 1 \
  {Kopioi tämä peli leikepöydän tietokantaan}
menuText L EditPaste "Liitä leikepöydältä" 1 \
  {Liitä aktiivinen leikepöydän peli tähän}
menuText L EditPastePGN "Liitä PGN" 0 \
  {Tulkitse leikepöydän teksti PGN-tiedostona ja liitä se tähän}
menuText L EditSetup "Aseta aloitusasema" 6 \
  {Aseta aloitusasema tätä peliä varten}
menuText L EditCopyBoard "Kopioi FEN" 5 \
  {Kopio nykyinen asema FEN-notaationa tekstivalintaan (leikepöytä)}
menuText L EditCopyPGN "Kopioi PGN" 0 \
  {Kopioi nykyinen PGN-tiedosto tekstivalintaan (leikepöytä)}
menuText L EditPasteBoard "Liitä FEN" 6 \
  {Aseta aloitusasema nykyisestä tekstivalinnasta (leikepöytä)}

# Game menu:
menuText L Game "Peli" 0
menuText L GameNew "Uusi peli" 0 {Palauta peli alkutilaan hyläten mitkä tahansa muutokset}
menuText L GameFirst "Lataa ensimmäinen" 5 {Lataa ensimmäinen suodatettu peli}
menuText L GamePrev "Lataa edellinen" 5 {Lataa edellinen suodatettu peli}
menuText L GameReload "Lataa peli uudelleen" 2 {Lataa uudelleeen tämä peli hyläten kaikki tehdyt muutokset}
menuText L GameNext "Lataa seuraava" 7 {Lataa seuraava suodatettu peli}
menuText L GameLast "Lataa viimeinen" 8 {Lataa viimeinen suodatettu peli}
menuText L GameRandom "Lataa satunnainen peli" 8 {Lataa satunnainen suodatettu peli}
menuText L GameNumber "Lataa numeroitu peli" 5 {Lataa peli syöttämällä sen numero}
menuText L GameReplace "Korvaa peli" 0 {Tallenna tämä peli korvaten vanhan version}
menuText L GameAdd "Lisää peli" 0 {Tallenna tämä peli uutena pelinä tietokantaan}
menuText L GameInfo "Aseta pelin tiedot" 9
menuText L GameBrowse "Selaa pelejä" 0
menuText L GameList "Listaa kaikki pelit" 0
menuText L GameDelete "Poista peli" 0
menuText L GameDeepest "Identifoi avaus" 0 {Siirry syvimpään ECO-avauskirjassa listattuun peliasemaan}
menuText L GameGotoMove "Siirry tiettyyn pelisiirtoon" 5 {Siirry tiettyyn pelisiirtoon tässä pelissä}
menuText L GameNovelty "Löydä uutuus" 7 {Löydä ensimmäinen aikaisemmin pelaamaton siirto tässä pelissä}

# Search Menu:
menuText L Search "Etsi" 0
menuText L SearchReset "Nollaa suodatin" 0 {Nollaa suodatin jotta kaikki pelit voidaan sisällyttää}
menuText L SearchNegate "Kiellä suodatin" 0 {Kiellä suodatin sisältämään vain hylätyt pelit}
menuText L SearchEnd "Aseta suodatin viimeiseen siirtoon" 15 {Kaikki suodatetut pelit latautuvat loppuasemassa}
menuText L SearchCurrent "Nykyinen asema" 0 {Etsi nykyistä laudan asemaa}
menuText L SearchHeader "Yleinen" 0 {Etsi otsikkoinformaatio perusteella (pelaaja, tapahtuma, jne.)}
menuText L SearchMaterial "Materiaali/asema" 0 {Etsi materiaalin tai aseman malleja}
menuText L SearchMoves "Siirrot" 0 {}
menuText L SearchUsing "Lataa etsi-tiedosto" 0 {Etsi käyttäen etsi-vaihtoehdot tiedostoa}

# Windows menu:
menuText L Windows "Ikkunat" 0
menuText L WindowsGameinfo "Pelin tiedot" 0 {Näytä/piilota pelitietopaneeli}
menuText L WindowsComment "Kommenttieditori" 9 {Avaa/sulje kommenttieditori}
menuText L WindowsGList "Pelilista" 0 {Avaa/sulje pelilistaikkuna}
menuText L WindowsPGN "PGN-ikkuna" 0 {Avaa/sulje PGN (pelinotaatio)-ikkuna}
menuText L WindowsCross "Turnaustaulukko" 0 {Avaa/sulje turnaustaulukko}
menuText L WindowsPList "Etsi pelaaja" 2 {Avaa/sulje pelaajanlöytäjä}
menuText L WindowsTmt "Turnaukset" 2 {Avaa/sulje turnauslöytäjä}
menuText L WindowsSwitcher "Tietokannat" 0  {Avaa/sulje tietokantavaihtajaikkuna}
menuText L WindowsMaint "Ylläpitoikkuna" 0 {Avaa/sulje ylläpitoikkuna}
menuText L WindowsECO "ECO-selain" 0 {Avaa/sulje ECO-selainikkuna}
menuText L WindowsStats "Tilastoikkuna" 0 {Avaa/sulje suodatintilastoikkuna}
menuText L WindowsTree "Puuikkuna" 0 {Avaa/sulje puuikkkuna}
menuText L WindowsTB "Loppupelitietokantaikkuna" 1 {Avaa/sulje loppupelitietokantaikkuna}
menuText L WindowsBook "Avauskirjastoikkuna" 0 {Avaa/sulje avauskirjastoikkuna}
menuText L WindowsCorrChess "Kirjeenvaihtoikkuna" 1 {Avaa/sulje kirjeenvaihtoikkuna}

# Tools menu:
menuText L Tools "Työkalut" 0
menuText L ToolsAnalysis "Analyysiohjelma" 0 {Konfiguroi analyysiohjelmat}
menuText L ToolsEmail "Sähköpostimanageri" 0 {Avaa/sulje sähköpostin shakkimanageri-ikkuna}
menuText L ToolsFilterGraph "Suhteellinen suodatingrafiikka" 12 {Avaa/sulje suodatingrafiikkaikkkuna suhteellisia arvoja varten}
menuText L ToolsAbsFilterGraph "Absoluuttinen suodatingrafiikka" 7 {Avaa/sulje suodatingrafiikkaikkuna absoluuttisia arvoja varten}
menuText L ToolsOpReport "Avausraportti" 0 {Luo avausraportti nykyistä asemaa varten}
menuText L ToolsTracker "Upseerinjäljittäjä"  6 {Avaa upseerinjäljittäjäikkuna}
menuText L ToolsTraining "Harjoitus"  7 {Harjoitustyökalut (taktiikat,avaukset,...) }
menuText L ToolsComp "Turnaus" 0 {Shakkiohjelmaturnaus}
menuText L ToolsTacticalGame "Shakkiohjelma - Phalanx"  0 {Pelaa taktinen peli}
menuText L ToolsSeriousGame "Shakkiohjelma - UCI-ohjelma"  11 {Pelaa UCI-ohjelmaa vastaan}
menuText L ToolsTrainTactics "#N shakkitehtävä"  0 {Ratkaise "#N" tehtäviä}
menuText L ToolsTrainCalvar "Muunnelmien laskeminen"  0 {Stoyko-harjoitus}
menuText L ToolsTrainFindBestMove "Löydä paras siirto"  0 {Löydä paras siirto}
menuText L ToolsTrainFics "Internet (FICS)"  0 {Pelaa freechess.orgissa}
menuText L ToolsBookTuning "Avauskirjaston virittäminen" 0 {Avauskirjaston virittäminen}

menuText L ToolsMaint "Ylläpito" 0 {Scid-tietokannan ylläpitotyökalut}
menuText L ToolsMaintWin "Ylläpitoikkuna" 0 {Avaa/sulje Scid-tietokannan ylläpitoikkuna}
menuText L ToolsMaintCompact "Kompakti tietokanta" 0 {Kompaktin tietokannnan tiedostot joista on poistettu hävitetyt pelit ja käyttämättömät nimet}
menuText L ToolsMaintClass "ECO-luokittele pelit" 2 {Laske uudestaan ECO-koodit kaikille peleille}
menuText L ToolsMaintSort "Lajittele tietokanta" 0 {Lajittele kaikki pelit tietokannassa}
menuText L ToolsMaintDelete "Poista kaksoispelit" 0 {Löydä kaksoispelit ja aseta ne hävitettäväksi}
menuText L ToolsMaintTwin "Kaksoispelien tarkastusikkuna" 0 {Avaa/päivitä kaksoispelien tarkastusikkuna}
menuText L ToolsMaintNameEditor "Nimieditori" 0 {Avaa/sulje nimieditori-ikkuna}
menuText L ToolsMaintNamePlayer "Tarkasta pelaajien nimien tavutus" 11 {Tarkasta pelaajien nimien tavutus käyttäen tavutuksen tarkastustiedostoa}
menuText L ToolsMaintNameEvent "Tarkasta tapahtumien nimien tavutus" 11 {Tarkasta tapahtumien nimien tavutus käyttäen tavutuksen tarkastustiedostoa}
menuText L ToolsMaintNameSite "Tarkasta paikannimien tavutus" 11 {Tarkasta paikannimien tavutus käyttäen tavutuksen tarkastustiedostoa}
menuText L ToolsMaintNameRound "Tarkista kierroksen nimien tavutus" 11 {Tarkasta kierroksen nimien tavutus käyttäen tavutuksen tarkastustiedostoa}
menuText L ToolsMaintFixBase "Korjaa tietokanta" 0 {Yritä korjata vahingoittunut tietokanta}

menuText L ToolsConnectHardware "Yhdistä hardware" 0 {Yhditä ulkoinen hardware}
menuText L ToolsConnectHardwareConfigure "Konfiguroi..." 0 {Konfiguroi ulkoinen hardware ja yhteys}
menuText L ToolsConnectHardwareNovagCitrineConnect "Yhdistä Novag Citrine" 9 {Yhditä Novag Citrine Scidin kanssa}
menuText L ToolsConnectHardwareInputEngineConnect "Yhdistä syöttöohjelma" 9 {Yhdistä syöttöohjelma (esim. DGT-lauta) Scidin kanssa}

menuText L ToolsPInfo "Pelaajan tiedot"  0 \
  {Avaa/päivitä pelaajainformaatioikkuna}
menuText L ToolsPlayerReport "Pelaajaraportti" 3 \
  {Luo pelaajaraportti}
menuText L ToolsRating "Pelaajan ELO-luku" 0 \
  {Luo grafiikka nykyisen pelin pelaajien ELO-lukujen historiasta}
menuText L ToolsScore "Tulosgrafiikka" 0 {Näytä tulosgrafiikkaikkuna}
menuText L ToolsExpCurrent "Vie nykyinen peli" 8 \
  {Kirjoita nykyinen peli tekstitiedostoon}
menuText L ToolsExpCurrentPGN "Vie peli PGN-muotoon" 15 \
  {Kirjoita nykyinen peli PGN-tiedostoksi}
menuText L ToolsExpCurrentHTML "Vie peli HTML-muotoon" 15 \
  {Kirjoita nykyinen peli HTML-tiedostoksi}
menuText L ToolsExpCurrentHTMLJS "Vie peli HTML- ja JavaScript-muotoon" 15 {Kirjoita nykyinen peli HTML- ja JavaScript-tiedostoksi}  
menuText L ToolsExpCurrentLaTeX "Vie Peli LaTeX-muotoon" 15 {Kirjoita nykyinen peli LaTex-tiedostoksi käyttäen xSkakää}
menuText L ToolsExpFilter "Vie kaikki suodatetut pelit" 1 \
  {Kirjoita kaikki suodatetut pelit tekstitiedostoksi}
menuText L ToolsExpFilterPGN "Vie suodatin PGN-muotoon" 17 \
  {Kirjoita kaikki suodatetut pelit PGN-tiedostoksi}
menuText L ToolsExpFilterHTML "Vie suodatin HTML-muotoon" 17 \
  {Kirjoita kaikki suodatetut pelit HTML-tiedostoksi}
menuText L ToolsExpFilterHTMLJS "Vie suodatin HTML ja JavaScript-muotoon" 17 {Kirjoita kaikki suodatetut pelit HTML- ja JavaScrip-tiedostoksi}  
menuText L ToolsExpFilterLaTeX "Vie suodatin LaTeX-muotoon" 17  {Kirjoita kaikki suodatetut pelit LaTex-tiedostoksi}
menuText L ToolsExpFilterGames "Vie pelilista tekstiksi" 19 {Tulosta muotoiltu pelilista}
menuText L ToolsImportOne "Tuo PGN-teksti" 0 \
  {Tuo peli PGN-tekstistä}
menuText L ToolsImportFile "Tuo PGN-tiedosto" 7 {Tuo pelit PGN-tiedostosta}
menuText L ToolsStartEngine1 "Käynnistä ohjelma 1" 0  {Käynnistä ohjelma 1}
menuText L ToolsStartEngine2 "Käynnistä ohjelma 2" 0  {Käynnistä ohjelma 2}
menuText L ToolsScreenshot "Kuvankaappaus laudasta" 0  {Ota kuvankaappaus}

# Play menue
menuText L Play "Pelaa" 0 {Pelaa pelejä}

# --- Correspondence Chess
menuText L CorrespondenceChess "Kirjeshakki" 0 {Toiminnot sähköpostia ja Xfcc:ää varten perustuen kirjeshakkiin}
menuText L CCConfigure "Konfiguroi" 0 {Konfiguroi ulkoiset työkalut ja yleiset asetukset}
menuText L CCConfigRelay "Tarkkaile pelejä" 10 {Konfiguroi tarkkailtavat pelit}
menuText L CCOpenDB "Avaa tietokanta" 0 {Avaa oletuskirjeshakkitietokanta}
menuText L CCRetrieve "Palauta pelit" 0 {Palauta pelit ulkoisen (Xfcc-) avustajan kautta}
menuText L CCInbox "Käsittele saapuneet-laatikko" 8 {Käsittele kaikki tiedostot Scidin saapuneet-laatikossa}
menuText L CCSend "Lähetä siirto" 0 {Lähetä siirtosi sähköpostin tai ulkoisen (Xfcc-) avustajan kautta}

menuText L CCResign "Antaudu" 1 {Antaudu (ei sähköpostin kautta)}
menuText L CCClaimDraw "Vaadi tasapeliä" 6 {Lähetä siirto ja vaadi tasapeliä (ei sähköpostin kautta)}
menuText L CCOfferDraw "Tarjoa tasapeliä" 1 {Lähetä siirto ja tarjoa tasapeliä (ei sähköpostin kautta)}
menuText L CCAcceptDraw "Hyväksy tasapeli" 0 {Hyväksy tasapelitarjous (ei sähköpostin kautta)}

menuText L CCNewMailGame "Uusi sähköpostipeli" 2 {Aloita uusi sähköpostipeli}
menuText L CCMailMove "Postita siirto" 0 {Lähetä siirto sähköpostin kautta vastustajalle}
menuText L CCGamePage "Pelisivu" 0 {Kutsu peli verkkoselaimen kautta}

# menu in cc window:
menuText L CCEditCopy "Kopio pelilista leikepöydälle" 0 {Kopio pelit CSV-listana leikepöydälle}


#  B    GHiJKL    Q  TUV XYZ

# Options menu:
menuText L Options "Vaihtoehdot" 0
menuText L OptionsBoard "Shakkilauta/nappulat" 0 {Shakkilaudan ulkoasu}
menuText L OptionsColour "Värit" 0 {Oletustekstiwidgetin väri}
menuText L OptionsBackColour "Tausta" 0 {Oletustekstiwidgetin väri}
menuText L OptionsEnableColour "Salli taustaväri" 0 {}
menuText L OptionsMainLineColour "Päämuunnelman nuolet" 0 {Päämuunnelman nuolet}
menuText L OptionsVarLineColour "Muunnelman nuolet" 0 {Muunnelman nuolet}
menuText L OptionsRowColour "Rivit" 0 {Oletus puu/kirja-rivin väri}
menuText L OptionsSwitcherColour "Katkaisin" 0 {Oletus db-valitsijan väri}
menuText L OptionsProgressColour "Edistymispalkki" 0 {Edistymispalkin oletusväri}
menuText L OptionsCrossColour "Turnaustaulukon rivit" 0 {Tulostaulukon rivin väri}
menuText L OptionsScoreColour "Tulosgrafiikka" 0 {}
menuText L OptionsScoreBarColour "Nykyinen tulosgrafiikka" 0 {}
menuText L OptionsNames "Oman pelaajan nimet" 3 {Muokkaa oman pelaajan nimiä}
menuText L OptionsExport "Vienti" 0 {Muuta tekstinviennin vaihtoehtoja}
menuText L OptionsFonts "Kirjasintyypit" 0 {Muuta kirjasintyyppejä}
menuText L OptionsFontsRegular "Vakinainen" 0 {Muuta yleiskirjaisintyyppi}
menuText L OptionsFontsMenu "Valikko" 0 {Vaihda valikon kirjaisintyyppi}
menuText L OptionsFontsSmall "Pieni" 0 {Muuta pieni kirjaisintyyppi}
menuText L OptionsFontsFixed "Pysyvä" 0 {Muuta vakiolevyinen kirjaisintyyppi}
menuText L OptionsGInfo "Pelin tiedot" 0 {Pelitietojen vaihtoehdot}
menuText L OptionsFics "FICS" 0 {Free Chess Internet Server}
menuText L OptionsFicsAuto "Korota automaattisesti kuningattareksi" 0
menuText L OptionsFicsColour "Tekstin väri" 0
menuText L OptionsFicsSize "Laudan koko" 0
menuText L OptionsFicsButtons "Käyttäjän painikkeet" 0
menuText L OptionsFicsCommands "Alusta käskyt" 0
menuText L OptionsFicsNoRes "Ei tuloksia" 0
menuText L OptionsFicsNoReq "Ei pyyntöjä" 0
menuText L OptionsFicsPremove "Salli etukäteissiirto" 0

menuText L OptionsLanguage "Kieli" 0 {Valitse valikon kieli}
menuText L OptionsMovesTranslatePieces "Käännä nappulat" 0 {Käännä nappuloiden ensimmäinen kirjain}
menuText L OptionsMovesHighlightLastMove "Korosta viimeisin siirto" 0 {Korosta viimeisin siirto}
menuText L OptionsMovesHighlightLastMoveDisplay "Näytä" 0 {Näytä viimeisin siirto korostettuna}
menuText L OptionsMovesHighlightLastMoveWidth "Leveys" 0 {Viivan leveys}
menuText L OptionsMovesHighlightLastMoveColor "Väri" 0 {Viivan väri}
# ====== TODO To be translated ======
menuText L OptionsMovesColorSelected "Color Selected Square" 0 {Color move}
menuText L OptionsMoves "Siirrot" 0 {Siirron suorittamisen vaihtoehdot}
menuText L OptionsMovesAsk "Kysy ennen siirtojen korvaamista" 0 \
  {Kysy ennen olemassaolevien siirtojen korvaamista}
menuText L OptionsMovesAnimate "Animaation aika" 1 \
  {Aseta animaatiosiirtojen aika}
menuText L OptionsMovesDelay "Automaattisen pelaamisen viivästys" 1 \
  {Aseta aikaviivästys automaattisen pelaamisen moodille}
menuText L OptionsMovesCoord "Koordinoi siirron tekeminen" 0 \
  {Hyväksy koordinaattityylinen siirron suoritus (esim. "g1f3")}
  {Käännä päälle/pois siirtoehdotus}
menuText L OptionsShowVarPopup "Näytä muunnelmaikkuna" 0 {Käännä päälle/pois muunnelmaikkunan näyttö}  
menuText L OptionsMovesSpace "Lisää välilyöntejä siirron numeron jälkeen" 0 {Lisää välilyöntejä siirron numeron jälkeen}  
menuText L OptionsMovesKey "Näppäimistön täydentäminen" 0 \
  {Käännä päälle/pois näppäimistösiirron automaattinen täydennys}
menuText L OptionsMovesShowVarArrows "Näytä muunnelman nuolet" 0 {Käännä päälle/pois muunnelmien siirtoja näyttävät nuolet}
menuText L OptionsNumbers "Numeroformaatti" 0 {Valitse numeroformaatti}
menuText L OptionsStartup "Käynnistys" 3 {Valitse käynnistyksessä avattavat ikkunat}
menuText L OptionsTheme "Teema" 0 {Ttk-teema}
menuText L OptionsWindows "Ikkunat" 0 {Ikkunavaihtoehdot}
menuText L OptionsWindowsIconify "Automaattinen ikonisointi" 5 \
  {Ikonisoi kaikki ikkunat kun pääikkuna ikonisoidaan}
menuText L OptionsWindowsRaise "Automaattinen nosto" 5 \
  {Nosta tietyt ikkunat (esim. edistymispalkit) aina kun ne ovat piilotetut}
menuText L OptionsSounds "Äänet" 2 {Konfiguroi siirtoilmoituksen äänet}
menuText L OptionsWindowsDock "Kiinnitä ikkunat" 0 {Kiinnitä ikkunat (tarvitsee uudelleenkäynnistyksen)}
menuText L OptionsWindowsSaveLayout "Tallenna ulkoasu" 0 {Tallenna ulkoasu}
menuText L OptionsWindowsRestoreLayout "Palauta ulkoasu" 0 {Palauta ulkoasu}
menuText L OptionsWindowsShowGameInfo "Näytä pelin tiedot" 0 {Näytä pelin tiedot}
menuText L OptionsWindowsAutoLoadLayout "Lataa automaattisesti ensimmäinen ulkoasu" 0 {Lataa käynnistettäessä automaattisesti ensimmäinen ulkoasu}
menuText L OptionsWindowsAutoResize "Muuta automaattisesti laudan koko" 0 {}
menuText L OptionsWindowsFullScreen "Kokonäyttö" 0 {Vaihtele kokonäyttö-moodi}
menuText L OptionsToolbar "Työkalupalkki" 0 {Konfiguroi pääikkunan työkalupalkki}
menuText L OptionsECO "Lataa ECO-tiedosto" 7 {Lataa ECO-luokittelutiedosto}
menuText L OptionsSpell "Lataa tavutuksen tarkastustiedosto" 11 \
  {Lataa Scid-tavutuksen tarkistustiedosto}
menuText L OptionsTable "Loppupelitietokannan hakemisto" 10 \
  {Valitse loppupelitietokantatiedosto; kaikkia loppupelitietokantoja tullaan käyttämään omassa hakemistossaan}
menuText L OptionsRecent "Äskeiset merkinnät" 0 {Muuta tiedosto/peli-historia valikoiden kirjauksien määrä}
menuText L OptionsBooksDir "Avauskirjaston hakemisto" 0 {Aseta avauskirjaston hakemisto}
menuText L OptionsTacticsBasesDir "Tietokantojen hakemisto" 0 {Aseta taktiikka (harjoitus)tietokantojen hakemisto}
menuText L OptionsInformant "Konfiguroi informantin arvot" 0
menuText L OptionsSave "Tallenna vaihtoehdot" 0 "Tallenna kaikki asetettavissa olevat vaihtoehdot $::optionsFile"
# ====== TODO To be translated ======
menuText L OptionsSaveBases "Save Bases as Default" 0 
menuText L OptionsAutoSave "Tallenna automaattisesti vaihtoehdot poistuessa" 0 \
  {Tallenna automaattisesti kaikki vaihtoehdot poistuttaessa Scidistä}

# Help menu:
menuText L Help "Apu" 0
menuText L HelpContents "Apu" 0 {Näytä apusisällön sivu}
menuText L HelpIndex "Indeksi" 0 {Näytä apuindeksin sivu}
menuText L HelpGuide "Nopea opas" 0 {Näytä pikaoppaan apusivu}
menuText L HelpHints "Vihjeet" 1 {Näytä vihjeiden apusivu}
menuText L HelpContact "Yhteydenoton tiedot" 1 {Näytä yhteysinformaation apusivu}
menuText L HelpTip "Päivän vinkki" 0 {Näytä hyödyllinen Scid-vinkki}
menuText L HelpStartup "Käynnistysikkuna" 0 {Näytä käynnistysikkuna}
menuText L HelpAbout "Ohjelman tiedot" 0 {Tietoja Scid Vs PCstä}

# Game info box popup menu:
menuText L GInfoHideNext "Piilota seuraava siirto" 0
menuText L GInfoShow "Siirtovuorossa oleva puoli" 0
menuText L GInfoCoords "Vaihtele koordinaatteja" 0
menuText L GInfoMaterial "Vaihtele materiaalia" 7
menuText L GInfoFEN "FEN" 5
menuText L GInfoMarks "Näytä väritetyt ruudut ja nuolet" 5
menuText L GInfoWrap "Pakkaa pitkät muunnelmat" 0
menuText L GInfoFullComment "Näytä koko kommentti" 10
menuText L GInfoPhotos "Näytä valokuvat" 5
menuText L GInfoTBNothing "Loppupelitietokannat: ei mitään" 12
menuText L GInfoTBResult "Loppupelitietokannat: ainoastaan tulos" 12
menuText L GInfoTBAll "Loppupelitietokannat: tulos ja parhaat siirrot" 19
menuText L GInfoDelete "Palauta poistettu peli" 4
menuText L GInfoMark "Poista tämän pelin merkintä" 4
menuText L GInfoMenuBar "Valikkorivi"  0
menuText L GInfoToolBar "Työkalurivi"  0
menuText L GInfoButtonBar "Painikerivi"  0
# TODO
menuText L GInfoStatusBar "Status Bar"  0

translate L FlipBoard {Käännä lauta}
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
translate L Clear {Tyhjennä}
translate L Close {Sulje}
translate L Contents {Sisällöt}
translate L Defaults {Oletukset}
translate L Delete {Poista}
translate L Graph {Grafiikka}
translate L Help {Apu}
translate L Import {Tuo}
translate L Index {Indeksi}
translate L LoadGame {Lataa}
translate L BrowseGame {Selaa}
translate L MergeGame {Yhdistä}
translate L MergeGames {Yhdistä pelit}
# translate E Ok {Ok}
translate L Preview {Esikatselu}
translate L Revert {Palautus}
translate L Save {Tallenna}
translate L DontSave {Älä tallenna}
translate L Search {Etsi}
translate L Stop {Pysäytä}
translate L Store {Varastoi}
translate L Update {Päivitä}
translate L ChangeOrient {Muuta ikkunan suunta}
translate L ShowIcons {Näytä kuvakkeet}
translate L ConfirmCopy {Vahvista kopionti}
translate L None {Ei mikään}
translate L First {Ensimmäinen}
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
translate L Yes {Kyllä}
translate L No {Ei}
translate L Both {Molemmat}
translate L King {Kuningas}
translate L Queen {Kuningatar}
translate L Rook {Torni}
translate L Bishop {Lähetti}
translate L Knight {Ratsu}
translate L Pawn {Sotilas}
translate L White {Valkoinen}
translate L Black {Musta}
translate L Player {Pelaaja}
translate L Rating {Elo-luku}
translate L RatingDiff {Elo-luvun ero}
translate L AverageRating {Keskimääräinen Elo-luku}
translate L Event {Tapahtuma}
translate L Site {Paikka}
translate L Country {Maa}
translate L IgnoreColors {Sivuuta värit}
translate L MatchEnd {Ainoastaan loppuasema}
translate L Date {Päivämäärä}
translate L EventDate {Tapahtuman päivämäärä}
translate L Decade {Vuosikymmen}
translate L Year {Vuosi}
translate L Month {Kuukausi}
translate L Months {Tammikuu Helmikuu Maaliskuu Huhtikuu Toukokuu Kesäkuu Heinäkuu Elokuu Syyskuu Lokakuu Marraskuu Joulukuu}
translate L Days {Ma Ti Ke To Pe La Su}
translate L YearToToday {Vuosi tähän päivään}
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
translate L noGames {tyhjä}
translate L allGames {kaikki}
translate L empty {tyhjä}
translate L clipbase {leiketietokanta}
translate L score {tulos}
translate L Start {Alku}
translate L StartPos {Alkuasema}
translate L Total {Summa}
translate L readonly {kirjoitussuojattu}
translate L altered {muutettu}
translate L tagsDescript {Lisätagit (Esimerkiksi: kommentoija "Anand")}
translate L prevTags {Käytä edellistä}

# Standard error messages:
translate L ErrNotOpen {Tämä ei ole avoin tietokanta.}
translate L ErrReadOnly {Tämä tietokanta on kirjoitussuojattu ja sitä ei voi muuttaa}
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
translate L PInfoMostWhite {Yleisimmät avaukset valkeilla nappuloilla}
translate L PInfoMostBlack {Yleisimmät avaukset mustilla nappuloilla}
translate L PInfoRating {Elo-luvun historia}
translate L PInfoBio {Elämäkerta}
translate L PInfoEditRatings {Muokkaa Elo-lukuja}
translate L PinfoEditName {Muokkaa nimeä}
translate L PinfoLookupName {Etsi nimi}

# Tablebase information:
translate L Draw {Tasapeli}
translate L stalemate {patti}
translate L checkmate {matti}
translate L withAllMoves {kaikilla siirroilla}
translate L withAllButOneMove {kaikilla paitsi yhdellä siirrolla}
translate L with {kanssa}
translate L only {ainoastaan}
translate L lose {tappio}
translate L loses {häviää}
translate L allOthersLose {kaikki muut häviävä}
translate L matesIn {tekee matin tietyn siirtomäärän jälkeen}
translate L longest {pisin}
translate L WinningMoves {Voittavat siirrot}
translate L DrawingMoves {Tasapeliin johtavat siirrot}
translate L LosingMoves {Häviävät siirrot}
translate L UnknownMoves {Tuntemattomaan lopputulokseen johtavat siirrot}

# Tip of the day:
translate L Tip {Vinkki}
translate L TipAtStartup {Näytä vinkki käynnistettäessä}

# Tree window menus:
menuText L TreeFile "Puu" 0
menuText L TreeFileFillWithBase "Täytä välimuisti tietokannalla" 0 {Täytä välimuisti kaikilla nykyisessä tietokannassa olevilla peleillä}
menuText L TreeFileFillWithGame "Täytä välimuisti pelillä" 0 {Täytä välimuistitiedosto nykyisen tietokannan nykyisellä pelillä}
menuText L TreeFileCacheInfo "Välimuistin tiedot" 0 {Hanki tietoa välimuistin käytöstä}
menuText L TreeFileSave "Tallenna välimuistitiedosto" 0 {Tallenna puuvälimuisti (.stc)tiedosto}
menuText L TreeFileFill "Täytä välimuistitiedosto" 0 \
  {Täytä välimuistitiedosto yleisillä avausasemilla}
menuText L TreeFileBest "Parhaat pelit" 0 {Näytä parhaiten yhteensopivat pelit}
menuText L TreeFileGraph "Grafiikkaikkuna" 0 {Näytä grafiikka tälle puuhaaralle}
menuText L TreeFileCopy "Kopioi puuteksti leikepöydälle" 1 \
  {Kopioi puutilastot leikepöydälle}
menuText L TreeFileClose "Sulje puuikkuna" 0 {Sulje puuikkuna}
menuText L TreeMask "Naamio" 0
menuText L TreeMaskNew "Uusi" 0 {Uusi naamio}
menuText L TreeMaskOpen "Avaa" 0 {Avaa naamio}
menuText L TreeMaskOpenRecent "Avaa äskettäinen" 0 {Avaa äskettäinen naamio}
menuText L TreeMaskSave "Tallenna" 0 {Tallenna naamio}
menuText L TreeMaskClose "Sulje" 0 {Sulje naaamio}
menuText L TreeMaskFillWithLine "Täytä muunnelmalla" 0 {Täytä naamio kaikilla edellisillä siirroilla}
menuText L TreeMaskFillWithGame "Täytä pelillä" 0 {Täytä naamio pelillä}
menuText L TreeMaskFillWithBase "Täytä tietokannalla" 0 {Täytä naamio tietokannan kaikilla peleillä}
menuText L TreeMaskInfo "Info" 0 {Näytä tilastot nykyiselle naamiolle}
menuText L TreeMaskDisplay "Näytä naamion kartta" 0 {Näytä naamion tiedot puumuodossa}
menuText L TreeMaskSearch "Etsi" 0 {Etsi nykyisessä naamiossa}
menuText L TreeSort "Lajittele" 0
menuText L TreeSortAlpha "Aakkosellinen" 0
menuText L TreeSortECO "ECO-koodi" 0
menuText L TreeSortFreq "Yleisyys" 0
menuText L TreeSortScore "Tulos" 0
menuText L TreeOpt "Vaihtoehdot" 0
menuText L TreeOptSlowmode "Hidas moodi" 0 {Hidas moodi päivityksiä varten (korkea tarkkuus)}
menuText L TreeOptFastmode "Nopea moodi" 0 {Nopea moodi päivityksiä varten (ei siirtovaihtoa)}
menuText L TreeOptFastAndSlowmode "Nopea ja hidas moodi" 0 {Nopea moodi ja sitten hidas moodi päivityksiä varten}
menuText L TreeOptStartStop "Automaattinen virkistäminen" 0 {Vaihtelee puuikkunan automaattista virkistämistä}
menuText L TreeOptLock "Lukitse" 0 {Lukitse/vapauta puu nykyiseen tietokantaan}
menuText L TreeOptTraining "Harjoitus" 0 {Käännä päälle/pois puuharjoitusmoodi}
menuText L TreeOptShort "Lyhyt näyttö" 0 {Älä näytä ELO-informaatiota}
menuText L TreeOptAutosave "Tallenna automaattisesti välimuisti" 0 {Tallenna automaattisesti välimuistitiedosto puuikkunaa suljettaessa}
menuText L TreeOptAutomask "Lataa automaattisesti naamio" 0 "Lataa automaattisesti äskettäisin naamio auki olevalla puulla."
menuText L TreeOptCacheSize "Välimuistin koko" 0 {Aseta välimuistin koko}
menuText L TreeOptShowBar "Näytä edistymispalkki" 0 "Näytä puun edistymispalkki."
menuText L TreeOptSortBest "Lajittele parhaat pelit" 0 "Lajittele parhaat pelit ECOn mukaan."
menuText L TreeHelp "Apu" 0
menuText L TreeHelpTree "Puuapu" 0
menuText L TreeHelpIndex "Apuindeksi" 0
translate L SaveCache {Tallenna välimuisti}
translate L Training {Harjoittelu}
translate L LockTree {Lukitse}
translate L TreeLocked {lukittu}
translate L TreeBest {Paras}
translate L TreeBestGames {Parhaat pelit}
translate L TreeAdjust {Mukauta suodatin}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate L TreeTitleRow      {    Siirto      Yleisyys    Tulos  Tasapeli Keskimä.Elo Perf Keskimä.Vuosi ECO}
translate L TreeTitleRowShort {    Siirto      Yleisyys    Tulos  Tasapeli}
translate L TreeTotal: {SUMMA:}
translate L DoYouWantToSaveFirst {Haluatko tallentaa}
translate L AddToMask {Lisää naamioon}
translate L RemoveFromMask {Poista naamiosta}
translate L AddThisMoveToMask {Lisää siirto naamioon}
translate L SearchMask {Etsi naamiosta}
translate L DisplayMask {Näytä naamio}
translate L Nag {Nalkuta-koodi}
translate L Marker {Merkki}
translate L Include {Sisällytä}
translate L Exclude {Poissulje}
translate L MainLine {Päämuunnelma}
translate L Bookmark {Kirjanmerkki}
translate L NewLine {Uusi muunnelma}
translate L ToBeVerified {Todenna}
translate L ToTrain {Harjoittele}
translate L Dubious {Kyseenalainen}
translate L ToRemove {Poista}
translate L NoMarker {Ei merkkiä}
translate L ColorMarker {Väri}
translate L WhiteMark {Valkoinen}
translate L GreenMark {Vihreä}
translate L YellowMark {Keltainen}
translate L BlueMark {Sininen}
translate L RedMark {Punainen}
translate L CommentMove {Kommenttisiirto}
translate L CommentPosition {Kommenttiasema}
translate L AddMoveToMaskFirst {Lisää siirto ensiksi naamioon}
translate L OpenAMaskFileFirst {Avaa ensiksi naamiotiedosto}
translate L Positions {Asemat}
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
translate L FinderUpDir {ylös}
translate L FinderCtxOpen {Avaa}
translate L FinderCtxBackup {Varmuuskopio}
translate L FinderCtxCopy {Kopioi}
translate L FinderCtxMove {Siirrä}
translate L FinderCtxDelete {Poista}

# Player finder:
menuText L PListFile "Pelaajan hakulaite" 0
menuText L PListFileUpdate "Päivitä" 0
menuText L PListFileClose "Sulje" 0
menuText L PListSort "Lajittele" 0
menuText L PListSortName "Nimi" 0
menuText L PListSortElo "Elo" 0
menuText L PListSortGames "Pelit" 0
menuText L PListSortOldest "Vanhin" 0
menuText L PListSortNewest "Uusin" 2

# Tournament finder:
menuText L TmtFile "Turnaushakulaite" 0
menuText L TmtFileUpdate "Päivitä" 0
menuText L TmtFileClose "Sulje" 0
menuText L TmtSort "Lajittele" 0
menuText L TmtSortDate "Päivämäärä" 0
menuText L TmtSortPlayers "Pelaajat" 0
menuText L TmtSortGames "Pelit" 0
menuText L TmtSortElo "Elo" 0
menuText L TmtSortSite "Sijainti" 0
menuText L TmtSortEvent "Tapahtuma" 1
menuText L TmtSortWinner "Voittaja" 0
translate L TmtLimit "Listan koko"
translate L TmtMeanElo "Keskimääräinen Elo"
translate L TmtNone "Sopivia turnauksia ei löytynyt."

# Graph windows:
menuText L GraphFile "Tiedosto" 0
menuText L GraphFileColor "Tallenna PostScript-värinä" 8
menuText L GraphFileGrey "Tallenna mustavalkoisena PostScriptinä" 8
menuText L GraphFileClose "Sulje" 0
menuText L GraphOptions "Vaihtoehdot" 0
menuText L GraphOptionsWhite "Valkoinen" 0
menuText L GraphOptionsBlack "Musta" 0
menuText L GraphOptionsDots "Näytä pisteet" 0
menuText L GraphOptionsBar "Korosta nykyinen siirto" 0
menuText L GraphOptionsBoth "Molemmat" 1
menuText L GraphOptionsPInfo "Pelaaja Tieto pelaaja" 0
translate L GraphFilterTitle "Yleisyys 1000:ssa pelissä"
translate L GraphAbsFilterTitle "Pelin yleisyys"
translate L ConfigureFilter "Konfiguroi X-akseli"
translate L FilterEstimate "Arvioi"
translate L TitleFilterGraph "Scid: Suodatingrafiikka"

# Analysis window:
translate L AddVariation {Lisää muunnelma}
translate L AddAllVariations {Lisää kaikki muunnelmat}
translate L AddMove {Lisää siirto}
translate L Annotate {Kommentoi}
translate L ShowAnalysisBoard {Näyty analyysilauta}
translate L ShowInfo {Näytä ohjelman tiedot}
translate L FinishGame {Lopeta peli}
translate L StopEngine {Pysäytä ohjelma}
translate L StartEngine {Käynnistä ohjelma}
translate L ExcludeMove {Hylkää siirto}
translate L LockEngine {Lukitse ohjelma nykyiseen asemaan}
translate L AnalysisCommand {Analyysikäsky}
translate L PreviousChoices {Edelliset vaihtoehdot}
translate L AnnotateTime {Sekunnit siirtoa kohden}
translate L AnnotateWhich {Kumpi puoli}
translate L AnnotateAll {Molempien puolten siirrot}
translate L AnnotateAllMoves {Kaikki siirrot}
translate L AnnotateWhite {Ainoastaan valkoisen siirrot}
translate L AnnotateBlack {Ainoastaan mustan siirrot}
translate L AnnotateNotBest {Kun siirto ei ole paras}
translate L AnnotateBlundersOnly {Kun siirto on möhläys}
translate L BlundersNotBest {Möhläykset/ei paras siirto}
translate L AnnotateTitle {Konfiguroi kommentti}
translate L AnnotateMissedMates {Huomaamatta jääneet/lyhyemmät matit}
translate L BlundersThreshold {Raja-arvo}
translate L ScoreFormat {Lopputuloksen formaatti}
translate L CutOff {Katkaise}
translate L LowPriority {Matala CPU-prioriteetti}
translate L LogEngines {Lokin koko}
translate L LogName {Lisää nimi}
translate L MaxPly {Maksimipuolisiirto}
translate L ClickHereToSeeMoves {Klikkaa tähän nähdäksesi siirrot}
translate L ConfigureInformant {Konfiguroi Informartti}
translate L Informant!? {Mielenkiintoinen siirto}
translate L Informant? {Huono siirto}
translate L Informant?? {Möhläys}
translate L Informant?! {Kyseenalainen siirto}
translate L Informant+= {Valkealla on hienoinen etu}
translate L Informant+/- {Valkoisella on kohtuullinen etu}
translate L Informant+- {Valkealla on ratkaiseva etu}
translate L Informant++- {Peli on voitettu}

# Book window
translate L Book {Avauskirjasto}

# Analysis Engine open dialog:
translate L EngineList {Analyysiohjelmat}
translate L EngineKey {Avain}
translate L EngineType {Tyyppi}
translate L EngineName {Nimi}
translate L EngineCmd {Käsky}
translate L EngineArgs {Parametrit}
translate L EngineDir {Hakemisto}
translate L EngineElo {Elo}
translate L EngineTime {Päivämäärä}
translate L EngineNew {Uusi}
translate L EngineEdit {Muokkaa}
translate L EngineRequired {Lihavoidut kentät vaaditaan; muut ovat valinnaisia}

# Stats window menus:
menuText L StatsFile "Tilastot" 0
menuText L StatsFilePrint "Tulosta tiedostoon" 0
menuText L StatsFileClose "Sulje ikkuna" 0
menuText L StatsOpt "Vaihtoehdot" 0

# PGN window menus:
menuText L PgnFile "PGN" 0
menuText L PgnFileCopy "Kopioi leikepöydälle" 0
menuText L PgnFilePrint "Tallenna peli tietyssä muodossa" 0
menuText L PgnFileClose "Sulje" 10
menuText L PgnOpt "Vaihtoehdot" 0
menuText L PgnOptColor "Värinäyttö" 0
menuText L PgnOptShort "Lyhyt ylätunniste" 6
menuText L PgnOptSymbols "Symboliset kommentit" 1
menuText L PgnOptIndentC "Sisennä kommentit" 0
menuText L PgnOptIndentV "Sisennä muunnelmat" 7
menuText L PgnOptColumn "Saraketyyli" 1
menuText L PgnOptSpace "Välilyönti siirron mumeron jälkeen" 18
menuText L PgnOptStripMarks "Piilota ruutu/nuoli-koodit" 1
menuText L PgnOptChess "Nappulat" 6
menuText L PgnOptScrollbar "Vierityspalkki" 6
menuText L PgnOptBoldMainLine "Lihavoitu päämuunnelma" 4
menuText L PgnColor "Värit" 0
menuText L PgnColorHeader "Ylätunniste" 0
menuText L PgnColorAnno "Huomautukset" 0
menuText L PgnColorComments "Kommentit" 0
menuText L PgnColorVars "Muunnelmat" 0
menuText L PgnColorBackground "Tausta" 0
menuText L PgnColorMain "Päämuunnelma" 0
menuText L PgnColorCurrent "Nykyinen siirto" 1
menuText L PgnColorNextMove "Seuraava siirto" 0
menuText L PgnHelp "Apu" 0
menuText L PgnHelpPgn "PGN-apu" 0
menuText L PgnHelpIndex "Indeksi" 0
translate L PgnWindowTitle {PGN: peli %u}

# Crosstable window menus:
menuText L CrosstabFile "Turnaustaulukko" 0
menuText L CrosstabFileText "Tallenna tekstinä" 8
menuText L CrosstabFileHtml "Tallenna HTML-muodossa" 8
menuText L CrosstabFileLaTeX "Tallenna LaTeX-muodossa" 8
menuText L CrosstabFileClose "Sulje" 0
menuText L CrosstabEdit "Muokkaa" 0
menuText L CrosstabEditEvent "Tapahtuma" 0
menuText L CrosstabEditSite "Paikkakunta" 0
menuText L CrosstabEditDate "Päivämäärä" 0
menuText L CrosstabOpt "Vaihtoehdot" 0
menuText L CrosstabOptColorPlain "Pelkkä teksti" 0
menuText L CrosstabOptColorHyper "Hyperteksti" 0
menuText L CrosstabOptTieWin "Tiebreak-voittojen mukaan" 1
menuText L CrosstabOptTieHead "Tiebreak vastakkain" 1
menuText L CrosstabOptThreeWin "3 pistettä voitosta " 1
menuText L CrosstabOptAges "Iät vuosina" 8
menuText L CrosstabOptNats "Kansakunnat" 0
menuText L CrosstabOptTallies "Voitto/tappio/tasapeli" 0
menuText L CrosstabOptRatings "Ohjearvot" 0
menuText L CrosstabOptTitles "Arvonimet" 0
menuText L CrosstabOptBreaks "Tiebreak-tulokset" 4
menuText L CrosstabOptDeleted "Sisällytä poistetut pelit" 8
menuText L CrosstabOptColors "Väritiedot (Ainoastaan Swiss)" 0
menuText L CrosstabOptColorRows "Rivien väri" 0
menuText L CrosstabOptColumnNumbers "Numeroidut sarakkeet (Ainoastaan kaikki-pelaa-kaikki)" 2
menuText L CrosstabOptGroup "Ryhmän tulokset" 0
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
translate L AddToFilter {Lisää suodattimeen}
translate L Swiss {Swiss}
translate L Category {Kategoria}

# Opening report window menus:
menuText L OprepFile "Raportti" 0
menuText L OprepFileText "Tulosta tekstiksi" 9
menuText L OprepFileHtml "Tulosta HTMLämmäksi" 9
menuText L OprepFileLaTeX "Tulosta LaTeXsiksi" 9
menuText L OprepFileOptions "Vaihtoehdot" 0
menuText L OprepFileClose "Sulje raportti-ikkuna" 0
menuText L OprepFavorites "Suosikit" 1
menuText L OprepFavoritesAdd "Lisää raportti" 0
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
translate L FindGamesWith {Löydä liputetut pelit}
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
translate L BlunderFlag {Möhläys}
translate L UserFlag {Käyttäjä}
translate L PgnContains {PGN sisältää tekstiä}
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
translate L GlistDate {Päivämäärä}
translate L GlistYear {Vuosi}
translate L GlistEventDate {Tapahtuman päivämäärä}
translate L GlistResult {Tulos}
translate L GlistLength {Pituus}
translate L GlistCountry {Maa}
translate L GlistECO {ECO}
translate L GlistOpening {Avaus}
translate L GlistEndMaterial {Loppumateraali}
translate L GlistDeleted {Poistetut}
translate L GlistFlags {Liput}
translate L GlistVariations {Muunnelmat}
translate L GlistComments {Kommentit}
translate L GlistAnnos {Huomautukset}
translate L GlistStart {Alku}
translate L GlistGameNumber {Pelin numero}
translate L GlistFindText {Löydä}
translate L GlistMoveField {Siirto}
translate L GlistEditField {Konfiguroi}
translate L GlistAddField {Lisää}
translate L GlistDeleteField {Poista}
translate L GlistColor {Väri}
translate L GlistSort {Lajittele tietokanta}

# menu shown with right mouse button down on game list. 
translate L GlistRemoveThisGameFromFilter  {Poista}
translate L GlistRemoveGameAndAboveFromFilter  {Poista kaikki ylhäällä}
translate L GlistRemoveGameAndBelowFromFilter  {Poista kaikki alhaalla}
translate L GlistDeleteGame {Poista tämä peli} 
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
translate L YearRange {Vuoden vaihteluväli:}
translate L RatingRange {Elo-luvun vaihteluväli:}
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
translate L UnmarkCurrent {Poista merkintä nykyisestä pelistä}
translate L UnmarkFilter {Poista merkintä suodatinpelistä}
translate L UnmarkAll {Poista merkintä kaikista peleistä}
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
translate L AddEloRatings {Lisää Elo-luvut}
translate L AutoloadGame {Lataa peli automaattisesti}
translate L StripTags {Poista ylimääräiset tagit}
translate L StripTag {Poista tag}
translate L CheckGames {Tarkista pelit}
translate L Cleaner {Puhdistaja}
translate L CleanerHelp {
Puhdistaja suorittaa kaikki alla valitut toiminnot nykyisessä tietokannassa.

Nykyiset asetukset ECO-luokituksessa ja kaksoispelien poistossa pätevät jos ne on valittu.
}
translate L CleanerConfirm {
Kun puhdistajan huolto on aloitettu sitä ei voi keskeyttää.

Tämä voi viedä pitkään. Oletko varma, että haluat suorittaa valitut huoltotoiminnot?
}
# Twinchecker
translate L TwinCheckUndelete {vaihtele)}
translate L TwinCheckprevPair {Edellinen pari}
translate L TwinChecknextPair {Seuraava pari}
translate L TwinChecker {Kaksoispelien tarkastaja}
translate L TwinCheckTournament {Turnauksen pelit:}
translate L TwinCheckNoTwin {Ei kaksonen}
translate L TwinCheckNoTwinfound {Tähän peliin ei havaittu kaksosta.\nTo käytä ensin "Poista kaksoispelit" toimintoa näyttääksesi kaksoset käyttäen tätä ikkunaa.}
translate L TwinCheckTag {Jaa tagit...}
translate L TwinCheckFound1 {Scid löysi $result kaksoispeliä}
translate L TwinCheckFound2 {ja aseta niiden poistoliput}
translate L TwinCheckNoDelete {Tässä tietokannassa ei ole pelejä poistettavaksi.}
# bug here... can't use \n\n
translate L TwinCriteria1 {Heikko kriteerivaroitus\n}
translate L TwinCriteria2 {Olet valinnut "Ei" "Samat siirrot" varten, joka on erittäin huono.\n
Jatka kuitenkin?}
translate L TwinCriteria3 {Sinun täytyy määritellä "Kyllä" vähintään kahdelle "Sama Puoli", "Sama Kierros" ja "Sama Vuosi"-asetuksille.\n
Jatka kuitenkin?}
translate L TwinCriteriaConfirm {Scid: Vahvista kaksoisasetukset}
translate L TwinChangeTag "Vaihda seuraavat pelitagit:\n\n"
translate L AllocRatingDescription "Lisää pelaajan Elo-luvut asiaankuuluville peleille käyttäen tietoja tavutus (Elo-luvut)-tiedostoa."
translate L RatingOverride "Kirjoita olemassaolevien Elo-lukujen päälle?"
translate L AddRatings "Lisää Elo-luvut"
translate L AddedRatings {Scid lisäsi $r Elo-lukua $g peliin.}

#Bookmark editor
translate L NewSubmenu "Lisää valikko"

# Comment editor:
translate L AnnotationSymbols  {Huomautukset}
translate L Comment {Kommentit}
translate L InsertMark {Merkit}
translate L InsertMarkHelp {
Liitä/poista-merkki: Valitse väri, tyyppi, ruutu.
Liitä/poista-nuoli: Napauta hiiren oikealla näppäimellä kahta ruutua.
}

# Nag buttons in comment editor:
translate L GoodMove {Hyvä siirto}
translate L PoorMove {Huono siirto}
translate L ExcellentMove {Erinomainen siirto}
translate L Blunder {Möhläys}
translate L InterestingMove {Mielenkiintoinen siirto}
translate L DubiousMove {Kyseenalainen siirto}
translate L WhiteDecisiveAdvantage {Valkoisella on ratkaiseva etu}
translate L BlackDecisiveAdvantage {Mustalla on ratkaiseva etu}
translate L WhiteClearAdvantage {Valkealla on selvä etu}
translate L BlackClearAdvantage {Mustalla on selvä etu}
translate L WhiteSlightAdvantage {Valkealla on lievä etu}
translate L BlackSlightAdvantage {Mustalla on lievä etu}
translate L Equality {Tasa-asema}
translate L Unclear {Epäselvä}
translate L Diagram {Kuvio}

# Board search:
translate L BoardSearch {Laudan etsintä}
translate L FilterOperation {Suodattimen asetus}
translate L FilterAnd {Rajoita suodatin (JA)}
translate L FilterOr {Lisää suodattimeen (TAI)}
translate L FilterIgnore {Nollaa suodatin}
translate L SearchType {Etsi tyyppiä}
translate L SearchBoardExact {Tarkka asema (kaikki nappulat samoissa ruuduissa)}
translate L SearchBoardPawns {Sotilaat (sama materiaali, kaikki sotilaat samoissa ruuduissa)}
translate L SearchBoardFiles {Linjat (sama materiaali, kaikki sotilaat samoilla linjoilla)}
translate L SearchBoardAny {Mikä tahansa (sama materiaali, sotilaat ja upseerit missä tahansa)}
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
translate L Any {Mikä tahansa}
translate L CurrentBoard {Nykyinen lauta}
translate L CommonEndings {Yleiset loppupelit}
translate L CommonPatterns {Yleiset kuviot}
translate L MaterialDiff {Materiaaliero}
translate L squares {ruudut}
translate L SameColor {Sama väri}
translate L OppColor {Vastakkainen väri}
translate L Either {Jompikumpi}
translate L MoveNumberRange {Siirtonumeron vaihteluväli}
translate L MatchForAtLeast {Täsmätä vähintään}
translate L HalfMoves {Puolisiirrot}

# Common endings in material search:
translate L EndingPawns {Sotilasloppupelit}
translate L EndingRookVsPawns {Torni vastaan sotilas/sotilaat}
translate L EndingRookPawnVsRook {Torni ja 1 sotilas vastaan torni}
translate L EndingRookPawnsVsRook {Torni ja sotilas/sotilaat vastaan torni}
translate L EndingRooks {Torni vastaan torni -loppupelit}
translate L EndingRooksPassedA {Torni vastaan torni -loppupelit a-linjan vapaasotilaan kanssa}
translate L EndingRooksDouble {Kahden tornin loppupelit}
translate L EndingBishops {Lähetti vastaan lähetti-loppupelit}
translate L EndingBishopVsKnight {Lähetti vastaan ratsu -loppupelit}
translate L EndingKnights {Ratsu vastaan ratsu -loppupelit}
translate L EndingQueens {Kuningatar vastaan kuningatar -loppupelit}
translate L EndingQueenPawnVsQueen {Kuningatar ja 1 sotilas vastaan kuningatar}
translate L BishopPairVsKnightPair {Kaksi lähettiä vastaan kaksi ratsua -keskipeli}

# Common patterns in material search:
translate L PatternWhiteIQP {Valkoinen eristetty kuningatarsotilas}
translate L PatternWhiteIQPBreakE6 {Valkoinen eristetty kuningatarsotilas: d4-d5 murto vastaan e6}
translate L PatternWhiteIQPBreakC6 {Valkoinen eristetty kuningatarsotilas: d4-d5 murto vastaan c6}
translate L PatternBlackIQP {Musta eristetty kuningatarsotilas}
translate L PatternWhiteBlackIQP {Valkoinen eristetty kuningatarsotilas vastaan musta rristetty kuningatarsotilas}
translate L PatternCoupleC3D4 {Valkoinen c3+d4 eristetty sotilaspari}
translate L PatternHangingC5D5 {Mustan riippuvat sotilaat c5:ssä ja d5:ssä}
translate L PatternMaroczy {Maroczy-keskusta (Sotilaat c4 ja e4-ruuduissa)}
translate L PatternRookSacC3 {Torninuhraus c3:ssa}
translate L PatternKc1Kg8 {O-O-O vastaan O-O (Kc1 vastaan Kg8)}
translate L PatternKg1Kc8 {O-O vastaan O-O-O (Kg1 vastaan Kc8)}
translate L PatternLightFian {Valkean ruudun sivustointi (Lähetti-g2 vastaan lähetti-b7)}
translate L PatternDarkFian {Mustan ruudun sivustointi (Lähetti-b2 vastaan lähetti-g7)}
translate L PatternFourFian {Neljä sivustointia (Lähetit b2:ssa,g2:ssa,b7:ssa ja g7:ssa)}

# Game saving:
translate L Today {Tänään}
translate L ClassifyGame {Luokittele peli}

# Setup position:
translate L EmptyBoard {Tyhjennä lauta}
translate L InitialBoard {Alkuasema}
translate L SideToMove {Siirtovuorossa oleva puoli}
translate L MoveNumber {Siirron numero}
translate L Castling {Linnoitus}
translate L EnPassantFile {Ohestalyönnin linja}
translate L ClearFen {Tyhjennä FEN}
translate L PasteFen {Liitä FEN}

translate L SaveAndContinue {Tallenna ja jatka}
translate L DiscardChangesAndContinue {Hylkää muutokset}
translate L GoBack {Mene takaisin}

# Replace move dialog:
translate L ReplaceMove {Korvaa siirto}
translate L AddNewVar {Lisää muunnelma}
translate L NewMainLine {Uusi päämuunnelma}
translate L ReplaceMoveMessage {Siirto on jo olemassa. Ole hyvä ja syötä valinta.
Korvaa siirto hylkää kaikki seuraavat siirrot.}

# Make database read-only dialog:
translate L ReadOnlyDialog {Haluatko tehdä tästä tietokannasta kirjoitussuojatun?

(Voit tehdä tietokannasta uudelleen kirjoituskelpoisen sulkemalla ja uudelleenavaamalla sen.)}

translate L ExitDialog {Haluatko todella poistua Scid-ohjelmasta?}
translate L ClearGameDialog {Tätä peliä on muutettu.\nDo haluatko tallentaa sen?}
translate L ExitUnsaved {Seuraavissa tietokannoissa on tallentamattomia pelejä. Jos poistut nyt niin nämä muutokset häviävät.}

# Import window:
translate L PasteCurrentGame {Liitä nykyinen peli}
translate L ImportHelp1 {Kirjoita tai liitä PGN yläpuolella olevaan kehykseen}
translate L ImportHelp2 {Peliä tuotaessa ilmenneet virheet näytetään tässä}
translate L OverwriteExistingMoves {Kirjoita olomassaolevien siirtojen päälle?}

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
translate L OprepStatSince {Siitä lähtien}
translate L OprepOldest {Vanhimmat pelit}
translate L OprepNewest {Uusimmat pelit}
translate L OprepPopular {Nykyinen suosio}
translate L OprepFreqAll {Yleisyys kaikkina vuosina:   }
translate L OprepFreq1   {Viimeisimmän vuoden aikana: }
translate L OprepFreq5   {Viimeisten viiden vuoden aikana: }
translate L OprepFreq10  {Viimeisten kymmenen vuoden aikana: }
translate L OprepEvery {kerran joka %u pelit}
translate L OprepUp {ylös %u%s kaikista vuosista}
translate L OprepDown {alas %u%s kaikista vuosista}
translate L OprepSame {ei muutosta kaikista vuosista}
translate L OprepMostFrequent {Yleisimmät pelaajat}
translate L OprepMostFrequentOpponents {Yleisimmät vastustajat}
translate L OprepRatingsPerf {Elo-luvut ja suoritus}
translate L OprepAvgPerf {Keskimääräiset Elo-luvut ja suoritus}
translate L OprepWRating {Valkean Elo-luku}
translate L OprepBRating {Mustan Elo-luku}
translate L OprepWPerf {Valkean suoritus}
translate L OprepBPerf {Mustan suoritus}
translate L OprepHighRating {Korkeimpien keskimääräisten Elo-lukujen pelit}
translate L OprepTrends {Tuloksen trendit}
translate L OprepResults {Tuloksen pituudet ja yleisyydet}
translate L OprepLength {Pelin pituus}
translate L OprepFrequency {Yleisyys}
translate L OprepWWins {Valkoinen voittaa: }
translate L OprepBWins {Musta voittaa: }
translate L OprepDraws {Pelit:      }
translate L OprepWholeDB {koko tietokanta}
translate L OprepShortest {Lyhyimmät voitot}
translate L OprepMovesThemes {Siirrot ja teemat}
translate L OprepMoveOrders {Siirtovaihdot raportin asemaan saapuessa}
translate L OprepMoveOrdersOne \
  {Tähän asemaan saavuttaessa oli vain yksi siirtovaihto:}
translate L OprepMoveOrdersAll \
  {Tähän asemaan saavuttaessa oli %u siirtovaihtoa:}
translate L OprepMoveOrdersMany \
  {Tähän asemaan saavuttaessa oli %u siirtovaihtoa. Kärjessä %u ovat:}
translate L OprepMovesFrom {Siirrot raportin asemasta}
translate L OprepMostFrequentEcoCodes {Yleisimmät ECO-koodit}
translate L OprepThemes {Asemalliset teemat}
translate L OprepThemeDescription {Teemojen yleisyys jokaisen pelin ensimmäisissä %u siirroissa}
translate L OprepThemeSameCastling {Saman puolen linnoittuminen}
translate L OprepThemeOppCastling {Vastakkainen linnoittuminen}
translate L OprepThemeNoCastling {Molemmat kuninkaat linnoittamatta}
translate L OprepThemeKPawnStorm {Kuningassivustan sotilasruynnäkkö}
translate L OprepThemeQueenswap {Kuningattaret vaihdettu}
translate L OprepThemeWIQP {Valkoisen eristetty kuningatarsotilas}
translate L OprepThemeBIQP {Mustan eristetty kuningatarsotilas}
translate L OprepThemeWP567 {Valkean sotilas 5/6/7:llä rivillä}
translate L OprepThemeBP234 {Mustan sotilas 2/3/4:llä rivillä}
translate L OprepThemeOpenCDE {Avoin c/d/e-linja}
translate L OprepTheme1BishopPair {Vain yhdellä puolella on lähettipari}
translate L OprepEndgames {Loppupelit}
translate L OprepReportGames {Raportin pelit}
translate L OprepAllGames    {Kaikki pelit}
translate L OprepEndClass {Materiaali jokaisen pelin lopussa }
translate L OprepTheoryTable {Teoriataulukko}
translate L OprepTableComment {Luotu %u korkeimman Elo-luvun peleistä}
translate L OprepExtraMoves {Ylimääräiset huomatussiirrot teoriataulukossa}
translate L OprepMaxGames {Maksimimäärä pelejä teoriataulukossa}
translate L OprepViewHTML {Näytä HTML}
translate L OprepViewLaTeX {Näytä LaTeX}

# Player Report:
translate L PReportTitle {Pelaajaraportti}
translate L PReportColorWhite {Valkeilla nappuloilla}
translate L PReportColorBlack {Mustilla nappuloilla}
translate L PReportBeginning {Aloittamalla tämän kanssa}
translate L PReportMoves {jälkeen %s}
translate L PReportOpenings {Avaukset}
translate L PReportClipbase {Tyhjennä leikepöytä ja kopioi sopivat pelit siihen}

# Piece Tracker window:
translate L TrackerSelectSingle {Hiiren vasen näppäin valitsee tämän nappulan.}
translate L TrackerSelectPair {Hiiren vasen näppäin valitsee tämän nappulan; oikea näppäin valitsee myös sen sisarukset}
translate L TrackerSelectPawn {Hiiren vasen näppäin valitsee tämän sotilaan; oikea näppäin valitsee kaikki 8 sotilasta}
translate L TrackerStat {Tilastotieto}
translate L TrackerGames {% pelit, joissa siirto ruutuun}
translate L TrackerTime {% aika jokaisessa ruudussa}
translate L TrackerMoves {Siirrot}
translate L TrackerMovesStart {Syötä siirtonumero jossa jäljityksen pitäisi alkaa}
translate L TrackerMovesStop {Syötä siirtonumero jossa jäljityksen pitäisi pysähtyä}

# Game selection dialogs:
translate L SelectAllGames {Kaikki pelit}
translate L SelectFilterGames {Suodata pelit}
translate L SelectTournamentGames {Vain nykyisen turnauksen pelit}
translate L SelectOlderGames {Vain vanhemmat pelit}

# Delete Twins window:
translate L TwinsNote {Jotta pelit merkitään kaksoispeleiksi niillä täytyy olla samat pelaajat ja muita kriteerejä kuten alla. On parasta tehdä tietokannan tavutuksen tarkastus ennen kaksoispelien havaitsemista. }
translate L TwinsCriteria {Kaksoispelin kriteeri}
translate L TwinsWhich {Tarkastele kaikki/suodata}
translate L TwinsColors {Saman pelaajan värit}
translate L TwinsEvent {Sama tapahtuma}
translate L TwinsSite {Sama paikka}
translate L TwinsRound {Sama kierros}
translate L TwinsYear {Sama vuosi}
translate L TwinsMonth {Sama kuukausi}
translate L TwinsDay {Sama päivä}
translate L TwinsResult {Sama tulos}
translate L TwinsECO {Sama ECO-koodi}
translate L TwinsMoves {Samat siirrot}
translate L TwinsPlayers {Pelaajien nimet}
translate L TwinsPlayersExact {Täsmällinen vastaavuus}
translate L TwinsPlayersPrefix {Ainoastaan ensimmäiset neljä kirjainta}
translate L TwinsWhen {Poistettaessa kaksoispelejä}
translate L TwinsSkipShort {Älä ota huomioon alle 5-siirtoisia pelejä}
translate L TwinsUndelete {Palauta kaikki pelit ensiksi}
translate L TwinsSetFilter {Aseta suodatin poistettaville kaksoispeleille}
translate L TwinsComments {Pidä aina kommentoidut pelit}
translate L TwinsVars {Pidä aina muunnelmia sisältävät pelit}
translate L TwinsDeleteWhich {Poista mikä peli?}
translate L TwinsDeleteShorter {Lyhyempi peli}
translate L TwinsDeleteOlder {Pienempi pelinumero}
translate L TwinsDeleteNewer {Suurempi pelinumero}
translate L TwinsDelete {Poista pelit}

# Name editor window:
translate L NameEditType {Nimeä muokattava tyyppi}
translate L NameEditSelect {Muokattavat pelit}
translate L NameEditReplace {Korvaa}
translate L NameEditWith {Kanssa}
translate L NameEditMatches {Vastaa: Paina Ctrl+1:sta  Ctrl+9:een valitaksesi}

# Check games window:
translate L CheckGamesWhich {Tarkista pelit}
translate L CheckAll {Kaikki pelit}
translate L CheckSelectFilterGames {Suodata pelit}

# Classify window:
translate L Classify {Luokittele}
translate L ClassifyWhich {ECO-luokittele}
translate L ClassifyAll {Kaikki pelit (kirjoita vanhojen ECO-koodien päälle)}
translate L ClassifyYear {Kaikki viime vuonna pelatut pelit}
translate L ClassifyMonth {Kaikki viime kuukautena pelatut pelit}
translate L ClassifyNew {Ainoastaan vielä ilman ECO -koodia olevat pelit}
translate L ClassifyCodes {Käytettävät ECO-koodit}
translate L ClassifyBasic {Ainoastaan peruskoodit ("B12", ...)}
translate L ClassifyExtended {Scidin laajennukset ("B12j", ...)}

# Compaction:
translate L NameFile {Nimeä tiedosto}
translate L GameFile {Pelitiedosto}
translate L Names {Nimet}
translate L Unused {Käyttämättömät}
translate L SizeKb {Koko (kb)}
translate L CurrentState {Nykyinen tila}
translate L AfterCompaction {Pakkaamisen jälkeen}
translate L CompactNames {Pakatun tiedoston nimi}
translate L CompactGames {Pakatun pelin tiedosto}
translate L NoUnusedNames "Käyttämättömiä nimiä ei ole joten nimi on jo täysin pakattu."
translate L NoUnusedGames "Peli on jo täysin pakattu."
translate L NameFileCompacted {Nimitiedosto "[file tail [sc_base filename]]"a varten pakattiin.}
translate L GameFileCompacted {Pelitiedosto "[file tail [sc_base filename]]"a varten pakattiin.}

# Sorting:
translate L SortCriteria {Kriteeri}
translate L AddCriteria {Lisää kriteeri}
translate L CommonSorts {Yleset lajittelut}
translate L Sort {Lajittele}

# Exporting:
translate L AddToExistingFile {Lisää pelit olemassaolevaan tiedostoon?}
translate L ExportComments {Vie kommentit?}
translate L ExportVariations {Vie muunnelmat?}
translate L IndentComments {Sisennä kommentit?}
translate L IndentVariations {Sisennä muunnelmat?}
translate L ExportColumnStyle {Sarakkeen tyyli (yksi siirto riviä kohden)?}
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
Kopioi [::hyödyt::tuhannet $nGamesToCopy] peli(t) jostakin "$fromName" johonkin "$targetName"?
}
translate L CopyErr {Pelejä ei voi kopioda}
translate L CopyErrSource {Lähdetietokanta}
translate L CopyErrTarget {Kohdetietokanta}
translate L CopyErrNoGames {ei pelejä suodattimessa}
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
translate L ArrowMain   {Päänuoli}
translate L ArrowVar    {Muunnelmanuolet}

# Novelty window:
translate L FindNovelty {Löydä uutuus}
translate L Novelty {Uutuus}
translate L NoveltyInterrupt {Uutuuden etsintä keskeytetty}
translate L NoveltyNone {Uutuutta ei löydetty tähän peliin}
translate L NoveltyHelp {Löydä ensimmäinen ainutlaatuinen siirto valitussa tietokannassa}

# Sounds configuration:
translate L SoundsFolder {Äänikansio}
translate L SoundsFolderHelp {Kansion pitää sisältää tiedostot Kuningas.wav, 1.wav, jne}
translate L SoundsAnnounceOptions {Siirron ilmoitukset}
translate L SoundsAnnounceNew {Ilmoita uudet siirrot}
translate L SoundsAnnounceForward {Ilmoita siirryttäessä eteenpäin}
translate L SoundsAnnounceBack {Ilmota siirryttäessä taaksepäin}

# Upgrading databases:
translate L Upgrading {Päivitys}
translate L ConfirmOpenNew {
Tämä on vanhan formaatin (si3) tietokanta jota ei voi avata Scid 4.0:ssa, mutta uusi formaatti versio (si4) on jo luotu.

Haluatko avata tietokannan uuden formaatin version?
}
translate L ConfirmUpgrade {
Tämä on "si3"-formaatti tietokanta. Se täytyy kääntää "si4"-formaatiksi ennen kuin sitä voi käyttää Scid vs. PC 4.0:ssä.

Tämä prosessi on peruuttamaton ja se täytyy tehdä vain kerran. Voit peruuttaa sen jos se vie liian pitkän ajan.

Haluatko päivittää tämän tietokannan nyt?
}

# Recent files options:
translate L RecentFilesMenu {Tiedostovalikossa olevien tiedostojen lukumäärä}
translate L RecentFilesExtra {Alivalikossa olevien tiedostojen lukumäärä}

translate L MyPlayerNamesDescription {
Syötä ensisijaisten pelaajien nimet alle, yksi nimi per rivi.
Pääshakkilautaa käännetään tarvittaessa joka kerta kun listassa olevan pelaajan peli ladataan.
}

#Coach
translate L showblunderexists {näytä falangin möhläys}
translate L showblundervalue {näytä möhläyksen arvo}
translate L showscore {näytä pistemäärä}
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
translate L Noblunder {Ei möhläys}
translate L blunder {möhläys}
translate L Noinfo {-- Ei tietoja --}
translate L moveblunderthreshold {siirto on möhläys jos menestys on suurempi kuin}
translate L limitanalysis {Valmentajan analyysiaika}
translate L seconds {sekunnit}
translate L Abort {Keskeytä}
translate L Resume {Jatka}
translate L Restart {Aloita uudelleen}
translate L OutOfOpening {Avauksen ulkopuolella}
translate L NotFollowedLine {Et seurannut muunnelmaa}
translate L DoYouWantContinue {Haluatko jatkaa?}
translate L CoachIsWatching {Valmentaja seuraa}
translate L Ponder {Pysyvä pohdinta}
translate L LimitELO {Rajaa ELO-vahvuus}
translate L DubiousMovePlayedTakeBack {Pelasit kyseenalaisen siirron, haluatko perua?}
translate L WeakMovePlayedTakeBack {Pelasit heikon siirron, haluatko perua?}
translate L BadMovePlayedTakeBack {Pelasit huonon siirron, haluatko perua?}
translate L Iresign {Antaudun}
translate L yourmoveisnotgood {siirtosi ei ole hyvä}
translate L EndOfVar {Muunnelman loppu}
translate L Openingtrainer {Avausvalmentaja}
translate L DisplayCM {Näytä ehdokassiirrot}
translate L DisplayCMValue {Näytä ehdokassiirtojen arvo}
translate L DisplayOpeningStats {Näytä tilastot}
translate L ShowReport {Näytä raportti}
translate L NumberOfGoodMovesPlayed {pelatut hyvät siirrot}
translate L NumberOfDubiousMovesPlayed {pelatut epäilyttävät siirrot}
translate L NumberOfTimesPositionEncountered {aseman kohtaamiskerrat}
translate L PlayerBestMove  {Salli ainoastaan parhaat siirrot}
translate L OpponentBestMove {Vastustaja pelaa parhaat siirrot}
translate L OnlyFlaggedLines {Vain liputetut muunnelmat}
translate L resetStats {Nollaa tilastot}
translate L Movesloaded {Ladatut siirrot}
translate L PositionsNotPlayed {Pelaamattomat asemat}
translate L PositionsPlayed {Pelatut asemat}
translate L Success {Menestys}
translate L DubiousMoves {Epäilyttävät siirrot}
translate L ConfigureTactics {Valitse pulma}
translate L ResetScores {Nollaa tulokset}
translate L LoadingBase {Tietokannan lataus}
translate L Tactics {Taktiikat}
translate L ShowSolution {Näytä ratkaisu}
translate L Next {Seuraava}
translate L ResettingScore {Tuloksen nollaus}
translate L LoadingGame {Pelin lataus}
translate L MateFound {Matti löytynyt}
translate L BestSolutionNotFound {Parasta ratkaisua EI löydetty!}
translate L MateNotFound {Mattia ei löydetty}
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
translate L StartNewGame {Aloita uusi peli}
translate L FixedLevel {Määrätty taso}
translate L Opening {Avaus}
translate L RandomLevel {Satunnainen taso}
translate L StartFromCurrentPosition {Aloita nykyisestä asemasta}
translate L FixedDepth {Määrätty syvyys}
translate L Nodes {Solmut}
translate L Depth {Syvyys}
translate L Time {Aika} 
translate L SecondsPerMove {Sekunnit per siirto}
translate L DepthPerMove {Syvyys per siirto}
translate L MoveControl {Siirtokontrolli}
translate L TimeLabel {Aika per siirto}
translate L AddVars {Lisää muunnelmat}
translate L AddScores {Lisää tulokset}
translate L Engine {Ohjelma}
translate L TimeMode {Aikamoodi}
translate L TimeBonus {Aika + lisäys}
translate L TimeMin {minuutti}
translate L TimeSec {sekunti}
translate L AllExercisesDone {Kaikki harjoitukset tehty}
translate L MoveOutOfBook {Avauskirjaston ulkopuolinen siirto}
translate L LastBookMove {Avauskirjaston viimeinen siirto}
translate L AnnotateSeveralGames {Joukkohuomautus\nFrom nykyisestä johonkin :}
translate L FindOpeningErrors {Vain avausvirheet}
translate L MarkTacticalExercises {Merkitse taktiset harjoitukset}
translate L UseBook {Käytä avauskirjastoa}
translate L MultiPV {Useat muunnelmat}
translate L Hash {Hash-muisti}
translate L OwnBook {Käytä ohjelman avauskirjastoa}
translate L BookFile {Avauskirjasto}
translate L AnnotateVariations {Prosessoi muunnelmat}
translate L ShortAnnotations {Lyhyet huomautukset}
translate L addAnnotatorTag {Lisää huomautuksen tekijän merkki}
translate L AddScoreToShortAnnotations {Lisää tulos huomautuksiin}
translate L Export {Vie}
translate L BookPartiallyLoaded {Avauskirjasto osittain ladattu}
translate L AddLine {Lisää muunnelma}
translate L RemLine {Poista muunnelma}
translate L Calvar {Muunnelmien laskeminen}
translate L ConfigureCalvar {Asetukset}
# Opening names used in tacgame.tcl
translate L Reti {Retin avaus}
translate L English {Englantilainen peli}
translate L d4Nf6Miscellaneous {1.d4 Nf6 Sekalaiset avaukset}
translate L Trompowsky {Trompowskyn hyökkäys}
translate L Budapest {Budapestin gambiitti}
translate L OldIndian {Vanhaintialainen}
translate L BenkoGambit {Benkö-gambiitti}
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
translate L SicilianDragon {Sicilian puolustuksen lohikäärmemuunnelma}
translate L SicilianScheveningen {Sicilian puolustuksen Scheveningenin muunnelma}
translate L SicilianNajdorf {Sicilian puolustuksen Najdorfin muunnelma}
translate L OpenGame {Avopeli}
translate L Vienna {Wieniläinen peli}
translate L KingsGambit {Kuningasgambiitti}
translate L RussianGame {Venäläinen peli}
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
translate L QGD {Hylätty kuningatargambiitti}
translate L QGDExchange {Hylätyn kuningatargambiitin vaihtomuunnelma}
translate L SemiSlav {Semi-slaavilainen puolustus}
translate L QGDwithBg5 {Hylätyn kuningatargambiitin Lg5-muunnelma}
translate L QGDOrthodox {Hylätyn kuningatargambiitin perinteinen muunnelma}
translate L Grunfeld {Grünfeldin puolustus}
translate L GrunfeldExchange {Grünfeldin puolustuksen vaihtomuunnelma}
translate L GrunfeldRussian {Grünfeldin puolustuksen venäläinen muunnelma}
translate L Catalan {Katalonialainen avaus}
translate L CatalanOpen {Katalonialaisen avauksen avoin muunnelma}
translate L CatalanClosed {Katalonialaisen avauksen suljettu muunnelma}
translate L QueensIndian {Kuningatarintialainen puolustus}
translate L NimzoIndian {Nimzo-intialainen puolustus}
translate L NimzoIndianClassical {Nimzo-intialainen puolustuksen klassinen muunnelma}
translate L NimzoIndianRubinstein {Nimzo-intialainen puolustuksen Rubinsteinin muunnelma}
translate L KingsIndian {Kuningasintialainen puolustus}
translate L KingsIndianSamisch {Kuningasintialainen puolustuksen Sämischin muunnelma}
translate L KingsIndianMainLine {Kuningasintialainen puolustuksen päämuunnelma}

# FICS
translate L ConfigureFics {Konfiguroi FICS}
translate L FICSLogin {Sisäänkirjautuminen}
translate L FICSGuest {Kirjaudu sisään vieraana}
translate L FICSServerPort {Palvelinportti}
translate L FICSServerAddress {IP-osoite}
translate L FICSRefresh {Lataa uudelleen}
translate L FICSTimeseal {Timeseal}
translate L FICSTimesealPort {Timeseal-portti}
translate L FICSSilence {Konsolisuodatin}
translate L FICSOffers {Tarjoukset}
translate L FICSGames {Pelit}
translate L FICSFindOpponent {Löydä vastustaja}
translate L FICSTakeback {Peru}
translate L FICSTakeback2 {Peru 2}
translate L FICSInitTime {Aika (minuutti)}
translate L FICSIncrement {Lisäys (sekunti)}
translate L FICSRatedGame {Pisteytetty peli}
translate L FICSAutoColour {Automaattinen}
translate L FICSManualConfirm {Vahvista manuaalisesti}
translate L FICSFilterFormula {Suodata kaavalla}
translate L FICSIssueSeek {Julkaise haku}
translate L FICSAccept {Hyväksy}
translate L FICSDecline {Kieltäydy}
translate L FICSColour {Väri}
translate L FICSSend {Lähetä}
translate L FICSConnect {Yhdistä}
translate L FICSShouts {Huudot}
translate L FICSTells {Kehoitukset}
translate L FICSOpponent {Vastustajan tiedot}
translate L FICSInfo {Tiedot}
translate L FICSDraw {Ehdota tasapeliä}
translate L FICSRematch {Revanssi}
translate L FICSQuit {Lopeta FICS}
translate L FICSCensor {Sensori}


# Correspondence Chess Dialogs:
translate L CCDlgConfigureWindowTitle {Konfiguroi kirjeshakki}
translate L CCDlgCGeneraloptions {Yleiset vaihtoehdot}
translate L CCDlgDefaultDB {Oletustietokanta:}
translate L CCDlgInbox {Saapuneet-laatikko (polku):}
translate L CCDlgOutbox {Lähetetyt-laatikko (polku):}
translate L CCDlgXfcc {Xfcc-konfiguraatio:}
translate L CCDlgExternalProtocol {Ulkoinen protokolla-ajuri (esim. Xfcc)}
translate L CCDlgFetchTool {Hakutyökalu:}
translate L CCDlgSendTool {Lähetystyökalu:}
translate L CCDlgEmailCommunication {Sähköpostikommunikaatio}
translate L CCDlgMailPrg {Postiohjelma:}
translate L CCDlgBCCAddr {(B)CC-osoite:}
translate L CCDlgMailerMode {Moodi:}
translate L CCDlgThunderbirdEg {esim. Thunderbird, Mozilla Mail, Icedove...}
translate L CCDlgMailUrlEg {esim. Evolution}
translate L CCDlgClawsEg {esim. Sylpheed Claws}
translate L CCDlgmailxEg {esim. mailx, mutt, nail...}
translate L CCDlgAttachementPar {Liiteparametri:}
translate L CCDlgInternalXfcc {Käytä sisäistä Xfcc-tukea}
translate L CCDlgConfirmXfcc {Vahvista siirrot}
translate L CCDlgSubjectPar {Kohdeparametri:}
translate L CCDlgDeleteBoxes {Tyhjennä saapuneet/lähteneet-laatikko}
translate L CCDlgDeleteBoxesText {Haluatko todella tyhjentää kirjeshakin saapuneet- ja lähteneet-laatikoiden kansiot?\nTämä vaatii uuden tahdistuksen näyttääkseen peliesi viimeisen vaiheen.}
translate L CCDlgConfirmMove {Vahvista siirto}
translate L CCDlgConfirmMoveText {Jos vahvistat niin seuraava siirto ja kommentti lähetetään palvelimelle:}
translate L CCDlgDBGameToLong {Epäjohdonmukainen päämuunnelma}
translate L CCDlgDBGameToLongError {Tietokannassasi oleva päämuunnelma on pidempi kuin peli saapuneet-laatikossasi. Jos saapuneet-laatikko sisältää nykyisiä pelejä t.s. juuri tahdistuksen jälkeen niin jotkut siirrot lisättiin tietokannan päämuunnelmaan virheellisesti.

Tässä tapauksessa ole hyvä ja lyhennä päämuunnelma (maksimi)-siirtoon
}

translate L CCDlgStartEmail {Aloita uusi sähköpostipeli}
translate L CCDlgYourName {Nimesi:}
translate L CCDlgYourMail {Sähköpostiosoitteesi:}
translate L CCDlgOpponentName {Vastustajan nimi:}
translate L CCDlgOpponentMail {Vastustajan sähköpostiosoite:}
translate L CCDlgGameID {Pelin ID (ainutkertainen):}

translate L CCDlgTitNoOutbox {Scid: Kirjeshakin lähteneet-laatikko}
translate L CCDlgTitNoInbox {Scid: Kirjeshakin saapuneet-laatikko}
translate L CCDlgTitNoGames {Scid: Ei kirjeshakkipelejä}
translate L CCErrInboxDir {Kirjeshakin saapuneet-laatikon hakemisto:}
translate L CCErrOutboxDir {Kirjeshakin lähtevät-laatikon hakemisto:}
translate L CCErrDirNotUsable {ei ole olemassa tai ei ole luoksepäästävä!\nOle hyvä ja tarkista ja korjaa asetukset}
translate L CCErrNoGames {ei sisällä yhtään peliä!\nOle hyvä ja nouda ne ensin}

translate L CCDlgTitNoCCDB {Scid: Ei kirjeshakkitietokantaa}
translate L CCErrNoCCDB {Yhtään kirjeshakkitietokantaa ei ole avattu. Ole hyvä ja avaa yksi ennenkuin käytät kirjeshakkitoimintoja}

translate L CCFetchBtn {Nouda pelit palvelimelta ja käsittele saapuneet-laatikko}
translate L CCPrevBtn {Mene edelliseen peliin}
translate L CCNextBtn {Mene seuraavaan peliin}
translate L CCSendBtn {Lähetä siirto}
translate L CCEmptyBtn {Tyhjennä saapuneet- ja lähtevät-kansiot}
translate L CCHelpBtn {Kuvakkeiden ja tilaindikaattorien apu.\nYleistä apua varten paina F1!}

translate L CCDlgServerName {Palvelimen nimi}
translate L CCDlgLoginName  {Kirjautumisen nimi}
translate L CCDlgPassword   {Salasana}
translate L CCDlgURL        {Xfcc-URL}
translate L CCDlgRatingType {Luokittamisen tyyppi}

translate L CCDlgDuplicateGame {Ei-ainutlaatuinen pelin ID}
translate L CCDlgDuplicateGameError {Tämä peli on olemassa enemmän kuin kerran teitokannassa. Ole hyvä ja
poista kaksoispelit ja tiivistä pelitiedostosi (Tiedosto/huolto/tiivistetty tietokanta)}

translate L CCDlgSortOption {Lajittelu:}
translate L CCDlgListOnlyOwnMove {Vain pelit jotka minun pitää siirtää}
translate L CCOrderClassicTxt {Paikka, Tapahtuma, Kierros, Tulos, Valkoinen, Musta}
translate L CCOrderMyTimeTxt {Kelloni}
translate L CCOrderTimePerMoveTxt {Aika siirtoa kohden seuraavaan ajantarkistukseen}
translate L CCOrderStartDate {Aloituspäivämäärä}
translate L CCOrderOppTimeTxt {Vastustajien kello}

translate L CCDlgConfigRelay {Tarkkaile pelejä}
translate L CCDlgConfigRelayHelp {Mene pelisivustolle http://www.iccf-webchess.com ja näytä tarkkailtava peli.  
Jos näet shakkilaudan, niin kopioi URL-osoite selaimestasi allaolevaan listaan. Vain yksi URL-osoite riviä kohti!\nEsimerkki: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}


# Connect Hardware dialoges
translate L ExtHWConfigConnection {Konfiguroi ulkoinen hardware}
translate L ExtHWPort {Portti}
translate L ExtHWEngineCmd {Ohjelman käsky}
translate L ExtHWEngineParam {Ohjelman parametri}
translate L ExtHWShowButton {Näytä painike pääikkunassa}
translate L ExtHWHardware {Hardware}
translate L ExtHWNovag {Novag Citrine}
translate L ExtHWInputEngine {Syöttöohjelma}
translate L ExtHWNoBoard {Ei shakkilautaa}

# Input Engine dialogs
translate L IEConsole {Syöttöohjelman konsoli}
translate L IESending {Lähetetyt siirrot jotakin varten}
translate L IESynchronise {Tahdista}
translate L IERotate  {Käännä}
translate L IEUnableToStart {Syöttöohjelmaa ei voida käynnistää:}
# Calculation of Variations
translate L DoneWithPosition {Asema käsitelty}

translate L Board {Shakkilauta}
translate L showGameInfo {Näytä pelin tiedot}
translate L autoResizeBoard {Shakkilaudan koon automaattinen muutos}
translate L DockTop {Siirry ylös}
translate L DockBottom {Siirry alas}
translate L DockLeft {Siirry vasemmalle}
translate L DockRight {Siirry oikealle}
translate L Undock {Poista kiinnityksestä}

# Switcher window
translate L ChangeIcon {Vaihda kuvake}
translate L More {Enemmän}

# Drag & Drop
translate L CannotOpenUri {Seuraavaa URI-osoitetta ei pystytä avaamaan:}
translate L InvalidUri {Pudotussisältö ei ole pätevä URI-lista.}
translate L UriRejected	{Seuraavat tiedostot hylätään:}
translate L UriRejectedDetail {Vain listatut tiedostotyypit voidaan käsitellä:}
translate L EmptyUriList {Pudotussisältö on tyhjä.}
translate L SelectionOwnerDidntRespond {Aikakatkaisu pudotustoiminnon aikana: valinnan omistaja ei vastannut}

}
# end of finnish.tcl
