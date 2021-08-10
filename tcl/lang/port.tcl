# port.tcl:
# Scid in Portuguese.
# Translated by G. Silva (martinus at FICS)
# Last edited 2019-03-24

addLanguage U {Portuguese} 0 ;#iso8859-1

proc setLanguage_U {} {

# File menu:
menuText U File "Arquivo" 0
menuText U FileNew "Novo..." 0 {Cria uma nova base de dados Scid}
menuText U FileOpen "Abrir..." 0 {Abre uma base de dados Scid existente}
menuText U FileClose "Fechar" 0 {Fecha a base de dados Scid ativa}
menuText U FileFinder "Buscador" 0 {Abre a janela do Buscador de Arquivos}
menuText U FileSavePgn "Gravar PGN..." 0 {}
menuText U FileOpenBaseAsTree "Abrir Base como �rvore" 13   {Abrir a base como �rvore de Posi��es}
menuText U FileOpenRecentBaseAsTree "Abrir Recente como �rvore" 0   {Abrir a base Recente como �rvore de Posi��es}
menuText U FileBookmarks "Favoritos" 0 {Menu de Favoritos (atalho: Ctrl+B)}
menuText U FileBookmarksAdd "Adicionar a Favoritos" 0 \
  {Adiciona o jogo aos Favoritos}
menuText U FileBookmarksFile "Arquivar Favorito" 0 \
  {Arquiva um Favorito para a posi��o do jogo atual}
menuText U FileBookmarksEdit "Editar favoritos..." 0 \
  {Editar o menu de favoritos}
menuText U FileBookmarksList "Mostrar pastas como lista" 0 \
  {Mostra as pastas de favoritos em lista unica}
menuText U FileBookmarksSub "Mostrar pastas como submenus" 0 \
  {Mostra as pastas de favoritos como submenus}
menuText U FileReadOnly "Apenas Leitura..." 7 \
  {Trata a base de dados corrente como arquivo de leitura, impedindo mudan�as}
menuText U FileSwitch "Mudar de base" 0 \
  {Muda para outra base aberta} ;# ***
menuText U FileExit "Sair" 0 {Encerrar o Scid}

# Edit menu:
menuText U Edit "Editar" 0
menuText U EditAdd "Adicionar variante" 0 {Adiciona variante da partida}
menuText U EditPasteVar "Colar variante" 0
menuText U EditDelete "Apagar variante" 0 {Exclui variante da partida}
menuText U EditFirst "Converte para Primeira Variante" 14 \
  {Faz com que uma variante seja a primeira da lista}
menuText U EditMain "Converte variante para Linha Principal" 24 \
  {Faz com que uma variante se torne a Linha Principal}
menuText U EditTrial "Experimentar variante" 0 \
  {Inicia/Para experimentacao, para testar alguma nova ideia no tabuleiro}
menuText U EditStrip "Limpar" 2 \
  {Limpa comentarios e variantes no jogo atual}
menuText U EditUndo "Desfazer" 0 {Desfaz �ltima mudan�a no jogo}
menuText U EditRedo "Recuperar" 0
menuText U EditStripComments "Limpar Coment�rios" 0 \
  {Limpa comentarios e anotacoes no jogo atual}
menuText U EditStripVars "Limpar Variantes" 0 \
  {Limpa todas as variantes no jogo atual}
menuText U EditStripBegin "Desde o in�cio da partida" 1 \
  {Strip moves from the beginning of the game} ;# ***
menuText U EditStripEnd "At� ao final da partida" 0 \
  {Strip moves to the end of the game} ;# ***
# ====== TODO To be translated ======
menuText U EditFlip "Flip Board" 0 {Flip the board}
menuText U EditReset "Limpar a base de trabalho" 0 \
  {Limpa completamente a base de trabalho}
menuText U EditCopy "Copiar jogo para a base de trabalho" 0 \
  {Copia o jogo corrente para a base de trabalho}
menuText U EditPaste "Colar jogo da base de trabalho" 1 \
  {Cola o jogo ativo da base de trabalho}
menuText U EditPastePGN "Colar texto Clipboard como jogo PGN..." 10 \
  {Interpret the clipboard text as a game in PGN notation and paste it here} ;# ***
menuText U EditSetup "Configurar posi��o inicial..." 12 \
  {Configura a posi��o inicial para o jogo}
menuText U EditCopyBoard "Copiar posi��o" 6 \
  {Copy the current board in FEN notation to the text selection (clipboard)} ;# ***
menuText U EditCopyPGN "Copiar PGN" 0 {}
menuText U EditPasteBoard "Colar Posi��o" 12 \
  {Configura a posi��o inicial a partir da area de transferencia}

# Game menu:
menuText U Game "Jogo" 0
menuText U GameNew "Novo Jogo" 0 \
  {Limpa o jogo corrente, descartando qualquer altera��o}
menuText U GameFirst "Primeiro Jogo" 5 {Carrega o primeiro jogo filtrado}
menuText U GamePrev "Jogo Anterior" 5 {Carrega o jogo anterior}
menuText U GameReload "Recarrega o Jogo atual" 3 \
  {Recarrega o jogo, descartando qualquer alteracao}
menuText U GameNext "Pr�ximo Jogo" 5 {Carrega o proximo jogo}
menuText U GameLast "�ltimo Jogo" 8 {Carrega o ultimo jogo}
menuText U GameRandom "Jogo Sorteado" 8 {Carrega uma partida sorteada de entre as que est�o filtradas} ;# ***
menuText U GameNumber "Jogo n.�..." 5 \
  {Carrega um jogo pelo seu numero}
menuText U GameReplace "Guardar: Substituir Jogo..." 8 \
  {Salva o jogo e substitui a versao antiga}
menuText U GameAdd "Guardar: Adicionar Jogo..." 9 \
  {Salva este jogo como um novo jogo na base de dados}
menuText U GameInfo "Informa��es sobre o jogo ativo" 0
menuText U GameBrowse "Pesquisar Jogos" 0
menuText U GameList "Lista de Todos os Jogos" 0
menuText U GameDelete "Apagar jogo" 0
menuText U GameDeepest "Identificar Abertura" 0 \
  {Vai para a posi��o mais avancada da partida, de acordo com o c�digo ECO}
menuText U GameGotoMove "Ir para o movimento n.�..." 5 \
  {Avanca o jogo ate o movimento desejado}
menuText U GameNovelty "Pesquisa Novidade..." 7 \
  {Procura o primeiro movimento deste jogo que nao tenha sido jogado antes}

# Search Menu:
menuText U Search "Pesquisa" 0
menuText U SearchReset "Limpar Filtragem" 0 {Limpa o criterio de pesquisa para incluir todos os jogos}
menuText U SearchNegate "Inverter Filtragem" 0 {Inverte o criterio de pesquisa para incluir apenas os jogos que nao atendem o criterio}
menuText U SearchEnd "Mostrar �ltimo movimento" 0
menuText U SearchCurrent "Posi��o Atual..." 0 {Pesquisa a posi��o atual do tabuleiro}
menuText U SearchHeader "Cabe�alho..." 0 {Pesquisa por cabecalho (jogador, evento, etc)}
menuText U SearchMaterial "Material/Padr�es..." 0 {Pesquisa por material ou posi��es padronizadas}
menuText U SearchMoves {Movimentos} 0 {}
menuText U SearchUsing "Usar ficheiro de filtragem..." 0 {Pesquisa usando arquivo com Op��es do filtro}

# Windows menu:
menuText U Windows "Janelas" 0
menuText U WindowsGameinfo "Informa��es da Partida" 0 {Mostrar ou esconder o painel de informa��es da partida}
menuText U WindowsComment "Editor de Coment�rios" 0 {Abre/fecha o editor de comentarios}
menuText U WindowsGList "Lista de Jogos" 0 {Abre/fecha a janela com a lista de jogos}
menuText U WindowsPGN "Nota��o PGN" 0 {Abre/fecha a janela com a notacao PGN do jogo}
menuText U WindowsCross "Tabela do Torneio" 0 {Mostra a tabela de resultados do torneio para o jogo corrente}
menuText U WindowsPList "Pesquisa de Jogadores" 2 {Abre/fecha a pesquisa de jogadores} ;# ***
menuText U WindowsTmt "Pesquisa de Torneios" 2 {Abre/Fecha a pesquisa de torneios}
menuText U WindowsSwitcher "Interc�mbio de bases de dados" 0 \
  {Abre/fecha a janela de intercambio de bases de dados}
menuText U WindowsMaint "Manuten��o" 0 \
  {Abre/fecha a janela de manutencao}
menuText U WindowsECO "Listagem ECO" 0 {Abre/fecha a janela de listagem de c�digo ECO}
menuText U WindowsStats "Estat�sticas" 0 \
  {Abre/fecha a janela de estatisticas}
menuText U WindowsTree "�rvore" 0 {Abre/fecha a janela da Arvore de pesquisa}
menuText U WindowsTB "Tabela de Finais (TB)" 1 \
  {Abre/fecha a janela da tabela de finais}
menuText U WindowsBook "Editor do Livro (Book)" 0 {Abre/fecha o editor do Livro}
menuText U WindowsCorrChess "Jogos por Correspond�ncia" 0 {Abre/fecha a janela dos jogos por Correspond�ncia}
# ====== TODO To be translated ======
menuText U Analyse "Analyse" 0
# ====== TODO To be translated ======
menuText U AnalyseEngineList "Analysis Engines" 0 {Configure analysis engines}
# ====== TODO To be translated ======
menuText U AnalyseRating "Player Ratings" 0 {Graph the rating history of the current game players}
# ====== TODO To be translated ======
menuText U AnalyseScore "Score Graph" 0 {Show the score graph window}
# ====== TODO To be translated ======
menuText U AnalyseStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText U AnalyseStartEngine2 "Start engine 2" 0  {Start engine 2}
# ====== TODO To be translated ======
menuText U AnalysePlayerReport "Player Report" 3 {Generate a player report}
# ====== TODO To be translated ======
menuText U AnalyseOpReport "Opening Report" 0 {Generate an opening report for the current position}

# Tools menu:
menuText U Tools "Ferramentas" 0
menuText U ToolsAnalysis "Programas de An�lise..." 0 \
  {Inicia ou para o 1o. Analisador}
menuText U ToolsEmail "Gestor de e-mail" 0 \
  {Abre/fecha a janela do gestor de e-mails}
menuText U ToolsFilterGraph "Filtro gr�fico" 7 \
  {Open/close the filter graph window} ;# ***
menuText U ToolsAbsFilterGraph "Filtro gr�fico Abs." 7 {Abrir/fechar a janela do filtro gr�fico para valores absolutos}
menuText U ToolsOpReport "Relat�rio de abertura" 0 \
  {Gera um relatorio de abertura para a posi��o corrente}
menuText U ToolsTracker "Rastreador de Pe�as"  0 {Abre a janela do rastredor de pe�as} ;# ***
menuText U ToolsTraining "Treino"  0 {Ferramentas de treino (t�tica, aberturas,...) }
menuText U ToolsComp "Torneio" 2 {Torneio de programas de an�lise}
menuText U ToolsTacticalGame "Jogo t�tico"  0 {Jogar uma partida com t�ticas}
menuText U ToolsSeriousGame "Jogo a s�rio"  0 {Jogar uma partida a s�rio}
menuText U ToolsTrainTactics "T�ticas"  0 {Resolver problemas t�ticos}
menuText U ToolsTrainCalvar "Calcular variantes"  0 {Calcular variantes para treino}
menuText U ToolsTrainFindBestMove "Encontrar o melhor movimento"  0 {Encontrar o melhor movimento}
menuText U ToolsTrainFics "Jogar na Internet"  0 {Jogar no freechess.org}
menuText U ToolsBookTuning "Editar o Livro" 0 {Editar o livro de aberturas}
menuText U ToolsMaint "Manuten��o" 0 {Ferramentas de manutencao de bases de dados Scid}
menuText U ToolsMaintWin "Janela de Manuten��o" 0 \
  {Abre/Fecha a janela de manutencao de bases de dados Scid}
menuText U ToolsMaintCompact "Compactar Base..." 0 \
  {Compacta arquivos de bases de dados, removendo jogos deletados e nomes nao utilizados}
menuText U ToolsMaintClass "Classificar jogos por ECO..." 2 \
  {Recalcula o c�digo ECO de todos os jogos}
menuText U ToolsMaintSort "Ordenar Base..." 0 \
  {Ordena todos os jogos da base de dados}
menuText U ToolsMaintDelete "Apagar jogos duplicados..." 13 \
  {Encontra jogos duplicados e os marca para exclusao}
menuText U ToolsMaintTwin "Janela de verifica��o de duplicados" 10 \
  {Abre/atualiza a janela de verifica��o de duplicados}
menuText U ToolsMaintNameEditor "Editor de Nomes" 0 \
  {Abre/fecha a janela do editor de nomes}
menuText U ToolsMaintNamePlayer "Verifica��o Ortogr�fica de Nomes de Jogadores..." 11 \
  {Verifica a correcao dos nomes dos jogadores de acordo com o arquivo de correcao ortografica}
menuText U ToolsMaintNameEvent "Verifica��o Ortogr�fica de Nomes de Eventos..." 11 \
  {Verifica a correcao dos nomes de eventos de acordo com o arquivo de verifica��o ortografica}
menuText U ToolsMaintNameSite "Verifica��o Ortogr�fica de Lugares..." 11 \
  {Verifica a correcao dos nomes de lugares usando o arquivo de correcao ortografica}
menuText U ToolsMaintNameRound "Verifica��o Ortogr�fica de Rodadas..." 11 \
  {Verifica��o dos nomes de rodadas usando o arquivo de correcao ortografica}
menuText U ToolsMaintFixBase "Reparar a base" 0 {Tenta reparar uma base corrupto}
menuText U ToolsConnectHardware "Ligar Hardware" 0 {Connect external hardware}
menuText U ToolsConnectHardwareConfigure "Configurar..." 0 {Configure external hardware and connection}
menuText U ToolsConnectHardwareNovagCitrineConnect "Ligar Novag Citrine" 9 {Connect Novag Citrine with Scid}
menuText U ToolsConnectHardwareInputEngineConnect "Ligar tabuleiro eletr�nico" 9 {Connect Input Engine (e.g. DGT board) with Scid}

menuText U ToolsPInfo "Informa��o do Jogador"  0 \
  {Abre/atualiza a janela de informacao do jogador}
menuText U ToolsPlayerReport "Relat�rio de Jogador" 3 \
  {Generate a player report} ;# ***
menuText U ToolsRating "Gr�fico de Pontua��o" 0 \
  {Mostra, em um gr�fico, a evolucao do rating de um jogador}
menuText U ToolsScore "Gr�fico de Resultados" 0 {Mostra a janela com o gr�fico dos resultados}
menuText U ToolsExpCurrent "Exporta jogo corrente" 8 \
  {Grava o jogo corrente em um arquivo texto}
menuText U ToolsExpCurrentPGN "Exporta como PGN..." 15 \
  {Grava o jogo corrente em um arquivo PGN}
menuText U ToolsExpCurrentHTML "Exporta como HTML..." 15 \
  {Grava o jogo corrente em um arquivo HTML}
menuText U ToolsExpCurrentHTMLJS "Export como HTML e JavaScript..." 15 {Write current game to a HTML and JavaScript file}
menuText U ToolsExpCurrentLaTeX "Exporta como LaTex..." 15 \
  {Grava o jogo corrente em um arquivo LaTex}
menuText U ToolsExpFilter "Exporta jogos filtrados" 1 \
  {Exporta todos os jogos filtrados para um arquivo texto}
menuText U ToolsExpFilterPGN "Exporta jogos filtrados - PGN..." 17 \
  {Exporta todos os jogos filtrados para um arquivo PGN}
menuText U ToolsExpFilterHTML "Exporta jogos filtrados - HTML..." 17 \
  {Exporta todos os jogos filtrados para um arquivo HTML}
menuText U ToolsExpFilterHTMLJS "Exporta jogos filtrados - HTML e JavaScript..." 17 {Write all filtered games to a HTML and JavaScript file}
menuText U ToolsExpFilterLaTeX "Exporta jogos filtrados - LaTex..." 17 \
  {Exporta todos os jogos filtrados para um arquivo LaTex}
menuText U ToolsExpFilterEPD "Exporta jogos filtrados - EPD/FEN" 17 {Write all filtered games to an EPD File}
menuText U ToolsExpFilterGames "Export a Lista de Jogos como Texto" 19 {Print a formatted Gamelist.}
menuText U ToolsImportOne "Importa PGN texto..." 0 \
  {Importa jogo de um texto em PGN}
menuText U ToolsImportFile "Importa arquivo de jogos PGN..." 7 \
  {Importa jogos de um arquivo PGN}
menuText U ToolsStartEngine1 "Iniciar programa 1" 0  {Inicia engine 1}
menuText U ToolsStartEngine2 "Iniciar programa 2" 0  {Inicia engine 2}
menuText U ToolsScreenshot "Gravar imagem do tabuleiro" 0
menuText U Play "Jogar" 0
menuText U CorrespondenceChess "Jogo por correspond�ncia" 0 {Fun��es para jogar xadrez por correspond�ncia usando eMail e Xfcc}
menuText U CCConfigure "Configurar..." 0 {Configura ferramentas externas e configura��o geral}
menuText U CCConfigRelay "Observar jogos..." 10 {Configurar jogos para observa��o}
menuText U CCOpenDB "Abrir base..." 0 {Abre a base de correspond�ncia padr�o}
menuText U CCRetrieve "Recupera jogos" 0 {Recupera jogos via (Xfcc-)}
menuText U CCInbox "Processa caixa de entrada" 0 {Processa todos os arquivos na caixa de entrada do Scid}
menuText U CCSend "Enviar movimento" 0 {Envia seu movimento via eMail ou (Xfcc-)}
menuText U CCResign "Abandonar" 0 {Aceita a derrota (n�o via eMail)}
menuText U CCClaimDraw "Declarar empate" 0 {Envia o movimento e declara empate (n�o via eMail)}
menuText U CCOfferDraw "Oferecer empate" 0 {Envia o movimento e oferece empate (n�o via eMail)}
menuText U CCAcceptDraw "Aceitar empate" 0 {Aceita uma oferta de empate (n�o via eMail)}
menuText U CCNewMailGame "Novo jogo por eMail..." 0 {Inicia um novo jogo por eMail}
menuText U CCMailMove "Enviar movimento..." 0 {Envia movimento ao oponente via eMaail}
menuText U CCGamePage "P�gina do jogo..." 0 {Chama o jogo atrav�s do browser}
menuText U CCEditCopy "Copiar Lista de Jogos para a base de c�pia" 0 {Copia os jogos no formato CSV para a base de c�pia}


# Options menu:
menuText U Options "Op��es" 0
menuText U OptionsBoard "Tabuleiro" 0 {Op��es de apar�ncia do tabuleiro} ;# ***
menuText U OptionsColour "Cor do Fundo" 0 {Default text widget color}
menuText U OptionsBackColour "Fundo" 0 {Default text widget color}
menuText U OptionsMainLineColour "Setas da Linha Principal" 0 {Mainline arrows}
menuText U OptionsVarLineColour "Setas da Variante" 0 {Variation arrows}
menuText U OptionsEngineLineColour "Setas do Programa" 0 {Engine arrows}
menuText U OptionsRowColour "Linhas" 0 {Default tree/book row color}
# ====== TODO To be translated ======
menuText U OptionsHighlightColour "Highlight" 0 {Default text highlight color}
menuText U OptionsSwitcherColour "Alternador" 0 {Default db switcher color}
menuText U OptionsProgressColour "Barra de Progresso" 0 {Default progressbar color}
menuText U OptionsScoreColour "Gr�fico dos Pontos" 0 {}
menuText U OptionsScoreBarColour "Gr�fico de pontos atual" 0 {}
menuText U OptionsNames "Meus Nomes de Jogador..." 0 {Editar os meus nomes de jogador} ;# ***
menuText U OptionsExport "Exporta��o" 0 {Muda as Op��es de exportacao de texto}
menuText U OptionsFonts "Fontes" 0 {Muda os fontes}
menuText U OptionsFontsRegular "Normal" 0 {Fonte Normal}
menuText U OptionsFontsMenu "Menu" 0 {Change the menu font} ;# ***
menuText U OptionsFontsSmall "Pequeno" 0 {Fonte pequeno}
menuText U OptionsFontsFixed "Fixo" 0 {Fonte de largura fixa}
menuText U OptionsGInfo "Informa��es do Jogo" 0 {Op��es de informacao do jogo}
menuText U OptionsFics "FICS" 0
menuText U OptionsFicsAuto "Promover sempre a Dama" 0
menuText U OptionsFicsClk "Registar tempo no Rel�gio" 0
menuText U OptionsFicsColour "Cor do Texto" 0
menuText U OptionsFicsSize "Tamanho do Tabuleiro" 0
menuText U OptionsFicsButtons "Bot�es do Utilizador" 0
menuText U OptionsFicsCommands "Comandos de In�cio" 0
menuText U OptionsFicsNoRes "Ocultar Resultados" 0
menuText U OptionsFicsNoReq "Ocultar Pedidos" 0
menuText U OptionsFicsPremove "Permitir Movimento Antecipado" 0
menuText U OptionsLanguage "Linguagem" 0 {Menu de selecao de linguagem}
menuText U OptionsMovesTranslatePieces "Traduzir pe�as" 0 {Traduzir a primeira letra das pe�as}
menuText U OptionsMovesHighlightLastMove "Destacar �ltimo movimento" 0 {Destaca o �ltimo movimento}
menuText U OptionsMovesHighlightLastMoveDisplay "Mostrar" 0 {Mostra o destaque do �ltimo movimento}
menuText U OptionsMovesHighlightLastMoveWidth "Espessura" 0 {Espessura da linha}
menuText U OptionsMovesHighlightLastMoveColor "Cor" 0 {Cor da linha}
menuText U OptionsMovesColorSelected "Colorir a casa selecionada" 0 {Color move}
menuText U OptionsMoves "Movimentos" 0 {Op��es para entrada dos movimentos}
menuText U OptionsMovesAsk "Perguntar antes de substituir movimentos" 0 \
  {Pergunta antes de substituir movimentos existentes}
menuText U OptionsMovesAnimate "Velocidade da anima��o" 1 \
  {Set the amount of time used to animate moves} ;# ***
menuText U OptionsMovesDelay "Tempo de atraso p/ Jogo autom�tico..." 1 \
  {Define o tempo de espera antes de entrar no modo de jogo automatico}
menuText U OptionsMovesCoord "Entrada de movimentos por coordenadas" 0 \
  {Aceita o estilo de entrada de movimentos por coordenadas ("g1f3")}
menuText U OptionsShowVarPopup "Mostrar janela de variantes" 0 {Turn on/off the display of a variations window}
menuText U OptionsMovesSpace "Adicionar um espa�o depois do n�mero do lance" 0 {Add spaces after move number}
menuText U OptionsMovesKey "Auto completar" 0 \
  {Liga/desliga auto completar a partir do que for digitado}
menuText U OptionsMovesShowVarArrows "Mostrar setas para variantes" 0 {Liga/Desliga as setas que mostram movimentos em variantes}
menuText U OptionsNumbers "Formato de N�meros" 0 {Selecione o formato usado para n�meros}
menuText U OptionsStartup "Iniciar" 1 \
  {Seleciona janelas que serao abertas ao iniciar o programa}
menuText U OptionsTheme "Tema" 0 {Muda a apar�ncia da interface}
menuText U OptionsWindows "Janelas" 0 {Op��es para Janelas}
menuText U OptionsWindowsIconify "Auto-iconizar" 5 \
  {Iconizar todas as janelas quando a janela principal eh iconizada}
menuText U OptionsWindowsRaise "Manter no topo" 0 \
  {Mantem no topo certas janelas (ex. barras de progresso) sempre que sao obscurecidas por outras}
menuText U OptionsSounds "Sons..." 2 {Configure move announcement sounds} ;# ***
menuText U OptionsWindowsDock "Acoplar janelas" 0 {Estaciona as janelas}
menuText U OptionsWindowsSaveLayout "Guardar Op��es" 0 {Salva o layout das janelas}
menuText U OptionsWindowsRestoreLayout "Restaurar" 0 {Restaura layout}
menuText U OptionsWindowsShowGameInfo "Mostrar Informa��es do Jogo" 0 {Mostra informa��es do jogo}
menuText U OptionsWindowsAutoLoadLayout "Carregar primeira configura��o na entrada" 0 {Carrega automaticamente o primeiro layout ao entrar na aplica��o}
menuText U OptionsWindowsAutoResize "Auto dimensionar o tabuleiro" 0 {}
menuText U OptionsWindowsFullScreen "�cran cheio" 0 {Toggle fullscreen mode}
menuText U OptionsToolbar "Barra de Ferramentas da Janela Principal" 12 \
  {Exibe/Oculta a barra de ferramentas da janela principal}
menuText U OptionsECO "Abrir ficheiro ECO..." 7 {Carrega o arquivo com a classificacao ECO}
menuText U OptionsSpell "Abrir ficheiro de verifica��o ortogr�fica..." 6 \
  {Carrega o arquivo de verifica��o ortografica do Scid}
menuText U OptionsTable "Pasta das Tabelas de Finais..." 0 \
  {Selecione um arquivo de tabela de base; todas as tabelas nesse diretorio serao usadas}
menuText U OptionsRecent "Arquivos recentes..." 0 \
  {Change the number of recent files displayed in the File menu} ;# ***
menuText U OptionsBooksDir "Pasta dos Livros..." 0 {Sets the opening books directory}
menuText U OptionsTacticsBasesDir "Pasta dos Arquivos..." 0 {Sets the tactics (training) bases directory}
menuText U OptionsInformant "Configurar valores de Avalia��o" 0
menuText U OptionsSave "Guardar Configura��o" 0 \
  "Guarda a configura��o no arquivo $::optionsFile"
menuText U OptionsSaveBases "Guardar Bases por defeito" 0
menuText U OptionsAutoSave "Guardar Op��es ao sair" 0 \
  {Salva automaticamente todas as Op��es quando sair do Scid}

# Help menu:
menuText U Help "Ajuda" 0
menuText U HelpContents "Conte�dos" 0 {Mostra a p�gina de conte�dos de Ajuda} ;# ***
menuText U HelpIndex "�ndice" 0 {Indice da Ajuda}
menuText U HelpGuide "Consulta R�pida" 0 {Mostra a pagina de consulta rapida}
menuText U HelpHints "Dicas" 0 {Mostra a pagina de dicas}
menuText U HelpContact "Informa��es para contacto" 0 {Mostra a pagina com informacoes para contato}
menuText U HelpTip "Dica do dia" 0 {Mostra uma dica util do Scid}
menuText U HelpStartup "Janela de Inicializa��o" 0 {Mostra a janela de inicializacao}
menuText U HelpAbout "Sobre o Scid" 0 {Informacoes sobre o Scid}

# Game info box popup menu:
menuText U GInfoHideNext "Ocultar pr�ximo movimento" 0
menuText U GInfoShow "Lado a Mover" 0
menuText U GInfoCoords "Mostrar/Ocultar Coords" 0
menuText U GInfoMaterial "Mostra valor de material" 0
menuText U GInfoFEN "Mostra Diagrama FEN" 16
menuText U GInfoMarks "Mostra setas e casas coloridas" 7
menuText U GInfoWrap "Quebra de linhas longas" 0
menuText U GInfoFullComment "Mostrar coment�rio completo" 8
menuText U GInfoPhotos "Mostrar Fotos" 5 ;# ***
menuText U GInfoTBNothing "Tabelas de Finais: nada" 12
menuText U GInfoTBResult "Tabelas de Base: apenas resultado" 12
menuText U GInfoTBAll "Tabelas de Finais: resultado e melhores movimentos" 19
menuText U GInfoDelete "Recuperar este jogo" 0
menuText U GInfoMark "Desmarcar este jogo" 0
menuText U GInfoMenuBar "Barra do Men�"  0
menuText U GInfoToolBar "Barra de Fun��es"  0
menuText U GInfoButtonBar "Barra Inferior"  0
menuText U GInfoStatusBar "Barra de Estado"  0
translate U FlipBoard {Rodar Tabuleiro}
translate U RaiseWindows {Ativar janelas}
translate U AutoPlay {Jogo autom�tico}
translate U TrialMode {Modo de Teste}
translate U KeepOpen {Manter aberto depois do in�cio}

# General buttons:
translate U Apply {Aplicar}
translate U Back {Voltar}
translate U Browse {Conectar} ;# ***
translate U Cancel {Cancelar}
translate U Continue {Continuar}
translate U Clear {Limpar}
translate U Close {Fechar}
translate U Contents {Conte�dos} ;# ***
translate U Defaults {Valores padr�o}
translate U Delete {Apagar}
translate U Graph {Gr�fico}
translate U Help {Ajuda}
translate U Import {Importar}
translate U Index {�ndice}
translate U LoadGame {Carrega jogo}
translate U BrowseGame {Listar jogo}
translate U MergeGame {Juntar jogo}
translate U MergeGames {Juntar jogos}
translate U Preview {Visualiza��o}
translate U Revert {Reverter}
translate U Save {Guardar}
translate U DontSave {N�o Gravar}
translate U Search {Pesquisar}
translate U Stop {Parar}
translate U Store {Guardar}
translate U Update {Atualizar}
translate U ChangeOrient {Muda orienta��o da janela}
translate U ShowIcons {Mostrar �cons} ;# ***
translate U ConfirmCopy {Confirma copiar}
translate U None {Nenhum}
translate U First {Primeiro}
translate U Current {Atual}
translate U Last {�ltimo}
translate U Font {Fonte}
translate U Change {Mudar}
translate U Random {Sortear}

# General messages:
translate U game {jogo}
translate U games {jogos}
translate U move {movimento}
translate U moves {movimentos}
translate U all {tudo}
translate U Yes {Sim}
translate U No {N�o}
translate U Both {Ambos}
translate U King {Rei}
translate U Queen {Dama}
translate U Rook {Torre}
translate U Bishop {Bispo}
translate U Knight {Cavalo}
translate U Pawn {Pe�o}
translate U White {Brancas}
translate U Black {Pretas}
translate U Player {Jogador}
translate U Rating {Pontua��o}
translate U RatingDiff {Diferen�a de Pontua��o (Brancas - Pretas)}
translate U AverageRating {Pontua��o m�dia} ;# ***
translate U Event {Evento}
translate U Site {Lugar}
translate U Country {Pa�s}
translate U IgnoreColors {Ignorar cores}
translate U MatchEnd {S� posi��o final}
translate U Date {Data}
translate U EventDate {Evento data}
translate U Decade {D�cada} ;# ***
translate U Year {Ano}
translate U Month {M�s}
translate U Months {Janeiro Fevereiro Mar�o Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro}
translate U Days {Dom Seg Ter Qua Qui Sex Sab}
translate U YearToToday {Anos at� hoje}
translate U Result {Resultado}
translate U Round {Rodada}
translate U Length {Tamanho}
translate U ECOCode {ECO}
translate U ECO {ECO}
translate U Deleted {Apagado}
translate U SearchResults {Resultados da Pesquisa}
translate U OpeningTheDatabase {Abrindo a Base de Dados}
translate U Database {Base de dados}
translate U Filter {Filtro}
translate U Reset {Repor}
translate U IgnoreCase {Ignorar Mai�scula/min�scula}
translate U noGames {nenhum jogo}
translate U allGames {todos os jogos}
translate U empty {vazio}
translate U clipbase {base de trabalho}
translate U score {Pontua��o}
translate U Start {Ativar}
translate U StartPos {Posi��o Inicial}
translate U Total {Total}
translate U readonly {apenas leitura}
translate U altered {alterado}
translate U tagsDescript {Etiqueta Extra (eg: Anotador "Anand")}
translate U prevTags {Usar o anterior}
# ====== TODO To be translated ======
translate U value {Value}

# Standard error messages:
translate U ErrNotOpen {Esta base n�o est� aberta.} ;# ***
translate U ErrReadOnly {Esta base � apenas de leitura; n�o pode ser alterada.} ;# ***
translate U ErrSearchInterrupted {A pesquisa foi interrompida; os resultados est�o incompletos.} ;# ***

# Game information:
translate U twin {duplicada}
translate U deleted {apagado}
translate U comment {coment�rio}
translate U hidden {oculto}
translate U LastMove {�ltimo movimento}
translate U NextMove {Pr�ximo}
translate U GameStart {�nicio do jogo}
translate U LineStart {�nicio da linha}
translate U GameEnd {Fim do jogo}
translate U LineEnd {Fim da linha}

# Player information:
translate U PInfoAll {todos os jogos}
translate U PInfoFilter {os jogos filtrados}
translate U PInfoAgainst {Resultados contra}
translate U PInfoMostWhite {Aberturas mais comuns com as Brancas}
translate U PInfoMostBlack {Aberturas mais comuns com as Pretas}
translate U PInfoRating {Hist�rico da Pontua��o}
translate U PInfoBio {Biografia}
translate U PInfoEditRatings {Editar Pontua��o} ;# ***
translate U PinfoEditName {Editar Nome}
translate U PinfoLookupName {Ver Nome}

# Tablebase information:
translate U Draw {Empate}
translate U stalemate {rei afogado}
translate U checkmate {xequemate}
translate U withAllMoves {com todos os movimentos}
translate U withAllButOneMove {exceto com um movimento}
translate U with {com}
translate U only {apenas}
translate U lose {derrota}
translate U loses {perde}
translate U allOthersLose {qualquer outro perde}
translate U matesIn {mate em}
translate U longest {mais longo}
translate U WinningMoves {Movimentos que ganham} ;# ***
translate U DrawingMoves {Movimentos que empatam} ;# ***
translate U LosingMoves {Movimentos que perdem} ;# ***
translate U UnknownMoves {Unknown-result moves} ;# ***

# Tip of the day:
translate U Tip {Dica}
translate U TipAtStartup {Dica ao iniciar}

# Tree window menus: ***
menuText U TreeFile "Arquivo" 0
menuText U TreeFileFillWithBase "Carregar Cache com base" 0 {Carrega todos os jogos da base corrente no Cache}
menuText U TreeFileFillWithGame "Carregar Cache com jogo" 0 {Carrega o jogo corrente da base corrente no Cache}
menuText U TreeFileCacheInfo "Informa��o da Cache" 0 {Informa��es sobre a utiliza��o do cache}
menuText U TreeFileSave "Salvar arquivo de cache" 0 \
  {Salvar o arquivo de cache da arvore (.stc)}
menuText U TreeFileFill "Criar arquivo de cache" 0 \
  {Enche o arquivo de cache com as posicoes comuns na abertura}
menuText U TreeFileBest "Lista dos melhores jogos" 0 \
  {Mostra a lista dos melhores jogos da arvore}
menuText U TreeFileGraph "Janela de Gr�fico" 0 \
  {Mostra o gr�fico para este galho da arvore}
menuText U TreeFileCopy "Copiar texto da �rvore para a �rea de transfer�ncia" \
  1 {Copiar texto da arvore para a area de transferencia}
menuText U TreeFileClose "Fechar janela da �rvore" 0 {Fechar janela de arvore}
menuText U TreeMask "M�scara" 0
menuText U TreeMaskNew "Nova" 0 {Nova m�scara}
menuText U TreeMaskOpen "Abrir" 0 {Abrir m�scara}
menuText U TreeMaskOpenRecent "Abrir recente" 0 {Abre m�scara recente}
menuText U TreeMaskSave "Guardar" 0 {Grava m�scara}
menuText U TreeMaskClose "Fechar" 0 {Fecha m�scara}
menuText U TreeMaskFillWithLine "Preencher com variante" 0 {Fill mask with all previous moves}
menuText U TreeMaskFillWithGame "Preencher com jogo" 0 {Preenche m�scara com jogo}
menuText U TreeMaskFillWithBase "Preencher com base" 0 {Preenche a m�scara com todos os jogos da base}
menuText U TreeMaskInfo "Informa��o da m�scara" 0 {Mostrar estatisticas para a m�scara corrente}
menuText U TreeMaskDisplay "Mostrar mapa da m�scara" 0 {Mostra os dados da m�scara em forma de �rvore}
menuText U TreeMaskSearch "Pesquisar" 0 {Pesquisa na m�scara corrente}
menuText U TreeSort "Ordenar" 0
menuText U TreeSortAlpha "Alfab�tica" 0
menuText U TreeSortECO "ECO" 0
menuText U TreeSortFreq "Frequ�ncia" 0
menuText U TreeSortScore "Pontua��o" 0
menuText U TreeOpt "Op��es" 0
menuText U TreeOptSlowmode "Modo Lento" 0 {Modo lento para atualiza��es (mais acurado)}
menuText U TreeOptFastmode "Modo R�pido" 0 {Modo r�pido para atualiza��es (sem transsposi��es de movimentos)}
menuText U TreeOptFastAndSlowmode "Modo r�pido e lento" 0 {Modo r�pido e lento para atualiza��es}
menuText U TreeOptStartStop "Atualiza��o autom�tica" 0 {Liga/Desliga a atualiza��o autom�tica da janela de �rvore}
menuText U TreeOptLock "Lock" 0 {Trava/Destrava a arvore para o banco corrente}
menuText U TreeOptTraining "Treinamento" 0 \
  {Liga/Desliga o modo treinamento na arvore}
menuText U TreeOptShort "Visualisa��o sum�ria" 0 {N�o mostra Elo}
menuText U TreeOptAutosave "Guardar automaticamente arquivo de cache" 0 \
  {Salvar automaticamente o arquivo de cache quando fechar a janela de arvore}
menuText U TreeOptAutomask "Abrir m�scara automaticamente" 0 "Auto-Load most recent mask with a tree open."
menuText U TreeOptCacheSize "Tamanho da Cache" 0 {Define o tamanho do cache}
menuText U TreeOptShowBar "Mostrar Barra de Progresso" 0 "Mostrar barra de progresso da �rvore."
menuText U TreeOptShowFrame "Mostrar Menu Inferior" 0 "Mostra a barra de menu inferior."
menuText U TreeOptSortBest "Ordenar melhores jogos" 0 "Ordena melhores jogos por ELO."
menuText U TreeHelp "Ajuda" 0
menuText U TreeHelpTree "Ajuda para �rvore" 0
menuText U TreeHelpIndex "�ndice da Ajuda" 0
translate U SaveCache {Salvar Cache}
translate U Training {Treinamento}
translate U LockTree {Travamento}
translate U TreeLocked {Travada} ;# ***
translate U TreeBest {Melhor}
translate U TreeBestGames {Melhores jogos da �rvore}
translate U TreeAdjust {Ajustar Filtro}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate U TreeTitleRow      {    Lance      Frequ�ncia    Pontos  Empate M�diaElo Perf M�diaAno ECO}
translate U TreeTitleRowShort {    Lance      Frequ�ncia    Pontos  Empate}
translate U TreeTotal: {TOTAL:}
translate U DoYouWantToSaveFirst {Quer guardar primeiro?}
translate U AddToMask {Adicionar � m�scara}
translate U RemoveFromMask {Remover da m�scara}
translate U AddThisMoveToMask {Adicionar este movimento � m�scara}
translate U SearchMask {Pesquisar na m�scara}
translate U DisplayMask {Mostrar m�scara}
translate U Nag {C�digo Nag}
translate U Marker {Marcador}
translate U Include {Incluir}
translate U Exclude {Excluir}
translate U MainLine {Linha Principal}
translate U Bookmark {Marcador}
translate U NewLine {Nova Linha}
translate U ToBeVerified {Verificar}
translate U ToTrain {Para treinar}
translate U Dubious {Duvidoso}
translate U ToRemove {Para remover}
translate U NoMarker {Sem marcador}
translate U ColorMarker {Cor}
translate U WhiteMark {Branca}
translate U GreenMark {Verde}
translate U YellowMark {Amarela}
translate U BlueMark {Azul}
translate U RedMark {Vermelha}
translate U CommentMove {Comentar movimento}
translate U CommentPosition {Comentar posi��o}
translate U AddMoveToMaskFirst {Adicionar movimento � m�scara primeiro}
translate U OpenAMaskFileFirst {Abrir uma m�scara primeiro}
translate U positions {Posi��es}
translate U Moves {Movimentos}

# Finder window:
menuText U FinderFile "Arquivo" 0
menuText U FinderFileSubdirs "Buscar nos subdiret�rios" 0
menuText U FinderFileClose "Fecha buscador de arquivos" 0
menuText U FinderSort "Ordenar" 0
menuText U FinderSortType "Tipo" 0
menuText U FinderSortSize "Tamanho" 0
menuText U FinderSortMod "Modificado" 0
menuText U FinderSortName "Nome" 0
menuText U FinderSortPath "Caminho" 0
menuText U FinderTypes "Tipos" 0
menuText U FinderTypesScid "Bases Scid" 0
menuText U FinderTypesOld "Bases Scid antigas" 0
menuText U FinderTypesPGN "Arquivos PGN" 0
menuText U FinderTypesEPD "Arquivos EPD (book)" 0
menuText U FinderHelp "Ajuda" 0
menuText U FinderHelpFinder "Ajuda do Buscador" 0
menuText U FinderHelpIndex "�ndice da Ajuda" 0
translate U FileFinder {Buscador de Arquivos}
translate U FinderDir {Diret�rio}
translate U FinderDirs {Diret�rios}
translate U FinderFiles {Arquivos}
translate U FinderUpDir {Acima}
translate U FinderCtxOpen {Abrir}
translate U FinderCtxBackup {Guardar}
translate U FinderCtxCopy {Copiar}
translate U FinderCtxMove {Mover}
translate U FinderCtxDelete {Apagar}
translate U FinderDirOpen {Abrir Pasta}

# Player finder:
menuText U PListFile "Arquivo" 0
menuText U PListFileUpdate "Atualizar" 0
menuText U PListFileClose "Fechar" 0 ;# ***
menuText U PListSort "Ordenar" 0
menuText U PListSortName "Nome" 0 ;# ***
menuText U PListSortElo "Elo" 0
menuText U PListSortGames "Jogos" 0
menuText U PListSortOldest "Antigo" 0 ;# ***
menuText U PListSortNewest "Recente" 0 ;# ***

# Tournament finder:
menuText U TmtFile "Arquivo" 0
menuText U TmtFileUpdate "Atualizar" 0
menuText U TmtFileClose "Fecha Buscador de Torneios" 0
menuText U TmtSort "Ordenar" 0
menuText U TmtSortDate "Data" 0
menuText U TmtSortPlayers "Jogadores" 0
menuText U TmtSortGames "Jogos" 0
menuText U TmtSortElo "Elo" 0
menuText U TmtSortSite "Lugar" 0
menuText U TmtSortEvent "Evento" 1
menuText U TmtSortWinner "Vencedor" 0
translate U TmtLimit "Limite de Lista"
translate U TmtMeanElo "Menor Elo"
translate U TmtNone "Nenhum torneio encontrado."

# Graph windows:
menuText U GraphFile "Arquivo" 0
menuText U GraphFileColor "Guardar como Postscript Colorido..." 12
menuText U GraphFileGrey "Guardar como Postscript Cinza..." 23
menuText U GraphFileClose "Fecha janela" 6
menuText U GraphOptions "Op��es" 0
menuText U GraphOptionsWhite "Branco" 0
menuText U GraphOptionsBlack "Preto" 0
menuText U GraphOptionsDots "Mostrar Pontos" 0
menuText U GraphOptionsBar "Destacar Lance atual" 0
menuText U GraphOptionsBoth "Ambos" 0
menuText U GraphOptionsPInfo "Informa��o do Jogador" 0
translate U GraphFilterTitle "Filtrar gr�fico: frequ�ncia por 1000 jogos" ;# ***
translate U GraphAbsFilterTitle "Filtrar gr�fico: frequ�ncia dos jogos"
translate U ConfigureFilter {Configurar Eixo de X}
translate U FilterEstimate "Estimativa"
translate U TitleFilterGraph "Scid: Filtrar Gr�fico"

# Analysis window:
translate U AddVariation {Adicionar variante}
translate U AddAllVariations {Adicionar todas as variantes}
translate U AddMove {Adicionar movimento}
translate U Annotate {Anotar}
translate U ShowAnalysisBoard {Mostrar tabuleiro de an�lises}
translate U ShowInfo {Mostrar informa��o do programa}
translate U FinishGame {Terminar o jogo}
translate U StopEngine {Parar o programa}
translate U StartEngine {Iniciar o programa}
translate U ExcludeMove {Excluir o Movimento}
translate U LockEngine {Fixar o programa na posi��o atual}
translate U AnalysisCommand {Comando de An�lise}
translate U PreviousChoices {Escolhas Anteriores}
translate U AnnotateTime {Define o tempo entre movimentos em segundos}
translate U AnnotateWhich {Adiciona variante}
translate U AnnotateAll {Para movimentos de ambos os lados}
translate U AnnotateAllMoves {Anotar todos os movimentos}
translate U AnnotateWhite {Apenas para movimentos das Brancas}
translate U AnnotateBlack {Apenas para movimentos das Pretas}
translate U AnnotateNotBest {Quando o movimento jogado n�o for o melhor}
translate U AnnotateBlundersOnly {Quando a jogada � um grande erro}
translate U BlundersNotBest {Apenas grandes erros}
translate U AnnotateTitle {Configurar Anota��o}
translate U AnnotateMissedMates {Quando h� xequemate mais r�pido}
# ====== TODO To be translated ======
translate U AnnotateEnd {At end of game}
translate U BlundersThreshold {Limiar}
translate U ScoreFormat {Formato da avalia��o}
translate U CutOff {N�o anotar:}
translate U LowPriority {Baixa prioridade no CPU} ;# ***
translate U LogEngines {Tamanho do Registo}
translate U LogName {Adicionar Nome}
translate U MaxPly {M�ximo de lances}
translate U ClickHereToSeeMoves {Clicar aqui para ver os lances}
translate U ConfigureInformant {Configurar Informant}
translate U Informant!? {Movimento Interessante}
translate U Informant? {Movimento D�bil}
translate U Informant?? {Erro}
translate U Informant?! {Movimento Duvidoso}
translate U Informant+= {Ligeira vantagem das brancas}
translate U Informant+/- {Vantagem das brancas}
translate U Informant+- {Vantagem decisiva das brancas}
translate U Informant++- {O jogo considera-se ganho}
translate U Book {Livro}
translate U OtherBook {Outros Movimentos}
translate U Alphabetical {Alfab�tico}
translate U TwoBooks {Dois Livros}

# Analysis Engine open dialog:
translate U EngineList {Lista de Programas de An�lise}
translate U EngineKey {Chave}
translate U EngineType {Tipo}
translate U EngineName {Nome}
translate U EngineCmd {Comando}
translate U EngineArgs {Parametros}
translate U EngineDir {Diret�rio}
translate U EngineElo {Elo}
translate U EngineTime {Data}
translate U EngineNew {Novo}
translate U EngineEdit {Editar}
translate U EngineRequired {Campos a negrito s�o obrigat�rios; os outros s�o opcionais}

# Stats window menus:
menuText U StatsFile "Arquivo" 0
menuText U StatsFilePrint "Imprimir para arquivo..." 0
menuText U StatsFileClose "Fecha janela" 0
menuText U StatsOpt "Op��es" 0

# PGN window menus:
menuText U PgnFile "Arquivo" 0
menuText U PgnFileCopy "Copiar jogo para o Clipboard" 0 ;# ***
menuText U PgnFilePrint "Imprimir para arquivo..." 0
menuText U PgnFileClose "Fechar janela PGN" 0
menuText U PgnOpt "Monitor" 0
menuText U PgnOptColor "Monitor Colorido" 0
menuText U PgnOptShort "Cabe�alho curto (3 linhas)" 0
menuText U PgnOptSymbols "Anota��es simb�licas" 0
menuText U PgnOptIndentC "Alinhar coment�rios" 0
menuText U PgnOptIndentV "Alinhar variantes" 7
menuText U PgnOptColumn "Estilo Coluna (um movimento por linha)" 0
menuText U PgnOptSpace "Espa�o ap�s o n�mero do movimento" 0
menuText U PgnOptStripMarks "Apagar casas coloridas/setas de movimento" 1 ;# ***
menuText U PgnOptChess "Xadrez pe�as" 0
menuText U PgnOptScrollbar "Barra de deslizamento" 0
menuText U PgnOptBoldMainLine "Usar texto a cheio para a linha principal de jogo" 4 ;# ***
menuText U PgnColor "Cores" 0
menuText U PgnColorHeader "Cabe�alho..." 0
menuText U PgnColorAnno "Anota��es..." 0
menuText U PgnColorComments "Coment�rios..." 0
menuText U PgnColorVars "Variantes..." 0
menuText U PgnColorBackground "Cor de fundo..." 0
menuText U PgnColorMain "Linha principal..." 0
menuText U PgnColorCurrent "Cor do movimento atual..." 1
menuText U PgnColorNextMove "Cor do pr�ximo movimento..." 0
menuText U PgnHelp "Ajuda" 0
menuText U PgnHelpPgn "Ajuda PGN" 0
menuText U PgnHelpIndex "�ndice" 0
translate U PgnWindowTitle {Registo da Partida - jogo %u} ;# ***

# Crosstable window menus:
menuText U CrosstabFile "Arquivo" 0
menuText U CrosstabFileText "Imprime para arquivo texto..." 9
menuText U CrosstabFileHtml "Imprime para arquivo HTML..." 9
menuText U CrosstabFileLaTeX "Imprime para arquivo LaTex..." 9
menuText U CrosstabFileClose "Fechar tabela cruzada" 0
menuText U CrosstabEdit "Editar" 0
menuText U CrosstabEditEvent "Evento" 0
menuText U CrosstabEditSite "Lugar" 0
menuText U CrosstabEditDate "Data" 0
menuText U CrosstabOpt "Monitor" 0
menuText U CrosstabOptColorPlain "Texto puro" 0
menuText U CrosstabOptColorHyper "Hipertexto" 0
menuText U CrosstabOptTieWin "Tie-Break by wins" 1
menuText U CrosstabOptTieHead "Tie-Break by head-head" 1
menuText U CrosstabOptThreeWin "3 Pontos pela vit�ria" 1
menuText U CrosstabOptAges "Idade em anos" 0
menuText U CrosstabOptNats "Nacionalidades" 0
menuText U CrosstabOptTallies "Vit�ria/Derrota/Empate" 0
menuText U CrosstabOptRatings "Ratings" 0
menuText U CrosstabOptTitles "T�tulos" 0
menuText U CrosstabOptBreaks "Scores de desempate" 0
menuText U CrosstabOptDeleted "Incluir jogos apagados" 8 ;# ***
menuText U CrosstabOptColors "Cores (apenas para tabela Swiss)" 0
menuText U CrosstabOptColorRows "Colorir Linhas" 0
menuText U CrosstabOptRowsColor "Linhas da tabela cruzada" 0 {Default crosstable row color}
menuText U CrosstabOptColumnNumbers "Colunas numeradas (All-play-all table only)" 2 ;# ***
menuText U CrosstabOptGroup "Pontua��o do Grupo" 0
menuText U CrosstabSort "Ordenar" 0
menuText U CrosstabSortName "Nome" 0
menuText U CrosstabSortRating "Rating" 0
menuText U CrosstabSortScore "Pontua��o" 0
menuText U CrosstabSortCountry "Pa�s" 0
menuText U CrosstabType "Formato" 0
menuText U CrosstabTypeAll "Todos contra todos" 0
menuText U CrosstabTypeSwiss "Sui�o" 0
menuText U CrosstabTypeKnockout "Knockout" 0
menuText U CrosstabTypeAuto "Autom�tico" 0
menuText U CrosstabHelp "Ajuda" 0
menuText U CrosstabHelpCross "Ajuda para tabela cruzada" 0
menuText U CrosstabHelpIndex "�ndice da Ajuda" 0
translate U SetFilter {Colocar no filtro}
translate U AddToFilter {Adicionar ao filtro}
translate U Swiss {Sui�o}
translate U Category {Category} ;# ***

# Opening report window menus:
menuText U OprepFile "Arquivo" 0
menuText U OprepFileText "Imprimir para arquivo texto..." 9
menuText U OprepFileHtml "Imprimir para arquivo HTML..." 9
menuText U OprepFileLaTeX "Imprimir para arquivo LaTex..." 9
menuText U OprepFileOptions "Op��es..." 0
menuText U OprepFileClose "Fechar janela de relat�rio" 0
menuText U OprepFavorites "Favoritos" 1 ;# ***
menuText U OprepFavoritesAdd "Add Report..." 0 ;# ***
menuText U OprepFavoritesEdit "Editar op��es do relat�rio..." 0 ;# ***
menuText U OprepFavoritesGenerate "Gerar Relat�rios..." 0 ;# ***
menuText U OprepHelp "Ajuda" 0
menuText U OprepHelpReport "Ajuda para Relat�rio de abertura" 0
menuText U OprepHelpIndex "�ndice da Ajuda" 0

# Header search:
translate U HeaderSearch {Busca por cabe�alho}
translate U EndSideToMove {Quem move na posi��o final} ;# ***
translate U GamesWithNoECO {Jogos sem ECO?}
translate U GameLength {Tamanho do jogo}
translate U FindGamesWith {Encontrar jogos com}
translate U StdStart {In�cio padr�o}
translate U Promotions {Promo��es}
translate U UnderPromo {Subpromo��o}
translate U Comments {Coment�rios}
translate U Variations {Variantes}
translate U Annotations {Anota��es}
translate U DeleteFlag {Apagar/Recuperar Jogos}
translate U WhiteOpFlag {Abertura Brancas}
translate U BlackOpFlag {Abertura Pretas}
translate U MiddlegameFlag {Meio-jogo}
translate U EndgameFlag {Final}
translate U NoveltyFlag {Novidade}
translate U PawnFlag {Estrutura de Pe�es}
translate U TacticsFlag {T�tica}
translate U QsideFlag {Jogo na ala da Dama}
translate U KsideFlag {Jogo na ala do Rei}
translate U BrilliancyFlag {Brilhantismo}
translate U BlunderFlag {Erro!!!}
translate U UserFlag {Usuario}
translate U PgnContains {PGN contem texto}
translate U PreComment {Coment�rio Inicial}
translate U PostComment {Coment�rio Final}

# Game list window:
translate U GlistNumber {N.�}
translate U GlistWhite {Brancas}
translate U GlistBlack {Pretas}
translate U GlistWElo {B-Elo}
translate U GlistBElo {P-Elo}
translate U GlistEvent {Evento}
translate U GlistSite {Lugar}
translate U GlistRound {Rodada}
translate U GlistDate {Data}
translate U GlistYear {Ano}
translate U GlistEventDate {Evento-Data}
translate U GlistResult {Resultado}
translate U GlistLength {Tamanho}
translate U GlistCountry {Pa�s}
translate U GlistECO {ECO}
translate U GlistOpening {Moves}
translate U GlistEndMaterial {Final-Material}
translate U GlistDeleted {Apagado}
translate U GlistFlags {Marcas}
translate U GlistVariations {Variantes}
translate U GlistComments {Coment�rios}
translate U GlistAnnos {Anota��es}
translate U GlistStart {Iniciar}
translate U GlistGameNumber {N�mero do Jogo}
translate U GlistFindText {Encontrar texto}
translate U GlistMoveField {Mover}
translate U GlistEditField {Configurar}
translate U GlistAddField {Adicionar}
translate U GlistDeleteField {Apagar}
translate U GlistColor {Cor}
translate U GlistSort {Ordenar base}
translate U GlistRemoveThisGameFromFilter  {Remover}
translate U GlistRemoveGameAndAboveFromFilter  {Remover jogo (e todos acima da lista)}
translate U GlistRemoveGameAndBelowFromFilter  {Remover jogo (e todos abaixo da lista)}
translate U GlistDeleteGame {Apagar/Recuperar este jogo}
translate U GlistDeleteAllGames {Apagar todos os jogos no filtro}
translate U GlistUndeleteAllGames {Recuperar todos os jogos no filtro}
translate U GlistAlignL {Alinhar � esquerda}
translate U GlistAlignR {Alinhar � direita}
translate U GlistAlignC {Alinhar ao centro}

# Maintenance window:
translate U DatabaseName {Nome da base de dados:}
translate U TypeIcon {Icone de Tipo:}
translate U NumOfGames {Jogos:}
translate U NumDeletedGames {Jogos apagados:}
translate U NumFilterGames {Jogos no filtro:}
translate U YearRange {Faixa de Anos:}
translate U RatingRange {Faixa de Rating:}
translate U Description {Descri��o} ;# ***
translate U Flag {Marca}
translate U CustomFlags {Marcas pessoais}
translate U DeleteCurrent {Apagar jogo corrente}
translate U DeleteFilter {Apagar jogos filtrados}
translate U DeleteAll {Apagar todos os jogos}
translate U UndeleteCurrent {Recuperar jogo corrente}
translate U UndeleteFilter {Recuperar jogos filtrados}
translate U UndeleteAll {Recuperar todos os jogos}
translate U DeleteTwins {Apagar duplicados}
translate U MarkCurrent {Marcar jogo corrente}
translate U MarkFilter {Marcar jogos filtrados}
translate U MarkAll {Marcar todos os jogos}
translate U UnmarkCurrent {Desmarcar jogo corrente}
translate U UnmarkFilter {Desmarcar jogos filtrados}
translate U UnmarkAll {Desmarcar todos os jogos}
translate U Spellchecking {Verifica��o Ortogr�fica}
translate U MakeCorrections {Corrigir}
translate U Ambiguous {Amb�guo}
translate U Surnames {Apelidos}
translate U Players {Jogadores}
translate U Events {Eventos}
translate U Sites {Lugares}
translate U Rounds {Rodadas}
translate U DatabaseOps {Opera��es na Base de Dados}
translate U ReclassifyGames {Classificar jogos por ECO}
translate U CompactDatabase {Compactar Base}
translate U SortDatabase {Ordenar Base}
translate U AddEloRatings {Adicionar Elo}
translate U AutoloadGame {Carregar autom. o jogo n.�}
translate U StripTags {Apagar etiquetas PGN} ;# ***
translate U StripTag {Apagar etiqueta} ;# ***
translate U CheckGames {Verificar jogos}
translate U Cleaner {Limpador}
translate U CleanerHelp {
O Limpador do Scid executar� todas as a��es de manuten��o selecionadas da lista abaixo, no banco corrente.

As configura��es atuais na classifica��o por ECO e di�logos de exclusao de duplicadas ser�o aplicadas se voc� escolher estas fun��es.
}
translate U CleanerConfirm {
Uma vez iniciado, o Limpador n�o poder� ser interrompido!

Esta opera��o pode levar muito tempo para ser executada em uma grande base de dados, dependendo das fun��es selecionadas e das configura��es atuais.

Voc� est� certo de que quer iniciar as a��es de manuten��o selecionadas?
}
translate U TwinCheckUndelete {para trocar; "u" recupera os dois)}
translate U TwinCheckprevPair {Par anterior}
translate U TwinChecknextPair {Pr�ximo par}
translate U TwinChecker {Scid: Pesquisador de duplicados}
translate U TwinCheckTournament {Jogos no torneio:}
translate U TwinCheckNoTwin {Sem duplicados}
translate U TwinCheckNoTwinfound {N�o foi encontrado duplicado deste jogo. Para mostrar duplicados usando esta janela, deve primeiro usar a fun��o "Apagar jogos duplicados". }
translate U TwinCheckTag {Partilhar etiquetas...}
translate U TwinCheckFound1 {Scid encontrou $result jogos duplicados}
translate U TwinCheckFound2 {e marcar para apagar}
translate U TwinCheckNoDelete {Esta base n�o tem nenhum jogo para apagar.}
translate U TwinCriteria1 {As suas defini��es para encontrar jogos duplicados podem causar que jogos diferentes com lances semelhantes sejam definidos como duplicados.}
translate U TwinCriteria2 {Se selecionar "n�o" para "os mesmos lances", recomenda-se que selecione "sim" para cores, eventos, local, rodada, ano e m�s "Yes".\nQuer continuar e apagar os duplicados mesmo assim?}
translate U TwinCriteria3 {Recomenda-se que escolha "Sim" para pelos menos duas das seguintes op��es: "mesmo local", "mesma rodada" e "mesmo ano".\nQuer continuar e apagar os duplicados mesmo assim?}
translate U TwinCriteriaConfirm {Scid: Confirmar op��es de duplicados}
translate U TwinChangeTag "Mudar as seguintes etiquetas dos jogos:\n\n"
translate U AllocRatingDescription "Este comando usar� o ficheiro ativo de corre��o ortogr�fica para adicionar pontua��o Elo aos jogos desta base. Sempre que o jogador n�o tenha pontua��o atribu�da mas a sua pontua��o para a �poca do jogo esteja definida no ficheiro de corre��o ortogr�fica, essa pontua��o ser� adicionada."
translate U RatingOverride "Substituir todas as pontua��es diferentes de zero?"
translate U AddRatings "Adicionar pontua��o a:"
translate U AddedRatings {Scid adicionou $r Elo ratings in $g jogos.}
translate U NewSubmenu "Novo submenu"

# Comment editor:
translate U AnnotationSymbols  {S�mbolos de Anota��o:}
translate U Comment {Coment�rio:}
translate U InsertMark {Inserir marca} ;# ***
translate U InsertMarkHelp {
Insert/remove mark: Select color, type, square.
Insert/remove arrow: Right-click two squares.
} ;# ***

# Nag buttons in comment editor:
translate U GoodMove {Bom lance} ;# ***
translate U PoorMove {Mau lance} ;# ***
translate U ExcellentMove {Lance excelente} ;# ***
translate U Blunder {Grande erro:} ;# ***
translate U InterestingMove {Lance interessante} ;# ***
translate U DubiousMove {Lance duvidoso} ;# ***
translate U WhiteDecisiveAdvantage {Vantagem decisiva das brancas} ;# ***
translate U BlackDecisiveAdvantage {Vantagem decisiva das pretas} ;# ***
translate U WhiteClearAdvantage {Clara vantagem das brancas} ;# ***
translate U BlackClearAdvantage {Clara vantagem das pretas} ;# ***
translate U WhiteSlightAdvantage {Ligeira vantagem das brancas} ;# ***
translate U BlackSlightAdvantage {Clara vantagem das pretas} ;# ***
translate U Equality {Egualdade} ;# ***
translate U Unclear {Pouco claro} ;# ***
translate U Diagram {Diagrama} ;# ***

# Board search:
translate U BoardSearch {Pesquisa Tabuleiro}
translate U FilterOperation {Opera��o no filtro corrente:}
translate U FilterAnd {E (Filtro restrito)}
translate U FilterOr {OU (Adicionar ao filtro)}
translate U FilterIgnore {IGNORAR (Limpar filtro)}
translate U SearchType {Tipo de pesquisa:}
translate U SearchBoardExact {Posi��o exata (todas as pe�as nas mesmas casas)}
translate U SearchBoardPawns {Pe�es (mesmo material, todos os pe�es nas mesmas casas)}
translate U SearchBoardFiles {Colunas (mesmo material, todos os pe�es na mesma coluna)}
translate U SearchBoardAny {Qualquer (mesmo material, pe�es e pe�as em qualquer posi��o)}
translate U SearchInRefDatabase {Pesquisa na base}
translate U LookInVars {Olhar nas variantes}
translate U CQLLabel {C�digo CQL}
translate U CQLComments {Permitir Coment�rios}
translate U CQLStrip {Ocultar Coment�rios correspondentes}

# Material search:
translate U MaterialSearch {Pesquisa Material}
translate U Material {Material}
translate U Patterns {Padr�es}
translate U Zero {Zero}
translate U Any {Qualquer}
translate U CurrentBoard {Tabuleiro atual}
translate U CommonEndings {Finais comuns}
translate U CommonPatterns {Padr�es comuns}
translate U MaterialDiff {Diferen�a de Material}
translate U squares {casas}
translate U SameColor {Mesma cor}
translate U OppColor {Cor oposta}
translate U Either {Qualquer}
translate U MoveNumberRange {Faixa do n�mero de movimentos}
translate U MatchForAtLeast {Conferem em pelo menos}
translate U HalfMoves {meios movimentos}

# Common endings in material search:
translate U EndingPawns {Finais de Pe�es} ;# ***
translate U EndingRookVsPawns {Torre vs. Pe�o(s)} ;# ***
translate U EndingRookPawnVsRook {Torre e 1 Pe�o vs. Torre} ;# ***
translate U EndingRookPawnsVsRook {Torre e Pe�o(s) vs. Torre} ;# ***
translate U EndingRooks {Finais Torre vs. Torre} ;# ***
translate U EndingRooksPassedA {Finais Torre vs. Torre com pe�o passado na coluna a} ;# ***
translate U EndingRooksDouble {Finais de duas Torres} ;# ***
translate U EndingBishops {Finais Bispo vs. Bispo} ;# ***
translate U EndingBishopVsKnight {Finais Bispo vs. Cavalo} ;# ***
translate U EndingKnights {Finais Cavalo vs. Cavalo} ;# ***
translate U EndingQueens {Finais de Dama vs. Dama} ;# ***
translate U EndingQueenPawnVsQueen {Dama e 1 Pe�o vs. Dama} ;# ***
translate U BishopPairVsKnightPair {Meio-jogo de 2 Bispos vs. 2 Cavalos} ;# ***

# Common patterns in material search:
translate U PatternWhiteIQP {Brancas com Pe�o de Dama Isolado} ;# ***
translate U PatternWhiteIQPBreakE6 {Brancas com Pe�o de Dama Isolado: d4-d5 ataque vs. e6} ;# ***
translate U PatternWhiteIQPBreakC6 {Brancas com Pe�o de Dama Isolado: d4-d5 ataque vs. c6} ;# ***
translate U PatternBlackIQP {Pretas com Pe�o de Dama Isolado} ;# ***
translate U PatternWhiteBlackIQP {Brancas e Pretas com Pe�o de Dama Isolado} ;# ***
translate U PatternCoupleC3D4 {Brancas com pe�es pendentes c3+d4} ;# ***
translate U PatternHangingC5D5 {Pretas com pe�es pendentes c5+d5} ;# ***
translate U PatternMaroczy {Centro Maroczy (com pe�es em c4 e e4)} ;# ***
translate U PatternRookSacC3 {Sacrif�cio de Torre em c3} ;# ***
translate U PatternKc1Kg8 {O-O-O vs. O-O (Rc1 vs. Rg8)} ;# ***
translate U PatternKg1Kc8 {O-O vs. O-O-O (Rg1 vs. Rc8)} ;# ***
translate U PatternLightFian {Fianchetos das casas brancas (Bispo-g2 vs. Bispo-b7)} ;# ***
translate U PatternDarkFian {Fianchetos das casas pretas (Bispo-b2 vs. Bispo-g7)} ;# ***
translate U PatternFourFian {4 Fianchetos (Bispos em b2,g2,b7,g7)} ;# ***

# Game saving:
translate U Today {Hoje}
translate U ClassifyGame {Classificar Jogo}

# Setup position:
translate U EmptyBoard {Esvaziar}
translate U InitialBoard {Inicial}
translate U SideToMove {Lado que move}
translate U MoveNumber {N.� do Movimento}
translate U Castling {Roque}
translate U EnPassantFile {coluna En Passant}
translate U ClearFen {Limpar FEN}
translate U PasteFen {Colar FEN}
translate U SaveAndContinue {Gravar e continuar}
translate U DiscardChangesAndContinue {Anular Altera��es}
translate U GoBack {Repor}

# Replace move dialog:
translate U ReplaceMove {Substituir movimento}
translate U AddNewVar {Adicionar nova variante}
translate U NewMainLine {Nova Linha Principal}
translate U ReplaceMoveMessage {Um movimento j� existe nesta posi��o.

Voc� pode substitui-lo, descartar todos os movimentos que o seguem, ou adicionar seu movimento como uma nova variante.

(Voc� pode evitar que esta mensagem apareca no futuro desligando a opcao "Perguntar antes de substituir movimentos" no menu Op��es:Movimentos.)}

# Make database read-only dialog:
translate U ReadOnlyDialog {Se voc� definir esta base de dados apenas para leitura, nenhuma altera��o ser� permitida.
Nenhum jogo poder� ser salvo ou substituido, e nenhuma marca de exclus�o poder� ser alterada.
Qualquer ordena��o ou resultados de classifica��o por ECO ser�o tempor�rios.

Para poder tornar a base de dados noavmente atualiz�vel, feche-a e abra-a novamente.

Voc� realmente quer que esta base de dados seja apenas de leitura?}

# Exit dialog:
translate U ExitDialog {Voc� quer realmente sair do Scid?}
translate U ClearGameDialog {Este jogo foi alterado.  Voc� realmente quer continuar e descartar as mudan�as feitas?}
translate U ExitUnsaved {As seguintes bases t�m altera��es n�o gravadas. Se sair agora, essas altera��es ser�o perdidas.} ;# ***
translate U ChangeTextDialog {Configurar a cor geral do texto obriga a recome�ar o Scid.}
translate U ChangeDockDialog {Mudar liga��o a hardware obriga a recome�ar o Scid.}
# ====== TODO To be translated ======
translate U FontSelectDialog "This is some sample text\nDouble click above to change font, then select 'ok'\nAaBbCcDdEeFfGgHhIiJjKkLlMm 0123456789. +=-"
translate U ExitNow {Sair agora?}

# Import window:
translate U PasteCurrentGame {Colar jogo corrente}
translate U ImportHelp1 {Introduzir ou colar um jogo em formato PGN no quadro acima.}
translate U ImportHelp2 {Quaisquer erros ao importar o jogo ser�o mostrados aqui.}
translate U OverwriteExistingMoves {Substituir os movimentos existentes?}

# ECO Browser:
translate U ECOAllSections {todas as sec��es ECO}
translate U ECOSection {sec��o ECO}
translate U ECOSummary {Resumo para}
translate U ECOFrequency {Frequ�ncia de subcodigos para}

# Opening Report:
translate U OprepTitle {Relat�rio de Abertura}
translate U OprepReport {Relat�rio}
translate U OprepGenerated {Gerado por}
translate U OprepStatsHist {Estat�sticas e Hist�rico}
translate U OprepStats {Estat�sticas}
translate U OprepStatAll {Todas as partidas do relat�rio}
translate U OprepStatBoth {Ambos com rating}
translate U OprepStatSince {Desde}
translate U OprepOldest {Jogos mais antigos}
translate U OprepNewest {Jogos mais recentes}
translate U OprepPopular {Popularidade Atual}
translate U OprepFreqAll {Frequencia em todos os anos:   }
translate U OprepFreq1   {No �ltimo ano: }
translate U OprepFreq5   {Nos �ltimos 5 anos: }
translate U OprepFreq10  {Nos �ltimos 10 anos: }
translate U OprepEvery {uma vez em cada %u jogos}
translate U OprepUp {ate %u%s de todos os anos}
translate U OprepDown {menos que %u%s de todos os anos}
translate U OprepSame {nenhuma mudan�a em todos os anos}
translate U OprepMostFrequent {Jogadores mais frequentes}
translate U OprepMostFrequentOpponents {Advers�rios mais frequentes} ;# ***
translate U OprepRatingsPerf {Ratings e Desempenho}
translate U OprepAvgPerf {Ratings e desempenho m�dios}
translate U OprepWRating {Rating Brancas}
translate U OprepBRating {Rating Pretas}
translate U OprepWPerf {Desempenho Brancas}
translate U OprepBPerf {Desempenho Pretas}
translate U OprepHighRating {Jogos com o maior rating medio}
translate U OprepTrends {Tendencias de Resultados}
translate U OprepResults {Qtd. e frequ�ncia de resultados}
translate U OprepLength {Tamanho do jogo}
translate U OprepFrequency {Frequ�ncia}
translate U OprepWWins {Brancas vencem: }
translate U OprepBWins {Pretas vencem:  }
translate U OprepDraws {Empates:        }
translate U OprepWholeDB {toda a base de dados}
translate U OprepShortest {Vit�rias mais r�pidas}
translate U OprepMovesThemes {Movimentos e Temas}
translate U OprepMoveOrders {Ordem dos movimentos para atingir a posi��o do relatorio}
translate U OprepMoveOrdersOne \
  {Houve apenas uma ordem de movimentos que atinge esta posi��o: }
translate U OprepMoveOrdersAll \
  {Houve apenas %u ordens de movimentos que atingem esta posi��o:}
translate U OprepMoveOrdersMany \
  {Houve %u ordens de movimentos que atingem esta posi��o. As %u primeiras s�o:}
translate U OprepMovesFrom {Movimentos da posi��o do relat�rio}
translate U OprepMostFrequentEcoCodes {C�digos ECO mais frequentes} ;# ***
translate U OprepThemes {Temas Posicionais}
translate U OprepThemeDescription {Frequ�ncia de temas nos primeiros %u movimentos de cada jogo} ;# ***
translate U OprepThemeSameCastling {Roque do mesmo lado}
translate U OprepThemeOppCastling {Roques contr�rios}
translate U OprepThemeNoCastling {Ningu�m efetuou o roque}
translate U OprepThemeKPawnStorm {Ataque de Pe�es no lado do Rei}
translate U OprepThemeQueenswap {Damas j� trocadas}
translate U OprepThemeWIQP {Brancas com Pe�o de Dama Isolado} ;# ***
translate U OprepThemeBIQP {Pretas com Pe�o de Dama Isolado} ;# ***
translate U OprepThemeWP567 {Pe�o Branco na 5/6/7a fila}
translate U OprepThemeBP234 {Pe�o Preto na 2/3/4a fila}
translate U OprepThemeOpenCDE {Colunas c/d/e abertas}
translate U OprepTheme1BishopPair {Um lado tem o par de Bispos}
translate U OprepEndgames {Finais}
translate U OprepReportGames {Jogos no Relat�rio}
translate U OprepAllGames {Todos os jogos}
translate U OprepEndClass {Material ao fim de cada jogo}
translate U OprepTheoryTable {Tabela de Teoria}
translate U OprepTableComment {Gerada a partir dos %u jogos com rating mais alto.}
translate U OprepExtraMoves {Movimentos com nota extra na Tabela de Teoria}
translate U OprepMaxGames {Qtde. M�xima de jogos na tabela de teoria}
# ====== TODO To be translated ======
translate U OprepMaxLines {Maximum games for statistics}
translate U OprepViewHTML {Ver HTML} ;# ***
translate U OprepViewLaTeX {Ver LaTeX} ;# ***

# Player Report:
translate U PReportTitle {Relat�rio de Jogador} ;# ***
translate U PReportColorWhite {com as pe�as Brancas} ;# ***
translate U PReportColorBlack {com as pe�as Pretas} ;# ***
translate U PReportBeginning {Come�ando com}
translate U PReportMoves {ap�s %s} ;# ***
translate U PReportOpenings {Aberturas} ;# ***
translate U PReportClipbase {Limpar base de trabalho e preencher com c�pia do jogos filtrados} ;# ***

# Piece Tracker window:
translate U TrackerSelectSingle {Bot�o esquerdo do rato seleciona esta pe�a.} ;# ***
translate U TrackerSelectPair {Bot�o esquerdo do rato seleciona esta pe�a; bot�o direito seleciona a sua sim�trica.}
translate U TrackerSelectPawn {Bot�o esquerdo do rato seleciona este pe�o; bot�o direito seleciona todos os 8 pe�es.}
translate U TrackerStat {Estat�stica}
translate U TrackerGames {% games with move to square}
translate U TrackerTime {% time on each square}
translate U TrackerMoves {Moves}
translate U TrackerMovesStart {Indicar o n.� de movimento onde deve come�ar o rastreamento.}
translate U TrackerMovesStop {Indicar o n.� de movimento onde deve parar o rastreamento.}

# Game selection dialogs:
translate U SelectAllGames {Todos os jogos na base de dados}
translate U SelectFilterGames {Apenas jogos no filtro}
translate U SelectTournamentGames {Somente jogos no torneio atual}
translate U SelectOlderGames {Somente jogos antigos}

# Delete Twins window:
translate U TwinsNote {Para serem duplicados, dois jogos devem ter pelo menos os mesmos dois jogadores, al�m dos crit�rios que voc� pode definir abaixo. Quando um par de duplicados � encontrado, o jogo menor � apagado. Dica: � melhor fazer a verifica��o ortogr�fica da base de dados antes de remover duplicados, pois isso melhora o processo de dete��o de duplicados. }
translate U TwinsCriteria {Crit�rio: Duplicados devem ter...}
translate U TwinsWhich {Jogos a examinar}
translate U TwinsColors {Jogadores com a mesma cor?}
translate U TwinsEvent {Mesmo evento?}
translate U TwinsSite {Mesmo lugar?}
translate U TwinsRound {Mesma rodada?}
translate U TwinsYear {Mesmo ano?}
translate U TwinsMonth {Mesmo m�s?}
translate U TwinsDay {Mesmo dia?}
translate U TwinsResult {Mesmo resultado?}
translate U TwinsECO {Mesmo c�digo ECO?}
translate U TwinsMoves {Mesmos movimentos?}
translate U TwinsPlayers {Compara��o dos nomes dos jogadores:}
translate U TwinsPlayersExact {Compara��o exata}
translate U TwinsPlayersPrefix {Primeiras 4 letras apenas}
translate U TwinsWhen {Quando apagar duplicados}
translate U TwinsSkipShort {Ignorar todos os jogos com menos de 5 movimentos?}
translate U TwinsUndelete {Recuperar todos os jogos antes?}
translate U TwinsSetFilter {Definir filtro para todos os duplicados apagados?}
translate U TwinsComments {Manter sempre os jogos com coment�rios?}
translate U TwinsVars {Manter sempre os jogos com variantes?}
translate U TwinsDeleteWhich {Que jogo apagar:} ;# ***
translate U TwinsDeleteShorter {Jogo mais curto} ;# ***
translate U TwinsDeleteOlder {Jogo com o n.� mais baixo} ;# ***
translate U TwinsDeleteNewer {Jogo com o n.� mais alto} ;# ***
translate U TwinsDelete {Apagar jogos}

# Name editor window:
translate U NameEditType {Tipo de nome para editar}
translate U NameEditSelect {Jogos para editar}
translate U NameEditReplace {Substituir}
translate U NameEditWith {com}
translate U NameEditMatches {Confere: Pressione Ctrl+1 a Ctrl+9 para selecionar}

# Classify window:
translate U Classify {Classificar}
translate U ClassifyWhich {Que jogos devem ser classificados por ECO}
translate U ClassifyAll {Todos os Jogos (substituir c�digos ECO antigos)}
translate U ClassifyYear {Todos os jogos do �ltimo ano}
translate U ClassifyMonth {Todos os jogos do �ltimo m�s}
translate U ClassifyNew {Somente jogos ainda sem c�digo ECO}
translate U ClassifyCodes {C�digos ECO a serem usados}
translate U ClassifyBasic {C�digos Basicos apenas ("B12", ...)}
translate U ClassifyExtended {Extensoes Scid ("B12j", ...)}

# Compaction:
translate U NameFile {Arquivo de nomes}
translate U GameFile {Arquivo de jogos}
translate U Names {Nomes}
translate U Unused {N�o usado}
translate U SizeKb {Tamanho (kb)}
translate U CurrentState {Estado Atual}
translate U AfterCompaction {Ap�s compacta��o}
translate U CompactNames {Compactar arquivo de nomes}
translate U CompactGames {Compactar arquivo de jogos}
translate U NoUnusedNames "N�o h� nomes que n�o estejam a ser usados, o ficheiro de nomes j� est� totalmente compactado."
translate U NoUnusedGames "O ficheiro de jogos j� est� totalmente compactado."
translate U NameFileCompacted {O ficheiro de jogos "[file tail [sc_base filename]]" foi compactado.}
translate U GameFileCompacted {O ficheiro de jogos "[file tail [sc_base filename]]" foi compactado.}

# Sorting:
translate U SortCriteria {Crit�rio}
translate U AddCriteria {Adicionar crit�rio}
translate U CommonSorts {Ordena��es comuns}
translate U Sort {Ordenar}

# Exporting:
translate U AddToExistingFile {Adicionar jogos a um arquivo existente?}
translate U ExportComments {Exportar comentarios?}
translate U ExportVariations {Exportar variantes?}
translate U IndentComments {Alinhar Comentarios?}
translate U IndentVariations {Alinhar Variantes?}
# ====== TODO To be translated ======
translate U InsertNewlines {Insert newlines every 80 chars?}
translate U ExportColumnStyle {Estilo Coluna (um movimento por linha)?}
translate U ExportSymbolStyle {Estilo de anota��o simb�lica:}
translate U ExportStripMarks {Apagar dos coment�rios as marcas de casa/seta?} ;# ***
translate U ExportFlags {Exportar Marcas Scid}

# Goto game/move dialogs:
translate U LoadGameNumber {Entre o n.� do jogo a ser carregado:}
translate U GotoMoveNumber {Ir para o lance n.�:}

# Copy games dialog:
translate U CopyGames {Copiar jogos}
translate U CopyConfirm {
 Voce realmente quer copiar
 os [::utils::thousands $nGamesToCopy] jogos filtrados
 da base de dados "$fromName"
 para a base de dados "$targetName"?
}
translate U CopyErr {C�pia nao permitida}
translate U CopyErrSource {a base de dados origem}
translate U CopyErrTarget {a base de dados destino}
translate U CopyErrNoGames {n�o tem jogos que atendam o filtro}
translate U CopyErrReadOnly {� apenas de leitura}
translate U CopyErrNotOpen {n�o est� aberta}

# Colors:
translate U LightSquares {Casas Brancas}
translate U DarkSquares {Casas Pretas}
translate U SelectedSquares {Casas selecionadas}
translate U Grid {Grid}
translate U Previous {Escolhas}
translate U WhitePieces {Pe�as Brancas}
translate U BlackPieces {Pe�as Pretas}
translate U WhiteBorder {Borda Branca}
translate U BlackBorder {Borda Preta}
translate U ArrowMain   {Arrow}
translate U ArrowVar    {Var Arrows}
translate U ShowArrows  {Mostrar Setas}

# Novelty window:
translate U FindNovelty {Buscar Novidade}
translate U Novelty {Novidade}
translate U NoveltyInterrupt {Busca interrompida}
translate U NoveltyNone {Nenhuma novidade encontrada}
translate U NoveltyHelp {
Scid buscar� o primeiro movimento do jogo atual que alcan�a uma posi��o nao encontrada na base selecionada ou no arquivo ECO.
}

# Sounds configuration:
translate U SoundsFolder {Pasta de Ficheiros de Som} ;# ***
translate U SoundsFolderHelp {A pasta deve conter os ficheiros King.wav, a.wav, 1.wav, etc} ;# ***
translate U SoundsAnnounceOptions {Op��es para Anunciar Movimento} ;# ***
translate U SoundsAnnounceNew {Anunciar novos movimentos quando s�o feitos} ;# ***
translate U SoundsAnnounceForward {Anunciar movimentos quando avan�ar um movimento} ;# ***
translate U SoundsAnnounceBack {Anunciar quando recuar um movimento ou voltar atr�s} ;# ***

# Upgrading databases:
translate U Upgrading {Atualizando}
translate U ConfirmOpenNew {
Esta � uma base em formato antigo (Scid 2) que nao pode ser aberta pelo Scid 3, mas uma vers�o no novo formato (Scid 3) ja foi criada.

Voc� quer abrir a nova versao da base Scid 3?
}
translate U ConfirmUpgrade {
Esta � uma base em formato antigo (Scid 2). Uma versao da base no novo formato deve ser criada antes de poder ser usada no Scid 3.

A atualizacao criara uma nova vers�o da base; isto nao altera nem remove os registros originais.

Este processo pode levar algum tempo, mas s� precisa ser feito uma vez e pode ser cancelado se estiver demorando muito.

Voc� quer atualizar esta base agora?
}

# Recent files options:
translate U RecentFilesMenu {N.� de bases recentes no menu Arquivo} ;# ***
translate U RecentFilesExtra {N.� de bases recentes no submenu extra} ;# ***

# My Player Names options:
translate U MyPlayerNamesDescription {
Escrever abaixo uma lista de nomes de jogadores preferidos, um nome em cada linha. S�o permitidos sinais de completamento (e.g. "?" para qualquer caracter individual, "*" para qualquer sequ�ncia de caracteres).

Cada vez que for carregada uma partida que tenha um nome de jogador na lista, o tabuleiro rodar�, se necess�rio, para mostrar a partida na perspetiva desse jogador.
} ;# ***
translate U showblunderexists {assinalar erro}
translate U showblundervalue {assinalar valor do erro}
translate U showscore {mostrar avalia��o}
translate U coachgame {ativar aconselhamento}
translate U configurecoachgame {configurar aconselhamento}
translate U configuregame {Configurar jogo}
translate U Phalanxengine {Programa Phalanx}
translate U Coachengine {Programa de aconselhamento}
translate U difficulty {dificuldade}
translate U hard {dif�cil}
translate U easy {f�cil}
translate U Playwith {Jogar com}
translate U white {brancas}
translate U black {pretas}
translate U both {ambas}
translate U Play {Jogar}
translate U Noblunder {Sem erros}
translate U blunder {Erro}
translate U Noinfo {-- Sem info --}
translate U moveblunderthreshold {movimento � erro se perder mais de}
translate U limitanalysis {limitar tempo de an�lise do programa}
translate U seconds {segundos}
translate U Abort {Abortar}
translate U Resume {Retomar}
translate U Restart {Recome�ar}
translate U OutOfOpening {Fora da abertura}
translate U NotFollowedLine {N�o seguiu a linha}
translate U DoYouWantContinue {Deseja continuar?}
translate U CoachIsWatching {O Treinador observa}
translate U Ponder {An�lise cont�nua}
translate U LimitELO {Reduzir a for�a ELO}
translate U DubiousMovePlayedTakeBack {O seu lance � duvidoso, quer voltar atr�s?}
translate U WeakMovePlayedTakeBack {O seu lance � fraco, quer voltar atr�s?}
translate U BadMovePlayedTakeBack {O seu lance � um erro, quer voltar atr�s?}
translate U Iresign {Abandono}
translate U yourmoveisnotgood {O seu lance n�o � bom}
translate U EndOfVar {Fim da variante}
translate U Openingtrainer {Treinar aberturas}
translate U DisplayCM {Mostrar movimentos poss�veis}
translate U DisplayCMValue {Mostrar valor dos movimentos poss�veis}
translate U DisplayOpeningStats {Mostrar estat�sticas}
translate U ShowReport {Mostrar relat�rio}
translate U NumberOfGoodMovesPlayed {bons movimentos jogados}
translate U NumberOfDubiousMovesPlayed {movimentos duvidosos jogados}
translate U NumberOfTimesPositionEncountered {times position encountered}
translate U PlayerBestMove  {Permitir apenas os melhores movimentos}
translate U OpponentBestMove {Advers�rio joga os melhores movimentos}
translate U OnlyFlaggedLines {Apenas linhas marcadas}
translate U resetStats {Recome�ar estat�sticas}
translate U Movesloaded {Movimentos carregados}
translate U PositionsNotPlayed {Posi��es n�o jogadas}
translate U PositionsPlayed {Posi��es jogadas}
translate U Success {Sucesso}
translate U DubiousMoves {Movimentos duvidosos}
translate U ConfigureTactics {Configurar t�ticas}
translate U ResetScores {Repor valores}
translate U LoadingBase {Carregando base}
translate U Tactics {T�ticas}
translate U ShowSolution {Mostrar a solu��o}
translate U Next {Seguinte}
translate U ResettingScore {Repor valor}
translate U LoadingGame {Carregando jogo}
translate U MateFound {Mate encontrado}
translate U BestSolutionNotFound {N�O foi encontrada a melhor solu��o!}
translate U MateNotFound {Mate n�o encontrado}
translate U ShorterMateExists {H� um mate mais r�pido}
translate U ScorePlayed {Valor jogado}
translate U Expected {esperado}
translate U ChooseTrainingBase {Escolher base para treinar}
translate U Thinking {Analisando}
translate U AnalyzeDone {An�lise completa}
translate U WinWonGame {Jogar at� ao mate}
translate U Lines {Linhas}
translate U ConfigureUCIengine {Configurar programa UCI}
translate U SpecificOpening {Escolher abertura}
# ====== TODO To be translated ======
translate U ImportECO {Import ECO}
translate U StartNewGame {Iniciar novo jogo}
translate U FixedLevel {N�vel fixo}
translate U Opening {Abertura}
translate U RandomLevel {N�vel sorteado}
translate U StartFromCurrentPosition {Come�ar da posi��o atual}
translate U FixedDepth {Fixar profundidade de an�lise}
translate U Nodes {Posi��es}
translate U Depth {Profundidade}
translate U Time {Tempo}
translate U Auto {Autom�tico}
translate U Score {Pontua��o}
translate U {Score Combo} {Pontua��o Combinada}
translate U {Time Combo} {Tempo Combinado}
translate U SecondsPerMove {Segundos por movimento}
translate U DepthPerMove {N�mero de lances}
translate U MoveControl {Analisar por}
translate U TimeLabel {Tempo por movimento}
translate U AddVars {Escrever Variantes}
translate U AddScores {Escrever pontos}
translate U Engine {Programa}
translate U TimeMode {Gest�o do tempo}
translate U TimeBonus {Tempo + b�nus}
translate U TimeMin {min}
translate U TimeSec {seg}
translate U AllExercisesDone {Completou todos os exerc�cios}
translate U MoveOutOfBook {Movimento fora do livro}
translate U LastBookMove {�ltimo movimento do livro}
translate U AnnotateSeveralGames {Anotar v�rios jogos\do atual at�:}
translate U FindOpeningErrors {Encontrar erros na abertura}
translate U MarkTacticalExercises {Assinalar exerc�cios t�ticos}
translate U UseBook {Usar livro}
translate U MultiPV {M�ltiplas variantes}
translate U Hash {Mem�ria Hash}
translate U OwnBook {Usar o livro do programa}
translate U BookFile {Livro de aberturas}
translate U AnnotateVariations {Anotar variantes}
translate U ShortAnnotations {Anota��es Abreviadas}
translate U addAnnotatorTag {Colocar etiqueta de anotador}
translate U AddScoreToShortAnnotations {Colocar avalia��o nas anota��es abreviadas}
translate U Export {Exportar}
translate U BookPartiallyLoaded {Livro parcialmente carregado}
translate U AddLine {Adicionar Linha}
translate U RemLine {Remover Linha}
translate U Calvar {C�lculo de variantes}
translate U ConfigureCalvar {Configura��o}
translate U Reti {Reti}
translate U English {Inglesa}
translate U d4Nf6Miscellaneous {Diversas}
translate U Trompowsky {Trompowsky}
translate U Budapest {Budapeste}
translate U OldIndian {�ndia Velha}
translate U BenkoGambit {Gambito Benko}
translate U ModernBenoni {Benoni Moderna}
translate U DutchDefence {Defesa Holandesa}
translate U Scandinavian {Escandinava}
translate U AlekhineDefence {Defesa Alekhine}
translate U Pirc {Pirc}
translate U CaroKann {Caro-Kann}
translate U CaroKannAdvance {Caro-Kann Avan�o}
translate U Sicilian {Siciliana}
translate U SicilianAlapin {Siciliana Alapin}
translate U SicilianClosed {Siciliana Fechada}
translate U SicilianRauzer {Siciliana Rauzer}
translate U SicilianDragon {Siciliana Drag�o}
translate U SicilianScheveningen {Siciliana Scheveningen}
translate U SicilianNajdorf {Siciliana Najdorf}
translate U OpenGame {Jogo Aberto}
translate U Vienna {Vienense}
translate U KingsGambit {Gambito de Rei}
translate U RussianGame {Defesa Petrov}
translate U ItalianTwoKnights {Italiana/Dois Cavalos}
translate U Spanish {Espanhola}
translate U SpanishExchange {Espanhola das Trocas}
translate U SpanishOpen {Espanhola Aberta}
translate U SpanishClosed {Espanhola Fechada}
translate U FrenchDefence {Defesa Francesa}
translate U FrenchAdvance {Francesa do Avan�o}
translate U FrenchTarrasch {Francesa Tarrasch}
translate U FrenchWinawer {Francesa Winawer}
translate U FrenchExchange {Francesa das Trocas}
translate U QueensPawn {Pe�o de Dama}
translate U Slav {Eslava}
translate U QGA {Gambito de Dama Aceite}
translate U QGD {Gambito de Dama Recusado}
translate U QGDExchange {Gambito de Dama das Trocas}
translate U SemiSlav {Semi-Eslava}
translate U QGDwithBg5 {Gambito de Dama Recusado com Bg5}
translate U QGDOrthodox {Gambito de Dama Ortodoxa}
translate U Grunfeld {Gr�nfeld}
translate U GrunfeldExchange {Gr�nfeld das Trocas}
translate U GrunfeldRussian {Gr�nfeld Russa}
translate U Catalan {Catal�}
translate U CatalanOpen {Catal� Aberta}
translate U CatalanClosed {Catal� Fechada}
translate U QueensIndian {�ndia de Dama}
translate U NimzoIndian {Nimzo�ndia}
translate U NimzoIndianClassical {Nimzo�ndia Cl�ssica}
translate U NimzoIndianRubinstein {Nimzo�ndia Rubinstein}
translate U KingsIndian {�ndia de Rei}
translate U KingsIndianSamisch {�ndia de Rei S�misch}
translate U KingsIndianMainLine {�ndia de Rei Linha Principal}

# FICS
translate U ConfigureFics {Configurar FICS}
translate U FICSLogin {Entrar}
translate U FICSGuest {Entrar sem Registo}
translate U FICSServerPort {Server port}
translate U FICSServerAddress {IP Address}
translate U FICSRefresh {Refresh}
translate U FICSTimeseal {Timeseal}
translate U FICSTimesealPort {Timeseal port}
translate U FICSSilence {Console filter}
translate U FICSOffers {Ofertas}
translate U FICSMakeOffer {Propor}
translate U FICSGames {Games}
translate U FICSFindOpponent {Desafiar}
translate U FICSTakeback {Voltar atr�s}
translate U FICSTakeback2 {Voltar atr�s 2}
translate U FICSInitTime {Tempo (min)}
translate U FICSIncrement {Incremento (seg)}
translate U FICSRatedGame {Rated Game}
translate U FICSAutoColour {Automatico}
translate U FICSManualConfirm {Confirm manually}
translate U FICSFilterFormula {Filter with formula}
translate U FICSIssueSeek {Issue seek}
translate U FICSAccept {Aceitar}
translate U FICSDecline {Recusar}
translate U FICSColour {Colour}
translate U FICSSend {Enviar}
translate U FICSConnect {Ligar}
translate U FICSShouts {Gritos}
translate U FICSTells {Falas}
translate U FICSOpponent {Info. Advers�rio}
translate U FICSInfo {Info. Jogador}
translate U FICSDraw {Oferecer Empate}
translate U FICSRematch {Desforra}
translate U FICSQuit {Sair do FICS}
translate U FICSCensor {Censurar}

translate U CCDlgConfigureWindowTitle {Configurar Xadrez por correspondencia}
translate U CCDlgCGeneraloptions {Op��es Gerais}
translate U CCDlgDefaultDB {Base padr�o:}
translate U CCDlgInbox {Caixa de Entrada (caminho):}
translate U CCDlgOutbox {Caixa de Saida (caminho):}
translate U CCDlgXfcc {Configura��o do Xfcc:}
translate U CCDlgExternalProtocol {Tratamento de protocolo externo (ex. Xfcc)}
translate U CCDlgFetchTool {Ferramenta de busca:}
translate U CCDlgSendTool {Ferramenta de envio:}
translate U CCDlgEmailCommunication {Comunica��o por eMail}
translate U CCDlgMailPrg {Programa de Mail:}
translate U CCDlgBCCAddr {Endere�o C�pia Oculta:}
translate U CCDlgMailerMode {Modo:}
translate U CCDlgThunderbirdEg {ex. Thunderbird, Mozilla Mail, Icedove...}
translate U CCDlgMailUrlEg {ex. Evolution}
translate U CCDlgClawsEg {ex. Sylpheed Claws}
translate U CCDlgmailxEg {ex. mailx, mutt, nail...}
translate U CCDlgAttachementPar {Parametro de anexos:}
translate U CCDlgInternalXfcc {Usar suporte internal Xfcc}
translate U CCDlgConfirmXfcc {Confirmar movimentos}
translate U CCDlgSubjectPar {Parametro de Assunto:}
translate U CCDlgDeleteBoxes {Esvaziar caixas de entrada e sa�da}
translate U CCDlgDeleteBoxesText {Voce quer realmente esvaziar as caixas de Entrada e Saida usadas para o Xadrez por correspond�ncia? Esta opera��o exige uma novaa sincroniza��o para mostrar o ultimo estado dos seus jogos}
translate U CCDlgConfirmMove {Confirmar movimento}
translate U CCDlgConfirmMoveText {Se voc� confirmar, o movimento indicado a seguir e os coment�rios ser�o enviados para o servidor:}
translate U CCDlgDBGameToLong {Linha principal inconsistente}
translate U CCDlgDBGameToLongError {A linha principal na sua base � maior do que o jogo que est� na caixa de entrada. Se a caixa de entrada contem jogos correntes, isto � logo ap�s uma sincroniza��o, alguns movimentos foram adicionados erroneamente � linha principal na base.\nNeste caso, por favor, diminua a linha principal para (no m�ximo) movimentos\n}
translate U CCDlgStartEmail {Iniciar novo jogo por eMail}
translate U CCDlgYourName {Seu nome:}
translate U CCDlgYourMail {Seu eMail:}
translate U CCDlgOpponentName {Nome do Oponente:}
translate U CCDlgOpponentMail {eMail do Oponente:}
translate U CCDlgGameID {ID do jogo (unico):}
translate U CCDlgTitNoOutbox {Scid: Caixa de Sa�da}
translate U CCDlgTitNoInbox {Scid: Caixa de Entrada}
translate U CCDlgTitNoGames {Scid: Nenhum jogo por correspond�ncia}
translate U CCErrInboxDir {Diret�rio da Caixa de Entrada:}
translate U CCErrOutboxDir {Diret�rio da Caixa de Saida:}
translate U CCErrDirNotUsable {n�o existe ou n�o est� acessivel!\nPor favor, verifique e corrija a configura��o.}
translate U CCErrNoGames {n�o contem nenhum jogo!\nPor favor, localize-os primeiro.}
translate U CCDlgTitNoCCDB {Scid: Nenhuma base de correspond�ncia}
translate U CCErrNoCCDB {Nenhuma base do tipo 'Correspond�ncia' est� aberta. Por favor, abra uma antes de usar as fun��es do xadrez por correspond�ncia.}
translate U CCFetchBtn {Busca jogos no servidor e processa a Caixa de Entrada}
translate U CCPrevBtn {Ir para o jogo anterior}
translate U CCNextBtn {Ir para o pr�ximo jogo}
translate U CCSendBtn {Enviar movimento}
translate U CCEmptyBtn {Esvaziar caixas de entrada e sa�da}
translate U CCHelpBtn {Ajuda sobre icones e indicadores de estado.\nPara ajuda geral, use a tecla F1!}
translate U CCDlgServerName {Nome do Servidor:}
translate U CCDlgLoginName  {Nome de Utilizador:}
translate U CCDlgPassword   {Senha:}
translate U CCDlgURL        {Xfcc-URL:}
translate U CCDlgRatingType {Tipo de Rating:}
translate U CCDlgDuplicateGame {ID de jogo n�o �nico}
translate U CCDlgDuplicateGameError {Este jogo existe mais de uma vez em sua base. Exclua todas os duplicados e compacte seu arquivo de jogos (Arquivo/Manuten��o/Compactar Base).}
translate U CCDlgSortOption {Ordenando:}
translate U CCDlgListOnlyOwnMove {Somente jogos nos quais tenho o movimento}
translate U CCOrderClassicTxt {Local, Evento, Rodada, Resultado, Branca, Preta}
translate U CCOrderMyTimeTxt {Meu Rel�gio}
translate U CCOrderTimePerMoveTxt {Tempo por movimento at� o pr�ximo controle de tempo}
translate U CCOrderStartDate {Data de �nicio}
translate U CCOrderOppTimeTxt {Rel�gio do Advers�rio}

translate U CCDlgConfigRelay {Observar jogos}
translate U CCDlgConfigRelayHelp {Go to the games page on http://www.iccf-webchess.com and display the game to be observed.  If you see the chessboard copy the URL from your browser to the list below. One URL per line only!\nExample: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}

# Connect Hardware dialoges
translate U ExtHWConfigConnection {Configurar hardware externo}
translate U ExtHWPort {Porta}
translate U ExtHWEngineCmd {Engine command}
translate U ExtHWEngineParam {Configurar Engine}
translate U ExtHWShowButton {Mostrar bot�o na janela principal}
translate U ExtHWHardware {Hardware}
translate U ExtHWNovag {Novag Citrine}
translate U ExtHWInputEngine {Ligar Engine}
translate U ExtHWNoBoard {Sem tabuleiro}

# Input Engine dialogs
translate U IEConsole {Controlo do engine ligado}
translate U IESending {Lances enviados para}
translate U IESynchronise {Sincronizar}
translate U IERotate  {Rodar}
translate U IEUnableToStart {Imposs�vel iniciar Engine:}

# Calculation of Variations
translate U DoneWithPosition {Posi��o definida}
translate U Board {Tabuleiro}
translate U showGameInfo {Mostrar informa��es do jogo}
translate U autoResizeBoard {Tamanho autom�tico do tabuleiro}
translate U DockTop {Mover para cima}
translate U DockBottom {Mover para baixo}
translate U DockLeft {Mover para a esquerda}
translate U DockRight {Mover para a direita}
translate U Undock {Desacoplar}
translate U ChangeIcon {Alterar icone}
translate U More {Mais}

# Drag & Drop
translate U CannotOpenUri {N�o � poss�vel abrir o seguinte URI:}
translate U InvalidUri {Conte�do largado n�o � uma lista v�lida de URI.}
translate U UriRejected	{Os seguintes ficheiros s�o recusados:}
translate U UriRejectedDetail {Apenas os ficheiros do tipo listado podem ser despachados:}
translate U EmptyUriList {O conte�do a largar est� vazio.}
translate U SelectionOwnerDidntRespond {O tempo esgotou durante a entrega: o dono da sele��o n�o respondeu.}

translate U PasteAnal {Colar An�lises}
translate U SortOpcodes {Ordenar C�digos}
translate U AddPosition {Adicionar Posi��o}
translate U FindPos {Encontrar Posi��o mais Avan�ada}
translate U AnalPosition {Analisar Posi��es}
translate U StripOpcodes {Apagar C�digos}
translate U NoMoves {Apagar movimentos a partir desta posi��o}
translate U CountBestMoves {Contar os Melhores Movimentos}

}

# end of port.tcl
