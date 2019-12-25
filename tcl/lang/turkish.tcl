### turkish.tcl:

# Turkish language support for Scid.
# Translations contributed by:
# Ali Şen (gezginkaramanli@gmail.com)

addLanguage T Türkçe 0 utf-8

proc setLanguage_T {} {

# File menu:
menuText T File "Dosya" 0
menuText T FileNew "Yeni" 0 {Create a new Scid database}
menuText T FileOpen "Aç" 0 {Open an existing Scid database}
menuText T FileClose "Kapat" 0 {Close the active Scid database}
menuText T FileFinder "Bulucu" 0 {Open the File Finder window}
menuText T FileSavePgn "Kaydet PGN" 0 {Save this game to file}
menuText T FileOpenBaseAsTree "Veritabanını Ağaç Şeklinde Açın" 13   {Bir taban açın ve Ağaç penceresinde kullanın}
menuText T FileOpenRecentBaseAsTree "Yeni Veritabanını Ağaç şeklinde aç" 0   {Yeni bir tabanı açın ve Ağaç penceresinde kullanın}
menuText T FileBookmarks "Yerimleri" 0 {Bookmarks menu}
menuText T FileBookmarksAdd "Yerimi ekle" 0 \
  {Geçerli veritabanı oyununu ve konumunu işaretle}
menuText T FileBookmarksFile "Yerimi dosyası" 0 \
  {Geçerli oyun ve konum için bir yer imi dosyalama}
menuText T FileBookmarksEdit "Yerimini düzenle" 0 \
  {Yer imleri menülerini düzenleme}
menuText T FileBookmarksList "Klasörleri Tek Liste Olarak Görüntüle" 0 \
  {Yer imi klasörlerini tek bir liste olarak görüntüle, alt menüler değil}
menuText T FileBookmarksSub "Klasörleri Alt Menüler Olarak Görüntüle" 0 \
  {Yer imi klasörlerini alt menü olarak görüntüle, tek bir liste gösterme}

menuText T FileReadOnly "Sadece oku" 0 \
  {Geçerli veritabanını salt okunur olarak kabul edin, değişiklikleri önleyin}
menuText T FileSwitch "Veritabanına Geç" 1 \
  {Farklı açılmış bir veritabanına geç}
menuText T FileExit "Çıkış" 1 {Scid'den çık}

# Edit menu:
menuText T Edit "Düzenle" 0
menuText T EditAdd "Varyant ekle" 0 {Oyuna bu harekette bir varyat ekleyin}
menuText T EditPasteVar " Varyasyantı Yapıştır" 0
menuText T EditDelete "Varyantı Sil" 0 {Delete a variation for this move}
menuText T EditFirst "İlk Değişiklik Yap" 5 \
  {Promote a variation to be first in the list}
menuText T EditMain "Varyantı Tanıtın" 21 \
  {Promote a variation to be the main line}
menuText T EditTrial "varyantı deneyin" 0 \
  {Start/stop trial mode, for testing an idea on the board}
menuText T EditStrip "Bu oyundan yorumlar veya varyantları çıkarın" 0 {Bu oyundan yorumlar veya varyantları çıkarın}
menuText T EditUndo "Son oyun değişikliğini geri al" 0 {Son oyun değişikliğini geri al}
menuText T EditRedo "tekrar" 0 {Son oyunu değiştirmeyi tekrar et}
menuText T EditStripComments "Tüm hamleleri ve notları bu oyundan çıkarın" 0 \
  {Tüm oynamaları ve notları bu oyundan çıkarın}
menuText T EditStripVars "Varyantlar" 0 {Bu oyundan elde edilen tüm varyantları çıkartın}
menuText T EditStripBegin "Baştan çıkart" 11 \
  {Strip moves from the beginning of the game}
menuText T EditStripEnd "son hamlelere kadar" 9 \
  {Strip moves to the end of the game}
menuText T EditReset "Boş Oynatma panosu" 0 \
  {Reset the clipbase to be completely empty}
menuText T EditCopy "Oynatma panosu Üzerine Kopyala" 1 \
  {Copy this game to the Clipbase database}
menuText T EditPaste "Oynatma panosu Üzerinden Yapıştır" 1 \
  {Aktif Oynatma panosu yapıştırın oyunu burada aktif Oynatma panosu yapıştırın}
menuText T EditPastePGN "Yapıştır PGN" 0 \
  {Interpret the clipboard text as PGN and paste it here}
menuText T EditSetup "Konum Diz " 6 \
  {Set the start position for this game}
menuText T EditCopyBoard "Koplala FEN" 5 \
  {Copy the current board in FEN notation to the text selection (clipboard)}
menuText T EditCopyPGN "Koplala PGN" 0 \
  {Copy the current PGN to the text selection (clipboard)}
menuText T EditPasteBoard "Yapıştır FEN" 6 \
  {Başlangıç kartını geçerli metin seçiminden ayarlama (panoya))}

# Game menu:
menuText T Game "Oyun" 0
menuText T GameNew "Yeni Oyun" 0 {Değişiklikleri atarak boş bir oyuna sıfırlayın}
menuText T GameFirst "İlk oyun" 5 {İlk filtreleme oyununu yükle}
menuText T GamePrev "Önceki oyun" 5 {Filtrelenen oyunu yükle}
menuText T GameReload "Oyunu yeniden yükle" 2 {Bu oyunu tekrar yükle, yapılan değişiklikleri yok et}
menuText T GameNext "Sonraki Oyun" 7 {Load the next filtered game}
menuText T GameLast "Son Oyun" 8 {Son filtreleme oyununu yükle}
menuText T GameRandom "Rastgele Oyun Yükle" 8 {Load a random filtered game}
menuText T GameNumber "Numaralı Oyunu Yükle" 5 {Numarasını girerek oyun yükleyin}
menuText T GameReplace "Yerine Koy" 0 {Bu oyunu eski versiyonun yerine koyun}
menuText T GameAdd "Oyun ekle" 0 {Bu oyunu veritabanında yeni bir oyun olarak kaydedin}
menuText T GameInfo "Oyun Bilgilerini Ayarla" 9
menuText T GameBrowse "Oyunlara Gözat" 0
menuText T GameList "Tüm Oyunları Listele" 0
menuText T GameDelete "Oyunu Sil" 0
menuText T GameDeepest "Açılışın Tanımlanması" 0 {ECO kitabında listelenen en derin oyun pozisyonuna gidin}
menuText T GameGotoMove "Numaralı Hamleye Git" 5 {Geçerli oyunda belirtilen hareket numarasına git}
menuText T GameNovelty "Yenilik bul" 7 {Bu oyunun daha önce oynamamış ilk hareketini bulun}

# Search Menu:
menuText T Search "Ara" 0
menuText T SearchReset "Filtreyi Sıfırla" 0 {Tüm oyunları dahil edecek şekilde filtreyi sıfırlayın}
menuText T SearchNegate "Filtrenin Tersi" 0 {Filtreyi yalnızca hariç tutulan oyunları içerecek şekilde negatifleştirin}
menuText T SearchEnd "Son hamleye Filtre Yap" 15 {Tüm filtre oyunları son konuma yüklenir}
menuText T SearchCurrent "Güncel tahta" 0 {Search for the current board position}
menuText T SearchHeader "Genel" 0 {Başlık (oyuncu, etkinlik, vb.) Bilgileri ile ara}
menuText T SearchMaterial "Aletler/Desen" 0 {Aletler veya tahta desenlerini arama}
menuText T SearchMoves "hamle" 0 {}
menuText T SearchUsing "Arama Dosyasını Yükle" 0 {Arama Seçenekleri dosyası kullanarak arama yapın}

# Windows menu:
menuText T Windows "Pencereler" 0
menuText T WindowsGameinfo "Oyun Bilgisi" 0 {Oyun bilgi panelini göster / gizle}
menuText T WindowsComment "Yorum Editörü" 9 {Yorum editörünü açma / kapama}
menuText T WindowsGList "Oyun Listesi" 0 {Oyun listesi penceresini aç / kapat}
menuText T WindowsPGN "PGN Penceresi" 0 {PGN (oyun notasyonu) penceresini aç / kapat}
menuText T WindowsCross "Çapraz tablo" 0 {Open/close the Tournament Crosstable}
menuText T WindowsPList "Ara" 2 {Open/close the player finder}
menuText T WindowsTmt "Turnuva Ara" 2 {Turnuva bulucusunu aç / kapa}
menuText T WindowsSwitcher "Veritabanını değiştir" 0  {Veritabanı Değiştirici penceresini açma / kapatma}
menuText T WindowsMaint "Bakım Penceresi" 0 {Open/close the Maintenance window}
menuText T WindowsECO "ECO Tarayıcı" 0 {ECO Tarayıcısını açma / kapama window}
menuText T WindowsStats "İstatistik Penceresi" 0 {Open/close the filter statistics window}
menuText T WindowsTree "Ağaç Pencere" 0 {Open/close the Tree window}
menuText T WindowsTB "Teorik oyun sonu verileri Penceresi" 1 {Open/close the Tablebase window}
menuText T WindowsBook "Kitap Penceresi" 0 {Open/close the Book window}
menuText T WindowsCorrChess "Yazışmalı oyun Penceresi" 1 {Yazışmalar penceresini aç / kapat}

# Tools menu:
menuText T Tools "Araçlar" 0
menuText T ToolsAnalysis "Makina Analizi" 0 {Configure analysis engines}
menuText T ToolsEmail "E-posta yöneticisi" 0 {E-posta satranç yöneticisi penceresini açma / kapama}
menuText T ToolsFilterGraph "Göreceli değerler filtre grafiği" 12 {Göreceli değerler için filtre grafiği penceresini açma / kapatma}
menuText T ToolsAbsFilterGraph "Mutlak değerler filtre grafiği" 7 {Mutlak değerler için filtre grafiği penceresini açma / kapatma}
menuText T ToolsOpReport "Açılış Repertuarı" 0 {Geçerli konum için bir açılış raporu oluştur}
menuText T ToolsTracker "Taş İzleyici penceresini açın"  6 {Taş İzleyici penceresini açın}
menuText T ToolsTraining "Eğitim"  7 {Antrenmanlar (taktik, açılış ...) }
menuText T ToolsComp "Satranç motoru turnuvası" 0 {Satranç motoru turnuvası}
menuText T ToolsTacticalGame "Bilgisayar - Phalanx"  0 {Play a game with tactics}
menuText T ToolsSeriousGame "Bilgisayar - UCI motoru"  11 {UCI motoruna karşı oynayın}
menuText T ToolsTrainTactics "Mat konumları"  0 {Solve "Mate in" puzzles}
menuText T ToolsTrainCalvar "Varyantları hesaplama"  0 {Stoyko Exercise}
menuText T ToolsTrainFindBestMove "En iyi hamle bul"  0 {En iyi hamle bul}
menuText T ToolsTrainFics "Internet (FICS)"  0 {Play on freechess.org}
menuText T ToolsBookTuning "Kitap ayarı" 0 {Book tuning}

menuText T ToolsMaint "Bakım" 0 {Scid database maintenance tools}
menuText T ToolsMaintWin "Bakım penceresi" 0 {Open/close the Scid database maintenance window}
menuText T ToolsMaintCompact "sıkıştırılmış veritabanı dosyaları, silinen oyunları ve kullanılmayan isimleri kaldırma" 0 {sıkıştırılmış veritabanı dosyaları, silinen oyunları ve kullanılmayan isimleri kaldırma}
menuText T ToolsMaintClass "ECO-kodlarını hesapla" 2 {Tüm oyunların ECO kodunu yeniden hesapla}
menuText T ToolsMaintSort "Veritabanındaki tüm oyunları sırala" 0 {Veritabanındaki tüm oyunları sırala}
menuText T ToolsMaintDelete "çift Oyunları Sil" 0 {çift oyunları bulun ve silinecek şekilde ayarlayın}
menuText T ToolsMaintTwin "Çift Denetleyici Penceresi" 0 {Çift denetleyicisi penceresini açma / güncelleme}
menuText T ToolsMaintNameEditor "İsim Editörü" 0 {İsim editörü penceresini açma / kapama}
menuText T ToolsMaintNamePlayer "Oyuncu İsimleri" 11 {İmla dosyası kullanarak oyuncu adlarını yazım denetimi yapın}
menuText T ToolsMaintNameEvent "Etkinlik İsimleri" 11 {İmla dosyası kullanarak olay adlarını yazım denetimi}
menuText T ToolsMaintNameSite "yer Adları" 11 {İmla dosyası kullanarak yer adlarını yazım denetimi}
menuText T ToolsMaintNameRound "Tur İsimleri" 11 {Spellcheck round names using the spellcheck file}
menuText T ToolsMaintFixBase "tabanı Onarın" 0 {Bozuk bir tabanı onarmaya çalışın}

menuText T ToolsConnectHardware "Donanımı Bağla" 0 {Harici donanımı bağlayın}
menuText T ToolsConnectHardwareConfigure "Yapılandır" 0 {Harici donanımı ve bağlantıyı yapılandır}
menuText T ToolsConnectHardwareNovagCitrineConnect "Novag Citrine'yı bağlayın" 9 {Scid ile Novag Citrine'yi bağlayın}
menuText T ToolsConnectHardwareInputEngineConnect "Giriş Motorunu Bağlayın" 9 {Giriş Motorunu (ör. DGT kartı) Scid ile bağlayın}

menuText T ToolsPInfo "Oyuncu Bilgileri"  0 \
  {Oyuncu Bilgileri penceresini açma / güncelleme}
menuText T ToolsPlayerReport "Oyuncu Repertuarı" 3 \
  {oyuncu repertuarı oluşturma}
menuText T ToolsRating "Oyuncu Reytingleri" 0 \
  {Graph the rating history of the current game players}
menuText T ToolsScore "Sonuç Grafiği" 0 {Show the score graph window}
menuText T ToolsExpCurrent "oyunu bir metin dosyasına yazın" 8 \
  {Geçerli oyunu bir metin dosyasına yazın}
menuText T ToolsExpCurrentPGN "Geçerli oyunu bir PGN dosyasına yazın" 15 \
  {Geçerli oyunu bir PGN dosyasına yazın}
menuText T ToolsExpCurrentHTML "Oyunu yaz HTML" 15 \
  {Geçerli oyunu bir HTML dosyasına yazın}
menuText T ToolsExpCurrentHTMLJS "Oyunu yaz HTML veya JavaScript" 15 {Geçerli oyunu bir HTML ve JavaScript dosyasına yazın}  
menuText T ToolsExpCurrentLaTeX "Oyunu yaz LaTeX" 15 {Geçerli oyunu xSkak kullanarak bir LaTeX dosyasına yazın}
menuText T ToolsExpFilter "Filtrelenen oyunları bir metin dosyasına yazın" 1 \
  {Filtrelenen oyunları bir metin dosyasına yazın}
menuText T ToolsExpFilterPGN "Filtrelenen oyunları bir PGN dosyasına yazın" 17 \
  {Filtrelenen oyunları bir PGN dosyasına yazın}
menuText T ToolsExpFilterHTML "Filtrelenen oyunları bir HTML dosyasına yazın" 17 \
  {Filtrelenen oyunları bir HTML dosyasına yazın}
menuText T ToolsExpFilterHTMLJS "Filtrelenen oyunları bir HTML ve JavaScript dosyasına yazın" 17 {Filtrelenen oyunları bir HTML ve JavaScript dosyasına yazın}  
menuText T ToolsExpFilterLaTeX "Filtrelenen oyunları bir LaTeX dosyasına yazın" 17  {Filtrelenen oyunları bir LaTeX dosyasına yazın}
# ====== TODO To be translated ======
menuText T ToolsExpFilterEPD "Export Filter to EPD/FEN" 17 {Write all filtered games to an EPD File}
menuText T ToolsExpFilterGames "Oyun listesini Metin'e Yaz" 19 {Biçimlendirilmiş bir Oyun listesini yazdırın.}
menuText T ToolsImportOne "PGN Metninden oyun Al " 0 \
  {PGN metninden bir oyunu içe aktarma}
menuText T ToolsImportFile "PGN Dosyasından oyun Al" 7 {PGN dosyasından oyun alma}
menuText T ToolsStartEngine1 "Motoru çalıştır 1" 0  {Motoru çalıştırın 1}
menuText T ToolsStartEngine2 "Motoru çalıştır 2" 0  {Motoru çalıştırın 2}
menuText T ToolsScreenshot "Konum Görüntüsü al" 0  {Tahta görüntüsü al}

# Play menue
menuText T Play "Oyna" 0 {Oyun Oyna}

# --- Correspondence Chess
menuText T CorrespondenceChess "yaşışmalı satranç" 0 {EMail ve Xfcc tabanlı karşılık gelen satrançlar için işlevler}
menuText T CCConfigure "Yapılandır" 0 {Harici araçları ve genel kurulumu yapılandırın}
menuText T CCConfigRelay "Oyunları gözlemleme" 10 {Gözlemlenecek oyunları yapılandır}
menuText T CCOpenDB "Yazışmalı Veritabanını Aç" 0 {Varsayılan Yazışma veritabanını açma}
menuText T CCRetrieve "Oyunları Al" 0 {Harici (Xfcc-) yardımcısı yoluyla oyunlar bulma}
menuText T CCInbox "Gelen kutusunu işle" 8 {Scidin gelen kutusundaki tüm dosyaları işleyin}
menuText T CCSend "Oyna gönder" 0 {Hareketinizi eMail veya harici (Xfcc-) yardımcısı yoluyla gönderin}

menuText T CCResign "Terkediyorum" 0 {Terk et (eMail ile değil)}
menuText T CCClaimDraw "Oyna ve Beraberlik teklifi" 6 {Hareketi gönder ve beraberlik talep et (eMail ile değil)}
menuText T CCOfferDraw "Beraberlik Teklifi" 1 {Send move and offer a draw (not via eMail)}
menuText T CCAcceptDraw "Beraberliği kabul et" 0 {Accept a draw offer (not via eMail)}

menuText T CCNewMailGame "Yeni eMail Oyunu" 2 {Start a new eMail game}
menuText T CCMailMove "Hamleyi postala" 0 {Hareketi e-postayla rakibine gönder}
menuText T CCGamePage "Oyun Sayfası" 0 {Oyunu web tarayıcısı üzerinden çağırın}

# menu in cc window:
menuText T CCEditCopy "Oyun listesini Gösterim panosuna kopyala" 0 {Oyunları CSV listesi olarak Gösterim panosuna kopyalayın}


#  B    GHiJKL    Q  TUV XYZ

# Options menu:
menuText T Options "Seçenekler" 0
menuText T OptionsBoard "Satranç tahtası/Taşlar" 0 {Satranç tahtası görünüşü}
menuText T OptionsColour "Renkler" 0 {Default text widget color}
menuText T OptionsBackColour "arka plan" 0 {Default text widget color}
menuText T OptionsMainLineColour "Ana Hamle Okları" 0 {Ana oklar}
menuText T OptionsVarLineColour "Varyasyant Okları" 0 {Variation arrows}
# ====== TODO To be translated ======
menuText T OptionsEngineLineColour "Engine Arrows" 0 {Engine arrows}
menuText T OptionsRowColour "Satır rengi" 0 {Varsayılan ağaç / kitap satır rengi}
menuText T OptionsSwitcherColour "db anahtarlayıcı" 0 {Varsayılan db anahtarlayıcı rengi}
menuText T OptionsProgressColour "İlerleme çubuğu" 0 {Varsayılan ilerleme çubuğu rengi}
menuText T OptionsScoreColour "Puan Grafiği" 0 {}
menuText T OptionsScoreBarColour "Puan Grafiği akımı" 0 {}
menuText T OptionsNames "Oyuncu adlarım" 3 {Oyuncu adlarımı düzenle}
menuText T OptionsExport "Dışa aktarma" 0 {Metin dışa aktarma seçeneklerini değiştirme}
menuText T OptionsFonts "Yazım Şeklini Değiştir" 0 {Change fonts}
menuText T OptionsFontsRegular "Normal yazı tipi" 0 {Normal yazı tipini değiştir}
menuText T OptionsFontsMenu "Menu" 0 {Change the menu font}
menuText T OptionsFontsSmall "Küçük" 0 {Küçük yazı tipini değiştir}
menuText T OptionsFontsFixed "sabit" 0 {Sabit genişlikte yazı tipi değiştirme}
menuText T OptionsGInfo "Oyun Bilgisi" 0 {Game information options}
menuText T OptionsFics "FICS" 0 {Ücretsiz Satranç İnternet Sunucusu}
menuText T OptionsFicsAuto "Otamatik Vezir çıkart" 0
# ====== TODO To be translated ======
menuText T OptionsFicsClk "Store Clock times" 0
menuText T OptionsFicsColour "Metin Rengi" 0
menuText T OptionsFicsSize "Tahta Boyutu" 0
menuText T OptionsFicsButtons "Kullanıcı Düğmeleri" 0
menuText T OptionsFicsCommands "Başlangıç Komutları" 0
menuText T OptionsFicsNoRes "Sonuç Yok" 0
menuText T OptionsFicsNoReq "İstek Yok" 0
menuText T OptionsFicsPremove "Önceden Hamle oynamaya izin ver" 0

menuText T OptionsLanguage "Dil" 0 {Menü dili seçin}
menuText T OptionsMovesTranslatePieces "Değişilen taşlar" 0 {Değişilen taşları göster-gizle}
menuText T OptionsMovesHighlightLastMove "Son Hamleyiı Vurgula" 0 {Son hareketi vurgulayın}
menuText T OptionsMovesHighlightLastMoveDisplay "Son hamleyi Göster" 0 {Son hareketi vurgulayın Vurgu}
menuText T OptionsMovesHighlightLastMoveWidth "Genişlik" 0 {Hat kalınlığı}
menuText T OptionsMovesHighlightLastMoveColor "Çizgi rengi" 0 {Çizgi rengi}
# ====== TODO To be translated ======
menuText T OptionsMovesColorSelected "Color Selected Square" 0 {Color move}
menuText T OptionsMoves "hamle" 0 {Hamle Giriş seçenekleri}
menuText T OptionsMovesAsk "üzerine yazmadan önce sor" 0 \
  {Var olan Hamlelerin üzerine yazmadan önce sor}
menuText T OptionsMovesAnimate "Animasyon Zamanı" 1 \
  {Hamleyi oynatmak için kullanılan süreyi ayarlama}
menuText T OptionsMovesDelay "Otomatik Oynatma Zamanı Gecikmesi" 1 \
  {Otomatik oynatma modu için zaman gecikmesini ayarlayın}
menuText T OptionsMovesCoord "Klavyeden Oynama" 0 \
  {Koordinat stili oynama girişini kabul edin (ör. "g1f3")}
menuText T OptionsShowVarPopup "Varyant Penceresini Aç/Kapat" 0 {Turn on/off the display of a variations window}  
menuText T OptionsMovesSpace "Hamle numarasından sonra boşluk ekle" 0 {Hamle numarasından sonra boşluk ekle}  
menuText T OptionsMovesKey "Klavye Tamamlama" 0 \
  {Klavyeyi otomatik tamamlama hareketini açma / kapatma}
menuText T OptionsMovesShowVarArrows "Varyant Oklarını Göster" 0 {varyant hamlelerini gösteren okları açma / kapama }
menuText T OptionsNumbers "Sayı Biçimi" 0 {Sayı biçimini seçin}
menuText T OptionsStartup "başlangıç Penceresi seçimi" 3 {Başlangıçta açılacak pencereleri seçin}
menuText T OptionsTheme "motif" 0 {Ttk motifi}
menuText T OptionsWindows "pencere" 0 {Pencere seçenekleri}
menuText T OptionsWindowsIconify "Otomatik-simge haline getir" 5 \
  {Ana pencere simgelendiği zaman tüm pencereleri simgeleştirin}
menuText T OptionsWindowsRaise "Otomatik yükselt" 5 \
  {Belirli pencereleri (ör. Ilerleme çubukları) gizledikleri zaman kaldırın}
menuText T OptionsSounds "Sesler" 2 {Anons çağrılarını yapılandır}
menuText T OptionsWindowsDock "Çerçeveler" 0 {Dock windows (yeniden başlatılması gerekir)}
menuText T OptionsWindowsSaveLayout "Yerleşimi Kaydet" 0 {Yerleşimi Kaydet}
menuText T OptionsWindowsRestoreLayout "Yerleşimi Geri Yükle" 0 {Yerleşimi Geri Yükle}
menuText T OptionsWindowsShowGameInfo "Oyun bilgisini göster" 0 {Oyun bilgisini göster}
menuText T OptionsWindowsAutoLoadLayout "İlk yerleşimi otomatik yükle" 0 {Başlangıçta otomatik yerleştirilen ilk düzen}
menuText T OptionsWindowsAutoResize "Otomatik boyutlandırma tahta" 0 {}
menuText T OptionsWindowsFullScreen "Tam ekran" 0 {Tam ekran modunu aç / kapat}
menuText T OptionsToolbar "Araç Çubuğu" 0 {Ana pencere araç çubuğunu yapılandır}
menuText T OptionsECO "ECO Dosyasını Yükle" 7 {ECO sınıflandırma dosyasını yükleyin}
menuText T OptionsSpell "Yazım Denetimi Dosyasını Yükle" 11 \
  {Scid yazım denetim dosyasını yükle}
menuText T OptionsTable "Teorik Oyun sonu rehberi" 10 \
  {Bir Teorik oyun veri dosyası seçin; dizindeki tüm Teorik Oyun sonu kullanılacak}
menuText T OptionsRecent "Son Yazılar" 0 {gösterilen giriş sayısını değiştirme dosya/oyun-Tarih menüleri}
menuText T OptionsBooksDir "Kitaplar rehberi" 0 {açılış katapları dizini ayarlar}
menuText T OptionsTacticsBasesDir "taktik tesisi rehberi" 0 {Taktik (eğitim) tesisi seçenek rehberi}
menuText T OptionsInformant "Bilgilendirici Değerleri Yapılandırma" 0
menuText T OptionsSave "Kaydetme Seçenekleri" 0 "Ayarlanabilir tüm seçenekleri dosyaya kaydedin $::optionsFile"
# ====== TODO To be translated ======
menuText T OptionsSaveBases "Save Bases as Default" 0 
menuText T OptionsAutoSave "Çıkışta Otomatik Kaydetme Seçenekleri" 0 \
  {-otomatik Scid'den çıkarken tüm seçenekleri kaydedin}

# Help menu:
menuText T Help "Yardım" 0
menuText T HelpContents "İçerik sayfası" 0 {Yardım içeriği sayfasını göster}
menuText T HelpIndex "Fihrist" 0 {Yardım fihristi sayfasını göster}
menuText T HelpGuide "Hızlı rehber" 0 {Hızlı rehber yardım sayfasını göster}
menuText T HelpHints "Ipuçları" 1 {Ipuçları yardım sayfasını göster}
menuText T HelpContact "İletişim bilgileri" 1 {İletişim bilgileri yardım sayfasını göster}
menuText T HelpTip "Günün İpucu" 0 {Kullanışlı bir Scid ipucu gösterin}
menuText T HelpStartup "Başlangıç Penceresi" 0 {Başlangıç penceresini göster}
menuText T HelpAbout "Hakkında" 0 {Scid Vs PC hakkında bilgi}

# Game info box popup menu:
menuText T GInfoHideNext "Sonraki Hamle'yi Gizle" 0
menuText T GInfoShow "Tarafına Oyna" 0
menuText T GInfoCoords "Koordinatlarını Değiştir" 0
menuText T GInfoMaterial "Değişilen taşlar" 7
menuText T GInfoFEN "FEN" 5
menuText T GInfoMarks "Renkli Kare ve Okları Göster" 5
menuText T GInfoWrap "Uzun Çizgileri Gizle" 0
menuText T GInfoFullComment "Tüm Yorumu Göster" 10
menuText T GInfoPhotos "Fotoğrafları Göster" 5
menuText T GInfoTBNothing "teorik oyun sonu: Hiçbir şey yok" 12
menuText T GInfoTBResult "teorik oyun sonu: Yalnızca Sonuç" 12
menuText T GInfoTBAll "teorik oyun sonu: Sonuç ve En İyi Hareketler" 19
menuText T GInfoDelete "(Un) Bu Oyunu Sil" 4
menuText T GInfoMark "(Un) Bu Oyunu Olarak İşaretle" 4
menuText T GInfoMenuBar "Menü çubuğu"  0
menuText T GInfoToolBar "Araç Çubuğu"  0
menuText T GInfoButtonBar "Düğme Çubuğu"  0
menuText T GInfoStatusBar "Durum çubuğu"  0

translate T FlipBoard {Tahtayı çevir}
translate T RaiseWindows {Gizle-göster}
translate T AutoPlay {otamatik oynat}
translate T TrialMode {Deneme modu}
translate T KeepOpen {Başlatma sonrasında açık tutun}

# General buttons:
translate T Apply {Uygula}
translate T Back {Geri}
translate T Browse {Araştır}
translate T Cancel {İptal}
translate T Continue {Devam}
translate T Clear {Temizle}
translate T Close {Kapat}
translate T Contents {İçeriği}
translate T Defaults {Varsayılanlar}
translate T Delete {Sil}
translate T Graph {Grafik}
translate T Help {Yardım}
translate T Import {İthalat}
translate T Index {Indeks}
translate T LoadGame {Yükle}
translate T BrowseGame {Araştır}
translate T MergeGame {Oyunu birleştir}
translate T MergeGames {Oyunları Birleştir}
translate T Preview {Önizleme}
translate T Revert {Geri al}
translate T Save {Kaydet}
translate T DontSave {Kaydetme}
translate T Search {Ara}
translate T Stop {Dur}
translate T Store {Mağaza}
translate T Update {Güncelle}
translate T ChangeOrient {Pencerelerin yönünü değiştir}
translate T ShowIcons {Simgeleri göster}
translate T ConfirmCopy {Onay Koplala}
translate T None {Yok}
translate T First {İlk}
translate T Current {Güncel}
translate T Last {Son}
translate T Font {Yazı tipi}
translate T Change {Değişiklik}
translate T Random {Rastgele}

# General messages:
translate T game {oyun}
translate T games {oyunlar}
translate T move {hamle}
translate T moves {Hamleler}
translate T all {Tümü}
translate T Yes {Evet}
translate T No {Hayır}
translate T Both {ikiside}
translate T King {Şah}
translate T Queen {Vezir}
translate T Rook {Kale}
translate T Bishop {Fil}
translate T Knight {At}
translate T Pawn {Piyon}
translate T White {Beyaz}
translate T Black {Siyah}
translate T Player {Oyuncu}
translate T Rating {reyting}
translate T RatingDiff {Reyting farkı}
translate T AverageRating {Ortalama reytingi}
translate T Event {Etkinlik}
translate T Site {yer}
translate T Country {ülke}
translate T IgnoreColors {Renkleri yoksay}
translate T MatchEnd {Yalnızca sonlandır}
translate T Date {tarih}
translate T EventDate {Etkinlik tarihi}
translate T Decade {Onyıl (Onluk)}
translate T Year {Yıl}
translate T Month {Ay}
translate T Months {Ocak Şubat Mart Nisan Mayıs Haziran Temmuz Ağustos Eylül Ekim Kasım Aralık}
translate T Days {Pazar Pazartesi Salı Çarşamba Perşembe Cuma Cumartesi}
translate T YearToToday {Bugüne kadar}
translate T Result {Sonuç}
translate T Round {Tur}
translate T Length {uzunluğu}
translate T ECOCode {ECO kodu}
translate T ECO {ECO}
translate T Deleted {silindi}
translate T SearchResults {arama sonuçları}
translate T OpeningTheDatabase {Açılış Veritabanı}
translate T Database {Veritabanı}
translate T Filter {Filtre}
translate T Reset {Sıfırla}
translate T IgnoreCase {Yoksay}
translate T noGames {oyun yok}
translate T allGames {herşey}
translate T empty {boş}
translate T clipbase {Oynatma panosu}
translate T score {sonuç}
translate T Start {Başla}
translate T StartPos {Başlangıç konumu}
translate T Total {Genel Toplam}
translate T readonly {salt okunur}
translate T altered {değiştirilebilir}
translate T tagsDescript {Ekstra etiketler (örneğin: Yorumcu "Anand")}
translate T prevTags {Önceki etiketleri kullan}

# Standard error messages:
translate T ErrNotOpen {Bu açık bir veritabanı değil.}
translate T ErrReadOnly {Bu veritabanı salt okunur ve değiştirilemez.}
translate T ErrSearchInterrupted {Arama kesildi}

# Game information:
translate T twin {çift}
translate T deleted {silindi}
translate T comment {yorum }
translate T hidden {gizli}
translate T LastMove {hamle}
translate T NextMove {Sonraki Hamle}
translate T GameStart {Oyun başlangıcı}
translate T LineStart {Başlangıc Sırası}
translate T GameEnd {Oyun sonu}
translate T LineEnd {Sıranın sonu}

# Player information:
translate T PInfoAll {Bütün oyunlar}
translate T PInfoFilter {Filtre oyunları}
translate T PInfoAgainst {Karşısında}
translate T PInfoMostWhite {En yaygın açılışlar Beyaz}
translate T PInfoMostBlack {En yaygın açılışlar Siyah }
translate T PInfoRating {Reyting geçmişi}
translate T PInfoBio {Yaşam öyküsü}
translate T PInfoEditRatings {Reytingleri Düzenle}
translate T PinfoEditName {Adı Düzenle}
translate T PinfoLookupName {Arama Adı}

# Tablebase information:
translate T Draw {berabere}
translate T stalemate {Mat etmek}
translate T checkmate {Şah Mat}
translate T withAllMoves {tüm hamle ile}
translate T withAllButOneMove {tek hareketi olmaksızın}
translate T with {ile}
translate T only {sadece}
translate T lose {kayıp}
translate T loses {kaybeder}
translate T allOthersLose {diğerleri kaybeder}
translate T matesIn {içinde Mat}
translate T longest {En uzun}
translate T WinningMoves {Kazanan hamle}
translate T DrawingMoves {Beraberlik Hamlesi}
translate T LosingMoves {Hamlesi Kaybeder}
translate T UnknownMoves {Sonucu-Bilinen hamle}

# Tip of the day:
translate T Tip {tavsiye}
translate T TipAtStartup {Başlangıcta ipucu göster}

# Tree window menus:
menuText T TreeFile "Ağaç" 0
menuText T TreeFileFillWithBase "Veritabanıyla ön belleği yükle" 0 {Geçerli tabandaki tüm oyunlarla önbellek dosyasını doldurun}
menuText T TreeFileFillWithGame "oyunu Önbelleğe yükle" 0 {Geçerli tabanda mevcut oyunla önbellek dosyasını doldurun}
menuText T TreeFileCacheInfo "Önbellek bilgisi" 0 {Önbellek kullanımı hakkında bilgi edinin}
menuText T TreeFileSave "Önbellek Dosyasını Kaydet" 0 {Save the tree cache (.stc) file}
menuText T TreeFileFill "Önbellek Dosyasını Yükle" 0 \
  {Önbellek dosyasını ortak açılış pozisyonlarıyla doldurun}
menuText T TreeFileBest "En İyi Oyunlar" 0 {En çok eşleşen oyunları göster}
menuText T TreeFileGraph "Grafik Penceresi" 0 {Bu ağaç dalının grafiğini göster}
menuText T TreeFileCopy "Ağaç Metinini Pano'ya Kopyala" 1 \
  {Ağaç istatistiklerini panoya kopyala}
menuText T TreeFileClose "Ağaç Penceresini Kapat" 0 {Close the tree window}
menuText T TreeMask "Ağaç Maskesi" 0
menuText T TreeMaskNew "Yeni" 0 {Yeni maske}
menuText T TreeMaskOpen "Aç" 0 {Aç mask}
menuText T TreeMaskOpenRecent "Yeni aç" 0 {Yeni maskeyi aç}
menuText T TreeMaskSave "kaydet" 0 {Maskeyi kaydet}
menuText T TreeMaskClose "Kapat" 0 {Maskeyi kapat}
menuText T TreeMaskFillWithLine "Önceki hamlelerin tamamını yükle" 0 {Önceki hareketlerin tamamı ile maskeyi doldurun}
menuText T TreeMaskFillWithGame "oyun ile doldur" 0 {Fill mask with game}
menuText T TreeMaskFillWithBase "tabanındaki tüm oyunlarla doldurun" 0 {Maske tabanındaki tüm oyunlarla doldurun}
menuText T TreeMaskInfo "Bilgi" 0 {Geçerli maske için istatistikleri göster}
menuText T TreeMaskDisplay "Maske haritasını görüntüle" 0 {Maske verilerini ağaç formunda göster}
menuText T TreeMaskSearch "Ara" 0 {Geçerli maskede ara}
menuText T TreeSort "tür" 0
menuText T TreeSortAlpha "Alfabetik" 0
menuText T TreeSortECO "ECO Kodu" 0
menuText T TreeSortFreq "Sıklık" 0
menuText T TreeSortScore "Sonuç" 0
menuText T TreeOpt "Seçenekler" 0
menuText T TreeOptSlowmode "Yavaş mod" 0 {Güncellemeler için yavaş mod (yüksek doğruluk)}
menuText T TreeOptFastmode "Hızlı mod" 0 {Güncellemeler için hızlı mod (geçiş hareketi yok)}
menuText T TreeOptFastAndSlowmode "Hızlı ve yavaş mod" 0 {Hızlı mod sonra güncellemeler için yavaş mod}
menuText T TreeOptStartStop "Otomatik yenileme" 0 {Ağaç penceresinin otomatik olarak yenilenmesini açar veya kapatır}
menuText T TreeOptLock "Kilit" 0 {Ağacın geçerli veritabanına kilitlenmesi / kilidini açma}
menuText T TreeOptTraining "Eğitim" 0 {Ağaç eğitimi modunu açma / kapatma}
menuText T TreeOptShort "Kısa gösterim" 0 {ELO bilgilerini gösterme}
menuText T TreeOptAutosave "otomatik-Önbelleği Kaydet" 0 {otomatik-Kaydet Ağaç penceresini kapatırken önbellek dosyasını}
menuText T TreeOptAutomask "otamatik-yükle Maskeyi" 0 "En son maskeyi bir ağaçla otomatik olarak yükle."
# ====== TODO To be translated ======
menuText T TreeOptCacheSize "Cache size" 0 {Set the cache size}
menuText T TreeOptShowBar "İlerleme Çubuğunu Göster" 0 "Ağaç ilerleme çubuğunu göster."
# ====== TODO To be translated ======
menuText T TreeOptShowFrame "Show Button Bar" 0 "Show tree button bar."
menuText T TreeOptSortBest "En İyi Oyunları Sıralayın" 0 "En İyi Oyunları ELO'ya Göre Sırala."
menuText T TreeHelp "yardım" 0
menuText T TreeHelpTree "Ağaç Yardımı" 0
menuText T TreeHelpIndex "Yardım Dizini" 0
translate T SaveCache {Önbelleğe Kaydet}
translate T Training {Eğitim}
translate T LockTree {Kilit}
translate T TreeLocked {kilitli}
translate T TreeBest {En iyi}
translate T TreeBestGames {En İyi Oyunlar}
translate T TreeAdjust {Filtreyi Ayarla}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate T TreeTitleRow      {    Hamle       sıklık     Sonuç  Kura AvElo Perf  Yıla Göre ECO}
translate T TreeTitleRowShort {    Hamle       sıklık     Sonuç  Kura}
translate T TreeTotal: {TOPLAM:}
translate T DoYouWantToSaveFirst {Kaydetmek istiyor musunuz}
translate T AddToMask {Maskeye Ekle}
translate T RemoveFromMask {Maskeden çıkar}
translate T AddThisMoveToMask {Maskeye hamle Ekle}
translate T SearchMask {Maskede ara}
translate T DisplayMask {Ekran Maskesi}
translate T Nag {Nag kodu}
translate T Marker {İşaretleyici}
translate T Include {Dahil et}
translate T Exclude {dışla}
translate T MainLine {Ana Hamle}
translate T Bookmark {Yer imi}
translate T NewLine {Yeni Hamle}
translate T ToBeVerified {Doğrulanacak}
translate T ToTrain {Alıştırma için}
translate T Dubious {belirsiz}
translate T ToRemove {çıkarmak}
translate T NoMarker {İşaret yok}
translate T ColorMarker {Renk işaretleyici}
translate T WhiteMark {Beyaz}
translate T GreenMark {Yeşil}
translate T YellowMark {Sarı}
translate T BlueMark {Mavi}
translate T RedMark {Kırmızı}
translate T CommentMove {Hamleyi yorumla}
translate T CommentPosition {Konumu yorumla}
translate T AddMoveToMaskFirst {Önce maskeye Hamle ekle}
translate T OpenAMaskFileFirst {önce bir maske dosyası aç}
# ====== TODO To be translated ======
translate T positions {positions}
translate T Moves {hamle}

# Finder window:
menuText T FinderFile "Ara" 0
menuText T FinderFileSubdirs "Alt Dizinlere Bakın" 0
menuText T FinderFileClose "Kapat" 0
menuText T FinderSort "Göre sırala" 0
menuText T FinderSortType "tip" 0
menuText T FinderSortSize "Oyunlar" 0
menuText T FinderSortMod "Değiştirilmiş" 0
menuText T FinderSortName "isim" 0
menuText T FinderSortPath "sıralama yolu" 0
menuText T FinderTypes "Türleri" 0
menuText T FinderTypesScid "Scid Veritabanları" 0
menuText T FinderTypesOld "Eski Biçim Scid Veritabanları" 0
menuText T FinderTypesPGN "PGN Dosyaları" 0
menuText T FinderTypesEPD "EPD Dosyaları" 0
menuText T FinderHelp "Yardım" 0
menuText T FinderHelpFinder "bulucu Yardım" 0
menuText T FinderHelpIndex "fihrist" 0
translate T FileFinder {Dosya Bulucu}
translate T FinderDir {Bulma rehberi}
translate T FinderDirs {rehber kitap}
translate T FinderFiles {Dosyalar}
translate T FinderUpDir {kadar}
translate T FinderCtxOpen {açın}
translate T FinderCtxBackup {Yedekleme}
translate T FinderCtxCopy {Kopyasını}
translate T FinderCtxMove {hamle}
translate T FinderCtxDelete {sil}

# Player finder:
menuText T PListFile "Oyuncu Ara" 0
menuText T PListFileUpdate "Yenile" 0
menuText T PListFileClose "Kapat" 0
menuText T PListSort "Çeşit" 0
menuText T PListSortName "isim" 0
menuText T PListSortElo "Elo" 0
menuText T PListSortGames "Oyunlar" 0
menuText T PListSortOldest "en eski" 0
menuText T PListSortNewest "en yeni" 2

# Tournament finder:
menuText T TmtFile "Turnuva bulma" 0
menuText T TmtFileUpdate "Yenile" 0
menuText T TmtFileClose "kapat" 0
menuText T TmtSort "Sırala" 0
menuText T TmtSortDate "Tarihi" 0
menuText T TmtSortPlayers "oyuncu" 0
menuText T TmtSortGames "Oyunlar" 0
menuText T TmtSortElo "Elo" 0
menuText T TmtSortSite "Yer" 0
menuText T TmtSortEvent "Etkinlik" 1
menuText T TmtSortWinner "Kazanan" 0
translate T TmtLimit "Liste boyutu"
translate T TmtMeanElo "Ortalama Elo"
translate T TmtNone "Eşleşen turnuva bulunamadı."

# Graph windows:
menuText T GraphFile "Dosya" 0
menuText T GraphFileColor "renk sonrası komut dosyası olarak kaydet" 8
menuText T GraphFileGrey "gri ölçekli yazım metni olarak kaydedin" 8
menuText T GraphFileClose "Kapat" 0
menuText T GraphOptions "Seçenekler" 0
menuText T GraphOptionsWhite "Ters çevir beyaz" 0
menuText T GraphOptionsBlack "ters çevir Siyah " 0
menuText T GraphOptionsDots "Noktaları Göster" 0
menuText T GraphOptionsBar "Grafik Seçenekleri Çubuğu" 0
menuText T GraphOptionsBoth "Her ikisi de" 1
menuText T GraphOptionsPInfo "Oyuncu bilgisi" 0
translate T GraphFilterTitle "1000 Oyun sıklığında Baştan"
translate T GraphAbsFilterTitle "Oyun Sıklığı"
translate T ConfigureFilter "X Eksenini Yapılandır"
translate T FilterEstimate "Hesap"
translate T TitleFilterGraph "Scid: Filtre Grafiği"

# Analysis window:
translate T AddVariation {Varyant ekle}
translate T AddAllVariations {Tüm Varyantları Ekle}
translate T AddMove {Hamle Ekle}
translate T Annotate {Analiz}
translate T ShowAnalysisBoard {Analiz tahtasını göster}
translate T ShowInfo {Motor bilgisini göster}
translate T FinishGame {Bitir oyunu}
translate T StopEngine {Motoru durdur}
translate T StartEngine {Motoru çalıştır}
translate T ExcludeMove {Hamleyi Hariç Tut}
translate T LockEngine {Motoru geçerli konuma kilitle}
translate T AnalysisCommand {Çözümleme komutu}
translate T PreviousChoices {Önceki seçimler}
translate T AnnotateTime {Hareket başına saniye}
translate T AnnotateWhich {Hangi tarafta}
translate T AnnotateAll {Her iki tarafa da taşır}
translate T AnnotateAllMoves {Tüm hamleler}
translate T AnnotateWhite {Sadece beyaz hamle}
translate T AnnotateBlack {Sadece siyah hamle}
translate T AnnotateNotBest {Hamle en iyi değil}
translate T AnnotateBlundersOnly {Hareket bir gaf olduğunda}
translate T BlundersNotBest {Gaf / En iyi değil}
translate T AnnotateTitle {Açıklamayı Yapılandır}
translate T AnnotateMissedMates {gözden kaçırdı/kısa matı}
translate T BlundersThreshold {eşik}
translate T ScoreFormat {Puan biçimi}
translate T CutOff {limit}
translate T LowPriority {Düşük CPU Önceliği}
translate T LogEngines {günlük boyutu}
translate T LogName {Ad Ekle}
translate T MaxPly {Azami kat}
translate T ClickHereToSeeMoves {Hareketleri görmek için buraya tıklayın}
translate T ConfigureInformant {Muhbiri Yapılandır}
translate T Informant!? {İlginç hamle}
translate T Informant? {Zayıf hamle}
translate T Informant?? {Hata}
translate T Informant?! {Şüpheli Hamle}
translate T Informant+= {Beyazın hafif avantajı vardır}
translate T Informant+/- {Beyazın makül bir avantajı vardır}
translate T Informant+- {Beyaz'ın belirgin bir avantajı var}
translate T Informant++- {Oyun kazanılan kabul edilir}

# Book window
translate T Book {Kitap}
# ====== TODO To be translated ======
translate T OtherBook {Other Moves}
# ====== TODO To be translated ======
translate T Alphabetical {Alphabetical}
# ====== TODO To be translated ======
translate T TwoBooks {Two Books}

# Analysis Engine open dialog:
translate T EngineList {Motor listesi}
translate T EngineKey {Anahtar}
translate T EngineType {Tipi}
translate T EngineName {İsmi}
translate T EngineCmd {kumanda}
translate T EngineArgs {Parametreler}
translate T EngineDir {rehber}
translate T EngineElo {Elo}
translate T EngineTime {Tarihi}
translate T EngineNew {Yeni}
translate T EngineEdit {Düzenle}
translate T EngineRequired {Koyu alanlar gereklidir; diğerleri isteğe bağlıdır}

# Stats window menus:
menuText T StatsFile "istatistik" 0
menuText T StatsFilePrint "Dosyaya yazdırmak" 0
menuText T StatsFileClose "Pencereyi kapat" 0
menuText T StatsOpt "Seçenekler" 0

# PGN window menus:
menuText T PgnFile "Pgn" 0
menuText T PgnFileCopy "Gösterim panosuna Kopyala" 0
menuText T PgnFilePrint "Oyunu farklı kaydet" 0
menuText T PgnFileClose "Kapat" 10
menuText T PgnOpt "Seçenekler" 0
menuText T PgnOptColor "Renkli ekran" 0
menuText T PgnOptShort "Kısa Başlık" 6
menuText T PgnOptSymbols "Simgesel açıklamalar" 1
menuText T PgnOptIndentC "Satırbaşı Açıklamaları" 0
menuText T PgnOptIndentV "Satırbaşı Varyantlar" 7
menuText T PgnOptColumn "Sütun stili" 1
menuText T PgnOptSpace "Hamle numarasından sonra boşluk" 18
menuText T PgnOptStripMarks "Kare / Ok Kodlarını Gizle" 1
menuText T PgnOptChess "Satranç taşları" 6
menuText T PgnOptScrollbar "Kaydırma çubuğu" 6
menuText T PgnOptBoldMainLine "Cesaret isteyen ana hamle" 4
menuText T PgnColor "Renkler" 0
menuText T PgnColorHeader "Başlık" 0
menuText T PgnColorAnno "Açıklamalar" 0
menuText T PgnColorComments "Yorumlar" 0
menuText T PgnColorVars "Varyantlar" 0
menuText T PgnColorBackground "arka plân" 0
menuText T PgnColorMain "Ana hamle" 0
menuText T PgnColorCurrent "Geçerli hamle" 1
menuText T PgnColorNextMove "Sonraki hamle" 0
menuText T PgnHelp "Yardım" 0
menuText T PgnHelpPgn "PGN Yardımı" 0
menuText T PgnHelpIndex "Fihrist" 0
translate T PgnWindowTitle {PGN: oyun %si}

# Crosstable window menus:
menuText T CrosstabFile "Çapraz tablo" 0
menuText T CrosstabFileText "Metin Olarak Kaydet" 8
menuText T CrosstabFileHtml "Html olarak kaydet" 8
menuText T CrosstabFileLaTeX "Latex olarak kaydet" 8
menuText T CrosstabFileClose "Kapat" 0
menuText T CrosstabEdit "Düzenle" 0
menuText T CrosstabEditEvent "Etkinlik" 0
menuText T CrosstabEditSite "yer" 0
menuText T CrosstabEditDate "tarih" 0
menuText T CrosstabOpt "seçenekler" 0
menuText T CrosstabOptColorPlain "Düz Metin" 0
menuText T CrosstabOptColorHyper "Köprü" 0
menuText T CrosstabOptTieWin "Kazançla oyun ertelendi" 1
menuText T CrosstabOptTieHead "Kafa kafaya ile oyun ertelendi" 1
menuText T CrosstabOptThreeWin "Galibiyet için 3 puan" 1
menuText T CrosstabOptAges "Doğum tarrihi" 8
menuText T CrosstabOptNats "milliyet" 0
menuText T CrosstabOptTallies "Kazanç / Kayıp / Beraberlik" 0
menuText T CrosstabOptRatings "dereceleri" 0
menuText T CrosstabOptTitles "ünvan" 0
menuText T CrosstabOptBreaks "uzatmaların sonucları" 4
menuText T CrosstabOptDeleted "Silinen Oyunları Dahil Et" 8
menuText T CrosstabOptColors "Renk Bilgisi (yalnızca İsviçre)" 0
menuText T CrosstabOptColorRows "Renk Sıraları" 0
menuText T CrosstabOptRowsColor "Çapraz tablo taban çizgisi" 0 {Çapraz tablo taban çizgisi rengi}
menuText T CrosstabOptColumnNumbers "Numaralandırılmış sütunlar (All-Play-Only)" 2
menuText T CrosstabOptGroup "Grup Puanları" 0
menuText T CrosstabSort "Sırala" 0
menuText T CrosstabSortName "isim" 0
menuText T CrosstabSortRating "Derece" 0
menuText T CrosstabSortScore "Sonucu" 0
menuText T CrosstabSortCountry "ülke" 0
menuText T CrosstabType "Biçim" 0
menuText T CrosstabTypeAll "All-Play-All" 0
menuText T CrosstabTypeSwiss "İsviçre" 0
menuText T CrosstabTypeKnockout "Eleme turu" 0
menuText T CrosstabTypeAuto "Otomatik" 1
menuText T CrosstabHelp "Yardım" 0
menuText T CrosstabHelpCross "Çapraz tablo yardımı" 0
menuText T CrosstabHelpIndex "Yardım Dizini" 0
translate T SetFilter {Filtreyi Ayarla}
translate T AddToFilter {Filtreye Ekle}
translate T Swiss {İsviçre}
translate T Category {Kategori}

# Opening report window menus:
menuText T OprepFile "Repertuar" 0
menuText T OprepFileText "Metni Yazdır" 9
menuText T OprepFileHtml "HTML 'ye Yazdır" 9
menuText T OprepFileLaTeX "LaTeX'e yazdır" 9
menuText T OprepFileOptions "seçenekler" 0
menuText T OprepFileClose "Repertuar Penceresini Kapat" 0
menuText T OprepFavorites "favori" 1
menuText T OprepFavoritesAdd "Rapertuar Ekle" 0
menuText T OprepFavoritesEdit "Sık Kullanılanları Düzenle" 0
menuText T OprepFavoritesGenerate "üretmek Rapertuar" 0
menuText T OprepHelp "Yardım" 0
menuText T OprepHelpReport "Açılış repertuarı yardımı" 0
menuText T OprepHelpIndex "Yardım Dizini" 0

# Header search:
translate T HeaderSearch {Genel Arama}
translate T EndSideToMove {Oyun sonunda bitiş yönünde hareket etmek}
translate T GamesWithNoECO {ECO'suz Oyunlar?}
translate T GameLength {Oyun süresi}
translate T FindGamesWith {Bayrakları olan oyunları bul}
translate T StdStart {Standart dışı başlangıç}
translate T Promotions {Özel}
translate T UnderPromo {Promosyonun altında}
translate T Comments {Yorumlar}
translate T Variations {varyasyonlar}
translate T Annotations {açıklamalar}
translate T DeleteFlag {Bayrağı sil}
translate T WhiteOpFlag {Beyaz açılışı}
translate T BlackOpFlag {Siyah açılış}
translate T MiddlegameFlag {Orta oyunu}
translate T EndgameFlag {oyun sonu}
translate T NoveltyFlag {yenilik}
translate T PawnFlag {Piyon yapısı}
translate T TacticsFlag {taktik}
translate T QsideFlag {Vezir kanadından oyun}
translate T KsideFlag {Şah kanadı oyunu}
translate T BrilliancyFlag {parlaklık}
translate T BlunderFlag {gaf}
translate T UserFlag {Kullanıcı Bayrağı}
translate T PgnContains {PGN'de metin var}
# ====== TODO To be translated ======
translate T PreComment {Pre-game Comment}
# ====== TODO To be translated ======
translate T PostComment {End Comment}

# Game list window:
translate T GlistNumber {numarası}
translate T GlistWhite {Beyaz}
translate T GlistBlack {Siyah}
translate T GlistWElo {B-Elo}
translate T GlistBElo {S-Elo}
translate T GlistEvent {Etkinlik}
translate T GlistSite {Yer}
translate T GlistRound {Tur}
translate T GlistDate {tarih}
translate T GlistYear {Yıl}
translate T GlistEventDate {Etkinlik tarihi}
translate T GlistResult {sonuç}
translate T GlistLength {uzunluk}
translate T GlistCountry {ülke}
translate T GlistECO {ECO}
translate T GlistOpening {hamle}
translate T GlistEndMaterial {son aletler}
translate T GlistDeleted {silinen}
translate T GlistFlags {Bayraklar}
translate T GlistVariations {varyasyonlar}
translate T GlistComments {Yorumlar}
translate T GlistAnnos {Şeref listeleri}
translate T GlistStart {başlangıç}
translate T GlistGameNumber {Oyun numarası}
translate T GlistFindText {bulmak}
translate T GlistMoveField {hamle}
translate T GlistEditField {Alanı Düzenle}
translate T GlistAddField {eklemek}
translate T GlistDeleteField {silmek}
translate T GlistColor {renk}
translate T GlistSort {Veritabanını sıralama}

# menu shown with right mouse button down on game list. 
translate T GlistRemoveThisGameFromFilter  {Kaldır}
translate T GlistRemoveGameAndAboveFromFilter  {yukarıdakilerin tümünü kaldır}
translate T GlistRemoveGameAndBelowFromFilter  {Aşağıdakilerin tümünü kaldır}
translate T GlistDeleteGame {Bu oyunu sil} 
translate T GlistDeleteAllGames {Filtredeki tüm oyunları sil} 
translate T GlistUndeleteAllGames {Tüm oyunları süzgeçte geri al} 

translate T GlistAlignL {Sola hizala}
translate T GlistAlignR {sağa hizala}
translate T GlistAlignC {Ortayı hizalayın}

# Maintenance window:
translate T DatabaseName {Veritabanı ismi:}
translate T TypeIcon {Veritabanı Tipi}
translate T NumOfGames {Oyunlar:}
translate T NumDeletedGames {Silinmiş oyunlar:}
translate T NumFilterGames {Filtredeki oyunlar:}
translate T YearRange {Yıl aralığı:}
translate T RatingRange {Reyting aralığı:}
translate T Description {tanım}
translate T Flag {bayrak}
translate T CustomFlags {Özel bayraklar}
translate T DeleteCurrent {Geçerli oyunu sil}
translate T DeleteFilter {Filtre oyunlarını sil}
translate T DeleteAll {Tüm oyunları sil}
translate T UndeleteCurrent {Mevcut oyunu silme}
translate T UndeleteFilter {Süzgeç oyunlarını silme}
translate T UndeleteAll {Tüm oyunları sildikten sonra geri al}
translate T DeleteTwins {Çift oyunları sil}
translate T MarkCurrent {Geçerli oyunu işaretle}
translate T MarkFilter {Filtre oyunlarını işaretle}
translate T MarkAll {Tüm oyunları işaretle}
translate T UnmarkCurrent {Mevcut oyunun işaretini kaldır}
translate T UnmarkFilter {Filtre oyunlarının işaretini kaldır}
translate T UnmarkAll {Tüm oyunların işaretini kaldır}
translate T Spellchecking {Yazım denetimi}
translate T MakeCorrections {Düzeltmeleri Yap}
translate T Ambiguous {belirsiz}
translate T Surnames {soyad}
translate T Players {oyuncu}
translate T Events {Etkinlik}
translate T Sites {Yer}
translate T Rounds {tur}
translate T DatabaseOps {Veritabanı işlemleri}
translate T ReclassifyGames {oyunların sınıflandırır ECO}
translate T CompactDatabase {Kompakt veritabanı}
translate T SortDatabase {Veritabanını sıralama}
translate T AddEloRatings {Elo Reyting ekle}
translate T AutoloadGame {Otomatik yükle oyunu}
translate T StripTags {Ekstra etiketleri kaldır}
translate T StripTag {etiketi kaldır}
translate T CheckGames {Oyunları kontrol et}
translate T Cleaner {temizleyici}
translate T CleanerHelp {
Süpürge aşağıdaki işlemleri yapacaktır.

Seçilirse, ECO Sınıflaması ve İkiz Silme'deki geçerli ayarlar geçerli olur.
}
translate T CleanerConfirm {
Temiz bakım yapılması başladıktan sonra kesilemez.

Bu uzun zaman alabilir.

Seçilen bakım fonksiyonlarını çalıştırmak istediğinizden emin misiniz?
}
# Twinchecker
translate T TwinCheckUndelete {Geçiş yapmak için)}
translate T TwinCheckprevPair {Önceki çift}
translate T TwinChecknextPair {Sonraki çift}
translate T TwinChecker {çift Oyun Denetleyicisi}
translate T TwinCheckTournament {Turnuvada oynanan oyunlar:}
translate T TwinCheckNoTwin {çift yok }
translate T TwinCheckNoTwinfound {Burda çift oyun için hiçbir oyun tespit edilmedi.\n Bu pencereyi kullanarak çiftleri göstermek için önce "İkiz oyunları sil" işlevini kullanmalısınız.}
translate T TwinCheckTag {Etiketleri paylaş ...}
translate T TwinCheckFound1 {Scid bulundu $result çift oyunlar}
translate T TwinCheckFound2 { ve silmek bayrakları ayarlamak}
translate T TwinCheckNoDelete {Bu veritabanında silmek için hiçbir oyun yok.}
# bug here... can't use \n\n
translate T TwinCriteria1 {Zayıf Kriterler uyarısı\n}
translate T TwinCriteria2 {"Aynı Hamleler" için "Hayır" seçtiniz, ki bu çok kötü.\n
Devam edilsin mi?}
translate T TwinCriteria3 {"Aynı Alan", "Aynı Tur" ve "Aynı Yıl" ayarlarından en az ikisi için "Evet" belirtmeniz gerekir.\n
Devam edilsin mi?}
translate T TwinCriteriaConfirm {Scid: çift ayarları onayla}
translate T TwinChangeTag "Aşağıdaki oyun etiketlerini değiştirin:\n\n"
translate T AllocRatingDescription "Yazım Denetimi (reyting) dosyasını kullanarak Oyuncu Elo Reytingi ekleyin."
translate T RatingOverride "Mevcut reytinglerin üzerine yazılsın mı?"
translate T AddRatings "reytingi ekleyin"
translate T AddedRatings {Scid $r Elo reytinglerini $g oyunlarında ekledi.}

#Bookmark editor
translate T NewSubmenu "Ekle Menu"

# Comment editor:
translate T AnnotationSymbols  {açıklamalar}
translate T Comment {Yorumlar}
translate T InsertMark {işaretler}
translate T InsertMarkHelp {
İşareti ekle / kaldır: Renk, tür, kare seçin.
Ekle / çıkart ok: İki kareyi sağ tıklayın.
}

# Nag buttons in comment editor:
translate T GoodMove {iyi hamle}
translate T PoorMove {Kötü hamle}
translate T ExcellentMove {Mükemmel hamle}
translate T Blunder {gaf}
translate T InterestingMove {İlginç hamle}
translate T DubiousMove {Şüpheli hamle}
translate T WhiteDecisiveAdvantage {Beyaz'ın belirgin bir avantajı var}
translate T BlackDecisiveAdvantage {Siyahın belirgin bir avantajı var}
translate T WhiteClearAdvantage {Beyazın açık bir avantajı var}
translate T BlackClearAdvantage {Siyahın açık bir avantajı var}
translate T WhiteSlightAdvantage {Beyaz hafif bir avantaja sahiptir}
translate T BlackSlightAdvantage {Siyah hafif bir avantaja sahiptir}
translate T Equality {eşitlik}
translate T Unclear {belirsiz}
translate T Diagram {diyagram}

# Board search:
translate T BoardSearch {pozisyonu Ara}
translate T FilterOperation {Filtre Ayarı}
translate T FilterAnd {Filtreyi kısıtla (VE)}
translate T FilterOr {Filtreye ekle (veya)}
translate T FilterIgnore {Filtreyi sıfırlayın}
translate T SearchType {Arama Türü}
translate T SearchBoardExact {Tam pozisyon (aynı karelerde tüm parçalar)}
translate T SearchBoardPawns {Piyonlar (aynı taşlar, tüm piyonlar aynı karelerde)}
translate T SearchBoardFiles {dikeyler (aynı dikeyde aynı piyon, tüm piyonlar)}
translate T SearchBoardAny {Any (aynı malzeme, piyon ve taşları her yerde)}
translate T SearchInRefDatabase { Veritabanında ara }
translate T LookInVars {Varyasyonlara bak}
# ====== TODO To be translated ======
translate T CQLLabel {CQL Script}
# ====== TODO To be translated ======
translate T CQLComments {Allow Comments}
# ====== TODO To be translated ======
translate T CQLStrip {Strip Match Comments}

# Material search:
translate T MaterialSearch {Materyal ara}
translate T Material {Materyal}
translate T Patterns {desenler}
translate T Zero {sıfır}
translate T Any {herhangi}
translate T CurrentBoard {Mevcut tahtayı}
translate T CommonEndings {ortak finaller}
translate T CommonPatterns {Ortak Kalıplar}
translate T MaterialDiff {materyal farkı}
translate T squares {kareler}
translate T SameColor {Aynı renk}
translate T OppColor {Ters renk}
translate T Either {Her iki durumda}
translate T MoveNumberRange {Sayı aralığını hamle}
translate T MatchForAtLeast {En azından maç}
translate T HalfMoves {Yarım hamle}

# Common endings in material search:
translate T EndingPawns {Piyon sonları}
translate T EndingRookVsPawns {Kale vs. Piyon (lar)}
translate T EndingRookPawnVsRook {Kale ve 1 Piyon vs. kale}
translate T EndingRookPawnsVsRook {Kale ve Piyon (lar) vs. kale}
translate T EndingRooks {Kale vs. Kale sonlar}
translate T EndingRooksPassedA {Kale vs. Geçer A-Piyonu ile Kalenin oyun sonu}
translate T EndingRooksDouble {Çift Kale sonlar}
translate T EndingBishops {Fil vs. Filin bitişleri}
translate T EndingBishopVsKnight {Fil vs. At bitişleri}
translate T EndingKnights {At vs. At bitişleri}
translate T EndingQueens {Queen vs. Queen endings}
translate T EndingQueenPawnVsQueen {Queen and 1 Pawn vs. Queen}
translate T BishopPairVsKnightPair {Two Bishops vs. Two Knights middlegame}

# Common patterns in material search:
translate T PatternWhiteIQP {White IVP}
translate T PatternWhiteIQPBreakE6 {Beyaz IVP: d4-d5 break vs. e6}
translate T PatternWhiteIQPBreakC6 {Beyaz IVP: d4-d5 break vs. c6}
translate T PatternBlackIQP {Siyah IVP}
translate T PatternWhiteBlackIQP {Beyaz IVP vs. Siyah IVP}
translate T PatternCoupleC3D4 {Beyaz c3 + d4 İzole Piyon Çifti}
translate T PatternHangingC5D5 {C5 ve D5 üzerinde siyah asılı piyonlar}
translate T PatternMaroczy {Maroczy Merkezi (C4 ve E4 üzerinde piyonlar ile)}
translate T PatternRookSacC3 {c3 üzerinde Kale fedası}
translate T PatternKc1Kg8 {O-O-O vs. O-O (Sc1 vs. Sg8)}
translate T PatternKg1Kc8 {O-O vs. O-O-O (Sg1 vs. Sc8)}
translate T PatternLightFian {Light-Square Fianchettos (Fil-g2 vs. Fil-b7)}
translate T PatternDarkFian {Dark-Square Fianchettos (Fil-b2 vs. Fil-g7)}
translate T PatternFourFian {Dört Fianchettos (B2, G2, B7, G7 üzerinde Filler)}

# Game saving:
translate T Today {Bugün}
translate T ClassifyGame {Oyunu sınıflandır}

# Setup position:
translate T EmptyBoard {Tahta temizle}
translate T InitialBoard {ilk tahta}
translate T SideToMove {Hamle tarafı}
translate T MoveNumber {Hamle numarası}
translate T Castling {rok yapma}
translate T EnPassantFile {geçerken Alma}
translate T ClearFen {Temizle FEN}
translate T PasteFen {FEN yapıştır}

translate T SaveAndContinue {Kaydet ve devam et}
translate T DiscardChangesAndContinue {Değişiklikleri Yoksay}
translate T GoBack {Geri dön}

# Replace move dialog:
translate T ReplaceMove {Hamleyi Değiştir}
translate T AddNewVar {Varyasyon ekle}
translate T NewMainLine {Yeni Ana satır}
translate T ReplaceMoveMessage {Hareket Zaten Var.

Lütfen Seçimi Girin.
değiştir seçeneği, sonraki tüm hamleleri yok sayacaktır.}

# Make database read-only dialog:
translate T ReadOnlyDialog {Bu veritabanını salt okunur yapmak ister misiniz?

(Veritabanını tekrar kapatıp yeniden açarak yeniden yazılabilir hale getirebilirsiniz.)}

translate T ExitDialog {Gerçekten Scid'den çıkmak istiyor musun?}
translate T ClearGameDialog {Bu oyun değiştirildi.\nKaydetmek istiyor musunuz?}
translate T ExitUnsaved {Aşağıdaki veritabanlarına kaydedilmemiş oyunlar var. Şimdi çıkarsanız, bu değişiklikler kaybolacak.}
# ====== TODO To be translated ======
translate T ChangeTextDialog {Enabling text colour globally requires restart.}
# ====== TODO To be translated ======
translate T ChangeDockDialog {Changing Docking requires a restart.}
# ====== TODO To be translated ======
translate T ExitNow {Exit now ?}

# Import window:
translate T PasteCurrentGame {Geçerli Oyunu Yapıştır}
translate T ImportHelp1 {PGN'yi yukarıdaki çerçeveye girin veya yapıştırın.}
translate T ImportHelp2 {Oyunu içe aktaran hatalar burada gösterilecektir.}
translate T OverwriteExistingMoves {Mevcut hamlelerin üzerine yazılsın mı?}

# ECO Browser:
translate T ECOAllSections {Tüm ECO bölümleri}
translate T ECOSection {ECO bölümü}
translate T ECOSummary {için özet}
translate T ECOFrequency {Için alt kodların sıklığı}

# Opening Report:
translate T OprepTitle {Açılış Repertuarı}
translate T OprepReport {Repertuar}
translate T OprepGenerated {Tarafından oluşturulan}
translate T OprepStatsHist {İstatistik ve Tarih}
translate T OprepStats {İstatistik}
translate T OprepStatAll {Tüm Repertuar oyunları}
translate T OprepStatBoth {Her ikisi de değerlendirildi}
translate T OprepStatSince {Dan beri}
translate T OprepOldest {En eski oyunlar}
translate T OprepNewest {En yeni oyunlar}
translate T OprepPopular {Geçerli popülerlik}
translate T OprepFreqAll {Tüm yıllarda sıklık:   }
translate T OprepFreq1   {Bugüne kadarki 1 yıl içinde: }
translate T OprepFreq5   {Bugüne kadarki 5 yıl içinde: }
translate T OprepFreq10  {Bugüne kadarki 10 yıl içinde: }
translate T OprepEvery {bir kez her oyunda %u oyun}
translate T OprepUp {up %u%s from all years}
translate T OprepDown {down %u%s from all years}
translate T OprepSame {tüm yıllardan hiç değişiklik yok}
translate T OprepMostFrequent {En sık Oynayanlar}
translate T OprepMostFrequentOpponents {En sık karşılaşılan rakipler}
translate T OprepRatingsPerf {reyting ve performans}
translate T OprepAvgPerf {Ortalama reyting ve performans}
translate T OprepWRating {Beyaz reyting}
translate T OprepBRating {Siyah reyting}
translate T OprepWPerf {Beyaz performans}
translate T OprepBPerf {Siyah performans}
translate T OprepHighRating {En yüksek ortalama reytingli Oyunlar}
translate T OprepTrends {Sonuç trendleri}
translate T OprepResults {Sonuç uzunlukları ve Sıklığı}
translate T OprepLength {Oyun uzunluğu}
translate T OprepFrequency {sıklığı}
translate T OprepWWins {Beyaz kazanır: }
translate T OprepBWins {Siyah kazanır: }
translate T OprepDraws {Beraberlik:      }
translate T OprepWholeDB {tüm veritabanı}
translate T OprepShortest {En kısa kazançlar}
translate T OprepMovesThemes {Hamleler ve Temalar}
translate T OprepMoveOrders {Siparişleri rapor pozisyonuna ulaştırma}
translate T OprepMoveOrdersOne \
  {Bu konuma ulaşan tek bir hamle sırası vardı:}
translate T OprepMoveOrdersAll \
  {Bu pozisyona ulaşan %u hareket talimatı vardı:}
translate T OprepMoveOrdersMany \
  {Bu pozisyona ulaşan %u hareket emirleri vardı. En iyi %u şunlar:}
translate T OprepMovesFrom {Repertuar konumundan Oynar}
translate T OprepMostFrequentEcoCodes {En sık kullanılan ECO kodları}
translate T OprepThemes {Konumsal Temalar}
translate T OprepThemeDescription {Frequency of themes in the first %u moves of each game}
translate T OprepThemeSameCastling {Aynı Kanadda rok}
translate T OprepThemeOppCastling {Karşı karşıya Roklar}
translate T OprepThemeNoCastling {Şahların 2side rok atmamış}
translate T OprepThemeKPawnStorm {Şah kanadı piyon Hucumları}
translate T OprepThemeQueenswap {Vezirler değişildi}
translate T OprepThemeWIQP {Beyaz izole Vezir piyonu}
translate T OprepThemeBIQP {Siyah izole Vezir piyonu}
translate T OprepThemeWP567 {Beyaz piyonlar üzerinde 5/6/7 sıraları}
translate T OprepThemeBP234 {Siyah piyonlar üzerinde 2/3/4th sıraları}
translate T OprepThemeOpenCDE {Açık c/d/e Dikeyi}
translate T OprepTheme1BishopPair {Sadece bir tarafın Fili'i var}
translate T OprepEndgames {oyun sonları}
translate T OprepReportGames {Repertuar oyunları}
translate T OprepAllGames    {Bütün oyunlar}
translate T OprepEndClass {Her oyunun sonunda malzeme}
translate T OprepTheoryTable {Teori Tablosu}
translate T OprepTableComment {En çok oy alan %u oyundan üretildi.}
translate T OprepExtraMoves {Teorik tabloda ekstra Hamle notları}
translate T OprepMaxGames {Teorik tabloda maksimum oyun}
translate T OprepViewHTML {HTML'yi görüntüle}
translate T OprepViewLaTeX {LaTeX'i görüntüle}

# Player Report:
translate T PReportTitle {Oyuncu Repertuarı}
translate T PReportColorWhite {Beyaz taşlarla}
translate T PReportColorBlack {Siyah taşlarla}
translate T PReportBeginning {İle başlayan}
translate T PReportMoves {sonra %si}
translate T PReportOpenings {Açılışlar}
translate T PReportClipbase {Boş gösterim Panosuna  Eşleşen oyunları kopyala}

# Piece Tracker window:
translate T TrackerSelectSingle {Sol fare tuşu bu taşı seçer.}
translate T TrackerSelectPair {Sol fare tuşu bu parçayı seçer; sağ düğmesi de kardeşini (Diğerini) seçer.}
translate T TrackerSelectPawn {Sol fare tuşu bu piyonu seçer; sağ düğme, tüm 8 piyonu seçer.}
translate T TrackerStat {istatistik}
translate T TrackerGames {kare hareketi ile % oyun}
translate T TrackerTime {% her kare üzerindeki zaman}
translate T TrackerMoves {hamle}
translate T TrackerMovesStart {İzlemenin başlaması gereken hamle numarasını girin.}
translate T TrackerMovesStop {İzlemenin durdurulması gereken Hamle numarasını girin.}

# Game selection dialogs:
translate T SelectAllGames {Bütün oyunlar}
translate T SelectFilterGames {Filtre oyunları}
translate T SelectTournamentGames {Sadece mevcut turnuvalarda oyunlar}
translate T SelectOlderGames {Sadece eski oyunlar}

# Delete Twins window:
translate T TwinsNote {çiftler olarak işaretlemek için, oyunların aynı Oyuncular ve diğer kriterlere sahip olması gerekir. çiftleri tespit etmeden önce veritabanının yazım denetimi yapmak en iyisidir.}
translate T TwinsCriteria {çift Oyun Kriterleri}
translate T TwinsWhich {Tümünü İncele/Filtre}
translate T TwinsColors {Aynı oyuncu renkleri}
translate T TwinsEvent {Aynı etkinlik}
translate T TwinsSite {Aynı Yer}
translate T TwinsRound {Aynı Tur}
translate T TwinsYear {Aynı yıl}
translate T TwinsMonth {Aynı ay}
translate T TwinsDay {Aynı gün}
translate T TwinsResult {Aynı sonuç}
translate T TwinsECO {Aynı ECO codu}
translate T TwinsMoves {Aynı Hamleler}
translate T TwinsPlayers {Oyuncu isimleri}
translate T TwinsPlayersExact {Tam eşleşme}
translate T TwinsPlayersPrefix {Sadece ilk dört harf}
translate T TwinsWhen {Çift Oyun Silme Sırasında}
translate T TwinsSkipShort {5 hamle altındaki oyunları yok say}
translate T TwinsUndelete {Önce tüm oyunları silmeyi geri al}
translate T TwinsSetFilter {Filtreyi, silinecek Çiftlere ayarla}
translate T TwinsComments {yorumlu olan oyunu tutun}
translate T TwinsVars {Değişikliklerle daima oyun oynamaya devam et}
translate T TwinsDeleteWhich {Hangi oyunu silmek?}
translate T TwinsDeleteShorter {Daha kısa oyun}
translate T TwinsDeleteOlder {Daha az oyun numarası}
translate T TwinsDeleteNewer {Büyük oyun numarası}
translate T TwinsDelete {Oyunları sil}

# Name editor window:
translate T NameEditType {Düzenlenecek Ad Türü}
translate T NameEditSelect {Düzenlenecek Oyunlar}
translate T NameEditReplace {değiştir}
translate T NameEditWith {İle}
translate T NameEditMatches {Eşleşmeler: Seçmek için Ctrl + 1 ile Ctrl + 9 tuşlarına basın.}

# Check games window:
translate T CheckGamesWhich {Oyunları kontrol et}
translate T CheckAll {Bütün oyunlar}
translate T CheckSelectFilterGames {Filtre oyunları}

# Classify window:
translate T Classify {Sınıflandır}
translate T ClassifyWhich {ECO Sınıflandır}
translate T ClassifyAll {Tüm oyunlar (eski ECO kodlarının üzerine yaz)}
translate T ClassifyYear {Geçen sene oynanan tüm oyunlar}
translate T ClassifyMonth {Geçen ay oynanan tüm oyunlar}
translate T ClassifyNew {Sadece ECO kodu olmayan oyunlar}
translate T ClassifyCodes {Kullanılacak ECO Kodları}
translate T ClassifyBasic {Yalnızca temel kodlar ("B12", ...)}
translate T ClassifyExtended {Scid uzantıları ("B12j", ...)}

# Compaction:
translate T NameFile {İsim dosyası}
translate T GameFile {Oyun dosyası}
translate T Names {İsimler}
translate T Unused {kullanılmayan}
translate T SizeKb {Boyut (kb)}
translate T CurrentState {Mevcut durum}
translate T AfterCompaction {Sıkıştırmadan sonra}
translate T CompactNames {Sıkıştırılmış isimler dosyası}
translate T CompactGames {Sıkıştırılmış Oyun dosyası}
translate T NoUnusedNames "Kullanılmayan isimler yok, bu yüzden isim dosyası zaten sıkıştırılmış durumda."
translate T NoUnusedGames "Oyun dosyası zaten sıkıştırılmış durumda."
translate T NameFileCompacted {Için isim dosyası"[file tail [sc_base filename]]" sıkıştırıldı.}
translate T GameFileCompacted {Için oyun dosyası "[file tail [sc_base filename]]" sıkıştırıldı.}

# Sorting:
translate T SortCriteria {Kriterler}
translate T AddCriteria {Kriter ekle}
translate T CommonSorts {Genel çeşit}
translate T Sort {Çeşit}

# Exporting:
translate T AddToExistingFile {Varolan bir dosyaya oyun eklensin mi?}
translate T ExportComments {Yorumlar gönderilsin mi?}
translate T ExportVariations {Varyantlar gönderilsinmi?}
translate T IndentComments {Satırbaşlarınımı mi yazıyorsunuz?}
translate T IndentVariations {Satırbaşlarına varyantlar?}
translate T ExportColumnStyle {Sütun stili (satır başına bir hareket))?}
translate T ExportSymbolStyle {Sembolik açıklama stili:}
translate T ExportStripMarks {Yorumlardaki kare / ok işareti kodlarını kaldırın mı?}
# ====== TODO To be translated ======
translate T ExportFlags {Export Scid Flags}

# Goto game/move dialogs:
translate T LoadGameNumber {Oyun yükle numarası}
translate T GotoMoveNumber {Numaralı hamleye git}

# Copy games dialog:
translate T CopyGames {Oyun kopyalama}
translate T CopyConfirm {Gerçekten kopyalamak istiyor musun
kopyala [::utils::thousands $nGamesToCopy] oyunlar)
"$fromName" dan itibaren  "$targetname"?
}
translate T CopyErr {Oyunlar kopyalanamıyor}
translate T CopyErrSource {Kaynak veritabanı}
translate T CopyErrTarget {Hedef veritabanı}
translate T CopyErrNoGames {onun filtresinde oyun yok}
translate T CopyErrReadOnly {salt okunur}
translate T CopyErrNotOpen {açık değil}

# Colors:
translate T LightSquares {Açık kareler}
translate T DarkSquares {Koyu kareler}
translate T SelectedSquares {seçilmiş}
translate T Grid {Çerçeve}
translate T Previous {Önceki}
translate T WhitePieces {Beyaz Taşlar}
translate T BlackPieces {Siyah Taşlar}
translate T WhiteBorder {Beyaz Taraf}
translate T BlackBorder {Siyah taraf}
translate T ArrowMain   {Ana Ok}
translate T ArrowVar    {Varyant oku}
# ====== TODO To be translated ======
translate T ShowArrows  {Show Arrows}

# Novelty window:
translate T FindNovelty {Yenilik bul}
translate T Novelty {Yenilik}
translate T NoveltyInterrupt {Yenilik arama kesildi}
translate T NoveltyNone {Bu oyunda yenilik bulunamadı}
translate T NoveltyHelp {Seçilen veride ilk benzersiz hamleyi bulun}

# Sounds configuration:
translate T SoundsFolder {Sesler Klasörü}
translate T SoundsFolderHelp {Klasör, King.wav, 1.wav vb. Dosyaları içermelidir}
translate T SoundsAnnounceOptions {Hamle anonsu}
translate T SoundsAnnounceNew {Yeni hamle ilan et}
translate T SoundsAnnounceForward {Hamle yaptığında anons et}
translate T SoundsAnnounceBack {Geri giderken anons edin}

# Upgrading databases:
translate T Upgrading {Yükseltme}
translate T ConfirmOpenNew {
Bu, Scid 4.0'da açılamayan eski bir biçim (si3) veritabanıdır ancak yeni bir biçim (si4) sürümü zaten oluşturulmuştur.

Veritabanının yeni formatlı sürümünü açmak istiyor musunuz?
}
translate T ConfirmUpgrade {
Bu bir "si3" formatlı veritabanıdır. Scid ve PC 4.0'da kullanılabilmesi için önce "si4" e dönüştürülmesi gerekir.

Bu süreç geri döndürülemez ve yalnızca bir kez yapılması gerekiyor. Çok uzun sürerse iptal edebilirsiniz.

Bu veritabanını şimdi yükseltmek istiyor musunuz?
}

# Recent files options:
translate T RecentFilesMenu {Dosya menüsündeki dosya sayısı}
translate T RecentFilesExtra {Alt menüdeki dosya sayısı}

translate T MyPlayerNamesDescription {
Tercih edilen oyuncu adlarını aşağıda, her satıra bir tane girin.
Listedeki bir oyuncunun bulunduğu her oyun yüklendiğinde, ana satranç tahtası gerekirse çevrilir.
}

#Coach
translate T showblunderexists {phalanx Gaf göster}
translate T showblundervalue {hata değeri göster}
translate T showscore {skoru göster}
translate T coachgame {koç oyunu}
translate T configurecoachgame {Taktik Yapılandır oyunu}
translate T configuregame {UCI yapılandır oyunu}
translate T Phalanxengine {Phalanx motoru}
translate T Coachengine {Koç motoru}
translate T difficulty {zorluk}
translate T hard {zor}
translate T easy {kolay}
translate T Playwith {İle oyna}
translate T white {beyaz}
translate T black {siyah}
translate T both {her ikisi de}
translate T Play {Oyna}
translate T Noblunder {hiçbir gaf yok}
translate T blunder {gaf}
translate T Noinfo {-- Bilgi yok --}
translate T moveblunderthreshold {hamle gaf eşik}
translate T limitanalysis {Koçun analiz süresi}
translate T seconds {saniye}
translate T Abort {iptal etmek}
translate T Resume {Devam et}
translate T Restart {Tekrar başlat}
translate T OutOfOpening {Açılış bittiğinde}
translate T NotFollowedLine {Hat takip edilmedi}
translate T DoYouWantContinue {Devam etmek istiyor musun ?}
translate T CoachIsWatching {Koç izliyor}
translate T Ponder {Sürekli düşünme}
translate T LimitELO {ELO gücünü sınırla}
translate T DubiousMovePlayedTakeBack {Oynanan hamle Şüpheli, geri almak istiyor musunuz?}
translate T WeakMovePlayedTakeBack {Oynanan Hamle zayıf, geri almak istiyor musunuz?}
translate T BadMovePlayedTakeBack {Oynanan hamle, kötü geri almak istiyor musun?}
translate T Iresign {Terkediyorum}
translate T yourmoveisnotgood {hareketin iyi değil}
translate T EndOfVar {Varyasyonun sonu}
translate T Openingtrainer {Açılış antrenörü}
translate T DisplayCM {Aday hamle görüntüleme}
translate T DisplayCMValue {Görüntülenen aday hamle değeri}
translate T DisplayOpeningStats {İstatistikleri göster}
translate T ShowReport {Raporu göster}
translate T NumberOfGoodMovesPlayed {iyi hamle oynadı}
translate T NumberOfDubiousMovesPlayed {şüpheli Hamle oynandı}
translate T NumberOfTimesPositionEncountered {kez karşılaşılan pozisyon}
translate T PlayerBestMove  {Sadece en iyi hamleye izin ver}
translate T OpponentBestMove {Rakip en iyi hamle oynuyor}
translate T OnlyFlaggedLines {Yalnızca bayraklı satırlar}
translate T resetStats {İstatistikleri sıfırla}
translate T Movesloaded {hamle yüklendi}
translate T PositionsNotPlayed {Pozisyonlar oynanmadı}
translate T PositionsPlayed {Pozisyonlar oynandı}
translate T Success {başarı}
translate T DubiousMoves {Şüpheli hamleler}
translate T ConfigureTactics {Bulmaca'yı seçin}
translate T ResetScores {Puanları sıfırlayın}
translate T LoadingBase {Veri yükleniyor}
translate T Tactics {taktikler}
translate T ShowSolution {Çözüm göster}
translate T Next {Sonraki}
translate T ResettingScore {Skoru sıfırlama}
translate T LoadingGame {Oyun yükleniyor}
translate T MateFound {Mat Bulundu}
translate T BestSolutionNotFound {En iyi çözüm bulunamadı!}
translate T MateNotFound {Mat bulunamadı}
translate T ShorterMateExists {Daha kısa mat var}
translate T ScorePlayed {Puan durumu}
translate T Expected {beklenen}
translate T ChooseTrainingBase {Eğitim verisi Seçiniz}
translate T Thinking {düşünme}
translate T AnalyzeDone {Tamamlandı analiz}
translate T WinWonGame {Kazandı oyunu kazandı}
translate T Lines {satırlar}
translate T ConfigureUCIengine {Motoru Yapılandır}
translate T SpecificOpening {belirli açılışlar}
translate T StartNewGame {Yeni oyuna Başla}
translate T FixedLevel {Sabit düzey}
translate T Opening {açılış}
translate T RandomLevel {Rastgele seviyesi}
translate T StartFromCurrentPosition {Geçerli konumdan başla}
translate T FixedDepth {Sabit derinlik}
translate T Nodes {Düğümler}
translate T Depth {derinlik}
translate T Time {Zaman} 
# ====== TODO To be translated ======
translate T Auto {Auto}
# ====== TODO To be translated ======
translate T Score {Score}
# ====== TODO To be translated ======
translate T {Score Combo} {Score Combo}
# ====== TODO To be translated ======
translate T {Time Combo} {Time Combo}
translate T SecondsPerMove {Hareket başına saniyeler}
translate T DepthPerMove {Hareket başına derinlik}
translate T MoveControl {Hareket Kontrolü}
translate T TimeLabel {Hareket başına geçen süre}
translate T AddVars {Varyasyon ekle}
translate T AddScores {Skor ekle}
translate T Engine {Motor}
translate T TimeMode {Zaman modu}
translate T TimeBonus {Süre + ekleme}
translate T TimeMin {dakika}
translate T TimeSec {saniye}
translate T AllExercisesDone {Yapılan tüm alıştırmalar}
translate T MoveOutOfBook {Kitap dışı Hamle}
translate T LastBookMove {Son kitap hamlesi}
translate T AnnotateSeveralGames {Toplu açıklama \n Şu andan itibaren:}
translate T FindOpeningErrors {Yalnızca Açılış Hatası}
translate T MarkTacticalExercises {Taktik egzersizleri işaretleyin}
translate T UseBook {Kitap kullan}
translate T MultiPV {Çoklu varyasyonlar}
translate T Hash {Karma bellek}
translate T OwnBook {Motor kitabı kullan}
translate T BookFile {Açılış kitabı}
translate T AnnotateVariations {varyasyonlara açıklama yapmak}
translate T ShortAnnotations {Kısa açıklamalar}
translate T addAnnotatorTag {Ek açıklayıcı etiketi ekle}
translate T AddScoreToShortAnnotations {Ek açıklamalara Skor ekle}
translate T Export {İhracat}
translate T BookPartiallyLoaded {Kısmen yüklenmiş kitap}
translate T AddLine {Satır Ekle}
translate T RemLine {Hattı Kaldır}
translate T Calvar {Varyasyonların hesaplanması}
translate T ConfigureCalvar {Yapılandırma}
# Opening names used in tacgame.tcl
translate T Reti {Reti}
translate T English {İngiliz}
translate T d4Nf6Miscellaneous {1.d4 Af6 türlü türlü}
translate T Trompowsky {Trompowsky}
translate T Budapest {Budapeşte}
translate T OldIndian {Eski Hintli}
translate T BenkoGambit {Benko Gambit}
translate T ModernBenoni {Modern Benoni}
translate T DutchDefence {Hollanda Savunması}
translate T Scandinavian {İskandinav}
translate T AlekhineDefence {Alekhine Savunması}
translate T Pirc {Pirc}
translate T CaroKann {Caro-Kann}
translate T CaroKannAdvance {Caro-Kann ilerleme devam yolu}
translate T Sicilian       {Sicilya savunması}
translate T SicilianAlapin {Sicilya Alapin}
translate T SicilianClosed {Kapalı SicilYa }
translate T SicilianRauzer {Sicilya Rauzer}
translate T SicilianDragon {Sicilya Dragon}
translate T SicilianScheveningen {Sicilya Scheveningen}
translate T SicilianNajdorf {Sicilya Najdorf}
translate T OpenGame {Açık Oyun}
translate T Vienna {Viyana}
translate T KingsGambit {Şah Gambiti}
translate T RussianGame {Rus Oyunu}
translate T ItalianTwoKnights {İtalyan / İki At}
translate T Spanish {İspanyol}
translate T SpanishExchange {İspanyol Kırışma varyantı}
translate T SpanishOpen {Açık İspanyol}
translate T SpanishClosed {Kapalı İspanyol}
translate T FrenchDefence {Fransız Savunması}
translate T FrenchAdvance {Fransız İlerleme varyantı}
translate T FrenchTarrasch {Fransız Tarrasch}
translate T FrenchWinawer {Fransız Winawer}
translate T FrenchExchange {Fransız Kırışma}
translate T QueensPawn {Vezir piyonu}
translate T Slav {Slav}
translate T QGA {Kabul edilen vezir gambiti}
translate T QGD {Reddedilen Vezir Gambiti}
translate T QGDExchange {Reddedilen Vezir Gambiti Kırışma}
translate T SemiSlav {Semi-Slav}
translate T QGDwithBg5 {Reddedilen Vezir Gambiti Bg5 ile}
translate T QGDOrthodox {Reddedilen Vezir Gambiti Ortodoks}
translate T Grunfeld {Grünfeld Savunması}
translate T GrunfeldExchange {Grünfeld Kırışma}
translate T GrunfeldRussian {Grünfeld Rus}
translate T Catalan {Katalan}
translate T CatalanOpen {Açık Katalan}
translate T CatalanClosed {Kapalı Katalan}
translate T QueensIndian {Vezir-Hint savunması}
translate T NimzoIndian {Nimzo-Hint savunması}
translate T NimzoIndianClassical {Nimzo-Hint savunması Klasik}
translate T NimzoIndianRubinstein {Nimzo-Hint Rubinstein}
translate T KingsIndian {Şah Hint}
translate T KingsIndianSamisch {Şah Hint Samisch}
translate T KingsIndianMainLine {Şah Hint Ana Hat}

# FICS
translate T ConfigureFics {FICS'yi yapılandır}
translate T FICSLogin {Oturum aç}
translate T FICSGuest {Misafir olarak giriş yap}
translate T FICSServerPort {Sunucu bağlantı noktası}
translate T FICSServerAddress {IP Adresi}
translate T FICSRefresh {Yenile}
translate T FICSTimeseal {Zaman mühürü}
translate T FICSTimesealPort {Zaman mühür portu}
translate T FICSSilence {Konsol filtresi}
translate T FICSOffers {Teklifler}
# ====== TODO To be translated ======
translate T FICSMakeOffer {Make Offer}
translate T FICSGames {Oyunlar}
translate T FICSFindOpponent {Rakibini Bul}
translate T FICSTakeback {Geri al}
translate T FICSTakeback2 {Geri al 2}
translate T FICSInitTime {Zaman (dak)}
translate T FICSIncrement {Artış (saniye)}
translate T FICSRatedGame {Puanlı oyun}
translate T FICSAutoColour {Otomatik Renk}
translate T FICSManualConfirm {El ile onayla}
translate T FICSFilterFormula {formülü ile filtre}
translate T FICSIssueSeek {Sayı Arıyor}
translate T FICSAccept {Kabul etmek}
translate T FICSDecline {geri çevirmek}
translate T FICSColour {Renk}
translate T FICSSend {gönder}
translate T FICSConnect {Bağlan}
translate T FICSShouts {Tebrikler}
translate T FICSTells {Söyler}
translate T FICSOpponent {Rakip Bilgisi}
translate T FICSInfo {Bilgi}
translate T FICSDraw {BEraberlik teklifi}
translate T FICSRematch {Rövanş}
translate T FICSQuit {FICS'den çık}
translate T FICSCensor {sansürlemek}


# Correspondence Chess Dialogs:
translate T CCDlgConfigureWindowTitle {Yazışma Satrançlarını Yapılandır}
translate T CCDlgCGeneraloptions {General Options}
translate T CCDlgDefaultDB {Default Database:}
translate T CCDlgInbox {Inbox (path):}
translate T CCDlgOutbox {Outbox (path):}
translate T CCDlgXfcc {Xfcc Configuration:}
translate T CCDlgExternalProtocol {External Protocol Handler (e.g. Xfcc)}
translate T CCDlgFetchTool {Fetch Tool:}
translate T CCDlgSendTool {Send Tool:}
translate T CCDlgEmailCommunication {eMail Communication}
translate T CCDlgMailPrg {Mail program:}
translate T CCDlgBCCAddr {(B)CC Address:}
translate T CCDlgMailerMode {Mode:}
translate T CCDlgThunderbirdEg {e.g. Thunderbird, Mozilla Mail, Icedove...}
translate T CCDlgMailUrlEg {e.g. Evolution}
translate T CCDlgClawsEg {e.g Sylpheed Claws}
translate T CCDlgmailxEg {e.g. mailx, mutt, nail...}
translate T CCDlgAttachementPar {Attachment parameter:}
translate T CCDlgInternalXfcc {Use internal Xfcc support}
translate T CCDlgConfirmXfcc {Confirm moves}
translate T CCDlgSubjectPar {Subject parameter:}
translate T CCDlgDeleteBoxes {Empty In-/Outbox}
translate T CCDlgDeleteBoxesText {Do you really want to empty your In- and Outbox folders for Correspondence Chess?\nThis requires a new sync to show the last state of your games.}
translate T CCDlgConfirmMove {Confirm move}
translate T CCDlgConfirmMoveText {If you confirm, the following move and comment will be sent to the server:}
translate T CCDlgDBGameToLong {Inconsistent Mainline}
translate T CCDlgDBGameToLongError {The mainline in your database is longer than the game in your Inbox. If the Inbox contains current games, i.e. right after a sync, some moves were added to the mainline in the database erroneously.

In this case please shorten the mainline to (at max) move
}

translate T CCDlgStartEmail {Start new eMail game}
translate T CCDlgYourName {Your Name:}
translate T CCDlgYourMail {Your eMail Address:}
translate T CCDlgOpponentName {Opponents Name:}
translate T CCDlgOpponentMail {Opponents eMail Address:}
translate T CCDlgGameID {Game ID (unique):}

translate T CCDlgTitNoOutbox {Scid: Correspondence Chess Outbox}
translate T CCDlgTitNoInbox {Scid: Correspondence Chess Inbox}
translate T CCDlgTitNoGames {Scid: No Correspondence Chess Games}
translate T CCErrInboxDir {Correspondence Chess inbox directory:}
translate T CCErrOutboxDir {Correspondence Chess outbox directory:}
translate T CCErrDirNotUsable {does not exist or is not accessible!\nPlease check and correct the settings.}
translate T CCErrNoGames {does not contain any games!\nPlease fetch them first.}

translate T CCDlgTitNoCCDB {Scid: Yazışmalı Veritabanı yok}
translate T CCErrNoCCDB {Hiçbir 'Yazışmalı' Veritabanı açılmadı. Yazışmalı satranç işlevlerini kullanmadan önce lütfen bir tane açın.}

translate T CCFetchBtn {Sunucudan oyunlar getirin ve Gelen Kutusunu işleyin.}
translate T CCPrevBtn {Önceki oyuna git}
translate T CCNextBtn {Sonraki oyuna git}
translate T CCSendBtn {hamleyi gönder}
translate T CCEmptyBtn {Gelen Kutusu ve Giden Kutusu'nu Boşalt}
translate T CCHelpBtn {Simgeler ve durum göstergeleri hakkında yardım. Genel Yardım için F1 tuşuna basın!}

translate T CCDlgServerName {Sunucu ismi}
translate T CCDlgLoginName  {Kullanıcı adı}
translate T CCDlgPassword   {şifre}
translate T CCDlgURL        {Xfcc-URL}
translate T CCDlgRatingType {Reyting Türü}

translate T CCDlgDuplicateGame {Olmayan-Eşsiz oyun kimliği}
translate T CCDlgDuplicateGameError {Bu oyun veritabanında birden fazla var. Lütfen tüm kopyaları silin ve oyun dosyanızı sıkıştırın (Dosya / Bakım / Kompakt Veritabanı).}

translate T CCDlgSortOption {sınıflandırma:}
translate T CCDlgListOnlyOwnMove {Sadece Hamle yaptığım oyunlar}
translate T CCOrderClassicTxt {yer, Etkinlik, Tur, Sonuç, Beyaz, Siyah}
translate T CCOrderMyTimeTxt {saatim}
translate T CCOrderTimePerMoveTxt {Hamle başına geçen süre, bir dahaki sefere kadar}
translate T CCOrderStartDate {Başlangıç tarihi}
translate T CCOrderOppTimeTxt {Rakibin Saati}

translate T CCDlgConfigRelay {Oyunları gözlemleme}
translate T CCDlgConfigRelayHelp {Üzerinde oyun sayfasına git http://www.iccf-webchess.com adresine gidin ve gözlemlenecek oyunu gösterin. Satranç tahtasını görürseniz URL'yi tarayıcınızdan aşağıdaki listeye kopyalayın. Her satıra yalnızca bir tane URL! \ NÖrnek: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}


# Connect Hardware dialoges
translate T ExtHWConfigConnection {Harici Donanımı Yapılandırma}
translate T ExtHWPort {giriş}
translate T ExtHWEngineCmd {Motor komutu}
translate T ExtHWEngineParam {motor parametresi}
translate T ExtHWShowButton {Ana pencerede düğmeyi göster}
translate T ExtHWHardware {Donanım}
translate T ExtHWNovag {Novag Citrine}
translate T ExtHWInputEngine {Giriş Motoru}
translate T ExtHWNoBoard {tahtasız}

# Input Engine dialogs
translate T IEConsole {Giriş Motoru Kumanda paneli}
translate T IESending {Hamle arat}
translate T IESynchronise {Eş zamanlı}
translate T IERotate  {Dönüşümlü}
translate T IEUnableToStart {Giriş Motoru başlatılamadı:}
# Calculation of Variations
translate T DoneWithPosition {Konumu ile bitti}

translate T Board {Tahta}
translate T showGameInfo {Oyun bilgisini göster}
translate T autoResizeBoard {Tahtanın otomatik olarak yeniden boyutlandırılması}
translate T DockTop {Üste git}
translate T DockBottom {Altına taşı}
translate T DockLeft {Sola taşı}
translate T DockRight {Sağa git}
translate T Undock {Yuvadan ayır}

# Switcher window
translate T ChangeIcon {Simgesini değiştir}
translate T More {Daha}

# Drag & Drop
translate T CannotOpenUri {Aşağıdaki açılamıyor URI:}
translate T InvalidUri {Bırakma içeriği geçerli bir URI listesi değil.}
translate T UriRejected	{Aşağıdaki dosyalar reddedildi:}
translate T UriRejectedDetail {Yalnızca listelenen dosya türleri işlenebilir:}
translate T EmptyUriList {Uri içeriği boş.}
translate T SelectionOwnerDidntRespond {Bırakma eylemi sırasında zaman aşımı: seçim sahibi yanıt vermedi.}
# ====== TODO To be translated ======
translate T PasteAnal {Paste Analysis}
# ====== TODO To be translated ======
translate T SortOpcodes {Sort Opcodes}
# ====== TODO To be translated ======
translate T AddPosition {Add Position}
# ====== TODO To be translated ======
translate T FindPos {Find Deepest Game Position}
# ====== TODO To be translated ======
translate T AnalPosition {Analyze Positions}
# ====== TODO To be translated ======
translate T StripOpcodes {Strip Opcodes}
# ====== TODO To be translated ======
translate T NoMoves {No moves from this position}

}

# end of turkish.tcl
