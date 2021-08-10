# spanish.tcl:
# Spanish translations for Scid.

# Contributors:
# Jordi Gonz�lez Boada
# Enrique Lopez
# Benigno Hern�ndez Bacallado
# Igor Sosa Mayor
# Dale J.H Cannon

# Untranslated messages are marked with a "TODO To be translated" comment.

addLanguage S Espa�ol 1 ;#iso8859-1

proc setLanguage_S {} {

# File menu:
menuText S File "Archivo" 0
menuText S FileNew "Nuevo..." 0 {Crea una nueva base de datos Scid vac�a}
menuText S FileOpen "Abrir..." 1 {Abre una base de datos Scid ya existente}
menuText S FileClose "Cerrar" 0 {Cierra la base de datos Scid activa}
menuText S FileFinder "Visor..." 0 {Abre la ventana del visor de archivos}
menuText S FileSavePgn "Grabar PGN" 0 {Graba la partida a un fichero PGN}
menuText S FileOpenBaseAsTree "Abrir base como �rbol" 0   {Abrir una base y usarla en la ventana de �rbol (Tree)}
menuText S FileOpenRecentBaseAsTree "Abrir base reciente como �rbol" 0   {Abre una base reciente y la usa en ventana de �rbol (Tree)}
menuText S FileBookmarks "Partidas favoritas" 0 {Seleccionar partidas favoritas (Ctrl+B)}
menuText S FileBookmarksAdd "A�adir" 0 {Se�ala la partida y posici�n actual de la base de datos}
menuText S FileBookmarksFile "Archivar" 8 {Archiva un marcador para la partida y posici�n actual}
menuText S FileBookmarksEdit "Editar partidas favoritas..." 0 {Edita los menus de las partidas favoritas}
menuText S FileBookmarksList "Mostrar partidas favoritas" 0 {Muestrar las carpetas de favoritas en una sola lista, sin submen�s}
menuText S FileBookmarksSub "Mostrar partidas marcadas con submenus" 0 {Muestrar las carpetas de favoritas como submen�s, no una sola lista}
menuText S FileReadOnly "S�lo lectura" 0 \
  {Trata la actual base de datos como de s�lo lectura, previniendo cambios}
menuText S FileSwitch "Cambiar de base" 0 \
  {Cambia a otra base de partidas abierta}
menuText S FileExit "Salir" 0 {Salir de Scid}

# Edit menu:
menuText S Edit "Editar" 0
menuText S EditAdd "A�adir variaci�n" 0 \
  {A�ade una variaci�n a este movimiento en la partida}
menuText S EditPasteVar "Pegar Variaci�n" 0
menuText S EditDelete "Borrar variaci�n" 0 {Borra variaci�n para este movimiento}
menuText S EditFirst "Convertir en primera variaci�n" 0 \
  {Hace que una variaci�n sea la primera en la lista}
menuText S EditMain "Variaci�n a l�nea principal" 0 \
   {Promover una variaci�n para que sea la l�nea principal}
menuText S EditTrial "Probar variaci�n" 1 \
  {Inicia/para el modo de prueba, para ensayar una idea en el tablero}
menuText S EditStrip "Eliminar" 2 \
  {Eliminar comentarios o variaciones de esta partida}
menuText S EditUndo "Deshacer" 0 {Deshace el �ltimo cambio en la partida}
menuText S EditRedo "Rehacer" 0
menuText S EditStripComments "Comentarios" 0 \
  {Quita todos los comentarios y variaciones de esta partida}
menuText S EditStripVars "Variaciones" 0 {Quita todas las variaciones de esta partida}
menuText S EditStripBegin "Movimientos desde el principio" 1 \
  {Quita los movimientos desde el principio de la partida}
menuText S EditStripEnd "Movimientos hasta el final" 0 \
  {Quita los movimientos hasta el final de la partida}
# ====== TODO To be translated ======
menuText S EditFlip "Flip Board" 0 {Flip the board}
menuText S EditReset "Poner a cero la base de trabajo" 0 \
  {Pone a cero la base de trabajo (clipbase) para que est� completamente vac�a}
# Benigno
menuText S EditCopy "Copiar partida a Clipbase" 1 \
  {Copia esta partida a Clipbase}
# Benigno
menuText S EditPaste "Pegar �ltima partida de Clipbase" 2 \
  {Pega la �ltima partida de la Clipbase aqu�}

# Benigno
menuText S EditPastePGN "Pegar texto como partida PGN..." 10 \
  {Interpreta el texto del portapapeles como una partida en notacion PGN y la pega aqu�}

# Benigno
menuText S EditSetup "Editar posici�n..." 26 \
  {Inicia el tablero de posici�n con la posici�n de la partida}

menuText S EditCopyBoard "Copiar posici�n" 8 \
  {Copia el tablero actual en notaci�n FEN a la selecci�n de texto (clipboard)}
# Benigno
menuText S EditCopyPGN "Copiar partida PGN" 0 {}

# Benigno
menuText S EditPasteBoard "Pegar posici�n" 6 \
  {Coloca el tablero inicial de la selecci�n de texto actual (clipboard)}

# Game menu:
menuText S Game "Partida" 0
menuText S GameNew "Partida nueva" 0 \
  {Vuelve a una partida nueva, descartando cualquier cambio}
menuText S GameFirst "Cargar primera" 5 {Carga la primera partida filtrada}
menuText S GamePrev "Cargar anterior" 5 {Carga la anterior partida filtrada}
menuText S GameReload "Recarga partida" 2 \
  {Recargar esta partida, descartando cualquier cambio hecho}
menuText S GameNext "Cargar siguiente" 7 {Carga la siguiente partida filtrada}
menuText S GameLast "Cargar �ltima" 8 {Carga la �ltima partida filtrada}
menuText S GameRandom "Cargar partida aleatoria" 8 {Carga aleatoriamente una partida filtrada}
menuText S GameNumber "Cargar partida n�mero" 5 \
  {Carga una partida poniendo su n�mero}
menuText S GameReplace "Reemplazar partida" 6 \
  {Guarda esta partida, reemplazando la antigua versi�n}
menuText S GameAdd "A�adir partida" 0 \
  {Guarda esta partida como una nueva partida en la base de datos}
menuText S GameInfo "Informaci�n de la partida" 0
menuText S GameBrowse "Examinar partidas" 0
menuText S GameList "Listar todas las partidas" 0
menuText S GameDelete "Borrar partida" 0
menuText S GameDeepest "Identificar apertura" 0 \
  {Va a la posici�n m�s avanzada de la partida seg�n el libro ECO}
menuText S GameGotoMove "Ir al movimiento n�mero" 5 \
  {Ir al n�mero de movimiento especificado en la partida actual}
menuText S GameNovelty "Encontrar novedad" 7 \
  {Encuentra el primer movimiento de esta partida que no se ha jugado antes}

# Search Menu:
menuText S Search "Buscar" 0

# Benigno
menuText S SearchReset "Reiniciar el filtro" 0 \
  {Eliminar el filtro para que todas la partidas est�n incluidas}

menuText S SearchNegate "Invertir filtro" 0 {Invierte el filtro para s�lo incluir las partidas excluidas}
menuText S SearchEnd "Mover a �ltimo filtro" 0
menuText S SearchCurrent "Tablero actual..." 0 \
  {Busca por la posici�n actual del tablero}
menuText S SearchHeader "Encabezamiento..." 0 \
  {Busca por informaci�n de encabezamiento (jugador, evento, etc)}
menuText S SearchMaterial "Material/Patr�n..." 0 \
  {Busca por material o patr�n del tablero}
menuText S SearchMoves {Jugadas} 0 {}
menuText S SearchUsing "Cargar archivo de b�squeda" 0 \
  {Busca usando un archivo de opciones de b�squeda}

# Windows menu:
menuText S Windows "Ventanas" 0
menuText S WindowsGameinfo "Mostrar informaci�n de la partida" 0 {Muestra la informaci�n de la partida}
menuText S WindowsComment "Editor de comentarios" 0 \
  {Abre/cierra el editor de comentarios}
menuText S WindowsGList "Listado de partidas" 0 \
  {Abre/cierra la  ventana de listado de partidas}
menuText S WindowsPGN "Ventana PGN" 8 {Abre/cierra la ventana de PGN (notaci�n de partida)}
menuText S WindowsCross "Tabla cruzada" 0 {Muestra la tabla cruzada para esta partida}
menuText S WindowsPList "Buscador de jugadores" 2 {Abre/cierra el buscador de jugadores}
menuText S WindowsTmt "Visor de torneos" 9 {Abre/cierra el visor de torneos}
menuText S WindowsSwitcher "Intercambiador de bases de datos" 0 \
  {Abre/cierra la ventana del intercambiador de bases de datos}
menuText S WindowsMaint "Mantenimiento" 11 \
  {Abre/cierra la ventana de mantenimiento}
menuText S WindowsECO "Buscador ECO" 0 {Abre/cierra la ventana del buscador ECO}
menuText S WindowsStats "Estad�sticas" 12 \
  {Abre/cierra la ventana de estad�sticas del filtro}
menuText S WindowsTree "�rbol de Aperturas" 6 {Abre/cierra la ventana de �rbol de Aperturas (Book)}
menuText S WindowsTB "Tablas de  Finales (TBs)" 8 \
  {Abre/cierra la ventana de TBs}
menuText S WindowsBook "Libros de aperturas (Book)" 0 {Abrir/Cerrar la ventana de libros de aperturas (Book)}
menuText S WindowsCorrChess "Correo electr�nico" 0 {Abrir/Cerrar la ventra de correo}
# ====== TODO To be translated ======
menuText S Analyse "Analyse" 0
# ====== TODO To be translated ======
menuText S AnalyseEngineList "Analysis Engines" 0 {Configure analysis engines}
# ====== TODO To be translated ======
menuText S AnalyseRating "Player Ratings" 0 {Graph the rating history of the current game players}
# ====== TODO To be translated ======
menuText S AnalyseScore "Score Graph" 0 {Show the score graph window}
# ====== TODO To be translated ======
menuText S AnalyseStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText S AnalyseStartEngine2 "Start engine 2" 0  {Start engine 2}

# Tools menu:
menuText S Tools "Herramientas" 0
menuText S ToolsAnalysis "Motor de an�lisis..." 0 \
  {Inicia/para el an�lisis de un motor de ajedrez}
menuText S ToolsEmail "Administrador de email" 0 \
  {Abre/cierra la ventana del administrador de email}
menuText S ToolsFilterGraph "Filtro gr�fico" 7 \
  {Abre/cierra la ventana del filtro gr�fico}
menuText S ToolsAbsFilterGraph "Filtro gr�fico Abs." 7 {Abrir/Cerrar la ventana de filtro gr�fico para valores absolutos}
menuText S ToolsOpReport "Informe de la apertura" 1 \
  {Crea un informe de la apertura para la posici�n actual}
menuText S ToolsTracker "Rastreador de piezas"  6 {Abre la ventana del rastreador de piezas}
menuText S ToolsTraining "Entrenamiento"  0 {Entrenamiento (t�ctica, aperturas,...)}
menuText S ToolsComp "Torneo de motores" 0 {Torneo de motores}
menuText S ToolsTacticalGame "Computadora - Phalanx"  0 {Jugar una partida t�ctica}
menuText S ToolsSeriousGame "Computadora - Motor UCI"  0 {Jugar contra un motor UCI}
menuText S ToolsTrainTactics "Mate en ..N.. (puzzles)"  0 {Resover problemas de "Mate en"}
menuText S ToolsTrainCalvar "C�lculo de variaciones"  0 {Calculo de variantes}
menuText S ToolsTrainFindBestMove "Encontrar la mejor jugada"  0 {Busca el movimiento mejor}
menuText S ToolsTrainFics "Internet (FICS)"  0 {Jugar en freechess.org}
menuText S ToolsBookTuning "Sintonizar libro de aperturas" 0 {Sintonizar libro (Book)}
menuText S ToolsMaint "Mantenimiento" 0 \
  {Herramientas de mantenimiento de la base de datos Scid}
menuText S ToolsMaintWin "Mantenimiento" 0 \
  {Abre/cierra la ventana de mantenimiento de la base de datos Scid}
menuText S ToolsMaintCompact "Compactar base de datos..." 0 \
  {Compacta los archivos de la base de datos, quitando partidas borradas y nombres no usados}
menuText S ToolsMaintClass "Clasificar partidas por ECO..." 24 \
  {Recalcula el c�digo ECO de todas las partidas}
menuText S ToolsMaintSort "Ordenar base de datos..." 0 \
  {Ordena todas las partidas de la base de datos}
menuText S ToolsMaintDelete "Borrar partidas dobles..." 0 \
  {Encuentra partidas dobles y las coloca para ser borradas}
menuText S ToolsMaintTwin "Inspecci�n de dobles" 11 \
  {Abre/actualiza la ventana de inspecci�n de dobles}
menuText S ToolsMaintNameEditor "Edici�n de nombres" 0 \
  {Abre/Cierra la ventana de edici�n de nombres}
menuText S ToolsMaintNamePlayer "Correcci�n de nombres de jugadores" 11 \
  {Comprobaci�n ortogr�fica de jugadores usando archivo de comprobaci�n ortogr�fica}
menuText S ToolsMaintNameEvent "Correcci�n de nombres de eventos" 11 \
  {Comprobaci�n ortogr�fica de eventos usando el archivo de comprobaci�n ortogr�fica}
menuText S ToolsMaintNameSite "Correcci�n de nombres de lugares" 11 \
  {Comprobaci�n ortogr�fica de lugares usando el archivo de comprobaci�n ortogr�fica}
menuText S ToolsMaintNameRound "Correcci�n de nombre de rondas" 11 \
  {Comprobaci�n ortogr�fica de rondas usando el archivo de comprobaci�n ortogr�fica}
menuText S ToolsMaintFixBase "Reparar base corrupta" 0 {Intenta reparar una base corrupta}
menuText S ToolsConnectHardware "Conectar hardware" 0 {Conectar  hardware externo}
menuText S ToolsConnectHardwareConfigure "Configurar..." 0 {Configurar conexi�n a hardware externo}
menuText S ToolsConnectHardwareNovagCitrineConnect "Conectar Novag Citrine" 0 {Conectar Novag Citrine}
menuText S ToolsConnectHardwareInputEngineConnect "Conectar Tablero" 0 {Conectar tablero de entra (p.ej. DGT)}
menuText S ToolsPInfo "Informaci�n del jugador" 16 \
  {Abrir/actualizar la ventana de informaci�n del jugador}
menuText S ToolsPlayerReport "Informe del jugador" 3 \
  {Crea un informe sobre un jugador}
menuText S ToolsRating "Rating del jugador" 0 \
  {Gr�fico de la historia del Elo de los jugadores de la actual partida}
menuText S ToolsScore "Gr�fico de puntuaci�n" 1 \
  {Muestra la ventana del gr�fico de puntuaci�n}
menuText S ToolsExpCurrent "Exportar la partida actual" 0 \
  {Escribe la partida actual en un archivo de texto}
menuText S ToolsExpCurrentPGN "Exportar Partida a PGN" 15 \
  {Escribe la partida actual en un archivo PGN}
menuText S ToolsExpCurrentHTML "Exportar Partida a HTML" 15 \
  {Escribe la partida actual en un archivo HTML}
menuText S ToolsExpCurrentHTMLJS "Exportar Partida a HTML y JavaScript" 15 {Escribir partida actual a un fichero HTML y JavaScript}
menuText S ToolsExpCurrentLaTeX "Exportar Partida a LaTeX" 33 \
  {Escribe la partida actual en un archivo LaTeX}
menuText S ToolsExpFilter "Exportar todas las partidas filtradas" 1 \
  {Escribe todas las partidas filtradas en un archivo de texto}
menuText S ToolsExpFilterPGN "Exportar filtro a PGN" 17 \
  {Escribe todas las partidas filtradas en un archivo PGN}
menuText S ToolsExpFilterHTML "Exportar filtro a HTML" 17 \
  {Escribe todas las partidas filtradas en un archivo HTML}
menuText S ToolsExpFilterHTMLJS "Exportar filtro a HTML y JavaScript" 17 {Escribir todas las partidas filtradas a fichero HTML y JavaScript}
menuText S ToolsExpFilterLaTeX "Exportar filtro a LaTeX" 17 \
  {Escribe todas las partidas filtradas en un archivo LaTeX}
# ====== TODO To be translated ======
menuText S ToolsExpFilterEPD "Export Filter to EPD/FEN" 17 {Write all filtered games to an EPD File}
menuText S ToolsExpFilterGames "Exportar Listado a Texto" 19 {Print a formatted Gamelist.}
menuText S ToolsImportOne "Importar partida PGN" 0 \
  {Importa una partida de un texto PGN}
menuText S ToolsImportFile "Importar archivo de partidas PGN" 2 \
  {Importa partidas de un archivo PGN}
menuText S ToolsStartEngine1 "Iniciar motor 1" 0  {Iniciar motor 1}
menuText S ToolsStartEngine2 "Iniciar motor 2" 0  {Iniciar Motor 2}
menuText S ToolsScreenshot "Captura de pantalla" 0
menuText S Play "Jugar" 0
menuText S CorrespondenceChess "Ajedrez por correo" 0 \
  {Funciones para ajedrez por correo basado en email y Xfcc}
menuText S CCConfigure "Configurar..." 0 \
  {Configura herramientas externas y configuraci�n general}
menuText S CCConfigRelay "Configurar observaciones..." 10 {Configurar partidas para ser observadas}
menuText S CCOpenDB "Abrir base de datos..." 0 \
  {Abrir la base de correo por defecto}
menuText S CCRetrieve "Reparar partidas" 0 \
  {Repara partidas v�a ayuda externa (Xfcc)}
menuText S CCInbox "Procesar correo entrante" 0 \
  {Procesa todos los ficheros en correo entrante de Scid (Inbox)}
menuText S CCSend "Enviar movimiento" 0 \
  {Env�a tu movimiento via email o ayuda externa (Xfcc)}
menuText S CCResign "Abandonar" 0 {Abandona}
menuText S CCClaimDraw "Reclamar tablas" 0 \
  {Env�a un movimiento y reclama tablas}
menuText S CCOfferDraw "Ofrecer tablas" 0 \
  {Env�a un movimiento y ofrece tablas}
menuText S CCAcceptDraw "Aceptar tablas" 0 {Acepta un ofrecimiento de tablas}
menuText S CCNewMailGame "Nueva partida email..." 0 \
  {Empeza una nueva partida por email}
menuText S CCMailMove "Enviar jugada via email..." 0 \
  {Env�a el movimiento via email al oponente}
menuText S CCGamePage "P�gina de la partida..." 0 \
  {Abre la partida desde el navegador}
menuText S CCEditCopy "Copiar lista de partidas a clipbase" 0 \
  {Copia las partidas como una lista CSV a Clipbase}


# Options menu:
menuText S Options "Opciones" 0
menuText S OptionsBoard "Tablero" 0 {Opciones sobre el aspecto del tablero}
menuText S OptionsColour "Color de fondo" 0 {Color de fondo por defecto}
menuText S OptionsBackColour "Fondo" 0 {Color del widget de texto predeterminado}
menuText S OptionsMainLineColour "Flechas principales" 0 {Flechas principales}
menuText S OptionsVarLineColour "Flechas de variaci�n" 0 {Flechas de variaci�n}
# ====== TODO To be translated ======
menuText S OptionsEngineLineColour "Engine Arrows" 0 {Engine arrows}
menuText S OptionsRowColour "Filas" 0 {Color predeterminado de la columna de �rbol/libro}
# ====== TODO To be translated ======
menuText S OptionsHighlightColour "Highlight" 0 {Default text highlight color}
menuText S OptionsSwitcherColour "Conmutador" 0 {Color del conmutador db predeterminado}
menuText S OptionsProgressColour "Barra de progreso" 0 {Color predeterminado de la barra de progreso}
menuText S OptionsScoreColour "Gr�fico de puntuaci�n" 0 {}
menuText S OptionsScoreBarColour "Gr�fico de puntuaci�n actual" 0 {}
menuText S OptionsNames "Mis Nombres de Jugador" 3 {Edita mis nombres de jugador}
menuText S OptionsExport "Exportaci�n" 0 {Cambia las opciones de exportaci�n de texto}
menuText S OptionsFonts "Fuentes" 0 {Cambia las fuentes}
menuText S OptionsFontsRegular "Habitual" 0 {Cambia la fuente habitual}
menuText S OptionsFontsMenu "Men�" 0 {Cambia la fuente del men�}
menuText S OptionsFontsSmall "Peque�a" 0 {Cambia la fuente peque�a}
menuText S OptionsFontsFixed "Fijada" 0 {Cambia la anchura fijada de la fuente}
menuText S OptionsGInfo "Informaci�n de la partida" 0 {Informaci�n de la partida}
menuText S OptionsFics "FICS" 0
menuText S OptionsFicsAuto "Autopromoci�n Reina" 0
# ====== TODO To be translated ======
menuText S OptionsFicsClk "Store Clock times" 0
menuText S OptionsFicsColour "Color del texto" 0
menuText S OptionsFicsSize "Tama�o del Tablero" 0
menuText S OptionsFicsButtons "Botones de usuario" 0
menuText S OptionsFicsCommands "Comandos iniciales" 0
menuText S OptionsFicsNoRes "Sin resultados" 0
menuText S OptionsFicsNoReq "Sin respuesta" 0
menuText S OptionsFicsPremove "Permitir Pre-movimiento" 0
menuText S OptionsLanguage "Lenguaje" 0 {Selecciona el lenguaje del men�}
menuText S OptionsMovesTranslatePieces "Traducir piezas" 0 {Traducir la primera letra de las piezas}
menuText S OptionsMovesHighlightLastMove "Resalta �ltima jugada" 0 {Resalta la �ltima jugada}
menuText S OptionsMovesHighlightLastMoveDisplay "Mostrar" 0 {Muestra la �ltima jugada iluminada}
menuText S OptionsMovesHighlightLastMoveWidth "Ancho" 0 {Espesor de la l�nea}
menuText S OptionsMovesHighlightLastMoveColor "Select Color" 0 {Color de l�nea}
# ====== TODO To be translated ======
menuText S OptionsMovesColorSelected "Color Selected Square" 0 {Color move}
menuText S OptionsMoves "Movimientos" 0 {Opciones de la entrada de movimientos}
menuText S OptionsMovesAsk "Preguntar antes de reemplazar movimientos" 0 \
  {Pregunta antes de sobreescribir cualquier movimiento existente}
menuText S OptionsMovesAnimate "Velocidad de la animaci�n" 1 \
  {Pone el tiempo usado para animar las jugadas}
menuText S OptionsMovesDelay "Retardo del Automovimiento" 1 \
  {Pone el tiempo de demora para el modo de automovimiento}
menuText S OptionsMovesCoord "Entrada de movimientos coordinada" 0 \
  {Acepta entrada de movimientos en sistema "coordinado" ("g1f3")}
menuText S OptionsShowVarPopup "Mostrar ventana de variaciones" 0 {Activa/desactivar la ventana de variaciones}
menuText S OptionsMovesSpace "A�adir espacios detr�s de n�mero de jugada" 0 {A�adir espacios detr�s del n�mero de jugada}
menuText S OptionsMovesKey "Teclado inteligente" 0 \
{Activa/desactiva la funci�n de autocompletado inteligente de movimientos con teclado}
menuText S OptionsMovesShowVarArrows "Mostrar flechas para las variaciones" 0 \
  {Activa/desactiva mostrar flechas para las variaciones}
menuText S OptionsNumbers "Formato de n�meros" 11 {Selecciona el formato de n�meros}
menuText S OptionsStartup "Inicio" 3 {Seleccionar ventanas a abrir al inicio}
menuText S OptionsTheme "Tema" 0 {Cambia el aspecto del interfaz}
menuText S OptionsWindows "Ventanas" 0 {Opciones de ventana}
menuText S OptionsWindowsIconify "Autominimizar" 4 \
  {Minimiza todas las ventanas cuando la ventana principal es minimizada}
menuText S OptionsWindowsRaise "Poner a la vista autom�ticamente" 0 \
  {Hace visibles ciertas ventanas (ej. barras de progreso) siempre que est�n tapadas}
menuText S OptionsSounds "Sonidos" 2 {Configura el sonido del anuncio de las jugadas}
menuText S OptionsWindowsDock "Ventanas en dique" 0 {Ventanas en dique}
menuText S OptionsWindowsSaveLayout "Salvar disposici�n" 0 {Salva la disposici�n}
menuText S OptionsWindowsRestoreLayout "Restaurar disposici�n" 0 \
  {Restaura la disposici�n}
menuText S OptionsWindowsShowGameInfo "Mostrar informaci�n de la partida" 0 \
  {Muestrar informaci�n de la partida}
menuText S OptionsWindowsAutoLoadLayout "Autocargar primera disposici�n" 0 \
  {Autocarga la primera disposici�n al iniciar}
menuText S OptionsWindowsAutoResize "Ajustar tablero autom�ticamente" 0 {}
menuText S OptionsWindowsFullScreen "Pantalla completa" 0 {Activa la pantalla completa}
menuText S OptionsToolbar "Barra de Herramientas" 9 \
  {Muestra/oculta la barra de herramientas de la ventana principal}
menuText S OptionsECO "Cargar archivo ECO" 7 \
  {Cargar el archivo de clasificaci�n ECO}
menuText S OptionsSpell "Cargar archivo de comprobaci�n ortogr�fica" 11 \
  {Carga el archivo de comprobaci�n ortogr�fica Scid}
menuText S OptionsTable "Directorio de Tablas de Finales" 10 \
  {Selecciona el directorio de finales; todas las TB de ese directorio ser�n usadas}
menuText S OptionsRecent "Archivos recientes" 0 \
  {Cambia el n�mero de archivos recientes mostrados en el men� Archivo}
menuText S OptionsBooksDir "Carpeta de libros de Aperturas (Books)" 0 {Fija la carpeta de los libros de aperturas (Books)}
menuText S OptionsTacticsBasesDir "Carpeta de bases" 0 {Fija la carpeta de la base de entrenamiento t�ctico}
menuText S OptionsInformant "Configurar valores de informaci�n" 0
menuText S OptionsSave "Guardar opciones" 0 \
  "Guarda todas las opciones en el fichero $::optionsFile"

menuText S OptionsSaveBases "Guardar bases por defecto" 0

menuText S OptionsAutoSave "Autoguardar opciones al salir" 0 \
  {Guarda autom�ticamente todas las opciones cuando se sale de Scid}

# Help menu:
menuText S Help "Ayuda" 1
menuText S HelpContents "Contenidos" 0 {Show the help contents page}
menuText S HelpIndex "Indice" 0 {Muestra la p�gina �ndice de la ayuda}
menuText S HelpGuide "Gu�a r�pida" 0 {Muestra la p�gina de la ayuda gu�a r�pida}
menuText S HelpHints "Sugerencias" 1 {Muestra la p�gina de la ayuda sugerencias}
menuText S HelpContact "Informaci�n de contacto" 15 \
  {Muestra la p�gina de la ayuda de la informaci�n de contacto}
menuText S HelpTip "Sugerencia del d�a" 0 {Muestra una sugerencia para el uso de Scid}
menuText S HelpStartup "Ventana de inicio" 0 {Muestra la ventana de inicio}
menuText S HelpAbout "Acerca de Scid" 10 {Informaci�n acerca de Scid}

# Game info box popup menu:
menuText S GInfoHideNext "Ocultar siguiente movimiento" 0
menuText S GInfoShow "Lado a jugar" 0
menuText S GInfoCoords "Coordenadas" 0
menuText S GInfoMaterial "Mostrar valor del material" 0
menuText S GInfoFEN "Mostrar FEN" 8
menuText S GInfoMarks "Mostrar casillas y flechas coloreadas" 29
menuText S GInfoWrap "Dividir l�neas largas" 0
menuText S GInfoFullComment "Mostrar comentarios completos" 8
menuText S GInfoPhotos "Mostrar fotos" 5
menuText S GInfoTBNothing "TBs: nada" 5
menuText S GInfoTBResult  "TBs: s�lo resultado" 10
menuText S GInfoTBAll "TBs: resultado y mejor movimiento" 23
menuText S GInfoDelete "(No)Borrar esta partida" 4
menuText S GInfoMark "(No)Marcar esta partida" 4
menuText S GInfoMenuBar "Barra de Men�s"  0
menuText S GInfoToolBar "Barra de Herramientas"  0
menuText S GInfoButtonBar "Bot�n de Barra"  0
menuText S GInfoStatusBar "Barra de Estado"  0

translate S FlipBoard {Girar el tablero}
translate S RaiseWindows {Aumentar ventanas}
translate S AutoPlay {Reproducci�n autom�tica}
translate S TrialMode {Modo de prueba}

translate S KeepOpen {Mantener abierto despu�s del inicio}

# General buttons:
translate S Apply {Aplicar}
translate S Back {Atr�s}
translate S Browse {Examinar}
translate S Cancel {Cancelar}
translate S Continue {Continuar}
translate S Clear {Limpiar}
translate S Close {Cerrar}
translate S Contents {Contenidos}
translate S Defaults {Por defecto}
translate S Delete {Borrar}
translate S Graph {Gr�fico}
translate S Help {Ayuda}
translate S Import {Importar}
translate S Index {�ndice}
translate S LoadGame {Cargar}
translate S BrowseGame {Examinar}
translate S MergeGame {Mezclar o fundir}
translate S MergeGames {Mezclar o fusionar partidas}
translate S Preview {Vista previa}
translate S Revert {Retroceder}
translate S Save {Guardar}
translate S DontSave {No guardar}
translate S Search {Buscar}
translate S Stop {Parar}
translate S Store {Almacenar}
translate S Update {Actualizar}
translate S ChangeOrient {Cambiar orientaci�n de la ventana}
translate S ShowIcons {Mostrar iconos}
translate S ConfirmCopy {Confirmar Copia}
translate S None {Ninguno}
translate S First {Primera}
translate S Current {Actual}
translate S Last {�ltima}
translate S Font {Fuente}
translate S Change {Cambiar}
translate S Random {Aleatorio}

# General messages:
translate S game {partida}
translate S games {partidas}
translate S move {movimiento}
translate S moves {movimientos}
translate S all {todo}
translate S Yes {S�}
translate S No {No}
translate S Both {Ambos}
translate S King {Rey}
translate S Queen {Dama}
translate S Rook {Torre}
translate S Bishop {Alfil}
translate S Knight {Caballo}
translate S Pawn {Pe�n}
translate S White {Blancas}
translate S Black {Negras}
translate S Player {Jugador}
translate S Rating {Elo}
translate S RatingDiff {Diferencia de Elo (Blancas - Negras)}
translate S AverageRating {Elo promedio}
translate S Event {Evento}
translate S Site {Lugar}
translate S Country {Pa�s}
translate S IgnoreColors {Ignorar colores}
translate S MatchEnd {Posici�n final}
translate S Date {Fecha}
translate S EventDate {Evento fecha}
translate S Decade {D�cada}
translate S Year {A�o}
translate S Month {Mes}
translate S Months {enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre}
translate S Days {dom lun mar mi� jue vie s�b}
translate S YearToToday {�ltimo a�o hasta hoy}
translate S Result {Resultado}
translate S Round {Ronda}
translate S Length {Longitud}
translate S ECOCode {C�digo ECO}
translate S ECO {ECO}
translate S Deleted {Borrar}
translate S SearchResults {Buscar resultados}
translate S OpeningTheDatabase {Abriendo base de datos}
translate S Database {Base de datos}
translate S Filter {Filtro}
translate S Reset {Reiniciar}
translate S IgnoreCase {Ignorar el Asunto}
translate S noGames {No hay partidas}
translate S allGames {Todas las partidas}
translate S empty {vac�a}
translate S clipbase {clipbase}
translate S score {puntuaci�n}
translate S Start {Principio}
translate S StartPos {Posici�n inicial}
translate S Total {Total}
translate S readonly {s�lo lectura}
translate S altered {alterado}
translate S tagsDescript {Etiquetas adicionales (p.e.: Annotator "Anand")}
translate S prevTags {Usar el anterior}
# ====== TODO To be translated ======
translate S value {Value}

# Standard error messages:
translate S ErrNotOpen {Esta base de datos no est� abierta.}
translate S ErrReadOnly {Esta base de datos es de s�lo lectura; no puede ser cambiada.}
translate S ErrSearchInterrupted {La b�squeda se interrumpi�; los resultados son incompletos.}

# Game information:
translate S twin {doble}
translate S deleted {borradas}
translate S comment {comentario}
translate S hidden {oculto}
translate S LastMove {�ltimo movimiento}
translate S NextMove {Siguiente}
translate S GameStart {Inicio de partida}
translate S LineStart {Inicio de l�nea}
translate S GameEnd {Fin de partida}
translate S LineEnd {Fin de l�nea}

# Player information:
translate S PInfoAll {Todas las partidas}
translate S PInfoFilter {Las partidas filtradas}
translate S PInfoAgainst {Resultados contra}
translate S PInfoMostWhite {Aperturas m�s comunes con Blancas}
translate S PInfoMostBlack {Aperturas m�s comunes con Negras}
translate S PInfoRating {Historial de clasificaci�n}
translate S PInfoBio {Biograf�a}
translate S PInfoEditRatings {Editar ELOs}
translate S PinfoEditName {Editar nombre}
translate S PinfoLookupName {Buscar nombre}

# Tablebase information:
translate S Draw {Tablas}
translate S stalemate {rey ahogado}
translate S checkmate {mate}
translate S withAllMoves {con todos los movimientos}
translate S withAllButOneMove {con todos los movimientos excepto uno}
translate S with {con}
translate S only {s�lo}
translate S lose {formas de perder}
translate S loses {hace perder}
translate S allOthersLose {todos los dem�s hacen perder}
translate S matesIn {mate en}
translate S longest {el mate m�s largo}
translate S WinningMoves {Movimientos ganadores}
translate S DrawingMoves {Movimientos para tablas}
translate S LosingMoves {Movimientos perdedores}
translate S UnknownMoves {Movimientos de resultado desconocido}

# Tip of the day:
translate S Tip {Sugerencia}
translate S TipAtStartup {Sugerencia al iniciar}

# Tree window menus:
menuText S TreeFile "Archivo" 0
menuText S TreeFileFillWithBase "Rellenar cach� con base" 0 \
  {Rellena el archivo cach� con todas las partidas de la base actual}
menuText S TreeFileFillWithGame "Rellenar cach� con partida" 0 \
  {Rellena el fichero cach� con movimientos de la partida actual en la base actual}
menuText S TreeFileCacheInfo "Informaci�n de cach�" 0 \
  {Informaci�n y uso del cach�}
menuText S TreeFileSave "Guardar archivo cach�" 0 \
  {Guarda el archivo cach� del �rbol (.stc)}
menuText S TreeFileFill "Construir archivo cach�" 2 \
  {Construye archivo cach� con posiciones de apertura comunes}
menuText S TreeFileBest "Lista de mejores partidas" 9 \
  {Muestra la lista del �rbol de mejores partidas}
menuText S TreeFileGraph "Gr�fico" 0 \
  {Muestra el gr�fico para esta rama del �rbol}
menuText S TreeFileCopy "Copiar texto del �rbol al portapapeles" 1 \
  {Copia texto del �rbol al portapapeles}
menuText S TreeFileClose "Cerrar ventana del �rbol" 0 \
  {Cerra ventana del �rbol}
menuText S TreeMask "M�scara" 0
menuText S TreeMaskNew "Nuevo" 0 {Nueva m�scara}
menuText S TreeMaskOpen "Abrir" 0 {Abre m�scara}
menuText S TreeMaskOpenRecent "Abrir reciente" 0 {Abre m�scara reciente}
menuText S TreeMaskSave "Salvar" 0 {Salva m�scara}
menuText S TreeMaskClose "Cerrar" 0 {Cierra m�scara}
menuText S TreeMaskFillWithLine "Llenar con l�nea" 0 {Llena m�scara con con todos los movimientos previos}
menuText S TreeMaskFillWithGame "Llenar con partida" 0 \
  {Llena m�scara con partida}
menuText S TreeMaskFillWithBase "Llenar con base" 0 \
  {Llena m�scara con todas las partidas de la base}
menuText S TreeMaskInfo "Info" 0 {Muestra estad�sticas para la m�scara actual}
menuText S TreeMaskDisplay "Mostrar mapa de la m�scara" 0 \
  {Muestra m�scara en forma de �rbol}
menuText S TreeMaskSearch "Buscar" 0 {Busca en m�scara actual}
menuText S TreeSort "Ordenar" 0
menuText S TreeSortAlpha "Alfab�ticamente" 0
menuText S TreeSortECO "Por c�digo ECO" 11
menuText S TreeSortFreq "Por frecuencia" 4
menuText S TreeSortScore "Por puntuaci�n" 4
menuText S TreeOpt "Opciones" 1
menuText S TreeOptSlowmode "Modo Lento" 0 \
  {Movimiento lento para actualizaciones (alta calidad)}
menuText S TreeOptFastmode "Modo R�pido" 0 \
  {Movimiento r�pido para actualizaciones (no transpone movimientos)}
menuText S TreeOptFastAndSlowmode "Modo r�pido y lento" 0 \
  {Movimiento r�pido y modo lento para actualizaciones}
menuText S TreeOptStartStop "Auto actualizado" 0 \
  {Actualizado autom�tico de la ventana del �rbol}
menuText S TreeOptLock "Bloquear" 1 \
  {Bloquea/desbloquea el �rbol de la base de datos actual}
menuText S TreeOptTraining "Entrenamiento" 2 \
  {Activa/desactiva el modo de entrenamiento de �rbol}
menuText S TreeOptShort "Pantalla corta" 0 {No mostrar informaci�n de ELO}
menuText S TreeOptAutosave "Autoguardar archivo cach�" 0 \
  {Guarda autom�ticamente el archivo cach� cuando se cierra la ventana de �rbol}
menuText S TreeOptAutomask "Carga autom�tica de m�scara" 0 "Carga autom�tica de m�scara con un arbol abierto."
menuText S TreeOptCacheSize "Tama�o de cach�" 0 {Fija el tama�o del cach�}
menuText S TreeOptShowBar "Mostrar barra de progreso" 0 "Mostrar barra de progreso del �rbol"
# ====== TODO To be translated ======
menuText S TreeOptShowFrame "Show Button Bar" 0 "Show tree button bar."
menuText S TreeOptSortBest "Ordenar mejores partidas" 0 "Ordenar mejores partidas por ELO."
menuText S TreeHelp "Ayuda" 1
menuText S TreeHelpTree "Ayuda del �rbol" 4
menuText S TreeHelpIndex "�ndice de la ayuda" 0

translate S SaveCache {Guardar cach�}
translate S Training {Entrenamiento}
translate S LockTree {Bloquear}
translate S TreeLocked {Bloqueado}
translate S TreeBest {Mejor}
translate S TreeBestGames {Mejores partidas del �rbol}
translate S TreeAdjust {Ajustar filtro}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate S TreeTitleRow {    Movim.    Frecuencia   Puntu. Tablas AvElo Perf AvA�o ECO}
translate S TreeTitleRowShort {    Movim.    Frecuencia   Puntu. Tablas}
translate S TreeTotal: {TOTAL:}
translate S DoYouWantToSaveFirst {Quieres salvar primero}
translate S AddToMask {A�adir a m�scara}
translate S RemoveFromMask {Elimina desde la m�scara}
translate S AddThisMoveToMask {A�adir este movimiento a la m�scara}
translate S SearchMask {Buscar en m�scara}
translate S DisplayMask {Mostrar m�scara}
translate S Nag {C�digo de rega�o}
translate S Marker {Marcador}
translate S Include {Incluir}
translate S Exclude {Excluir}
translate S MainLine {L�nea principal}
translate S Bookmark {Favorito}
translate S NewLine {L�nea nueva}
translate S ToBeVerified {Para ser verificado}
translate S ToTrain {Para entrenar}
translate S Dubious {Dudoso}
translate S ToRemove {Para quitar}
translate S NoMarker {Sin marcador}
translate S ColorMarker {Color}
translate S WhiteMark {Blanco}
translate S GreenMark {Verde}
translate S YellowMark {Amarillo}
translate S BlueMark {Azul}
translate S RedMark {Rojo}
translate S CommentMove {Comentar movimiento}
translate S CommentPosition {Comentar posici�n}
translate S AddMoveToMaskFirst {A�adir primero el movimiento a la m�scara}
translate S OpenAMaskFileFirst {Abrir primero un fichero de m�scara}
# ====== TODO To be translated ======
translate S positions {positions}
translate S Moves {Jugadas}

# Finder window:
menuText S FinderFile "Archivo" 0
menuText S FinderFileSubdirs "Mirar en subdirectorios" 0
menuText S FinderFileClose "Cierra visor de archivos" 0
menuText S FinderSort "Ordenar" 0
menuText S FinderSortType "Tipo" 0
menuText S FinderSortSize "Tama�o" 0
menuText S FinderSortMod "Modificado" 0
menuText S FinderSortName "Nombre" 0
menuText S FinderSortPath "Camino" 0
menuText S FinderTypes "Tipos" 0
menuText S FinderTypesScid "Bases de datos Scid" 0
menuText S FinderTypesOld "Bases de datos Scid en antiguo formato" 12
menuText S FinderTypesPGN "Archivos PGN" 9
menuText S FinderTypesEPD "Archivos EPD (libro)" 0
menuText S FinderHelp "Ayuda" 1
menuText S FinderHelpFinder "Ayuda del visor de archivos" 0
menuText S FinderHelpIndex "Indice de la ayuda" 0
translate S FileFinder {Visor de Archivos}
translate S FinderDir {Directorio}
translate S FinderDirs {Directorios}
translate S FinderFiles {Archivos}
translate S FinderUpDir {arriba}
translate S FinderCtxOpen {Abrir}
translate S FinderCtxBackup {Copia de seguridad (Backup)}
translate S FinderCtxCopy {Copia}
translate S FinderCtxMove {Jugada}
translate S FinderCtxDelete {Borrar}
# ====== TODO To be translated ======
translate S FinderDirOpen {Open Directory}

# Player finder:
menuText S PListFile "Archivo" 0
menuText S PListFileUpdate "Actualizar" 0
menuText S PListFileClose "Cierra el buscador de jugadores" 0
menuText S PListSort "Ordenar" 0
menuText S PListSortName "Nombre" 0
menuText S PListSortElo "Elo" 0
menuText S PListSortGames "Partidas" 0
menuText S PListSortOldest "M�s antiguo" 10
menuText S PListSortNewest "M�s nuevo" 4

# Tournament finder:
menuText S TmtFile "Archivo" 0
menuText S TmtFileUpdate "Actualizar" 0
menuText S TmtFileClose "Cierra el visor de torneos" 0
menuText S TmtSort "Ordenar" 0
menuText S TmtSortDate "Fecha" 0
menuText S TmtSortPlayers "Jugadores" 0
menuText S TmtSortGames "Partidas" 0
menuText S TmtSortElo "Elo" 0
menuText S TmtSortSite "Lugar" 0
menuText S TmtSortEvent "Evento" 1
menuText S TmtSortWinner "Ganador" 0
translate S TmtLimit "L�mite de lista"
translate S TmtMeanElo "Media de Elo inferior"
translate S TmtNone "No se han encontrado torneos concordantes."

# Graph windows:
menuText S GraphFile "Archivo" 0
menuText S GraphFileColor "Guardar como postscript (color)" 8
menuText S GraphFileGrey "Guardar como postscript (escala de grises)" 8
menuText S GraphFileClose "Cerrar ventana" 0
menuText S GraphOptions "Opciones" 0
menuText S GraphOptionsWhite "Blancas" 0
menuText S GraphOptionsBlack "Negras" 0
menuText S GraphOptionsDots "Mostrar puntos" 0
menuText S GraphOptionsBar "Destacar movimiento actual" 0
menuText S GraphOptionsBoth "Ambos" 0
menuText S GraphOptionsPInfo "Informaci�n jugador" 0
translate S GraphFilterTitle "Filtro gr�fico: frecuencia por 1000 partidas"
translate S GraphAbsFilterTitle "Filtro gr�fico: frecuencia de las partidas"
translate S ConfigureFilter {Configurar Eje-X para A�o, Rating y Movimientos}
translate S FilterEstimate "Estimar"
translate S TitleFilterGraph "Scid: filtro gr�fico"

# Analysis window:
translate S AddVariation {A�adir variaci�n}
translate S AddAllVariations {A�adir todas las variaciones}
translate S AddMove {A�adir movimiento}
translate S Annotate {Anotar}
translate S ShowAnalysisBoard {Mostrar tablero de an�lisis}
translate S ShowInfo {Muestra info del motor}
translate S FinishGame {Finalizar partida}
translate S StopEngine {Parar motor}
translate S StartEngine {Iniciar motor}
translate S ExcludeMove {Excluir movimiento}
translate S LockEngine {Bloquea motor en posici�n actual}
translate S AnalysisCommand {Direcci�n de an�lisis}
translate S PreviousChoices {Elecci�n previa}
translate S AnnotateTime {Segundos por movimiento}
translate S AnnotateWhich {�Qu� Lado?}
translate S AnnotateAll {Movimientos de ambos Lados}
translate S AnnotateAllMoves {Todos los movimientos}
translate S AnnotateWhite {S�lo movimientos de las blancas}
translate S AnnotateBlack {S�lo movimientos de las negras}
translate S AnnotateNotBest {Cuando el movimiento no es el mejor}
translate S AnnotateBlundersOnly {Cuando el movimiento es un disparate}
translate S BlundersNotBest {Fallo/No Mejor}
translate S AnnotateTitle {Configurar anotaci�n}
translate S AnnotateMissedMates {Mates omitidos/m�s cortos}
# ====== TODO To be translated ======
translate S AnnotateEnd {At end of game}
translate S BlundersThreshold {(Umbral)}
translate S ScoreFormat {Formato de puntuaci�n}
translate S CutOff {Corte}
translate S LowPriority {Baja prioridad del procesador}
translate S LogEngines {Tama�o del registro}
translate S LogName {A�adir nombre}
translate S MaxPly {Plies m�ximos}
translate S ClickHereToSeeMoves {Click aqu� para ver movimientos}
translate S ConfigureInformant {Configurar informaciones}
translate S Informant!? {Movimiento interesante}
translate S Informant? {Movimiento malo}
translate S Informant?? {Desastroso}
translate S Informant?! {Movimiento dudoso}
translate S Informant+= {Blancas tienen una ligera ventaja}
translate S Informant+/- {Blancas tienen ventaja}
translate S Informant+- {Blancas tienen una ventaja decisiva}
translate S Informant++- {La partida es considerada ganada}
translate S Book {Libro}
# ====== TODO To be translated ======
translate S OtherBook {Other Moves}
# ====== TODO To be translated ======
translate S Alphabetical {Alphabetical}
# ====== TODO To be translated ======
translate S TwoBooks {Two Books}

# Analysis Engine open dialog:
translate S EngineList {Lista de motores de an�lisis}
translate S EngineKey {Tecla}
translate S EngineType {Protocolo}
translate S EngineName {Nombre}
translate S EngineCmd {Orden}
translate S EngineArgs {Par�metros}
translate S EngineDir {Directorio}
translate S EngineElo {Elo}
translate S EngineTime {Fecha}
translate S EngineNew {Nuevo}
translate S EngineEdit {Editar}
translate S EngineRequired {Los campos en negrita son obligatorios; los dem�s opcionales}

# Stats window menus:
menuText S StatsFile "Archivo" 0
menuText S StatsFilePrint "Imprimir en Archivo" 0
menuText S StatsFileClose "Cerrar ventana" 0
menuText S StatsOpt "Opciones" 0

# PGN window menus:
menuText S PgnFile "PGN" 0
menuText S PgnFileCopy "Copiar partida al portapapeles" 0
menuText S PgnFilePrint "Salvar partida como" 0
menuText S PgnFileClose "Cerrar" 10
menuText S PgnOpt "Opciones" 0
menuText S PgnOptColor "Color de la presentaci�n" 0
menuText S PgnOptShort "Ordenar Cabecera" 6
menuText S PgnOptSymbols "Anotaciones simb�licas" 1
menuText S PgnOptIndentC "Sangr�a en comentarios" 0
menuText S PgnOptIndentV "Sangr�a en variaciones" 7
menuText S PgnOptColumn "Estilo de columna (un movimiento por l�nea)" 1
menuText S PgnOptSpace "Espacio despu�s de n�meros de movimiento" 18
menuText S PgnOptStripMarks "Ocultar c�digos de casilla/flecha" 1
menuText S PgnOptChess "Piezas de ajedrez" 0
menuText S PgnOptScrollbar "Barra de desplazamiento" 0
menuText S PgnOptBoldMainLine "L�nea principal en negrita" 4
menuText S PgnColor "Colores" 1
menuText S PgnColorHeader "Encabezamiento..." 0
menuText S PgnColorAnno "Anotaciones..." 0
menuText S PgnColorComments "Comentarios..." 0
menuText S PgnColorVars "Variaciones..." 0
menuText S PgnColorBackground "Fondo..." 0
menuText S PgnColorMain "L�nea principal..." 0
menuText S PgnColorCurrent "Color de fondo del movimiento actual..." 1
menuText S PgnColorNextMove "Color de fondo del pr�ximo movimiento..." 0
menuText S PgnHelp "Ayuda" 1
menuText S PgnHelpPgn "Ayuda de PGN" 9
menuText S PgnHelpIndex "Indice de la ayuda" 0
translate S PgnWindowTitle {Planilla - partida %u}

# Crosstable window menus:
menuText S CrosstabFile "Archivo" 0
menuText S CrosstabFileText "Salvar como texto" 8
menuText S CrosstabFileHtml "Salvar como HTML" 8
menuText S CrosstabFileLaTeX "Salvar como LaTeX" 8
menuText S CrosstabFileClose "Cerrar ventana de tabla cruzada" 0
menuText S CrosstabEdit "Editar" 0
menuText S CrosstabEditEvent "Evento" 0
menuText S CrosstabEditSite "Lugar" 0
menuText S CrosstabEditDate "Fecha" 0
menuText S CrosstabOpt "Opciones" 0
menuText S CrosstabOptColorPlain "Texto simple" 0
menuText S CrosstabOptColorHyper "Hipertexto" 0
menuText S CrosstabOptTieWin "Desempate por victorias" 1
menuText S CrosstabOptTieHead "Desempate por head-to-head" 1
menuText S CrosstabOptThreeWin "3 Puntos por victoria" 1
menuText S CrosstabOptAges "Edad en a�os" 1
menuText S CrosstabOptNats "Nacionalidades" 0
menuText S CrosstabOptTallies "Ganadas/Perdidas/tablas" 0
menuText S CrosstabOptRatings "Elo" 0
menuText S CrosstabOptTitles "T�tulos" 0
menuText S CrosstabOptBreaks "Puntuaciones de desempate" 0
menuText S CrosstabOptDeleted "Incluir partidas borradas" 17
menuText S CrosstabOptColors "Colores (s�lo en tabla de Suizos)" 0
menuText S CrosstabOptColorRows "Filas de color" 0
menuText S CrosstabOptRowsColor "Filas de tabla cruzada" 0 {Color predeterminado de fila de tabla cruzada}
menuText S CrosstabOptColumnNumbers "Columnas numeradas (s�lo en tabla todos contra todos)" 11
menuText S CrosstabOptGroup "Grupos de clasificaci�n" 0
menuText S CrosstabSort "Ordenar" 0
menuText S CrosstabSortName "Por nombre" 4
menuText S CrosstabSortRating "Por Elo" 4
menuText S CrosstabSortScore "Por puntuaci�n" 4
menuText S CrosstabSortCountry "Pa�s" 4
menuText S CrosstabType "Sistema" 0
menuText S CrosstabTypeAll "Todos Contra Todos" 0
menuText S CrosstabTypeSwiss "Suizo" 0
menuText S CrosstabTypeKnockout "Rondas" 0
menuText S CrosstabTypeAuto "Auto" 0
menuText S CrosstabHelp "Ayuda" 1
menuText S CrosstabHelpCross "Ayuda de tabla cruzada" 9
menuText S CrosstabHelpIndex "Indice de la ayuda" 0
translate S SetFilter {Poner filtro}
translate S AddToFilter {A�adir al filtro}
translate S Swiss {Suizo}
translate S Category {Categor�a}

# Opening report window menus:
menuText S OprepFile "Archivo" 0
menuText S OprepFileText "Imprimir en texto" 9
menuText S OprepFileHtml "Imprimir en HTML..." 9
menuText S OprepFileLaTeX "Imprimir en LaTeX..." 9
menuText S OprepFileOptions "Opciones" 0
menuText S OprepFileClose "Cerrar ventana del informe de la apertura" 0
menuText S OprepFavorites "Favoritos" 1
menuText S OprepFavoritesAdd "A�adir informe" 0
menuText S OprepFavoritesEdit "Editar informe favorito" 0
menuText S OprepFavoritesGenerate "Generar informe" 0
menuText S OprepHelp "Ayuda" 1
menuText S OprepHelpReport "Ayuda del informe de la apertura" 11
menuText S OprepHelpIndex "�ndice de la ayuda" 0

# Header search:
translate S HeaderSearch {B�squeda por encabezamiento}
translate S EndSideToMove {Bando a mover al final de la partida}
translate S GamesWithNoECO {�Partidas sin ECO?}
translate S GameLength {Duraci�n:}
translate S FindGamesWith {Encontrar partidas con}
translate S StdStart {Inicio est�ndar}
translate S Promotions {Promociones}
translate S UnderPromo {Bajo promoci�n}
translate S Comments {Comentarios}
translate S Variations {Variaciones}
translate S Annotations {Anotaciones}
translate S DeleteFlag {Se�al de borrado}
translate S WhiteOpFlag {Apertura de las blancas}
translate S BlackOpFlag {Apertura de las negras}
translate S MiddlegameFlag {Mediojuego}
translate S EndgameFlag {Finales}
translate S NoveltyFlag {Novedad}
translate S PawnFlag {Estructura de peones}
translate S TacticsFlag {T�cticas}
translate S QsideFlag {Juego del lado de dama}
translate S KsideFlag {Juego del lado de rey}
translate S BrilliancyFlag {Genialidad}
translate S BlunderFlag {Error}
translate S UserFlag {Usuario}
translate S PgnContains {PGN contiene texto}
translate S PreComment {Comentario previo al juego}
translate S PostComment {Fin del comentario}

# Game list window:
translate S GlistNumber {N�mero}
translate S GlistWhite {Blancas}
translate S GlistBlack {Negras}
translate S GlistWElo {B-Elo}
translate S GlistBElo {N-Elo}
translate S GlistEvent {Evento}
translate S GlistSite {Lugar}
translate S GlistRound {Ronda}
translate S GlistDate {Fecha}
translate S GlistYear {A�o}
translate S GlistEventDate {Evento-Fecha}
translate S GlistResult {Resultado}
translate S GlistLength {Longitud}
translate S GlistCountry {Pa�s}
translate S GlistECO {ECO}
translate S GlistOpening {Movimientos}
translate S GlistEndMaterial {Material final}
translate S GlistDeleted {Borrado}
translate S GlistFlags {Se�al}
translate S GlistVariations {Variaciones}
translate S GlistComments {Comentarios}
translate S GlistAnnos {Anotaciones}
translate S GlistStart {Inicio}
translate S GlistGameNumber {N�mero de partida}
translate S GlistFindText {Encontrar texto}
translate S GlistMoveField {Movimiento}
translate S GlistEditField {Configurar}
translate S GlistAddField {A�adir}
translate S GlistDeleteField {Borrar}
translate S GlistColor {Color}
translate S GlistSort {Ordenar base de datos}
translate S GlistRemoveThisGameFromFilter  {Oculta esta partida}
translate S GlistRemoveGameAndAboveFromFilter  {Oculta partidas por encima}
translate S GlistRemoveGameAndBelowFromFilter  {Oculta partidas por debajo}
translate S GlistDeleteGame {Elimina/Recupera esta partida de la base}
translate S GlistDeleteAllGames {Elimina todas las partidas de la base que aparecen en el filtro}
translate S GlistUndeleteAllGames {Recupera todas las partidas borradas de la base que aparecen en el filtro}
translate S GlistAlignL {Alinear a la izquierda}
translate S GlistAlignR {Alinear a la derecha}
translate S GlistAlignC {Alinear al centro}

# Maintenance window:
translate S DatabaseName {Nombre de la base:}
translate S TypeIcon {Tipo de icono}
translate S NumOfGames {Partidas:}
translate S NumDeletedGames {Partidas borradas:}
translate S NumFilterGames {Partidas en el filtro:}
translate S YearRange {Rango de a�os:}
translate S RatingRange {Rango de Elo:}
translate S Description {Descripci�n}
translate S Flag {Se�al}
translate S CustomFlags {Se�ales personalizadas}
translate S DeleteCurrent {Borrar partida actual}
translate S DeleteFilter {Borrar partidas filtradas}
translate S DeleteAll {Borrar todas las partidas}
translate S UndeleteCurrent {No borrar partida actual}
translate S UndeleteFilter {No borrar partidas filtradas}
translate S UndeleteAll {No borrar todas las partidas}
translate S DeleteTwins {Borrar partidas dobles}
translate S MarkCurrent {Marcar partida actual}
translate S MarkFilter {Marcar partidas filtradas}
translate S MarkAll {Marcar todas las partidas}
translate S UnmarkCurrent {No marcar partida actual}
translate S UnmarkFilter {No marcar partidas filtradas}
translate S UnmarkAll {No marcar todas las partidas}
translate S Spellchecking {Revisi�n ortogr�fica}
translate S MakeCorrections {Hacer Correcciones}
translate S Ambiguous {Ambiguo}
translate S Surnames {Apellidos}
translate S Players {Jugadores}
translate S Events {Eventos}
translate S Sites {Lugares}
translate S Rounds {Rondas}
translate S DatabaseOps {Operaciones con la base de datos}
translate S ReclassifyGames {Reclasificar partidas por ECO...}
translate S CompactDatabase {Compactar base de datos}
translate S SortDatabase {Ordenar base de datos}
translate S AddEloRatings {A�adir clasificaci�n Elo}
translate S AutoloadGame {Autocargar partida}
translate S StripTags {Quitar etiquetas PGN}
translate S StripTag {Quitar etiquetas}
translate S CheckGames {Revisar partidas}
translate S Cleaner {MultiHerramienta}
translate S CleanerHelp {
Scid ejecutar�, en la actual base de datos, todas las acciones de mantenimiento que selecciones de la siguiente lista.

Se aplicar� el estado actual en la clasificaci�n ECO y el di�logo de borrado de dobles si seleccionas esas funciones.
}
translate S CleanerConfirm {
�Una vez que la MultiHerramienta de mantenimiento se inicia no puede ser interrumpida!

Esto puede tomar mucho tiempo en una base de datos grande, dependiendo de las funciones que hayas seleccionado y su estado actual.

�Est�s seguro de querer comenzar las funciones de mantenimiento que has seleccionado?
}
translate S TwinCheckUndelete {Pulsar "u" para no borrar ninguna (undelete)}
translate S TwinCheckprevPair {Pareja previa}
translate S TwinChecknextPair {Pr�xima Pareja}
translate S TwinChecker {Scid: Verificar partidas dobles}
translate S TwinCheckTournament {Partidas en torneo:}
translate S TwinCheckNoTwin {No doble  }
translate S TwinCheckNoTwinfound {No fueron detectados dobles para esta partida.\nto mostrar dobles usando esta ventana debes usar la funci�n "Borrar partidas dobles" }
translate S TwinCheckTag {Compartir etiquetas...}
translate S TwinCheckFound1 {Scid encontr� $result partidas dobles}
translate S TwinCheckFound2 {y pone pone sus banderas de borrado}
translate S TwinCheckNoDelete {No hay partidas en esta base para borrar.}
translate S TwinCriteria1 {Tus par�metros para encontrar partidas dobles potencialmente pueden causar partidas no-dobles con movimientos similares a ser marcadas como dobles.}
translate S TwinCriteria2 {Es recomendable que en caso de eligir  "No" para "algunos movimientos", se eleja "S�"  para los par�metros colores, eventos, lugar, ronda, a�o y mes.\n�Quiere continuar y borrar partidas dobles en cualquier caso?}
translate S TwinCriteria3 {Es recomendable especificar "S�" para al menos dos par�metros de "mismo lugar", "misma ronda" y "mismo a�o".\n�Quiere continuar y borrar dobles en todo caso?}
translate S TwinCriteriaConfirm {Scid: Confirmar par�metros para partidas dobles}
translate S TwinChangeTag "Cambiar las siguientes etiquetas de las:\n\n partidas"
translate S AllocRatingDescription "Este comando usar� el actual fichero SpellCheck para a�adir  puntuaciones ELO y partidas en esta base. En el caso de que un jugador no tenga puntuaci�n pero la tenga en el fichero  spellcheck, su puntuaci�n ser� a�adida."
translate S RatingOverride "�Sobreescribir puntuaciones existentes no nulas?"
translate S AddRatings "A�adir puntuaciones a:"
translate S AddedRatings {Scid a�adi� $r puntuaciones Elo en $g partidas.}
translate S NewSubmenu "Nuevo submen�"

# Comment editor:
translate S AnnotationSymbols  {S�mbolos de anotaci�n:}
translate S Comment {Comentario:}
translate S InsertMark {Insertar marca}
translate S InsertMarkHelp {
Insertar/quitar marca: Selecciona color, tipo, casilla.
Insertar/quitar flecha: Bot�n derecho sobre dos casillas.
}

# Nag buttons in comment editor:
translate S GoodMove {Buena jugada}
translate S PoorMove {Mala jugada}
translate S ExcellentMove {Jugada excelente}
translate S Blunder {Error}
translate S InterestingMove {Jugada interesante}
translate S DubiousMove {Jugada dudosa}
translate S WhiteDecisiveAdvantage {Las blancas tienen decisiva ventaja}
translate S BlackDecisiveAdvantage {Las negras tienen decisiva ventaja}
translate S WhiteClearAdvantage {Las blancas tienen clara ventaja}
translate S BlackClearAdvantage {Las negras tienen clara ventaja}
translate S WhiteSlightAdvantage {Las blancas tienen ligera ventaja}
translate S BlackSlightAdvantage {Las negras tienen ligera ventaja}
translate S Equality {Igualdad}
translate S Unclear {Incierto}
translate S Diagram {Diagrama}

# Board search:
translate S BoardSearch {Tablero de b�squeda}
translate S FilterOperation {Operaci�n en filtro actual:}
translate S FilterAnd {Y (Restringir filtro)}
translate S FilterOr {O (A�adir al filtro)}

# Benigno
translate S FilterIgnore {IGNORAR (Reiniciar el filtro)}

translate S SearchType {Tipo de b�squeda}
translate S SearchBoardExact {Posici�n exacta (todas las piezas en las mismas casillas)}
translate S SearchBoardPawns {Peones (igual material, todos los peones en las mismas casillas)}
translate S SearchBoardFiles {Columnas (igual material, todos los peones en las mismas columnas)}
translate S SearchBoardAny {Cualquiera (igual material, peones y piezas en cualquier parte)}
translate S SearchInRefDatabase {B�squeda en la base de referencia}
translate S LookInVars {Mirar en variaciones}
translate S CQLLabel {B�squeda CQL}
translate S CQLComments {Permite comentarios}
translate S CQLStrip {Quita comentarios de la partida}

# Material search:
translate S MaterialSearch {B�squeda de material}
translate S Material {Material}
translate S Patterns {Patrones}
translate S Zero {Cero}
translate S Any {Cualquiera}
translate S CurrentBoard {Tablero actual}
translate S CommonEndings {Finales comunes}
translate S CommonPatterns {Patrones comunes}
translate S MaterialDiff {Diferencia de material}
translate S squares {casillas}
translate S SameColor {Igual color}
translate S OppColor {Color opuesto}
translate S Either {Cualquiera}
translate S MoveNumberRange {Rango de n�mero de movimientos}
translate S MatchForAtLeast {Encuentro de al menos}
translate S HalfMoves {medios movimientos}

# Common endings in material search:
translate S EndingPawns {Finales de peones}
translate S EndingRookVsPawns {Torre vs. peon(es)}
translate S EndingRookPawnVsRook {Torre y 1 pe�n vs. torre}
translate S EndingRookPawnsVsRook {Torre y peon(es) vs. torre}
translate S EndingRooks {Finales de torre vs. torre}
translate S EndingRooksPassedA {Finales de torre vs. torre con pe�n pasado}
translate S EndingRooksDouble {Finales de dos torres}
translate S EndingBishops {Finales de alfil vs. alfil}
translate S EndingBishopVsKnight {Finales de alfil vs. caballo}
translate S EndingKnights {Finales de caballo vs. caballo}
translate S EndingQueens {Finales de dama vs. dama}
translate S EndingQueenPawnVsQueen {Dama y 1 pe�n vs. dama}
translate S BishopPairVsKnightPair {Medio juego de dos alfiles vs. dos caballos}

# Common patterns in material search:
translate S PatternWhiteIQP {PDA blanco}
translate S PatternWhiteIQPBreakE6 {PDA blanco: d4-d5 ruptura vs. e6}
translate S PatternWhiteIQPBreakC6 {PDA blanco: d4-d5 ruptura vs. c6}
translate S PatternBlackIQP {PDA negro}
translate S PatternWhiteBlackIQP {PDA blanco vs. PDA negro}
translate S PatternCoupleC3D4 {Pareja de peones aislados blancos c3+d4}
translate S PatternHangingC5D5 {Peones colgantes negros en c5 y d5}
translate S PatternMaroczy {Centro Maroczy (con peones en c4 y e4)}
translate S PatternRookSacC3 {Sacrificio de torre en c3}
translate S PatternKc1Kg8 {O-O-O vs. O-O (Rc1 vs. Rg8)}
translate S PatternKg1Kc8 {O-O vs. O-O-O (Rg1 vs. Rc8)}
translate S PatternLightFian {Fianchettos de casillas claras (Alfil-g2 vs. Alfil-b7)}
translate S PatternDarkFian {Fianchettos de casillas oscuras (Alfil-b2 vs. Alfil-g7)}
translate S PatternFourFian {Cuatro Fianchettos (Alfiles en b2,g2,b7,g7)}

# Game saving:
translate S Today {Hoy}
translate S ClassifyGame {Clasificar partida}

# Setup position:
translate S EmptyBoard {Tablero vac�o}
translate S InitialBoard {Tablero inicial}
translate S SideToMove {Lado que mueve}
translate S MoveNumber {Movimiento n�mero}
translate S Castling {Enroque}
translate S EnPassantFile {Columna al paso}
translate S ClearFen {Quitar FEN}
translate S PasteFen {Pegar FEN}
translate S SaveAndContinue {Salvar (grabar) y continuar}
translate S DiscardChangesAndContinue {Descartar Cambios}
translate S GoBack {Volver atr�s}

# Replace move dialog:
translate S ReplaceMove {Reemplazar movimiento}
translate S AddNewVar {A�adir nueva variaci�n}
translate S NewMainLine {Nueva l�nea principal}
translate S ReplaceMoveMessage {Ya existe un movimiento.

Por favor, seleccione su opci�n
La opci�n Reemplazar movimiento eliminar� todos los movimientos posteriores}

# Make database read-only dialog:
translate S ReadOnlyDialog {Si haces que esta base de datos sea de s�lo lectura no se permitir�n hacer cambios. No se podr�n guardar o reemplazar partidas, y no se podr�n alterar las se�ales de borrada. Cualquier ordenaci�n o clasificaci�n por ECO ser� temporal.

Puedes hacer f�cilmente escribible la base de datos otra vez cerr�ndola y abri�ndola.

�Realmente quieres hacer que esta base de datos sea de s�lo lectura?}

# Exit dialog:
translate S ExitDialog {�Realmente quieres salir de Scid?}
translate S ClearGameDialog {Esta partida ha sido alterada.\n�Desea guardarla?}
translate S ExitUnsaved {La siguiente base de datos tiene cambios en partidas no guardadas. Si sales ahora se perder�n estos cambios.}
# ====== TODO To be translated ======
translate S ChangeTextDialog {Enabling text colour globally requires restart.}
# ====== TODO To be translated ======
translate S ChangeDockDialog {Changing Docking requires a restart.}
# ====== TODO To be translated ======
translate S FontSelectDialog "This is some sample text\nDouble click above to change font, then select 'ok'\nAaBbCcDdEeFfGgHhIiJjKkLlMm 0123456789. +=-"
# ====== TODO To be translated ======
translate S ExitNow {Exit now ?}

# Import window:
translate S PasteCurrentGame {Pegar partida actual}
translate S ImportHelp1 \
  {Introducir o pegar una partida en formato PGN en el marco superior.}
translate S ImportHelp2 \
  {Cualquier error importando la partida ser� mostrado aqu�.}
translate S OverwriteExistingMoves {�SobreEscribir movimientos existentes?}

# ECO Browser:
translate S ECOAllSections {todas las divisiones ECO}
translate S ECOSection {divisi�n ECO}
translate S ECOSummary {Resumen de}
translate S ECOFrequency {Frecuencia de los subc�digos para}

# Opening Report:
translate S OprepTitle {Informe de la apertura}
translate S OprepReport {Informe}
translate S OprepGenerated {Generado por}
translate S OprepStatsHist {Estad�sticas e Historia}
translate S OprepStats {Estad�sticas}
translate S OprepStatAll {Todas las partidas referidas}
translate S OprepStatBoth {Ambos con Elo}
translate S OprepStatSince {Desde}
translate S OprepOldest {Partidas m�s antiguas}
translate S OprepNewest {Partidas m�s nuevas}
translate S OprepPopular {Popularidad actual}
translate S OprepFreqAll {Frecuencia durante todos los a�os: }
translate S OprepFreq1   {Desde el �ltimo a�o hasta hoy:     }
translate S OprepFreq5   {En los �ltimos 5 a�os hasta hoy:   }
translate S OprepFreq10  {En los �ltimos 10 a�os hasta hoy:  }
translate S OprepEvery {una vez cada %u partidas}
translate S OprepUp {sube un %u%s respecto al total de a�os}
translate S OprepDown {baja un %u%s respecto al total de a�os}
translate S OprepSame {no hay cambios respecto al total de a�os}
translate S OprepMostFrequent {Jugadores m�s frecuentes}
translate S OprepMostFrequentOpponents {Rivales m�s frecuentes}
translate S OprepRatingsPerf {Elo y Rendimiento}
translate S OprepAvgPerf {Promedio de Elo y rendimiento}
translate S OprepWRating {Elo de las blancas}
translate S OprepBRating {Elo de las negras}
translate S OprepWPerf {Rendimiento de las blancas}
translate S OprepBPerf {Rendimiento de las negras}
translate S OprepHighRating {Partida con el mayor promedio de Elo}
translate S OprepTrends {Tendencias de Resultados}
translate S OprepResults {Resultado de duraciones y frecuencias}
translate S OprepLength {Duraci�n de la partida}
translate S OprepFrequency {Frecuencia}
translate S OprepWWins {Blancas ganan: }
translate S OprepBWins {Negras ganan:  }
translate S OprepDraws {Tablas:        }
translate S OprepWholeDB {en el conjunto de la base de datos}
translate S OprepShortest {Triunfos m�s cortos}
translate S OprepMovesThemes {Movimientos y temas}
translate S OprepMoveOrders {L�neas de movimientos que alcanzan la posici�n del informe}
translate S OprepMoveOrdersOne \
  {S�lo hay una l�nea de movimientos que alcanza esta posici�n:}
translate S OprepMoveOrdersAll \
  {Hay %u l�neas de movimiento que alcanzan esta posici�n:}
translate S OprepMoveOrdersMany \
  {Hay %u l�neas de movimiento que alcanzan esta posici�n. Las %u m�s comunes son:}
translate S OprepMovesFrom {Movimientos desde la posici�n del informe}
translate S OprepMostFrequentEcoCodes {Aperturas m�s frecuentes}
translate S OprepThemes {Temas posicionales}
translate S OprepThemeDescription {Frecuencia de los temas en las primeras %u jugadas de cada partida}
translate S OprepThemeSameCastling {Enroque al mismo lado}
translate S OprepThemeOppCastling {Enroque en lados opuestos}
translate S OprepThemeNoCastling {Ambos reyes no enrocados}
translate S OprepThemeKPawnStorm {Avanzada de los peones del rey}
translate S OprepThemeQueenswap {Damas intercambiadas}
translate S OprepThemeWIQP {Pe�n de dama aislado de las blancas}
translate S OprepThemeBIQP {Pe�n de dama aislado de las negras}
translate S OprepThemeWP567 {Peones blancos en 5/6/7� fila}
translate S OprepThemeBP234 {Peones negros en 2/3/4� fila}
translate S OprepThemeOpenCDE {Columnas c/d/e abiertas}
translate S OprepTheme1BishopPair {Un lado tiene los dos alfiles}
translate S OprepEndgames {Finales}
translate S OprepReportGames {Informe de partidas}
translate S OprepAllGames {Todas las partidas}
translate S OprepEndClass {Tipos de finales seg�n la �ltima posici�n de las partidas}
translate S OprepTheoryTable {Tabla Te�rica}
translate S OprepTableComment {Generado a partir de las %u partidas con mejor Elo.}
translate S OprepExtraMoves {Anotaci�n extra de movimientos en la tabla te�rica}
translate S OprepMaxGames {M�ximas partidas en la tabla te�rica}
# ====== TODO To be translated ======
translate S OprepMaxLines {Maximum games for statistics}
translate S OprepViewHTML {Ver HTML}
translate S OprepViewLaTeX {Ver LaTeX}

# Player Report:
translate S PReportTitle {Informe del jugador}
translate S PReportColorWhite {con las piezas blancas}
translate S PReportColorBlack {con las piezas negras}
translate S PReportBeginning {Empezando con}
translate S PReportMoves {%s despu�s}
translate S PReportOpenings {Aperturas}
translate S PReportClipbase {Vaciar portapapeles y copiar las partidas}

# Piece Tracker window:
translate S TrackerSelectSingle {El bot�n izquierdo selecciona esta pieza.}
translate S TrackerSelectPair {El bot�n izquierdo selecciona esta pieza; el bot�n derecho tambi�n selecciona su hermana.}
translate S TrackerSelectPawn {El bot�n izquierdo selecciona este pe�n; el bot�n derecho selecciona los 8 peones.}
translate S TrackerStat {Estad�stica}
translate S TrackerGames {% de partidas con movimiento a esta casilla}
translate S TrackerTime {% de tiempo en esta casilla}
translate S TrackerMoves {Movimientos}
translate S TrackerMovesStart {Escribe el n�mero del movimiento desde donde debe empezar el rastreo.}
translate S TrackerMovesStop {Escribe el n�mero del movimiento donde debe parar el rastreo.}

# Game selection dialogs:
translate S SelectAllGames {Todas las partidas de la base de datos}
translate S SelectFilterGames {S�lo las partidas filtradas}
translate S SelectTournamentGames {S�lo las partidas del actual torneo}
translate S SelectOlderGames {S�lo partidas antiguas}

# Delete Twins window:
translate S TwinsNote {Para ser dobles, dos partidas deben de tener al menos los mismos dos jugadores, y los criterios que fijes debajo. Cuando un par de dobles es encontrado, la partida m�s corta es borrada. Sugerencia: es mejor hacer la correcci�n ortogr�fica de la base de datos antes de iniciar el borrado de dobles, porque esto mejora su detecci�n.}
translate S TwinsCriteria {Criterios: Las partidas dobles deben tener...}
translate S TwinsWhich {Partidas a examinar}
translate S TwinsColors {�Jugadores con igual color?}
translate S TwinsEvent {�Mismo evento?}
translate S TwinsSite {�Mismo sitio?}
translate S TwinsRound {�Misma ronda?}
translate S TwinsYear {�Mismo a�o?}
translate S TwinsMonth {�Mismo mes?}
translate S TwinsDay {�Mismo d�a?}
translate S TwinsResult {�Mismo resultado?}
translate S TwinsECO {�Mismo c�digo ECO?}
translate S TwinsMoves {�Mismos movimientos?}
translate S TwinsPlayers {Comparando nombres de jugadores:}
translate S TwinsPlayersExact {Encuentro exacto}
translate S TwinsPlayersPrefix {S�lo las primeras 4 letras}
translate S TwinsWhen {Cuando se borren partidas dobles}
translate S TwinsSkipShort {�Ignorar todas las partidas con menos de 5 movimientos?}
translate S TwinsUndelete {�Quitar marcas de borrado primero?}
translate S TwinsSetFilter {�Poner filtro a todas las partidas borradas?}
translate S TwinsComments {�Saltar siempre partidas con comentarios?}
translate S TwinsVars {�Saltar siempre partidas con variaciones?}
translate S TwinsDeleteWhich {Qu� partida borrar:}
translate S TwinsDeleteShorter {Partida m�s corta}
translate S TwinsDeleteOlder {N�mero de partida menor}
translate S TwinsDeleteNewer {N�mero de partida mayor}
translate S TwinsDelete {Borrar partidas}

# Name editor window:
translate S NameEditType {Tipo de nombre a editar}
translate S NameEditSelect {Partidas a editar}
translate S NameEditReplace {Reemplazar}
translate S NameEditWith {Con}
translate S NameEditMatches {Partidas: Presionar Ctrl+1 a Ctrl+9 para seleccionarla}

# Classify window:
translate S Classify {Clasificar}
translate S ClassifyWhich {Clasificar por c�digos ECO}
translate S ClassifyAll {Todas las partidas (sobreescribir c�digo ECO)}
translate S ClassifyYear {Todas las partidas jugadas en el �ltimo a�o}
translate S ClassifyMonth {Todas las partidas jugadas en el �ltimo mes}
translate S ClassifyNew {S�lo las partidas todav�a sin c�digo ECO}
translate S ClassifyCodes {C�digo ECO a usar}
translate S ClassifyBasic {S�lo c�digo b�sico ("B12", ...)}
translate S ClassifyExtended {Extensiones Scid ("B12j", ...)}

# Compaction:
translate S NameFile {Archivo de nombres}
translate S GameFile {Archivo de partidas}
translate S Names {Nombres}
translate S Unused {No usado}
translate S SizeKb {Tama�o (kb)}
translate S CurrentState {Estado actual}
translate S AfterCompaction {Despu�s de la compactaci�n}
translate S CompactNames {Compactar archivo de nombres}
translate S CompactGames {Compactar archivo de partidas}
translate S NoUnusedNames "No hay nombres sin usar, por tanto, el fichero de nombres est� ya totalmente compactado."
translate S NoUnusedGames "El fichero ya est� totalmente compactado."
translate S NameFileCompacted {El fichero de nombre para la base de datos "[file tail [sc_base filename]]" fue compactado.}
translate S GameFileCompacted {El fichero de partidas para la base de datos "[file tail [sc_base filename]]" fue compactado.}

# Sorting:
translate S SortCriteria {Criterio}
translate S AddCriteria {A�adir criterio}
translate S CommonSorts {Ordenaciones comunes}
translate S Sort {Ordenar}

# Exporting:
translate S AddToExistingFile {�A�adir partidas a un archivo existente?}
translate S ExportComments {�Exportar comentarios?}
translate S ExportVariations {�Exportar variaciones?}
translate S IndentComments {�Sangrar comentarios?}
translate S IndentVariations {�Sangrar variaciones?}
# ====== TODO To be translated ======
translate S InsertNewlines {Insert newlines every 80 chars?}
translate S ExportColumnStyle {�Estilo de columna (un movimiento por l�nea)?}
translate S ExportSymbolStyle {Estilo de anotaci�n simb�lico:}
translate S ExportStripMarks {�Quitar marca de c�digos de casilla/flecha de los comentarios?}

translate S ExportFlags {Exportar Marcas de Scid}

# Goto game/move dialogs:
translate S LoadGameNumber {Entra el n�mero de la partida a cargar:}
translate S GotoMoveNumber {Ir al movimiento n�mero:}

# Copy games dialog:
translate S CopyGames {Copiar partidas}
translate S CopyConfirm {
 Realmente deseas copiar las [::utils::thousands $nGamesToCopy] partidas filtradas
 de la base de datos "$fromName"
 a la base de datos "$targetName"?
}
translate S CopyErr {No se pueden copiar las partidas}
translate S CopyErrSource {la base de datos fuente}
translate S CopyErrTarget {la base de datos de destino}
translate S CopyErrNoGames {no tiene partidas en su filtro}
translate S CopyErrReadOnly {es s�lo de lectura}
translate S CopyErrNotOpen {no est� abierta}

# Colors:
translate S LightSquares {Casillas claras}
translate S DarkSquares {Casillas oscuras}
translate S SelectedSquares {Casillas seleccionadas}
translate S Grid {Cuadr�cula}
translate S Previous {Elecci�n}
translate S WhitePieces {Piezas blancas}
translate S BlackPieces {Piezas negras}
translate S WhiteBorder {Borde blancas}
translate S BlackBorder {Borde negras}
translate S ArrowMain   {Flecha l�nea principal}
translate S ArrowVar    {Flechas de variaciones}
# ====== TODO To be translated ======
translate S ShowArrows  {Show Arrows}

# Novelty window:
translate S FindNovelty {Encontrar novedad}
translate S Novelty {Novedad}
translate S NoveltyInterrupt {Busqueda de novedades interrumpida}
translate S NoveltyNone {Ninguna novedad encontrada para esta partida}
translate S NoveltyHelp {
Scid encontrar� el primer movimiento de la actual partida que alcanza una posici�n no encontrada en la base de datos seleccionada o en el libro de aperturas ECO.
}

# Sounds configuration:
translate S SoundsFolder {Directorio de los archivos de sonido}
translate S SoundsFolderHelp {El directorio debe contener los archivos King.wav, a.wav, 1.wav, etc}
translate S SoundsAnnounceOptions {Opciones de anunciamiento de movimientos}
translate S SoundsAnnounceNew {Anunciar nuevos movimientos cuando sean hechos}
translate S SoundsAnnounceForward {Anunciar movimientos cuando avancemos un movimiento}
translate S SoundsAnnounceBack {Anunciar movimiento cuando rectifiquemos o retrocedamos una jugada}

# Upgrading databases:
translate S Upgrading {Actualizaci�n}
translate S ConfirmOpenNew {
Este es un formato de base de datos antiguo (Scid 2) que no puede ser abierto con Scid 3, pero ya se ha creado una versi�n de formato nuevo (Scid 3).

�Quieres abrir la versi�n de formato nuevo de la base de datos?
}
translate S ConfirmUpgrade {
Esta es una base de datos en un formato antiguo (Scid 2). Se debe crear una versi�n de formato nuevo de base de datos antes de poder ser usada en Scid 3.

La actualizaci�n crear� una nueva versi�n de la base de datos; esta no corregir� o borrar� los archivos originales.

Esto puede tomar un tiempo, pero s�lo es necesario hacerlo una vez. Puedes cancelar si toma demasiado tiempo.

�Quieres actualizar esta base de datos ahora?
}

# Recent files options:
translate S RecentFilesMenu {N�mero de archivos recientes en el men� Archivo}
translate S RecentFilesExtra {N�mero de archivos recientes en submen� extra}

# My Player Names options:
translate S MyPlayerNamesDescription {
Escriba una lista de nombres de jugadores preferidos, un nombre por cada l�nea. Est�n permitidos los comodines (por ejemplo "?" para un s�lo caracter, "*" para varios caracteres).

Cada vez que carge una partida con un jugador de la lista se girar� el tablero, si fuese necesario, para ver la partida desde la perspectiva del jugador.
}

# coach
translate S showblunderexists {Mostrar metedura de pata}
translate S showblundervalue {Mostrar valor de la metedura de pata}
translate S showscore {Mostrar marcador}
translate S coachgame {Entrenador}
translate S configurecoachgame {Configurar entrenador}
translate S configuregame {Configuraci�n de partida UCI}
translate S Phalanxengine {Motor Phalanx}
translate S Coachengine {Motor entrenador}
translate S difficulty {Dificultad}
translate S hard {Duro}
translate S easy {F�cil}
translate S Playwith {Juega con}
translate S white {blancas}
translate S black {negras}
translate S both {ambos}
translate S Play {Jugar}
translate S Noblunder {Sin errores}
translate S blunder {Meteduras de pata}
translate S Noinfo {-- Sin informaci�n --}
translate S moveblunderthreshold {El movimiento es una metedura de pata si la p�rdida de puntuaci�n es mayor que }
translate S limitanalysis {Tiempo l�mite para an�lisis del motor}
translate S seconds {segundos}
translate S Abort {Abortar}
translate S Resume {Reanudar}
translate S Restart {Reiniciar}
translate S OutOfOpening {Fuera de apertura}
translate S NotFollowedLine {T� no sigues la l�nea}
translate S DoYouWantContinue {�Quieres continuar?}
translate S CoachIsWatching {Entrenador}
translate S Ponder {Pensar siempre (el motor)}
translate S LimitELO {Limitar fuerza ELO}
translate S DubiousMovePlayedTakeBack {Movimiento dudoso, �quieres rectificar?}
translate S WeakMovePlayedTakeBack {Movimiento flojo, �quieres rectificar ?}
translate S BadMovePlayedTakeBack {Movimiento malo, �quieres rectificar ?}
translate S Iresign {Yo abandono}
translate S yourmoveisnotgood {tu movimiento no es bueno}
translate S EndOfVar {Fin de la variante}
translate S Openingtrainer {Entrenador de aperturas}
translate S DisplayCM {Muestra posibles movimientos}
translate S DisplayCMValue {Muestra valor de posibles movimientos}
translate S DisplayOpeningStats {Muestra estad�sticas}
translate S ShowReport {Muestra informe}
translate S NumberOfGoodMovesPlayed {buenos movimientos jugados}
translate S NumberOfDubiousMovesPlayed {dudosos momientos jugados}
translate S NumberOfTimesPositionEncountered {veces encontrada la posici�n}
translate S PlayerBestMove  {Permite �nicamente movimientos mejores}
translate S OpponentBestMove {Oponente juega mejores movimientos}
translate S OnlyFlaggedLines {S�lo l�neas marcadas}
translate S resetStats {Reinicia estad�sticas}
translate S Movesloaded {Movimientos cargados}
translate S PositionsNotPlayed {Posiciones no jugadas}
translate S PositionsPlayed {Posiciones jugadas}
translate S Success {�xitos}
translate S DubiousMoves {Movimientos dudosos}
translate S ConfigureTactics {Configurar t�ctica}
translate S ResetScores {Reiniciar marcadores (puntuaciones)}
translate S LoadingBase {Cargando base}
translate S Tactics {T�cticas}
translate S ShowSolution {Mostrar soluci�n}
translate S Next {Siguiente}
translate S ResettingScore {Reiniciando marcador}
translate S LoadingGame {Cargando partida}
translate S MateFound {Mate encontrado}
translate S BestSolutionNotFound {�NO fue encontrada la mejor soluci�n!}
translate S MateNotFound {Mate no encontrado}
translate S ShorterMateExists {Esiste un mate m�s corto}
translate S ScorePlayed {Marcador jugado}
translate S Expected {Esperado}
translate S ChooseTrainingBase {Elegir base de entrenamiento}
translate S Thinking {Pensando}
translate S AnalyzeDone {An�lisis hecho}
translate S WinWonGame {Gana la partida ganada}
translate S Lines {L�neas}
translate S ConfigureUCIengine {Configurar motor}
translate S SpecificOpening {Apertura espec�fica}
# ====== TODO To be translated ======
translate S ImportECO {Import ECO}
translate S StartNewGame {Empezar partida nueva}
translate S FixedLevel {Nivel fijado}
translate S Opening {Abriendo}
translate S RandomLevel {Nivel aleatorio}
translate S StartFromCurrentPosition {Empezar desde la posici�n actual}
translate S FixedDepth {Profundidad fija}
translate S Nodes {Nodos}
translate S Depth {Profundidad}
translate S Time {Tiempo}
# ====== TODO To be translated ======
translate S Auto {Auto}
# ====== TODO To be translated ======
translate S Score {Score}
# ====== TODO To be translated ======
translate S {Score Combo} {Score Combo}
# ====== TODO To be translated ======
translate S {Time Combo} {Time Combo}
translate S SecondsPerMove {Segundos por movimiento}
translate S DepthPerMove {Profundidad por movimiento}
translate S MoveControl {Movimiento del control}
translate S TimeLabel {Tiempo por movimiento}
translate S AddVars {A�adir las variaciones}
translate S AddScores {A�adir valoraci�n o puntuaci�n}
translate S Engine {Motor}
translate S TimeMode {Modo de tiempo}
translate S TimeBonus {Tiempo + bonus}
translate S TimeMin {min}
translate S TimeSec {seg}
translate S AllExercisesDone {Todos los ejercicio hechos}
translate S MoveOutOfBook {Movimiento fuera del libro}
translate S LastBookMove {�ltimo movimiento del libro}
translate S AnnotateSeveralGames {Anotar las partidas\ndesde la actual a la: }
translate S FindOpeningErrors {Solo errores de apertura en los primeros}
translate S MarkTacticalExercises {Marca ejercicios t�cticos}
translate S UseBook {Usar libro de aperturas (Book)}
translate S MultiPV {Variantes m�ltiples}
translate S Hash {Memoria Hash}
translate S OwnBook {Usar libro (book) del motor}
translate S BookFile {Libro de aperturas}
translate S AnnotateVariations {Procesar variantes}
translate S ShortAnnotations {Anotaciones cortas}
translate S addAnnotatorTag {A�adir etiqueta de anotador}
translate S AddScoreToShortAnnotations {A�adir puntuaci�n para anotaciones cortas}
translate S Export {Exportar}
translate S BookPartiallyLoaded {Libro parcialmente cargado}
translate S AddLine {A�adir l�nea}
translate S RemLine {Eliminar l�nea}
translate S Calvar {C�lculo de variantes}
translate S ConfigureCalvar {Configuraci�n}
# Opening names used in tacgame.tcl
translate S Reti {Apertura Reti}
translate S English {Apertura inglesa}
translate S d4Nf6Miscellaneous {1.d4 Cf6 variadas}
translate S Trompowsky {Apertura Trompowsky}
translate S Budapest {Gambito Budapest}
translate S OldIndian {Defensa India Antigua}
translate S BenkoGambit {Gambinko}
translate S ModernBenoni {Defensa Benoni Moderna}
translate S DutchDefence {Defensa Holandesa}
translate S Scandinavian {Defensa Escandinava}
translate S AlekhineDefence {Defensa Alekhine}
translate S Pirc {Defensa Pirc}
translate S CaroKann {Defensa Caro-Kann}
translate S CaroKannAdvance {Defensa Caro-Kann, Variante del Avance}
translate S Sicilian {Defensa Siciliana}
translate S SicilianAlapin {Defensa Siciliana, Variante Alapin}
translate S SicilianClosed {Defensa Siciliana, Variante Cerrada}
translate S SicilianRauzer {Defensa Siciliana, Variante Rauzer}
translate S SicilianDragon {Defensa Siciliana, Variante del Dragon}
translate S SicilianScheveningen {Defensa Siciliana, Variante Scheveningen}
translate S SicilianNajdorf {Defensa Siciliana, Variante Najdorf}
translate S OpenGame {Apertura Abierta}
translate S Vienna {Apertura Vienesa}
translate S KingsGambit {Gambito de Rey}
translate S RussianGame {Partida Rusa}
translate S ItalianTwoKnights {Apertura Italiana, Variante de los Dos Caballos}
translate S Spanish {Apertura Espa�ola}
translate S SpanishExchange {Apertura Espa�ola, Variante del cambio}
translate S SpanishOpen {Apertura Espa�ola}
translate S SpanishClosed {Apertura Espa�ola, Variante Cerrada}
translate S FrenchDefence {Defensa Francesa}
translate S FrenchAdvance {Defensa Francesa, Variante del Avance}
translate S FrenchTarrasch {Defensa Francesa, Variante Tarrasch}
translate S FrenchWinawer {Defensa Francesa, Variante Winawer}
translate S FrenchExchange {Defensa Francesa, Variante del cambio}
translate S QueensPawn {Apertura de Pe�n de Dama}
translate S Slav {Defensa Eslava}
translate S QGA {Gambito de Dama Aceptado}
translate S QGD {Gambito de Dama Declinado}
translate S QGDExchange {Gambito de Dama Declinado, Variante del Cambio}
translate S SemiSlav {Defensa Semi-Eslava del Gambito de Dama Declinado}
translate S QGDwithBg5 {Gambito de Dama Declinado con Ag5}
translate S QGDOrthodox {Gambido de Dama Declinado,  Defensa Ortodoxa}
translate S Grunfeld {Defensa Gr�nfeld}
translate S GrunfeldExchange {Variante del cambio de la Defensa Gr�nfeld }
translate S GrunfeldRussian {Variante Rusa de la Defensa Gr�nfeld}
translate S Catalan {Catalana}
translate S CatalanOpen {Apertura Catalana}
translate S CatalanClosed {Apertura Catalana, Variante Cerrada}
translate S QueensIndian {Defensa India de Dama}
translate S NimzoIndian {Apertura Nimzo-India}
translate S NimzoIndianClassical {Apertura Nimzo-India Cl�sica}
translate S NimzoIndianRubinstein {Variante Rubinstein de la Nimzo-India}
translate S KingsIndian {India de Rey}
translate S KingsIndianSamisch {Ataque S�mish de la India de Rey}
translate S KingsIndianMainLine {L�nea Principal India de Rey}

#fics
translate S ConfigureFics {Configurar FICS}
translate S FICSLogin {Autentificar}
translate S FICSGuest {Autentificaci�n como invitado}
translate S FICSServerPort {Puerto del servidor}
translate S FICSServerAddress {Direcci�n IP}
translate S FICSRefresh {Refrescar}
translate S FICSTimeseal {Timeseal}
translate S FICSTimesealPort {Puerto Timeseal}
translate S FICSSilence {Silencio}
translate S FICSOffers {Ofertas}
# ====== TODO To be translated ======
translate S FICSMakeOffer {Make Offer}
translate S FICSGames {Partidas}
translate S FICSFindOpponent {Buscar oponente}
translate S FICSTakeback {Retrocede}
translate S FICSTakeback2 {Retrocede 2}
translate S FICSInitTime {Tiempo inicial (min)}
translate S FICSIncrement {Incremento (seg)}
translate S FICSRatedGame {Partida valorada}
translate S FICSAutoColour {autom�tico}
translate S FICSManualConfirm {confirma manualmente}
translate S FICSFilterFormula {Filtrar con f�rmula}
translate S FICSIssueSeek {Panel de retos}
translate S FICSAccept {aceptar}
translate S FICSDecline {rechazar}
translate S FICSColour {Color}
translate S FICSSend {enviar}
translate S FICSConnect {Conectar}
translate S FICSShouts {Gritos}
translate S FICSTells {Decir}
translate S FICSOpponent {Informaci�n del oponente}
translate S FICSInfo {Informaci�n}
translate S FICSDraw {Ofrecer tablas}
translate S FICSRematch {Revancha}
translate S FICSQuit {Salir}
translate S FICSCensor {Censurar}

# Correspondence Chess Dialogs:
translate S CCDlgConfigureWindowTitle {Configurar ajedrez por correo}
translate S CCDlgCGeneraloptions {Opciones generales}
translate S CCDlgDefaultDB {Base por defecto:}
translate S CCDlgInbox {Entrante (Carpeta):}
translate S CCDlgOutbox {Saliente (carpeta):}
translate S CCDlgXfcc {Configuraci�n Xfcc:}
translate S CCDlgExternalProtocol {Protocolo externo (p.ej. Xfcc)}
translate S CCDlgFetchTool {Herramienta de traer:}
translate S CCDlgSendTool {Herramienta de env�o:}
translate S CCDlgEmailCommunication {Comunicaci�n email}
translate S CCDlgMailPrg {Programa de correo:}
translate S CCDlgBCCAddr {(B)CC Direcci�n:}
translate S CCDlgMailerMode {Modo:}
translate S CCDlgThunderbirdEg {p.e. Thunderbird, Mozilla Mail, Icedove...}
translate S CCDlgMailUrlEg {p.e. Evolution}
translate S CCDlgClawsEg {p.e. Sylpheed Claws}
translate S CCDlgmailxEg {p.e. mailx, mutt, nail...}
translate S CCDlgAttachementPar {Par�metro Adjunto (Attachment):}
translate S CCDlgInternalXfcc {Usar soporte interno Xfcc}
translate S CCDlgConfirmXfcc {Confirmar jugadas}
translate S CCDlgSubjectPar {Par�metro Sujeto (Subject):}
translate S CCDlgDeleteBoxes {Vaciar Entrante/Saliente}
translate S CCDlgDeleteBoxesText {�Quieres realmente vaciar tus carpetas Entrante y Saliente para Ajedrez por correspondencia? Esto requiere una nueva sincronizaci�n para mostrar el estado �ltimo de tus partidas}
translate S CCDlgConfirmMove {Confirmar jugada}
translate S CCDlgConfirmMoveText {Si t� confirmas, la siguiente jugada y comentario ser� enviado al servidor:}
translate S CCDlgDBGameToLong {L�nea principal inconsistente}
translate S CCDlgDBGameToLongError {La l�nea principal en tu base es m�s larga que de la partida en la bandeja de entrada. Si la bandeja de entrada contiene la partida actual, algunos movimientos fueron a�adidos a la l�nea principal en la base err�neamente.\nEn este caso acorte la l�nea principal a la (max) jugada\n}
translate S CCDlgStartEmail {Empezar nueva partida por email}
translate S CCDlgYourName {Tu nombre:}
translate S CCDlgYourMail {Tu direcci�n email:}
translate S CCDlgOpponentName {Nombre de oponente:}
translate S CCDlgOpponentMail {Direcci�n email de oponente:}
translate S CCDlgGameID {Partida ID (�nico):}
translate S CCDlgTitNoOutbox {Scid: Salida del correo de ajedrez}
translate S CCDlgTitNoInbox {Scid: Entrada del correo de ajedrez}
translate S CCDlgTitNoGames {Scid: No hay partidas de ajedrez por correo}
translate S CCErrInboxDir {Carpeta de entrada del correo de ajedrez (Entrante):}
translate S CCErrOutboxDir {Carpeta de salida del correo de ajedrez (Saliente):}
translate S CCErrDirNotUsable {�No existe o no est� accesible!\nPor favor, compruebe y corrija los par�metros.}
translate S CCErrNoGames {�No contiene ninguna partida!\nPor favor, tr�igala primero.}
translate S CCDlgTitNoCCDB {Scid: No es una base de ajedrez por correo}
translate S CCErrNoCCDB {No hay una base del tipo 'Correo' abierta. Por favor, abra una antes de usar funciones de ajedrez por correo.}
translate S CCFetchBtn {Traer partidas desde el servidor y procesar correo entrante}
translate S CCPrevBtn {Ir a partida anterior}
translate S CCNextBtn {Ir a partida siguiente}
translate S CCSendBtn {Enviar movimiento}
translate S CCEmptyBtn {Correos entrante y saliente vac�os}
translate S CCHelpBtn {Ayuda en iconos e indicadores de estatus. \n Para ayuda general, pulse F1}
translate S CCDlgServerName {Nombre del servidor}
translate S CCDlgLoginName  {Nombre de usuario}
translate S CCDlgPassword   {Contrase�a}
translate S CCDlgURL        {Xfcc-URL}
translate S CCDlgRatingType {Tipo de puntuaci�n (Rating)}
translate S CCDlgDuplicateGame {El ID de la partida no es �nico}
translate S CCDlgDuplicateGameError {Esta partida existe m�s de una vez en tu base. Por favor, borra todos los duplicados y compacta tu fichero de partidas (Fichero/Mantenimiento/Compactar base de datos).}
translate S CCDlgSortOption {Ordenando:}
translate S CCDlgListOnlyOwnMove {S�lo partidas que tienen el movimiento}
translate S CCOrderClassicTxt {Lugar, Evento, Ronda, Resultado, Blancas, Negras}
translate S CCOrderMyTimeTxt {Mi reloj}
translate S CCOrderTimePerMoveTxt {Tiempo por movimiento falta el pr�ximo control de tiempo}
translate S CCOrderStartDate {Empezar fecha}
translate S CCOrderOppTimeTxt {Reloj de los oponentes}
translate S CCDlgConfigRelay {Configurar observaciones ICCF}
translate S CCDlgConfigRelayHelp {Ir a las partidas de la p�gina en http://www.iccf-webchess.com y mostrar la partida a ser observada. Si ves el tablero de ajedrez copia la URL desde tu explorador a la lista. !Una sola URL por l�nea!\nExample: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}

# Connect Hardware dialoges
translate S ExtHWConfigConnection {Configurar tablero externo}
translate S ExtHWPort {Puerto}
translate S ExtHWEngineCmd {Comando del motor}
translate S ExtHWEngineParam {Par�metro del motor}
translate S ExtHWShowButton {Mostrar bot�n}
translate S ExtHWHardware {Tablero}
translate S ExtHWNovag {Novag Citrine}
translate S ExtHWInputEngine {Tablero (Ext)}
translate S ExtHWNoBoard {Sin tablero}

# Input Engine dialogs
translate S IEConsole {Consola tablero (Ext)}
translate S IESending {Movimientos enviados por}
translate S IESynchronise {Sincronizar}
translate S IERotate  {Rotar}
translate S IEUnableToStart {Imposible empezar tablero (Ext):}

# Calculation of Variations
translate S DoneWithPosition {Hecho con la posici�n}
translate S Board {Tablero}
translate S showGameInfo {Mostrar informaci�n de la partida}
translate S autoResizeBoard {Tama�o autom�tico del tablero}
translate S DockTop {Mover arriba}
translate S DockBottom {Mover abajo}
translate S DockLeft {Mover a la izquierda}
translate S DockRight {Mover a la derecha}
translate S Undock {Ventana flotante}
translate S ChangeIcon {Cambiar icono}
translate S More {M�s}

# Drag & Drop
translate S CannotOpenUri {No se puede abrir la siguiente URI:}
translate S InvalidUri {Descartar contenido no es una lista URI v�lida.}
translate S UriRejected	{Los siguientes archivos fueron rechazados:}
translate S UriRejectedDetail {S�lo pueden manejarse los tipos de archivo listados:}
translate S EmptyUriList {Descartar. Contenido est� vac�o.}
translate S SelectionOwnerDidntRespond {Tiempo excedido durante la operaci�n: el propietario de la selecci�n no respondi�.}
# ====== TODO To be translated ======
translate S PasteAnal {Paste Analysis}
# ====== TODO To be translated ======
translate S SortOpcodes {Sort Opcodes}
# ====== TODO To be translated ======
translate S AddPosition {Add Position}
# ====== TODO To be translated ======
translate S FindPos {Find Deepest Game Position}
# ====== TODO To be translated ======
translate S AnalPosition {Analyze Positions}
# ====== TODO To be translated ======
translate S StripOpcodes {Strip Opcodes}
# ====== TODO To be translated ======
translate S NoMoves {No moves from this position}
# ====== TODO To be translated ======
translate S CountBestMoves {Count Best Moves}

}
# end of spanish.tcl
