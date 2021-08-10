### francais.tcl:

# French language support for Scid.
# Translations contributed by:
# Gilles Maire, Vincent Serisier, Joel Rivat, Pascal Heisel, Dale J.H Cannon and Francois Paget

# Untranslated messages are marked with a "TODO To be translated" comment.

addLanguage F Francais 0 iso8859-1

proc setLanguage_F {} {

# File menu:
menuText F File "Fichier" 0
menuText F FileNew "Nouvelle..." 0 {Cr�er une nouvelle base de donn�es Scid}
menuText F FileOpen "Ouvrir..." 0 {Ouvrir une base de donn�es Scid existante}
menuText F FileClose "Fermer" 0 {Fermer la base de donn�es Scid active}
menuText F FileFinder "Trouver" 0 {Ouvrir la fen�tre de recherche de fichier}
menuText F FileSavePgn "Save Pgn..." 0 {}
menuText F FileOpenBaseAsTree "Ouvrir base dans arbre" 0   {Ouvrir une base dans la fen�tre d'arbre}
menuText F FileOpenRecentBaseAsTree "Ouvrir base r�cente dans arbre" 0   {Ouvrir une base r�cente dans la fen�tre d'arbre}
menuText F FileBookmarks "Signets" 0 {Menu des signets (raccourci: Ctrl+B)}
menuText F FileBookmarksAdd "Ajouter un signet" 0 \
  {Poser un signet pour la position et partie courante}
menuText F FileBookmarksFile "Classer un signet" 0 \
  {Classer un signet pour la position et partie courante}
menuText F FileBookmarksEdit "Modifier les signets..." 0 \
  {Modifier les menus de signets}
menuText F FileBookmarksList "Afficher les dossiers comme une simple liste" 0 \
  {Afficher les dossiers comme une simple liste et non comme des sous-menus}
menuText F FileBookmarksSub "Afficher les dossiers comme des sous-menus" 0 \
  {Afficher les dossiers comme des sous-menus et non comme une simple liste}
menuText F FileReadOnly "Lecture seule..." 0 \
  {Traiter la base courante en lecture seule, en emp�chant les changements}
menuText F FileSwitch "Changer de base" 0 \
  {Changer vers une base ouverte diff�rente}
menuText F FileExit "Quitter" 0 {Quitter Scid}

# Edit menu:
menuText F Edit "�diter" 0
menuText F EditAdd "Ajouter variante" 0 {Ajouter une variante}
menuText F EditPasteVar "Coller variante" 0
menuText F EditDelete "Effacer variante" 0 {Effacer cette variante}
menuText F EditFirst "D�placer en t�te" 0 \
  {D�placer cette variante en t�te de liste}
menuText F EditMain "Variante vers ligne principale" 13 \
   {Promouvoir une variante en ligne principale}
menuText F EditTrial "Essayer une variante" 0 \
  {D�marrer/Stopper mode d'essai, pour tester une id�e sur l'�chiquier}
menuText F EditStrip "�purer" 2 {�purer les commentaires ou les variantes de cette partie}
menuText F EditUndo "Annuler" 0 {Annuler la derni�re modification de la partie}
menuText F EditRedo "Refaire" 0
menuText F EditStripComments "Commentaires" 0 \
  {�purer cette partie de tous les commentaires et annotations}
menuText F EditStripVars "Variantes" 0 {�purer cette partie des variantes}
menuText F EditStripBegin "Coups depuis le d�but" 1 \
  {�purer cette partie des coups depuis le d�but}
menuText F EditStripEnd "Coups jusqu'� la fin" 0 \
  {�purer cette partie des coups jusqu'� la fin}
# ====== TODO To be translated ======
menuText F EditFlip "Flip Board" 0 {Flip the board}
menuText F EditReset "Vider le presse-papier" 0 {Vider le presse-papier}
menuText F EditCopy "Copier dans le presse-papier" 0 \
  {Copier la partie en cours dans le presse-papier}
menuText F EditPaste "Coller depuis le presse-papier" 1 \
  {Copier la partie contenue dans le presse-papier � cet emplacement}
menuText F EditPastePGN "Coller le presse-papier comme partie PGN..." 10 \
  {Interpr�ter le texte du presse-papiers comme de la notation PGN et le coller ici}
menuText F EditSetup "Position de d�part" 0 \
  {Choisir une position de d�part pour cette partie}
menuText F EditCopyBoard "Copier la position" 6 \
  {Copier la position en cours en notation FEN vers la s�lection de texte (presse-papier)}
menuText F EditCopyPGN "Copier PGN" 0 {}
menuText F EditPasteBoard "Coller la position de d�part" 12 \
  {Initialiser la position de d�part � partir de la s�lection de texte courante(presse-papier)}

# Game menu:
menuText F Game "Partie" 0
menuText F GameNew "Nouvelle partie" 2 \
  {Remettre � z�ro la partie}
menuText F GameFirst "Charger la premi�re partie" 5 {Charger la premi�re partie du filtre}
menuText F GamePrev "Partie pr�c�dente" 7 \
  {Charger la partie pr�c�dente du filtre}
menuText F GameReload "Recharger la partie" 2 \
  {Recharger la partie (les modifications ne seront pas sauvegard�es)}
menuText F GameNext "Partie suivante" 7 {Charger la partie suivante du filtre}
menuText F GameLast "Charger la derni�re partie" 5 {Charger la derni�re partie du filtre}
menuText F GameRandom "Charger une partie au hasard" 8 {Charger au hasard une partie du filtre}
menuText F GameNumber "Partie num�ro..." 9 \
  {Charger une partie en donnant son num�ro}
menuText F GameReplace "Enregistrer: Remplacer la partie..." 13 \
  {Enregistrer cette partie, en �crasant l'ancienne version}
menuText F GameAdd "Enregistrer: Ajouter nouvelle partie..." 13 \
  {Enregistrer cette partie en tant que nouvelle partie dans la base}
menuText F GameInfo "Informations sur les jeux Set" 0
menuText F GameBrowse "Parcourir les jeux" 0
menuText F GameList "Liste Tous les jeux" 0
menuText F GameDelete "Effacer la partie" 0
menuText F GameDeepest "Identifier ouverture" 11 \
  {Trouver la partie la plus proche dans la nomenclature ECO}
menuText F GameGotoMove "Coup num�ro..." 6 \
  {Aller au coup sp�cifi� dans la partie en cours}
menuText F GameNovelty "Trouver la nouveaut�..." 7 \
  {Trouver le premier coup de la partie qui n'a pas �t� jou� auparavant}

# Search menu:
menuText F Search "Rechercher" 0
menuText F SearchReset "R�initialiser le filtre" 0 \
  {Remettre � z�ro le filtre (inclusion de toutes les parties)}
menuText F SearchNegate "Inverser le filtre" 0 {Inverser le filtre}
menuText F SearchEnd "D�placer vers le dernier filtre" 0
menuText F SearchCurrent "Position..." 0 \
  {Rechercher la position en cours}
menuText F SearchHeader "Ent�te..." 0 \
  {Rechercher par ent�te (joueur, tournoi, etc) information}
menuText F SearchMaterial "Motifs" 0 \
  {Rechercher des motifs ou un mat�riel particulier sur l'�chiquier}
menuText F SearchMoves {Coups} 0 {}
menuText F SearchUsing "En utilisant un fichier d'options..." 0 \
  {Rechercher en utilisant un fichier d'options de recherche}

# Windows menu:
menuText F Windows "Fen�tres" 2
menuText F WindowsGameinfo {Montrer le panneau d'info} 0 {Montrer le panneau d'info}
menuText F WindowsComment "�diteur de commentaires" 0 \
  {Ouvrir/fermer l'�diteur de commentaires}
menuText F WindowsGList "Liste des parties" 0 \
  {Ouvrir/fermer la liste des parties}
menuText F WindowsPGN "Fen�tre PGN" 8 {Ouvrir/fermer la fen�tre PGN}
menuText F WindowsCross "Classement du tournoi" 0 {Montrer le classement du tournoi}
menuText F WindowsPList "Chercher un joueur" 2 {Ouvrir/fermer la recherche de joueur}
menuText F WindowsTmt "Recherche de tournois" 0 {Ouvrir/fermer la recherche de tournois}
menuText F WindowsSwitcher "Changer de base" 0 \
  {Ouvrir/Fermer l'outil de changement de base}
menuText F WindowsMaint "Fen�tre de Maintenance" 0 \
  {Ouvrir/Fermer la fen�tre de maintenance}
menuText F WindowsECO "Navigateur ECO" 0 {Ouvrir/fermer le navigateur ECO}
menuText F WindowsStats "Fen�tre de statistique" 11 \
  {Ouvrir/Fermer le filtre de statistiques}
menuText F WindowsTree "Fen�tre d'arbre" 10 \
  {Ouvrir/Fermer la fen�tre d'arbre}
menuText F WindowsTB "Fen�tre de tables de finales" 8 \
  {Ouvrir/Fermer la fen�tre de tables de finales}
menuText F WindowsBook "Biblioth�que d'ouvertures" 0 {Ouvrir/Fermer la biblioth�que d'ouverture}
menuText F WindowsCorrChess "Jeu par correspondance" 0 {Ouvrir/Fermer la fen�tre de jeu par correspondance}
# ====== TODO To be translated ======
menuText F Analyse "Analyse" 0
# ====== TODO To be translated ======
menuText F AnalyseEngineList "Analysis Engines" 0 {Configure analysis engines}
# ====== TODO To be translated ======
menuText F AnalyseRating "Player Ratings" 0 {Graph the rating history of the current game players}
# ====== TODO To be translated ======
menuText F AnalyseScore "Score Graph" 0 {Show the score graph window}
# ====== TODO To be translated ======
menuText F AnalyseStartEngine1 "Start engine 1" 0  {Start engine 1}
# ====== TODO To be translated ======
menuText F AnalyseStartEngine2 "Start engine 2" 0  {Start engine 2}
# ====== TODO To be translated ======
menuText F AnalysePlayerReport "Player Report" 3 {Generate a player report}
# ====== TODO To be translated ======
menuText F AnalyseOpReport "Opening Report" 0 {Generate an opening report for the current position}

# Tools menu:
menuText F Tools "Outils" 2
menuText F ToolsAnalysis "Moteur d'analyse..." 9 \
  {D�marrer/Arr�ter un moteur d'analyses}
menuText F ToolsEmail "Gestion des messages" 0 \
  {Ouvrir/Fermer la fen�tre de gestion des messages �lectroniques}
menuText F ToolsFilterGraph "Graphique de filtre" 7 {Ouvrir/Fermer la fen�tre du graphique de filtre}
menuText F ToolsAbsFilterGraph "Graphique de filtre absolu" 7 {Ouvrir/Fermer la fen�tre du graphique de filtre absolu}
menuText F ToolsOpReport "Rapport d'ouverture" 0 {G�n�rer un rapport d'ouvertures � partir de la position courante}
menuText F ToolsTracker "Suivi de pi�ce"  0 {Ouvrir la fen�tre de suivi de pi�ce}
menuText F ToolsTraining "Entrainement"  0 {Entrainement (tactique, ouvertures, ...) }
menuText F ToolsComp "Tournoi" 2 {Tournoi entre moteurs d'analyse}
menuText F ToolsTacticalGame "Partie tactique"  0 {Jouer une partie tactique}
menuText F ToolsSeriousGame "Partie s�rieuse"  0 {Jouer une partie sans handicap}
menuText F ToolsTrainTactics "Tactique"  0 {R�soudre des probl�mes tactiques}
menuText F ToolsTrainCalvar "Calcul de variantes"  0 {Entrainement au calcul de variantes}
menuText F ToolsTrainFindBestMove "Trouver le meilleur coup"  0 {Trouver le meilleur coup}
menuText F ToolsTrainFics "Jouer sur internet"  0 {Jouer sur freechess.org}
menuText F ToolsBookTuning "Config. biblioth�que" 0 {Configuration fine d'une biblioth�que}
menuText F ToolsMaint "Maintenance" 0 {Maintenance de la base}
menuText F ToolsMaintWin "Fen�tre de maintenance" 0 \
  {Ouvrir/Fermer la fen�tre de maintenance}
menuText F ToolsMaintCompact "Compacter la base..." 0 \
  {Compacter la base: supprimer les parties effac�es et les noms non utilis�s}
menuText F ToolsMaintClass "Classer les parties suivant ECO" 2 \
  {Recalculer le code ECO de toutes les parties}
menuText F ToolsMaintSort "Trier la base..." 0 {Trier toutes les parties de la base}
menuText F ToolsMaintDelete "Purger les doublons..." 0 \
  {Trouver les parties en doublons et les marquer pour l'effacement}
menuText F ToolsMaintTwin "Trouver les doublons" 0 \
  {Ouvrir/Actualiser la fen�tre de recherche de doublons}
menuText F ToolsMaintNameEditor "�diteur de noms" 11 {Ouvrir/Fermer l'�diteur de noms}
menuText F ToolsMaintNamePlayer "Corriger les noms de joueurs..." 21 \
  {V�rifier l'orthographe des noms de joueurs}
menuText F ToolsMaintNameEvent "Corriger les �v�nements..." 14 \
  {V�rifier l'orthographe des noms d'�v�nements}
menuText F ToolsMaintNameSite "Corriger les noms de lieux.." 21 \
  {V�rifier l'orthographe des noms de lieux}
menuText F ToolsMaintNameRound "Corriger les noms des rondes..." 22 \
  {V�rifier l'orthographe des noms de rondes}
menuText F ToolsMaintFixBase "R�parer base" 0 {Essaie de r�parer une base corrompue}
menuText F ToolsConnectHardware "Brancher hardware" 0 {Brancher hardware ext�rieur}
menuText F ToolsConnectHardwareConfigure "Configurer..." 0 {Configurer la connexion au hardware ext�rieur}
menuText F ToolsConnectHardwareNovagCitrineConnect "Brancher Novag Citrine" 0 {Brancher Novag Citrine}
menuText F ToolsConnectHardwareInputEngineConnect "Brancher p�riph�rique d'entr�e" 0 {Brancher �riph�rique d'entr�e (par ex. DGT)}
menuText F ToolsPInfo "Information sur les joueurs"  0 \
  {Ouvrir/Mettre � jour la fen�tre d'information sur les joueurs}
menuText F ToolsPlayerReport "Rapport pour le joueur" 3 \
  {G�n�rer un rapport pour le joueur}
menuText F ToolsRating "Elo graphique" 0 \
  {Tracer un graphique du classement Elo des joueurs de cette partie}
menuText F ToolsScore "Score graphique" 0 {Montrer le graphique des scores}
menuText F ToolsExpCurrent "�crire la partie en cours" 22 \
  {�crire la partie en cours dans un fichier texte}
menuText F ToolsExpCurrentPGN "Dans un fichier PGN..." 16 \
  {�crire la partie en cours dans un fichier PGN}
menuText F ToolsExpCurrentHTML "Dans un fichier HTML..." 16 \
  {�crire la partie en cours dans un fichier HTML}
menuText F ToolsExpCurrentHTMLJS "Dans un fichier HTML et JavaScript..." 16 {�crire la partie en cours dans un fichier HTML et JavaScript}
menuText F ToolsExpCurrentLaTeX "Dans un fichier LaTeX..." 16 \
  {�crire la partie en cours dans un fichier LaTeX}
menuText F ToolsExpFilter "�crire le filtre " 2 \
  {�crire le filtre dans un fichier texte}
menuText F ToolsExpFilterPGN "Dans un fichier PGN..." 16 \
  {�crire le filtre dans un fichier PGN}
menuText F ToolsExpFilterHTML "Dans un fichier HTML..." 16 \
  {�crire le filtre dans un fichier HTML}
menuText F ToolsExpFilterHTMLJS "Dans un fichier HTML et JavaScript..." 16 {�crire le filtre dans un fichier HTML et JavaScript}
menuText F ToolsExpFilterLaTeX "Dans un fichier LaTeX..." 16 \
  {�crire le filtre dans un fichier LaTeX}
menuText F ToolsExpFilterEPD "Dans un fichier EPD/FEN" 17 {�crire le filtre dans un fichier EPD/FEN}
menuText F ToolsExpFilterGames "Exporter une liste de parties vers un fichier texte" 19 {�crire une liste de parties vers un fichier texte format�}
menuText F ToolsImportOne "Importer une partie en PGN..." 0 \
  {Importer une partie � partir d'un texte PGN}
menuText F ToolsImportFile "Importer un fichier en PGN..." 12 \
  {Importer des parties � partir d'un fichier PGN}
menuText F ToolsStartEngine1 "D�marrer moteur 1" 0  {D�marrer moteur 1}
menuText F ToolsStartEngine2 "D�marrer moteur 2" 0  {D�marrer moteur 2}
menuText F ToolsScreenshot "Capture conseil" 0
menuText F Play "Jouer" 0
menuText F CorrespondenceChess "Echecs par correspondance" 0 {eMail et Xfcc �checs par correspondance}
menuText F CCConfigure "Configurer..." 0 {Configurer outils externes et config g�n�rale}
menuText F CCConfigRelay "Configurer observations..." 10 {Configurer quelles parties pour les observer}
menuText F CCOpenDB "Ouvrir base..." 0 {Ouvrir la base de jeu par correspondance par d�faut}
menuText F CCRetrieve "R�cup�rer parties" 0 {R�cup�rer les parties via Xfcc}
menuText F CCInbox "Analyser bo�te" 0 {Analyser tous les fichiers dans la bo�te de r�ception de Scid}
menuText F CCSend "Envoyer coup" 0 {Envoyer votre coup via eMail ou outil externe (Xfcc)}
menuText F CCResign "Abandonner" 0 {Abandonner (pas par eMail)}
menuText F CCClaimDraw "R�clamer la nulle" 0 {Envoyer coup et r�clamer nulle (pas par eMail)}
menuText F CCOfferDraw "Proposer la nulle" 0 {Envoyer coup et proposer nulle (pas par eMail)}
menuText F CCAcceptDraw "Accepter la nulle" 0 {Accepter la nulle (pas par eMail)}
menuText F CCNewMailGame "Nouvelle partie eMail..." 0 {Commencer une nouvelle partie par eMail}
menuText F CCMailMove "eMailer le coup..." 0 {Envoyer le coup par eMail � l'adversaire}
menuText F CCGamePage "Page partie..." 0 {Ouvrir la partie dans navigateur web}
menuText F CCEditCopy "Copier parties dans Clipbase" 0 {Copy the games as CSV list to clipbase}


# Options menu:
menuText F Options "Options" 0
menuText F OptionsBoard "Echiquier" 0 {Options d'aspect de l'�chiquier}
menuText F OptionsColour "Couleurs" 0 {Default text widget color}
menuText F OptionsBackColour "Arri�re-plan" 0 {Default text widget color}
menuText F OptionsMainLineColour "Fl�che coup principal" 0 {Mainline arrows}
menuText F OptionsVarLineColour "Fl�che coup variante" 0 {Variation arrows}
menuText F OptionsEngineLineColour "Fl�che moteur" 0 {Fl�che moteur}
menuText F OptionsRowColour "Surlignage coup biblioth�que" 0 {Default tree/book row color}
menuText F OptionsHighlightColour "Surbrillance" 0 {Default text highlight color}
menuText F OptionsSwitcherColour "Surlignage db switcher" 0 {Default db switcher color}
menuText F OptionsProgressColour "Barre de progression" 0 {Default progressbar color}
menuText F OptionsScoreColour "Barres graphiques de score" 0 {}
menuText F OptionsScoreBarColour "Barre du score courant" 0 {}
menuText F OptionsNames "Mes noms de joueurs..." 0 {Editer mes noms de joueurs}
menuText F OptionsExport "Exportation" 0 {Changer les options d'exportation}
menuText F OptionsFonts "Polices" 0 {Changer les polices}
menuText F OptionsFontsRegular "Normales" 0 {Changer les polices normales}
menuText F OptionsFontsMenu "Menu" 0 {Changer la police des menus}
menuText F OptionsFontsSmall "Petites" 0 {Changer les petites polices}
menuText F OptionsFontsFixed "Fixe" 0 {Changer les polices de chasse fixe}
menuText F OptionsGInfo "Informations de la partie" 7 {Options d'information de la partie}
menuText F OptionsFics "FICS" 0
menuText F OptionsFicsAuto "Autopromote Reine" 0
menuText F OptionsFicsClk "Sauver la pendule" 0
menuText F OptionsFicsColour "Couleur du texte" 0
menuText F OptionsFicsSize "Taille de l'�chiquier" 0
menuText F OptionsFicsButtons "Boutons param�trables" 0
menuText F OptionsFicsCommands "Script d'initialisation" 0
menuText F OptionsFicsNoRes "Sans r�sultats" 0
menuText F OptionsFicsNoReq "Sans requ�tes" 0
menuText F OptionsFicsPremove "Pr�-move accept�" 0
menuText F OptionsLanguage "Langue" 0 {S�lectionner le menu de choix des langues}
menuText F OptionsMovesTranslatePieces "Traduction des pi�ces" 0 {Convertit la premi�re lettre des pi�ces}
menuText F OptionsMovesHighlightLastMove "Surbrillance dernier coup" 0 {Surbrillance du dernier coup}
menuText F OptionsMovesHighlightLastMoveDisplay "Afficher" 0 {Afficher la surbrillance du dernier coup}
menuText F OptionsMovesHighlightLastMoveWidth "Epaisseur" 0 {Epaisseur de la ligne}
menuText F OptionsMovesHighlightLastMoveColor "Couleur" 0 {Couleur de la ligne}
menuText F OptionsMovesColorSelected "Couleur s�lectionn�e Carr�" 0 {Color move}
menuText F OptionsMoves "Coups" 2 {Gestion des coups}
menuText F OptionsMovesAsk "Demander avant d'�craser les coups" 0 \
  {Demander avant d'�craser un coup existant}
menuText F OptionsMovesAnimate "Temps d'animation" 1 \
  {Fixe le temps utilis� pour l'animation des coups}
menuText F OptionsMovesDelay "D�lai entre les coups" 3 \
  {Positionner le d�lai entre deux coups en mode automatique}
menuText F OptionsMovesCoord "Coordonn�es entre les coups" 0 \
  {Accepter l'entr�e des coups par coordonn�es ("g1f3")}
menuText F OptionsShowVarPopup "Montrer fen�tre des variantes" 0 {Affichage automatique des variantes}
menuText F OptionsMovesSpace "Ajouter un espace apr�s le num�ro du coup" 0 {Espace apr�s num�ro du coup}
menuText F OptionsMovesKey "Compl�tion clavier" 0 \
  {Activer/D�sactiver le mode de compl�tion du clavier}
menuText F OptionsMovesShowVarArrows "Montrer fl�ches pour les variations" 0 {Montrer des fl�ches pour les variations existantes}
menuText F OptionsNumbers "Format num�rique" 7 {S�lectionner le format des nombres}
menuText F OptionsStartup "D�marrage" 3 {S�lectionner les fen�tres � ouvrir au d�marrage}
menuText F OptionsTheme "Apparence" 0 {Change l'apparence de l'interface}
menuText F OptionsWindows "Fen�tres" 0 {Options des fen�tres}
menuText F OptionsWindowsIconify "Mise en icone automatique" 5 \
  {Mettre toutes les fen�tres en icones quand la fen�tre principale est mise en icone}
menuText F OptionsWindowsRaise "Apparition automatique" 0 \
  {Faire appara�tre certaines fen�tres (i.e. barres de progression) � chaque fois qu'elles sont obscurcies}
menuText F OptionsSounds "Sons..." 2 {Configurer l'annonce des sonore des coups}
menuText F OptionsWindowsDock "Fen�tres group�es" 0 {Fen�tres group�es (n�cessite un red�marrage)}
menuText F OptionsWindowsSaveLayout "Enregistrer disposition" 0 {Enregistrer disposition}
menuText F OptionsWindowsRestoreLayout "Remettre disposition" 0 {Remettre disposition}
menuText F OptionsWindowsShowGameInfo "Montrer le panneau d'info" 0 {Montrer le panneau d'info}
menuText F OptionsWindowsAutoLoadLayout "Chargement auto 1�re disposition" 0 {Chargement auto de la premi�re disposition au d�marrage}
menuText F OptionsWindowsAutoResize "Redimensionnement automatique" 0 {}
menuText F OptionsWindowsFullScreen "Plein �cran" 0 {Basculer en mode plein �cran}
menuText F OptionsToolbar "Barre d'outils de la fen�tre principale" 12 \
  {Montrer/Cacher dans la barre d'outils de la fen�tre principale}
menuText F OptionsECO "Charger le fichier ECO..." 20 \
  {Charger un fichier au format ECO}
menuText F OptionsSpell "Charger le fichier d'orthographe..." 25 \
  {Charger un fichier de correction orthographique scid}
menuText F OptionsTable "R�pertoire des tables de finales TB..." 0 \
  {S�lectionner un r�pertoire de fichiers TB, tous les fichiers de ce r�pertoire seront utilis�s}
menuText F OptionsRecent "Fichiers r�cents..." 0 \
  {Changer le nombre de fichiers r�cents affich�s dans le menu Fichier}
menuText F OptionsBooksDir "R�pertoire des biblioth�ques..." 0 {R�pertoire des biblioth�ques d'ouverture}
menuText F OptionsTacticsBasesDir "R�pertoire des bases d'entrainement..." 0 {R�pertoire des bases pour l'entrainement tactique}
menuText F OptionsInformant "Configurer les valeurs de notation" 0
menuText F OptionsSave "Sauver les options" 0 "Sauver les options dans le fichier $::optionsFile"
menuText F OptionsSaveBases "M�morisation des bases ouvertes" 0
menuText F OptionsAutoSave "Sauvegarde automatique des options" 0 \
  {Sauvegarder automatiquement toutes les options en quittant Scid}

# Help menu:
menuText F Help "Aide" 0
menuText F HelpContents "Contenu" 0 {Montrer la page du contenu de l'aide}
menuText F HelpIndex "Index" 0 {Afficher la table des mati�res}
menuText F HelpGuide "Aide Rapide" 5 {Montrer la page d'aide rapide}
menuText F HelpHints "Astuces" 0 {Afficher les trucs et astuces}
menuText F HelpContact "Contact" 0 {Afficher les noms des contacts}
menuText F HelpTip "Astuce du jour" 0 {Afficher une astuce Scid}
menuText F HelpStartup "Fen�tre de d�marrage" 0 {Afficher la fen�tre de d�marrage}
menuText F HelpAbout "A propos de Scid" 2 {Information au sujet de Scid}

# Game info box popup menu:
menuText F GInfoHideNext "Cacher le coup suivant" 0
menuText F GInfoShow "Le joueur au trait" 0
menuText F GInfoCoords "Coordonn�es" 0
menuText F GInfoMaterial "Montrer les valeurs de mat�riel" 0
menuText F GInfoFEN "Montrer la notation FEN" 5
menuText F GInfoMarks "Montrer les cases color�es et les fl�ches" 5
menuText F GInfoWrap "D�couper les longues lignes" 0
menuText F GInfoFullComment "Montrer tous les commentaires" 10
menuText F GInfoPhotos "Montrer les Photos" 5
menuText F GInfoTBNothing "Tables de finales: Rien" 12
menuText F GInfoTBResult "Tables de finales: Seulement le r�sultat" 12
menuText F GInfoTBAll "Tables de finales: r�sultat et meilleurs coups" 19
menuText F GInfoDelete "(R�cup�rer)Effacer cette partie" 4
menuText F GInfoMark "(D�)Marquer cette partie" 4
menuText F GInfoMenuBar "Barre de Menu"  0
menuText F GInfoToolBar "Barre d'outils"  0
menuText F GInfoButtonBar "Barre � boutons"  0
menuText F GInfoStatusBar "Barre d'�tat"  0
translate F FlipBoard {Retourner l'�chiquier}
translate F RaiseWindows {Fen�tre d'arbitrage}
translate F AutoPlay {Lecture automatique}
translate F TrialMode {Mode d'essai}
translate F KeepOpen {Afficher au d�marrage}

# General buttons:
translate F Apply {Appliquer}
translate F Back {Retour}
translate F Browse {Parcourir}
translate F Cancel {Annuler}
translate F Continue {Continuer}
translate F Clear {Effacer}
translate F Close {Fermer}
translate F Contents {Contenu}
translate F Defaults {Par d�faut}
translate F Delete {�liminer}
translate F Graph {Graphique}
translate F Help {Aide}
translate F Import {Importer}
translate F Index {Index}
translate F LoadGame {Charger partie}
translate F BrowseGame {Explorer la partie dans une fen�tre s�par�e}
translate F MergeGame {Fusionner la partie comme variante}
translate F MergeGames {Fusionner les parties}
translate F Preview {Pr�visualiser}
translate F Revert {Revenir}
translate F Save {Enregistrer}
translate F DontSave {Ne pas sauver}
translate F Search {Rechercher}
translate F Stop {Arr�ter}
translate F Store {Enregistrer}
translate F Update {Mettre � jour}
translate F ChangeOrient {Changer l'orientation de la fen�tre}
translate F ShowIcons {Montrer les icones}
translate F ConfirmCopy {Confirmer la copie}
translate F None {Aucun}
translate F First {Premier}
translate F Current {En cours}
translate F Last {Dernier}
translate F Font {Police}
translate F Change {Changer}
translate F Random {Al�atoire}

# General messages:
translate F game {partie}
translate F games {parties}
translate F move {coup}
translate F moves {coups}
translate F all {tout}
translate F Yes {Oui}
translate F No {Non}
translate F Both {Les deux}
translate F King {Roi}
translate F Queen {Dame}
translate F Rook {Tour}
translate F Bishop {Fou}
translate F Knight {Cavalier}
translate F Pawn {Pion}
translate F White {Blancs}
translate F Black {Noirs}
translate F Player {Joueur}
translate F Rating {Classement ELO}
translate F RatingDiff {Diff�rence de classement ELO (Blancs - Noirs)}
translate F AverageRating {Classement moyen}
translate F Event {�v�nement}
translate F Site {Lieux}
translate F Country {Pays}
translate F IgnoreColors {Ignorer les couleurs}
translate F MatchEnd {Positon finale uniquement}
translate F Date {Date}
translate F EventDate {�v�nement date}
translate F Decade {D�cennie}
translate F Year {Ann�e}
translate F Month {Mois}
translate F Months {Janvier F�vrier Mars Avril Mai Juin Juillet Ao�t Septembre Octobre Novembre D�cembre}
translate F Days {Dim Lun Mar Mer Jeu Ven Sam}
translate F YearToToday {Ann�e jusqu'� aujourd'hui}
translate F Result {R�sultat}
translate F Round {Ronde}
translate F Length {Longueur}
translate F ECOCode {code ECO}
translate F ECO {ECO}
translate F Deleted {�limin�}
translate F SearchResults {R�sultats de la recherche}
translate F OpeningTheDatabase {Ouverture de la base}
translate F Database {Base}
translate F Filter {Filtre}
translate F Reset {R�initialiser}
translate F IgnoreCase {Ignorer la Casse}
translate F noGames {pas de parties}
translate F allGames {toutes les parties}
translate F empty {vide}
translate F clipbase {presse-papier}
translate F score {score}
translate F Start {Position}
translate F StartPos {Position de d�part}
translate F Total {Total}
translate F readonly {lecture seule}
translate F altered {chang�}
translate F tagsDescript {Extra tags (ex: Annotator "Anand")}
translate F prevTags {Pr�c�dent}
translate F value {Valeur}

# Standard error messages:
translate F ErrNotOpen {Ceci n'est pas une base ouverte.}
translate F ErrReadOnly {Cette base est en lecture seule; elle ne peut �tre modifi�e.}
translate F ErrSearchInterrupted {La recherche a �t� interrompue; les r�sultats sont incomplets.}

# Game information:
translate F twin {doublon}
translate F deleted {�limin�}
translate F comment {commentaire}
translate F hidden {cach�}
translate F LastMove {Dernier coup}
translate F NextMove {Coup suivant}
translate F GameStart {D�but de partie}
translate F LineStart {D�but de ligne}
translate F GameEnd {Fin de partie}
translate F LineEnd {Fin de ligne}

# Player information:
translate F PInfoAll {toutes les parties}
translate F PInfoFilter {les parties filtr�es}
translate F PInfoAgainst {R�sultats contre}
translate F PInfoMostWhite {Ouvertures les plus fr�quentes avec les blancs}
translate F PInfoMostBlack {Ouvertures les plus fr�quentes avec les noirs}
translate F PInfoRating {Historique du classement}
translate F PInfoBio {Biographie}
translate F PInfoEditRatings {Editer les Classements}
translate F PinfoEditName {Editer nom}
translate F PinfoLookupName {Chercher nom}

# Tablebase information:
translate F Draw {Nulle}
translate F stalemate {pat}
translate F checkmate {mat}
translate F withAllMoves {avec tous les coups}
translate F withAllButOneMove {avec tous les coups sauf le dernier}
translate F with {avec}
translate F only {seulement}
translate F lose {perte}
translate F loses {pertes}
translate F allOthersLose {toutes les autres pertes}
translate F matesIn {mat en}
translate F longest {le plus long}
translate F WinningMoves {Coups gagnants}
translate F DrawingMoves {Coups faisant nulle}
translate F LosingMoves {Coups perdants}
translate F UnknownMoves {Coups dont le r�sultat est inconnu}

# Tip of the day:
translate F Tip {Conseil}
translate F TipAtStartup {Conseil au d�marrage}

# Tree window menus:
menuText F TreeFile "Fichier" 0
menuText F TreeFileFillWithBase "Remplir cache avec base" 0 {Remplir le cache avec toutes les parties de la base courante}
menuText F TreeFileFillWithGame "Remplir cache avec partie" 0 {Remplir le cache avec la partie de la base courante}
menuText F TreeFileCacheInfo "Info cache" 0 {Afficher information sur l'utilisation du cache}
menuText F TreeFileSave "Sauver le cache" 0
menuText F TreeFileFill "Remplir le cache" 0
menuText F TreeFileBest "Liste des meilleures parties" 0 {Montrer la liste des meilleures parties}
menuText F TreeFileGraph "Graphique" 0 {Graphique de l'arbre}
menuText F TreeFileCopy "Copier l'arbre dans le presse-papiers" 0
menuText F TreeFileClose "Fermer la fen�tre d'arbre" 0
menuText F TreeMask "Masque" 0
menuText F TreeMaskNew "Nouveau" 0 {Nouveau masque}
menuText F TreeMaskOpen "Ouvrir" 0 {Ouvrir masque}
menuText F TreeMaskOpenRecent "Ouvrir r�cent" 0 {Ouvrir un masque r�cent}
menuText F TreeMaskSave "Sauver" 0 {Sauver masque}
menuText F TreeMaskClose "Fermer" 0 {Fermer masque}
menuText F TreeMaskFillWithLine "Remplir avec ligne" 0 {Remplir le masque avec toutes les coups pr�c�dents}
menuText F TreeMaskFillWithGame "Remplir avec partie" 0 {Remplir le masque avec partie}
menuText F TreeMaskFillWithBase "Remplir avec base" 0 {Remplir le masque avec les parties de la base}
menuText F TreeMaskInfo "Info" 0 {Statistiques du masque}
menuText F TreeMaskDisplay "Afficher l'arbre" 0 {Affichage des donn�es du masque sous la forme d'un arbre}
menuText F TreeMaskSearch "Chercher" 0 {Chercher dans le masque courant}
menuText F TreeSort "Trier" 0
menuText F TreeSortAlpha "Alphab�tique" 0
menuText F TreeSortECO "code ECO" 0
menuText F TreeSortFreq "Fr�quence" 0
menuText F TreeSortScore "Score" 0
menuText F TreeOpt "Options" 0
menuText F TreeOptSlowmode "Mode lent" 0 {Mode lent pour rafraichissement (pr�cis)}
menuText F TreeOptFastmode "Mode rapide" 0 {Mode rapide pour rafraichissement (pas de transpositions)}
menuText F TreeOptFastAndSlowmode "Mode rapide puis lent" 0 {Mode rapide puis lent pour rafraichissement}
menuText F TreeOptStartStop "Rafra�chissement auto" 0 {Rafra�chissement automatique de la fen�tre}
menuText F TreeOptLock "Verrouille" 0 {D�/verrouiller l'arbre � la base en cours}
menuText F TreeOptTraining "Entra�nement" 0 {D�marrer/Arr�ter l'arbre du mode d'entra�nement}
menuText F TreeOptShort "Affichage court" 0 {Affichage sans donn�es ELO}
menuText F TreeOptAutosave "Sauver le cache automatiquement" 0
menuText F TreeOptAutomask "Auto-chargement Mask" 0 "Auto-Load most recent mask with a tree open."
menuText F TreeOptCacheSize "Taille du cache" 0 {Taille du cache}
menuText F TreeOptShowBar "Affichage barre de progression" 0 "Show tree progress bar."
menuText F TreeOptShowFrame "Affichage fen�tre boutons" 0 "Afficher la fen�tre de boutons."
menuText F TreeOptSortBest "Tri des meilleurs jeux" 0 "Tri des meilleurs jeux selon ELO."
menuText F TreeHelp "Aide" 0
menuText F TreeHelpTree "Aide Arbre" 0
menuText F TreeHelpIndex "Index" 0


translate F SaveCache {Sauver le cache}
translate F Training {Entra�nement}
translate F LockTree {Verrouiller}
translate F TreeLocked {verrouill�}
translate F TreeBest {Meilleur}
translate F TreeBestGames {Arbre des meilleures parties}
translate F TreeAdjust {Ajuster filtre}
# Note: the next message is the tree window title row. After editing it,
# check the tree window to make sure it lines up with the actual columns.
translate F TreeTitleRow      {    Coup       Fr�quence   Score Nulle EloMoy Perf Ann�e ECO}
translate F TreeTitleRowShort {    Coup       Fr�quence   Score Nulle}
translate F TreeTotal: {TOTAL:}
translate F DoYouWantToSaveFirst {voulez-vous d'abord sauvegarder}
translate F AddToMask {Ajouter au masque}
translate F RemoveFromMask {Enlever du masque}
translate F AddThisMoveToMask {Ajouter ce coup au masque}
translate F SearchMask {Recherche dans masque}
translate F DisplayMask {Affichage du masque}
translate F Nag {Code Nag}
translate F Marker {Marqueur}
translate F Include {Inclure}
translate F Exclude {Exclure}
translate F MainLine {Ligne principale}
translate F Bookmark {Signet}
translate F NewLine {Nouvelle ligne}
translate F ToBeVerified {A v�rifier}
translate F ToTrain {S'entrainer}
translate F Dubious {Douteux}
translate F ToRemove {A supprimer}
translate F NoMarker {Aucun marqueur}
translate F ColorMarker {Couleur}
translate F WhiteMark {Blanc}
translate F GreenMark {Vert}
translate F YellowMark {Jaune}
translate F BlueMark {Bleu}
translate F RedMark {Rouge}
translate F CommentMove {Annoter coup}
translate F CommentPosition {Annoter position}
translate F AddMoveToMaskFirst {Ajoutez d'abord le coup au masque}
translate F OpenAMaskFileFirst {Ouvrez d'abord un masque}
translate F positions {Positions}
translate F Moves {Coups}

# Finder window:
menuText F FinderFile "Fichier" 0
menuText F FinderFileSubdirs "Rechercher dans les sous r�pertoires" 0
menuText F FinderFileClose "Fermer l'explorateur de fichiers" 0
menuText F FinderSort "Trier" 0
menuText F FinderSortType "Type" 0
menuText F FinderSortSize "Taille" 0
menuText F FinderSortMod "Modifi�" 0
menuText F FinderSortName "Nom" 0
menuText F FinderSortPath "Chemin" 0
menuText F FinderTypes "Types" 0
menuText F FinderTypesScid "Bases Scid" 0
menuText F FinderTypesOld "Bases Scid � l'ancien format" 0
menuText F FinderTypesPGN "fichiers PGN" 0
menuText F FinderTypesEPD "fichiers EPD (th�orie)" 0
menuText F FinderHelp "Aide" 0
menuText F FinderHelpFinder "Aide de l'explorateur de fichiers" 0
menuText F FinderHelpIndex "Index" 0
translate F FileFinder {Explorateur de fichiers}
translate F FinderDir {R�pertoire}
translate F FinderDirs {R�pertoires}
translate F FinderFiles {Fichiers}
translate F FinderUpDir {r�pertoire pr�c�dent}
translate F FinderCtxOpen {Ouvrir}
translate F FinderCtxBackup {Sauvegarder}
translate F FinderCtxCopy {Copier}
translate F FinderCtxMove {D�placer}
translate F FinderCtxDelete {Supprimer}
translate F FinderDirOpen {Ouvrir R�pertoire}

# Player finder:
menuText F PListFile "Fichier" 0
menuText F PListFileUpdate "Mettre � jour" 0
menuText F PListFileClose "Fermer la recherche de joueur" 0
menuText F PListSort "Trier" 0
menuText F PListSortName "Nom" 0
menuText F PListSortElo "Elo" 0
menuText F PListSortGames "Parties" 0
menuText F PListSortOldest "Les plus vieux" 0
menuText F PListSortNewest "Les plus r�cents" 0

# Tournament finder:
menuText F TmtFile "Fichier" 0
menuText F TmtFileUpdate "Mettre � jour" 0
menuText F TmtFileClose "Fermer l'explorateur de tournois" 0
menuText F TmtSort "Trier" 0
menuText F TmtSortDate "Date" 0
menuText F TmtSortPlayers "Joueurs" 0
menuText F TmtSortGames "Parties" 0
menuText F TmtSortElo "Elo" 0
menuText F TmtSortSite "Lieux" 0
menuText F TmtSortEvent "�v�nement" 1
menuText F TmtSortWinner "Vainqueur" 0
translate F TmtLimit "Limite de liste"
translate F TmtMeanElo "Moyenne ELO la plus basse"
translate F TmtNone "Aucun tournoi correspondant n'a �t� trouv�."

# Graph windows:
menuText F GraphFile "Fichier" 0
menuText F GraphFileColor "Sauver comme Postscript en couleurs..." 27
menuText F GraphFileGrey "Sauver comme Postscript en niveaux de gris..." 27
menuText F GraphFileClose "Fermer la fen�tre" 0
menuText F GraphOptions "Options" 0
menuText F GraphOptionsWhite "Blancs" 0
menuText F GraphOptionsBlack "Noirs" 0
menuText F GraphOptionsDots "Montrer les points connus" 0
menuText F GraphOptionsBar "Surbrillance de la position actuelle" 0
menuText F GraphOptionsBoth "Les deux" 4
menuText F GraphOptionsPInfo "Informations joueurs" 0
translate F GraphFilterTitle "Graphique de filtre: fr�quence pour 1000 parties"
translate F GraphAbsFilterTitle "Graphique de filtre: fr�quence des parties"
translate F ConfigureFilter {Configurer l'axe des X par ann�e, classement et coups}
translate F FilterEstimate "Estimer"
translate F TitleFilterGraph "Scid: Graphe de filtre"

# Analysis window:
translate F AddVariation {Ajouter une variante}
translate F AddAllVariations {Ajouter toutes les variantes}
translate F AddMove {Ajouter le coup}
translate F Annotate {Annotation}
translate F ShowAnalysisBoard {Montrer �chiquier d'analyse}
translate F ShowInfo {Montrer infos moteur}
translate F FinishGame {Continuer la partie}
translate F StopEngine {Arr�ter le moteur}
translate F StartEngine {D�marrer le moteur}
translate F ExcludeMove {Exclure coup}
translate F LockEngine {Verrouiller moteur � la position actuelle}
translate F AnalysisCommand {Commande d'analyse}
translate F PreviousChoices {Choix pr�c�dents}
translate F AnnotateTime {Fixer le temps en secondes entre deux coups}
translate F AnnotateWhich {Ajouter des variantes}
translate F AnnotateAll {Pour les coups des deux cot�s}
translate F AnnotateAllMoves {Annoter tous les coups}
translate F AnnotateWhite {Pour les coups des blancs seulement}
translate F AnnotateBlack {Pour les coups des noirs seulement}
translate F AnnotateNotBest {Quand le coup de la partie n'est pas le meilleur}
translate F AnnotateBlundersOnly {Quand le coup est une erreur}
translate F BlundersNotBest {Erreurs/Impr�cissions}
translate F AnnotateTitle {Configurer Annotation}
translate F AnnotateMissedMates {Occasion manqu�e/Mat en moins de coups}
translate F AnnotateEnd {� la fin du jeu}
translate F BlundersThreshold {Seuil de l'erreur}
translate F ScoreFormat {Format du score}
translate F CutOff {Interruption}
translate F LowPriority {Priorit� processeur basse}
translate F LogEngines {Taille du journal}
translate F LogName {Ajouter nom}
translate F MaxPly {Demi-coups fixes}
translate F ClickHereToSeeMoves {Cliquer ici pour afficher les coups}
translate F ConfigureInformant {Configurer les valeurs des notations}
translate F Informant!? {Coup int�ressant}
translate F Informant? {Coup faible}
translate F Informant?? {Mauvais coup}
translate F Informant?! {Coup douteux}
translate F Informant+= {Les blancs ont un l�ger avantage}
translate F Informant+/- {Les blancs ont l'avantage}
translate F Informant+- {Les blancs ont un avantage d�cisif}
translate F Informant++- {La partie est gagn�e}

# Book window
translate F Book {Biblioth�que}
translate F OtherBook {Autres mouvements}
translate F Alphabetical {Alphab�tique}
translate F TwoBooks {Deux livres}

# Analysis Engine open dialog:
translate F EngineList {Liste des moteurs d'analyse}
translate F EngineKey {Touche}
translate F EngineType {Protocole}
translate F EngineName {Nom}
translate F EngineCmd {Commande}
translate F EngineArgs {Param�tres}
translate F EngineDir {R�pertoire}
translate F EngineElo {Elo}
translate F EngineTime {Date}
translate F EngineNew {Nouvelle}
translate F EngineEdit {�diter}
translate F EngineRequired {Les champs en gras sont requis; les autres sont optionnels}

# Stats window menus:
menuText F StatsFile "Fichier" 0
menuText F StatsFilePrint "�crire dans fichier..." 0
menuText F StatsFileClose "Fermer la fen�tre" 0
menuText F StatsOpt "Options" 0

# PGN window menus:
menuText F PgnFile "Fichier" 0
menuText F PgnFileCopy "Copier la partie dans le Presse-papier" 0
menuText F PgnFilePrint "�crire dans fichier..." 0
menuText F PgnFileClose "Fermer la fen�tre PGN" 0
menuText F PgnOpt "Affichage" 0
menuText F PgnOptColor "Couleur d'affichage" 0
menuText F PgnOptShort "Ent�te court (3-lignes)" 0
menuText F PgnOptSymbols "Annotations symboliques" 0
menuText F PgnOptIndentC "Indentation des commentaires" 0
menuText F PgnOptIndentV "Indentation des variantes" 16
menuText F PgnOptColumn "Style en colonne (un coup par ligne)" 1
menuText F PgnOptSpace "Espace apr�s num�ro des coups" 0
menuText F PgnOptStripMarks "Enlever les codes de fl�ches et de coloration de cases" 1
menuText F PgnOptChess "Echecs Pi�ces" 0
menuText F PgnOptScrollbar "Barre de d�filement" 0
menuText F PgnOptBoldMainLine "Mettre en gras les coups de la ligne principale" 4
menuText F PgnColor "Couleur" 0
menuText F PgnColorHeader "Ent�te..." 0
menuText F PgnColorAnno "Annotations..." 0
menuText F PgnColorComments "Commentaires..." 0
menuText F PgnColorVars "Variantes..." 0
menuText F PgnColorBackground "Couleur du fond..." 11
menuText F PgnColorMain "Ligne principale..." 0
menuText F PgnColorCurrent "Surbrillance du coup jou�..." 1
menuText F PgnColorNextMove "Surbrillance du coup suivant..." 0
menuText F PgnHelp "Aide" 0
menuText F PgnHelpPgn "Aide PGN" 0
menuText F PgnHelpIndex "Index" 0
translate F PgnWindowTitle {Notation partie - partie %u}

# Crosstable window menus:
menuText F CrosstabFile "Fichier" 0
menuText F CrosstabFileText "�crire dans un fichier texte..." 23
menuText F CrosstabFileHtml "�crire dans un fichier HTML..." 23
menuText F CrosstabFileLaTeX "�crire dans un fichier LaTeX..." 23
menuText F CrosstabFileClose "Fermer fen�tre tableau" 0
menuText F CrosstabEdit "�diter" 0
menuText F CrosstabEditEvent "�v�nement" 0
menuText F CrosstabEditSite "Lieux" 0
menuText F CrosstabEditDate "Date" 0
menuText F CrosstabOpt "Affichage" 0
menuText F CrosstabOptColorPlain "Texte normal" 0
menuText F CrosstabOptColorHyper "Hypertexte" 0
menuText F CrosstabOptTieWin "D�partage par nombre de victoires" 1
menuText F CrosstabOptTieHead "D�partage par confrontation directe" 1
menuText F CrosstabOptThreeWin "3 Points pour une victoire" 1
menuText F CrosstabOptAges "Ages en ann�es" 8
menuText F CrosstabOptNats "Nationalit�s" 0
menuText F CrosstabOptTallies "Victoires/D�faites/Nulles" 0
menuText F CrosstabOptRatings "Classements" 0
menuText F CrosstabOptTitles "Titres" 0
menuText F CrosstabOptBreaks "Scores du d�partage" 4
menuText F CrosstabOptDeleted "Inclure les parties effac�es" 8
menuText F CrosstabOptColors "Couleurs (syst�me suisse uniquement)" 1
menuText F CrosstabOptColorRows "Lignes color�es" 0
menuText F CrosstabOptRowsColor "Couleur de la ligne" 0 {Default crosstable row color}
menuText F CrosstabOptColumnNumbers "Colonnes num�rot�es (Toutes rondes seulement)" 2
menuText F CrosstabOptGroup "Scores du groupe" 0
menuText F CrosstabSort "Trier" 0
menuText F CrosstabSortName "Nom" 0
menuText F CrosstabSortRating "Elo" 0
menuText F CrosstabSortScore "Score" 0
menuText F CrosstabSortCountry "Pays" 0
menuText F CrosstabType "Syst�me" 0
menuText F CrosstabTypeAll "Toutes rondes" 0
menuText F CrosstabTypeSwiss "Suisse" 0
menuText F CrosstabTypeKnockout "KO" 0
menuText F CrosstabTypeAuto "Auto" 0
menuText F CrosstabHelp "Aide" 0
menuText F CrosstabHelpCross "Aide tableau" 0
menuText F CrosstabHelpIndex "Index" 0
translate F SetFilter {Activer le filtre}
translate F AddToFilter {Ajouter au filtre}
translate F Swiss {Suisse}
translate F Category {Cat�gorie}

# Opening report window menus:
menuText F OprepFile "Fichier" 0
menuText F OprepFileText "�crire dans un fichier texte..." 23
menuText F OprepFileHtml "�crire dans un fichier HTML..." 23
menuText F OprepFileLaTeX "�crire dans un fichier LaTeX..." 23
menuText F OprepFileOptions "Options..." 0
menuText F OprepFileClose "Fermer la fen�tre du rapport" 0
menuText F OprepFavorites "Favoris" 1
menuText F OprepFavoritesAdd "Ajouter au rapport..." 0
menuText F OprepFavoritesEdit "Editer les favoris de rapport..." 0
menuText F OprepFavoritesGenerate "G�n�rer les rapports..." 0

menuText F OprepHelp "Aide" 0
menuText F OprepHelpReport "Aide du rapport" 0
menuText F OprepHelpIndex "Index" 0

# Header search:
translate F HeaderSearch {Rechercher Ent�te}
translate F EndSideToMove {C�t� devant jouer � la fin de la partie}
translate F GamesWithNoECO {Partie sans code ECO?}
translate F GameLength {Longueur de la partie}
translate F FindGamesWith {Chercher les parties avec}
translate F StdStart {Pos. d�part non standard}
translate F Promotions {Promotions}
translate F UnderPromo {Promotions mineures}
translate F Comments {Commentaires}
translate F Variations {Variantes}
translate F Annotations {Annotations}
translate F DeleteFlag {Marqu�es supprim�es}
translate F WhiteOpFlag {Ouverture des blancs}
translate F BlackOpFlag {Ouverture des noirs}
translate F MiddlegameFlag {Milieu de partie}
translate F EndgameFlag {Finale}
translate F NoveltyFlag {Nouveaut�}
translate F PawnFlag {Structure de pions}
translate F TacticsFlag {Tactiques}
translate F QsideFlag {Jeu � l'aile dame}
translate F KsideFlag {Jeu � l'aile roi}
translate F BrilliancyFlag {Spectaculaire}
translate F BlunderFlag {Gaffe}
translate F UserFlag {Utilisateur}
translate F PgnContains {PGN contenant du texte}
translate F PreComment {Commentaires initiaux}
translate F PostComment {Commentaires finaux}

# Game list window:
translate F GlistNumber {Num�ro}
translate F GlistWhite {Blancs}
translate F GlistBlack {Noirs}
translate F GlistWElo {B-Elo}
translate F GlistBElo {N-Elo}
translate F GlistEvent {�v�nement}
translate F GlistSite {Lieux}
translate F GlistRound {Ronde}
translate F GlistDate {Date}
translate F GlistYear {Ann�e}
translate F GlistEventDate {�v�nement-Date}
translate F GlistResult {R�sultat}
translate F GlistLength {Longueur}
translate F GlistCountry {Pays}
translate F GlistECO {ECO}
translate F GlistOpening {Coups}
translate F GlistEndMaterial {Mat�riel final}
translate F GlistDeleted {Effac�}
translate F GlistFlags {Drapeaux}
translate F GlistVariations {Variantes}
translate F GlistComments {Commentaires}
translate F GlistAnnos {Annotations}
translate F GlistStart {D�part}
translate F GlistGameNumber {Partie num�ro}
translate F GlistFindText {Rechercher texte}
translate F GlistMoveField {Coup}
translate F GlistEditField {Configurer}
translate F GlistAddField {Ajouter}
translate F GlistDeleteField {Supprimer}
translate F GlistColor {Couleur}
translate F GlistSort {Trier la base}

# menu shown with right mouse button down on game list.
translate F GlistRemoveThisGameFromFilter  {Enlever}
translate F GlistRemoveGameAndAboveFromFilter  {Enlever cette partie (et celles au-dessus)}
translate F GlistRemoveGameAndBelowFromFilter  {Enlever cette partie (et celles en-dessous)}
translate F GlistDeleteGame {(D�s-)effacer cette partie}
translate F GlistDeleteAllGames {Effacer toutes les parties du filtre}
translate F GlistUndeleteAllGames {D�s-effacer toutes les parties du filtre}
translate F GlistAlignL {Aligner � gauche}
translate F GlistAlignR {Aligner � droite}
translate F GlistAlignC {Centrer}

# Maintenance window:
translate F DatabaseName {Nom de base:}
translate F TypeIcon {Type ic�ne}
translate F NumOfGames {Parties:}
translate F NumDeletedGames {Parties supprim�es:}
translate F NumFilterGames {Parties dans le filtre:}
translate F YearRange {Ann�es:}
translate F RatingRange {Classements:}
translate F Description {Description}
translate F Flag {Drapeau}
translate F CustomFlags {Drapeaux personnalis�s}
translate F DeleteCurrent {Effacer la partie courante}
translate F DeleteFilter {Effacer le filtre de parties}
translate F DeleteAll {Effacer toutes les parties}
translate F UndeleteCurrent {R�cup�rer la partie en cours}
translate F UndeleteFilter {R�cup�rer les parties filtr�es}
translate F UndeleteAll {R�cup�rer toutes les parties}
translate F DeleteTwins {Effacer les parties en doublon}
translate F MarkCurrent {S�lectionner la partie en cours}
translate F MarkFilter {S�lectionner les parties filtr�es}
translate F MarkAll {S�lectionner toutes les parties}
translate F UnmarkCurrent {D�s�lectionner la partie en cours}
translate F UnmarkFilter {D�s�lectionner les parties filtr�es}
translate F UnmarkAll {D�s�lectionner toutes les parties}
translate F Spellchecking {V�rification orthographique}
translate F MakeCorrections {Faire des corrections}
translate F Ambiguous {Ambigu}
translate F Surnames {Patronymes}
translate F Players {Joueurs}
translate F Events {�v�nements}
translate F Sites {Lieux}
translate F Rounds {Rondes}
translate F DatabaseOps {Op�rations sur la base}
translate F ReclassifyGames {ECO-Classifier les parties...}
translate F CompactDatabase {Compacter la base}
translate F SortDatabase {Trier la base}
translate F AddEloRatings {Ajouter les classements Elo}
translate F AutoloadGame {Chargement automatique du num�ro de partie}
translate F StripTags {Enlever les marqueurs PGN}
translate F StripTag {Enlever les marqueurs}
translate F CheckGames {V�rifier les parties}
translate F Cleaner {Nettoyer}
translate F CleanerHelp {
Le Nettoyeur Scid va r�aliser pour la base en cours toutes les actions de maintenance que vous avez s�lectionn� � partir de la liste ci-dessous.

Les r�glages en cours de la classification ECO et les dialogues d'effacement des jumeaux vont s'appliquer si vous avez s�lectionn� ces fonctions.
}
translate F CleanerConfirm {
Une fois que le nettoyage est commenc�, il ne peut �tre interrompu!

Cela peut prendre beaucoup de temps sur une grande base, suivant les fonctions que vous avez s�lectionn� et leurs r�glages en cours.

Etes vous s�r que vous voulez commencer les fonctions de maintenance que vous avez s�lectionn�?
}

translate F TwinCheckUndelete {pour permuter; "u" pour annuler l'effacement des deux}
translate F TwinCheckprevPair {Paire pr�c�dente}
translate F TwinChecknextPair {Paire suivante}
translate F TwinChecker {Scid: v�rificateur de doublon}
translate F TwinCheckTournament {Parties dans le tournoi:}
translate F TwinCheckNoTwin {Pas de doublon  }
translate F TwinCheckNoTwinfound {No twin was detected for this game.\nTo show twins using this window, you must first use the "Delete twin games..." function. }
translate F TwinCheckTag {Partager tags...}
translate F TwinCheckFound1 {Scid a trouv� $result doublons}
translate F TwinCheckFound2 { et positionn� le marquer de suppression}
translate F TwinCheckNoDelete {Il n'y a pas de parties dans cette base � effacer.}
translate F TwinCriteria1 { Les param�tres pour trouver des doublons risquent de\nfaire que des parties diff�rentes avec des coups similaires soient marqu�es comme des doublons.}
translate F TwinCriteria2 {Il est recommand� de s�lectionner "Non" pour "m�mes coups", vous devriez s�lectionner "Oui" pour les couleurs, �v�nement, site, ronde, ann�e et mois.\nVoulez-vous continuer et effacer les doublons quand m�me ? }
translate F TwinCriteria3 {Il est recommand� de s�lectionner "Oui" pour au moins deux des param�tres "m�me site", "m�me ronde" et "m�me ann�e".\nVoulez-vous continuer et effacer les doublons quand m�me ?}
translate F TwinCriteriaConfirm {Scid: Confirmer les param�tres de doublons}
translate F TwinChangeTag "Changer les tags de partie suivants:\n\n"
translate F AllocRatingDescription "Cette commande va utiliser les fichiers de v�rification de noms et de classement ELO pour les parties de cette base. Chaque fois qu'un joueur n'a pas de classement mais que son classement est list� dans le fichier de v�rification de noms � la date de la partie, ce classement est pris en compte."
translate F RatingOverride "Remplacer le classement non nul existant ?"
translate F AddRatings "ajouter classement �:"
translate F AddedRatings {Scid a ajout� $r classements Elo dans $g parties.}
translate F NewSubmenu "Nouveau sous-menu"

# Comment editor:
translate F AnnotationSymbols {Symboles d'annotation:}
translate F Comment {Commentaire:}
translate F InsertMark {Ins�re une marque}
translate F InsertMarkHelp {
Ins�rer/enlever marque: S�lectionner la couleur, le type et la case.
Ins�rer/enlever fl�che: Clic droit sur deux cases.
}

# Nag buttons in comment editor:
translate F GoodMove {Bon coup}
translate F PoorMove {Coup faible}
translate F ExcellentMove {Excellent coup}
translate F Blunder {Gaffe}
translate F InterestingMove {Coup int�ressant}
translate F DubiousMove {coup douteux}
translate F WhiteDecisiveAdvantage {Les blancs ont un avantage d�cisif}
translate F BlackDecisiveAdvantage {Les noirs ont un avantage d�cisif}
translate F WhiteClearAdvantage {Les blancs ont l'avantage}
translate F BlackClearAdvantage {Les noirs ont l'avantage}
translate F WhiteSlightAdvantage {Les blancs ont un l�ger avantage}
translate F BlackSlightAdvantage {Les noirs ont un l�ger avantage}
translate F Equality {Egalit�}
translate F Unclear {Peu clair}
translate F Diagram {Diagramme}

# Board search:
translate F BoardSearch {Rechercher Position}
translate F FilterOperation {Op�ration sur le filtre en cours:}
translate F FilterAnd {ET (Restreint le filtre)}
translate F FilterOr {OU (Ajouter au filtre)}
translate F FilterIgnore {IGNORER (Restaure le filtre initial)}
translate F SearchType {Type de recherche:}
translate F SearchBoardExact {Position exacte (m�mes pi�ces sur les m�mes cases)}
translate F SearchBoardPawns {Pions (m�me mat�riel, tous les pions sur les m�mes cases)}
translate F SearchBoardFiles {Colonnes (m�me mat�riel, tous les pions sur m�mes colonnes)}
translate F SearchBoardAny {Tous (m�me mat�riel, pions et pi�ces n'importe o�)}
translate F SearchInRefDatabase { Dans la base de r�f�rence }
translate F LookInVars {Chercher dans les variantes}
translate F CQLLabel {Script CQL}
translate F CQLComments {Commentaires accept�s}
translate F CQLStrip {Supprimer les commentaires}

# Material search:
translate F MaterialSearch {Rechercher Motifs}
translate F Material {Mat�riel}
translate F Patterns {Motifs}
translate F Zero {Z�ro}
translate F Any {Tout}
translate F CurrentBoard {Position en cours}
translate F CommonEndings {Finales}
translate F CommonPatterns {Motifs}
translate F MaterialDiff {Diff�rence en mat�riel}
translate F squares {cases}
translate F SameColor {M�mes couleur}
translate F OppColor {Couleurs oppos�es}
translate F Either {Les deux}
translate F MoveNumberRange {D�placer de X coups}
translate F MatchForAtLeast {Correspond � la derni�re}
translate F HalfMoves {demi-coups}

# Common endings in material search:
translate F EndingPawns {Finales de pions}
translate F EndingRookVsPawns {Tour contre pion(s)}
translate F EndingRookPawnVsRook {Tour et 1 pion contre Tour}
translate F EndingRookPawnsVsRook {Tour et pion(s) contre Tour}
translate F EndingRooks {Finales Tour contre Tour}
translate F EndingRooksPassedA {Finales de Tour contre Tour avec un pion a pass�}
translate F EndingRooksDouble {Finales 2 tours}
translate F EndingBishops {Finales Fou contre Fou}
translate F EndingBishopVsKnight {Finales Fou contre Cavalier}
translate F EndingKnights {Finales Cavalier contre Cavalier}
translate F EndingQueens {Finales Dame contre Dame}
translate F EndingQueenPawnVsQueen {Dame et 1 pion contre Dame}
translate F BishopPairVsKnightPair {Milieu de jeu 2 Fous contre 2 Cavaliers}

# Common patterns in material search:
translate F PatternWhiteIQP {PDI blanc}
translate F PatternWhiteIQPBreakE6 {PDI blanc: la pous�e d4-d5 vs e6}
translate F PatternWhiteIQPBreakC6 {PDI blanc: la pous�e d4-d5 vs c6}
translate F PatternBlackIQP {PDI noir}
translate F PatternWhiteBlackIQP {PDI blanc vs PDI noir}
translate F PatternCoupleC3D4 {Deux pions isol�s blancs c3 et d4}
translate F PatternHangingC5D5 {Pions noirs en prise en c5 et d5}
translate F PatternMaroczy {L'�tau de Mar�czy (Pions en c4 et e4)}
translate F PatternRookSacC3 {Le sacrifice de tour en c3}
translate F PatternKc1Kg8 {O-O-O vs O-O (Kc1 vs Kg8)}
translate F PatternKg1Kc8 {O-O vs O-O-O (Kg1 vs Kc8)}
translate F PatternLightFian {Fianchettos des fous de cases blanches (Fou-g2 vs. Fou-b7)}
translate F PatternDarkFian {Fianchettos des fous de cases noires (Fou-b2 vs. Fou-g7)}
translate F PatternFourFian {Quatre Fianchettos (Fous en b2, g2, b7, g7)}

# Game saving:
translate F Today {Aujourd'hui}
translate F ClassifyGame {Classer la partie}

# Setup position:
translate F EmptyBoard {Vider l'�chiquier}
translate F InitialBoard {R�-initialiser l'�chiquier}
translate F SideToMove {Cot� qui a le trait}
translate F MoveNumber {Coup num�ro}
translate F Castling {Roque}
translate F EnPassantFile {Prise en passant}
translate F ClearFen {Effacer FEN}
translate F PasteFen {Coller FEN}
translate F SaveAndContinue {Enregistrer et continuer}
translate F DiscardChangesAndContinue {Ignorer Changements}
translate F GoBack {Revenir}

# Replace move dialog:
translate F ReplaceMove {Remplacer le coup}
translate F AddNewVar {Ajouter variante}
translate F NewMainLine {Ligne principale}
translate F ReplaceMoveMessage {Un coup existe d�j�.

Vous pouvez le remplacer, ou bien d�truire tous les coups apr�s ce coup ou ajouter une nouvelle variante.

(Vous pouvez demander � ne plus voir ce message � l'avenir, en d�s�lectionnant l'option "Demander avant de remplacer le coup" dans le menu des options)}

# Make database read-only dialog:
translate F ReadOnlyDialog {Si vous mettez cette base en lecture seule, aucun changement ne sera permis.
Aucune partie ne peut �tre sauv�e ou remplac�e, et aucun drapeau d'effacement ne peut �tre alt�r�.
Tout les tris ou les r�sultats de classification ECO seront temporaires.

Vous pouvez facilement rendre la base � nouveau accessible en �criture, en la fermant et en l'ouvrant � nouveau.

Voulez vous vraiment passer cette base en lecture seule?}

# Exit dialog:
translate F ExitDialog {Voulez-vous r�ellement quitter Scid?}
translate F ClearGameDialog {Ce jeu a �t� modifi�.\nVoulez-vous le sauvegarder?}
translate F ExitUnsaved {Les bases de donn�es suivantes ont des parties modifi�es non sauvegard�es. Si vous quittez maintenant, ces modifications seront perdues.}
translate F ChangeTextDialog {Changer les couleurs du texte n�cessite un red�marrage.}
translate F ChangeDockDialog {Changer le mode d'affichage n�cessite un red�marrage.}
translate F FontSelectDialog "Ce sont des exemples de texte\nDouble-cliquez dessus pour changer de police, puis choisissez 'ok'\nAaBbCcDdEeFfGgHhIiJjKkLlMm 0123456789. +=-"
translate F ExitNow {Quitter maintenant ?}

# Import window:
translate F PasteCurrentGame {Coller la partie courante}
translate F ImportHelp1 {Entrer ou coller une partie au format PGN dans le cadre ci-dessus.}
translate F ImportHelp2 {Toutes les erreurs durant l'import de la partie seront affich�es ici.}
translate F OverwriteExistingMoves {Effacer les coups existants ?}

# ECO Browser:
translate F ECOAllSections {toutes les sections ECO}
translate F ECOSection {section ECO}
translate F ECOSummary {R�sum� pour}
translate F ECOFrequency {Fr�quence des sous-codes pour}

# Opening Report:
translate F OprepTitle {Rapport sur l'ouverture}
translate F OprepReport {Rapport}
translate F OprepGenerated {G�n�r� par}
translate F OprepStatsHist {Statistiques et Historique}
translate F OprepStats {Statistiques}
translate F OprepStatAll {Toutes les parties du rapport}
translate F OprepStatBoth {Les deux joueurs class�s}
translate F OprepStatSince {Depuis}
translate F OprepOldest {Les parties les plus anciennes}
translate F OprepNewest {Les parties les plus r�centes}
translate F OprepPopular {Popularit� courante}
translate F OprepFreqAll {Fr�quence pour toutes les ann�es: }
translate F OprepFreq1   {Depuis 1 an jusqu'� ce jour:      }
translate F OprepFreq5   {Depuis 5 ans jusqu'� ce jour:     }
translate F OprepFreq10  {Depuis 10 ans jusqu'� ce jour:    }
translate F OprepEvery {une fois toutes les %u parties}
translate F OprepUp {%u%s rencontr� pour l'ensemble des ann�es}
translate F OprepDown {%u%s non rencontr� l'ensemble des ann�es}
translate F OprepSame {sans changement par rapport � l'ensemble des ann�es}
translate F OprepMostFrequent {Joueurs les plus fr�quents}
translate F OprepMostFrequentOpponents {Adversaires les plus fr�quents}
translate F OprepRatingsPerf {Classements et performance}
translate F OprepAvgPerf {Classements moyens et performance}
translate F OprepWRating {Classement des blancs}
translate F OprepBRating {Classement des noirs}
translate F OprepWPerf {Performance des blancs}
translate F OprepBPerf {Performance des noirs}
translate F OprepHighRating {Parties avec le classement moyen le plus �lev�}
translate F OprepTrends {Tendances de r�sultat}
translate F OprepResults {R�sultats longueurs et fr�quences}
translate F OprepLength {Longueur de partie}
translate F OprepFrequency {Fr�quence}
translate F OprepWWins {Gains blancs: }
translate F OprepBWins {Gains noirs:  }
translate F OprepDraws {Nulles:       }
translate F OprepWholeDB {base compl�te}
translate F OprepShortest {Gains les plus rapides}
translate F OprepMovesThemes {Coups et Th�mes}
translate F OprepMoveOrders {Ordres de coups atteignant la position du rapport}
translate F OprepMoveOrdersOne \
  {Il n'y a qu'un seul ordre de coups pour atteindre cette position:}
translate F OprepMoveOrdersAll \
  {Il y a %u ordres de coups pour atteindre cette position:}
translate F OprepMoveOrdersMany \
  {Il y a %u ordres de coups pour atteindre cette position. Les %u premiers sont:}
translate F OprepMovesFrom {Coups depuis la position du rapport}
translate F OprepMostFrequentEcoCodes {Codes ECO les plus fr�quents}
translate F OprepThemes {Th�mes positionnels}
translate F OprepThemeDescription {Fr�quence des th�mes dans les premiers %u coups de chaque partie}
translate F OprepThemeSameCastling {Roques du m�me c�t�}
translate F OprepThemeOppCastling {Roques du c�t� oppos�}
translate F OprepThemeNoCastling {Aucun roque}
translate F OprepThemeKPawnStorm {Avalanche de pions � l'aile roi}
translate F OprepThemeQueenswap {Dames �chang�es}
translate F OprepThemeWIQP {Pion Dame blanc isol�}
translate F OprepThemeBIQP {Pion Dame noir isol�}
translate F OprepThemeWP567 {Pion blanc sur la 5/6/7e rang�e}
translate F OprepThemeBP234 {Pion noir sur la 2/3/4e rang�e}
translate F OprepThemeOpenCDE {Colonne c/d/e ouverte}
translate F OprepTheme1BishopPair {Paire de fous}
translate F OprepEndgames {Finales}
translate F OprepReportGames {Les parties du rapport}
translate F OprepAllGames {Toutes les parties}
translate F OprepEndClass {Classification du mat�riel des positions finales}
translate F OprepTheoryTable {Table de Th�orie}
translate F OprepTableComment {G�n�r� � partir des %u parties au classement le plus �lev�.}
translate F OprepExtraMoves {Nombre de coups additionnels dans la table de th�orie}
translate F OprepMaxGames {Nombre maximum de parties dans la table de th�orie}
translate F OprepMaxLines {Nombre maximum de parties pour statistiques}
translate F OprepViewHTML {Voir en HTML}
translate F OprepViewLaTeX {Voir en LaTeX}

# Player Report:
translate F PReportTitle {Rapport du joueur}
translate F PReportColorWhite {avec les Blancs pi�ces}
translate F PReportColorBlack {avec les Noirs pi�ces}
translate F PReportBeginning {Commen�ant avec}
translate F PReportMoves {apr�s %s}
translate F PReportOpenings {Ouvertures}
translate F PReportClipbase {Vider le presse-papier et copier dedans toutes les parties qui correspondent}

# Piece Tracker window:
translate F TrackerSelectSingle {Le bouton gauche de la souris s�lectionne cette pi�ce.}
translate F TrackerSelectPair {Le bouton gauche de la souris s�lectionne cette pi�ce; le bouton droit s�lectionne aussi son pendant.}
translate F TrackerSelectPawn {Le bouton gauche de la souris s�lectionne ce pion ; le bouton droit s�lectionne les 8 pions.}
translate F TrackerStat {Statistiques}
translate F TrackerGames {% parties avec d�placement sur la case}
translate F TrackerTime {% fois sur chaque case}
translate F TrackerMoves {Coups}
translate F TrackerMovesStart {Entrer le num�ro du coups � partir duquel la recherche doit commencer.}
translate F TrackerMovesStop {Entrer le num�ro du coups auquel la recherche doit s'arr�ter.}

# Game selection dialogs:
translate F SelectAllGames {Toutes les parties de la base}
translate F SelectFilterGames {Seulement les parties du filtre}
translate F SelectTournamentGames {Seulement les parties du tournoi courant}
translate F SelectOlderGames {Seulement les parties plus anciennes}

# Delete Twins window:
translate F TwinsNote {Pour �tre consid�r�es comme doublons, deux parties doivent au moins avoir les deux m�mes joueurs, et avoir les crit�res que vous pouvez fixer ci-dessous satisfaits. Quand une paire de doublons est trouv�e, la partie la plus courte est effac�e. Conseil: il est pr�f�rable de v�rifier l'orthographe dans la base avant d'effacer les doublons, car cela am�liore la d�tection des doublons. }
translate F TwinsCriteria {Crit�re: Les doublons doivent avoir...}
translate F TwinsWhich {Parties � examiner}
translate F TwinsColors {M�me couleurs de joueurs?}
translate F TwinsEvent {M�me �v�nement?}
translate F TwinsSite {M�me lieu?}
translate F TwinsRound {M�me ronde?}
translate F TwinsYear {M�me ann�e?}
translate F TwinsMonth {M�me mois?}
translate F TwinsDay {M�me jour?}
translate F TwinsResult {M�me r�sultat?}
translate F TwinsECO {M�me code ECO?}
translate F TwinsMoves {M�mes coups?}
translate F TwinsPlayers {Comparaison des noms des joueurs:}
translate F TwinsPlayersExact {Correspondance exacte}
translate F TwinsPlayersPrefix {Les 4 premi�res lettres seules}
translate F TwinsWhen {En effacant les doublons}
translate F TwinsSkipShort {Ignorer toutes les parties de moins de cinq coups?}
translate F TwinsUndelete {R�cup�rer toutes les parties d'abord?}
translate F TwinsSetFilter {Appliquer le filtre � tous les doublons �limin�s?}
translate F TwinsComments {Toujours garder les parties qui comportent des commentaires?}
translate F TwinsVars {Toujours garder les parties qui comportent des variantes?}
translate F TwinsDeleteWhich {Partie � effacer:}
translate F TwinsDeleteShorter {La partie la plus courte}
translate F TwinsDeleteOlder {La partie avec le plus petit num�ro}
translate F TwinsDeleteNewer {La partie avec le plus grand num�ro}
translate F TwinsDelete {Effacer les parties}

# Name editor window:
translate F NameEditType {Taper le nom � �diter}
translate F NameEditSelect {Parties � �diter}
translate F NameEditReplace {Remplacer}
translate F NameEditWith {avec}
translate F NameEditMatches {Correspondances: Presser Alt+1 � Alt+9 pour s�lectionner}

# Classify window:
translate F Classify {Classer}
translate F ClassifyWhich {Choix des parties � classer suivant ECO}
translate F ClassifyAll {Toutes les parties (�crase les anciens codes ECO)}
translate F ClassifyYear {Toutes les parties jou�es la derni�re ann�e}
translate F ClassifyMonth {Toutes les parties jou�es le dernier mois}
translate F ClassifyNew {Seulement les parties qui ne poss�dent pas encore de code ECO}
translate F ClassifyCodes {Codes ECO � utiliser}
translate F ClassifyBasic {Codes de base seulement ("B12", ...)}
translate F ClassifyExtended {Extensions de Scid ("B12j", ...)}

# Compaction:
translate F NameFile {Fichier de noms}
translate F GameFile {Fichier de parties}
translate F Names {Noms}
translate F Unused {Non utilis�}
translate F SizeKb {Taille (kb)}
translate F CurrentState {�tat courant}
translate F AfterCompaction {Apr�s compactage}
translate F CompactNames {Compacter le fichier de noms}
translate F CompactGames {Compacter le fichier de parties}
translate F NoUnusedNames "Il n'y a pas de noms inutilis�s, le fichier de noms est donc d�j� compact�."
translate F NoUnusedGames "Le fichier des parties est d�j� compact�."
translate F NameFileCompacted {Le fichier de noms de la base "[file tail [sc_base filename]]" a �t� compact�.}
translate F GameFileCompacted {Le fichier de parties de la base "[file tail [sc_base filename]]" a �t� compact�.}

# Sorting:
translate F SortCriteria {Crit�re}
translate F AddCriteria {Ajouter un crit�re}
translate F CommonSorts {Tris courants}
translate F Sort {Tri}

# Exporting:
translate F AddToExistingFile {Ajouter les parties � un fichier existant?}
translate F ExportComments {Exporter les commentaires?}
translate F ExportVariations {Exporter les variantes?}
translate F IndentComments {Indenter les commentaires?}
translate F IndentVariations {Indenter les variantes?}
translate F InsertNewlines {Passez � la ligne apr�s 80 cars?}
translate F ExportColumnStyle {Style en colonne (un coup par ligne)?}
translate F ExportSymbolStyle {Style d'annotation symbolique:}
translate F ExportStripMarks {Enlever les codes de marquages de fl�ches et de coloration de cases des commentaires?}
translate F ExportFlags {Exporter les drapeaux}

# Goto game/move dialogs:
translate F LoadGameNumber {Entrer le num�ro de la partie � charger:}
translate F GotoMoveNumber {Aller au coup num�ro:}

# Copy games dialog:
translate F CopyGames {Copier les parties}
translate F CopyConfirm {
 Voulez vous vraiment copier
 les [::utils::thousands $nGamesToCopy] parties filtr�es
 depuis la base "$fromName"
 vers la base "$targetName"?
}
translate F CopyErr {Ne peut copier les parties}
translate F CopyErrSource {la base source}
translate F CopyErrTarget {la base destination}
translate F CopyErrNoGames {n'a pas de parties dans son filtre}
translate F CopyErrReadOnly {est en lecture seule}
translate F CopyErrNotOpen {n'est pas ouverte}

# Colors:
translate F LightSquares {Cases blanches}
translate F DarkSquares {Cases noires}
translate F SelectedSquares {Cases s�lectionn�es}
translate F Grid {Grille}
translate F Previous {Pr�c�dents}
translate F WhitePieces {Pi�ces blanches}
translate F BlackPieces {Pi�ces noires}
translate F WhiteBorder {Bordure des pi�ces blanches}
translate F BlackBorder {Bordure des pi�ces noires}
translate F ArrowMain   {Fl�che pricipale}
translate F ArrowVar    {Fl�ches variantes}
translate F ShowArrows  {Montrer les fl�ches}

# Novelty window:
translate F FindNovelty {Trouver la nouveaut�}
translate F Novelty {Nouveaut�}
translate F NoveltyInterrupt {Recherche de nouveaut� interrompue}
translate F NoveltyNone {Aucune nouveaut� n'a �t� trouv�e pour cette partie}
translate F NoveltyHelp {
Scid va trouver le premier coup de la partie en cours qui atteint une position qui ne figure ni dans la base s�lectionn�e ni dans le r�pertoire d'ouvertures ECO.
}

# Sounds configuration:
translate F SoundsFolder {R�pertoire des fichiers sonores}
translate F SoundsFolderHelp {Le r�pertoire devrait contenir les fichiers King.wav, a.wav, 1.wav, etc}
translate F SoundsAnnounceOptions {Options d'annonce des coups}
translate F SoundsAnnounceNew {Annoncer les coups jou�s}
translate F SoundsAnnounceForward {Annoncer les coups quand avance d'un coup}
translate F SoundsAnnounceBack {Annoncer quand retour arri�re d'un coup}

# Upgrading databases:
translate F Upgrading {Mise � jour}
translate F ConfirmOpenNew {
Ceci est une base de donn�es � l'ancien format (Scid 2) qui ne peut �tre ouverte dans Scid 3, mais une version au nouveau format (Scid 3) a d�j� �t� cr�e.

Voulez vous ouvrir le nouveau format de la base de donn�es?
}
translate F ConfirmUpgrade {
Ceci est une base de donn�es � l'ancien format (Scid 2). Une version de la base de donn�es au nouveau format doit �tre cr��e avant de pouvoir �tre utilis�e dans Scid 3.

Mettre � jour va cr�er une nouvelle version de la base de donn�es; les fichiers originaux ne seront pas �dit�s ou effac�s.

Cela peut prendre un peu de temps, mais il n'est n�cessaire de le faire qu'une fois. Vous pouvez abandonner si cela dure trop longtemps.

Voulez vous mettre � jour cette base de donn�es maintenant?
}

# Recent files options:
translate F RecentFilesMenu {Nombre de fichiers r�cents dans le menu Fichier}
translate F RecentFilesExtra {Nombre de fichiers r�cents dans le sous-menu compl�mentaire}

# My Player Names options:
translate F MyPlayerNamesDescription {
Entrer ci-dessous une liste des noms des joueurs pr�f�r�s, un nom par ligne. Les caract�res sp�ciaux (i.e. "?" pour un seul caract�re, "*" pour n'importe quelle suite de caract�res) sont autoris�s.

Chaque fois qu'une partie avec un joueur de la liste est charg�e, l'�chiquier de la fen�tre principale sera tourn� si n�cessaire de fa�on � montrer la partie selon le point de vue du joueur.
}
#Coach
translate F showblunderexists {Montrer si erreur}
translate F showblundervalue {Montrer la valeur de l'erreur}
translate F showscore {Montrer score}
translate F coachgame {Entrainement}
translate F configurecoachgame {Configurer une partie avec entraineur}
translate F configuregame {Configuration de partie}
translate F Phalanxengine {moteur Phalanx}
translate F Coachengine {entraineur}
translate F difficulty {difficult�}
translate F hard {difficile}
translate F easy {facile}
translate F Playwith {Jouer avec}
translate F white {blanc}
translate F black {noir}
translate F both {les deux}
translate F Play {Jouer}
translate F Noblunder {Pas d'erreur}
translate F blunder {erreur}
translate F Noinfo {-- Pas d'info --}
translate F moveblunderthreshold {le coup est une erreur si les pertes sont sup�rieures ��}
translate F limitanalysis {limiter le temps d'analyse}
translate F seconds {secondes}
translate F Abort {Arr�ter}
translate F Resume {Reprendre}
translate F Restart {Recommencer}
translate F OutOfOpening {Hors de l'ouverture}
translate F NotFollowedLine {Vous n'avez pas suivi la ligne}
translate F DoYouWantContinue {Voulez-vous continuer ?}
translate F CoachIsWatching {L'entraineur regarde}
translate F Ponder {R�flexion permanente}
translate F LimitELO {Limiter force ELO}
translate F DubiousMovePlayedTakeBack {Coup douteux jou�, voulez-vous reprendre le coup ?}
translate F WeakMovePlayedTakeBack {Coup faible jou�, voulez-vous reprendre le coup ?}
translate F BadMovePlayedTakeBack {Mauvais coup jou�, voulez-vous reprendre le coup ?}
translate F Iresign {J'abandonne}
translate F yourmoveisnotgood {Votre coup n'est pas bon}
translate F EndOfVar {Fin de variante}
translate F Openingtrainer {Entrainement aux ouvertures}
translate F DisplayCM {Afficher les coups candidats}
translate F DisplayCMValue {Afficher la valeur des coups candidats}
translate F DisplayOpeningStats {Montrer statistiques}
translate F ShowReport {Montrer rapport}
translate F NumberOfGoodMovesPlayed {bons coups jou�s}
translate F NumberOfDubiousMovesPlayed {coups douteux jou�s}
translate F NumberOfTimesPositionEncountered {nombre de fois position rencontr�e}
translate F PlayerBestMove  {N'autoriser que les meilleurs coups}
translate F OpponentBestMove {Ne jouer que les meilleurs coups}
translate F OnlyFlaggedLines {Seulement les lignes marqu�es}
translate F resetStats {Remettre � z�ro les scores}
translate F Movesloaded {Coups lus}
translate F PositionsNotPlayed {Positions non jou�es}
translate F PositionsPlayed {Positions jou�es}
translate F Success {Succ�s}
translate F DubiousMoves {Coups douteux}
translate F ConfigureTactics {Configurer exercices tactiques}
translate F ResetScores {Remise � z�ro des scores}
translate F LoadingBase {Chargement de la base}
translate F Tactics {Tactique}
translate F ShowSolution {Montrer la solution}
translate F Next {Suivant}
translate F ResettingScore {Remise � z�ro des scores}
translate F LoadingGame {Chargement partie}
translate F MateFound {Mat trouv�}
translate F BestSolutionNotFound {Meilleur coup non trouv� !}
translate F MateNotFound {Mat non trouv�}
translate F ShorterMateExists {Un mat plus rapide existe}
translate F ScorePlayed {score coup jou�}
translate F Expected {attendu}
translate F ChooseTrainingBase {Choisir la base d'exercices}
translate F Thinking {Calcul en cours}
translate F AnalyzeDone {Analyse termin�e}
translate F WinWonGame {Terminer partie gagn�e}
translate F Lines {Lignes}
translate F ConfigureUCIengine {Configurer moteur UCI}
translate F SpecificOpening {Ouverture sp�cifique}
translate F ImportECO {Importer ECO}
translate F StartNewGame {Nouvelle partie}
translate F FixedLevel {Niveau fixe}
translate F Opening {Ouverture}
translate F RandomLevel {Niveau al�atoire}
translate F StartFromCurrentPosition {Jouer depuis la position actuelle}
translate F FixedDepth {Profondeur fixe}
translate F Nodes {Noeuds}
translate F Depth {Profondeur}
translate F Time {Temps}
translate F Auto {Auto}
translate F Score {Score}
translate F {Score Combo} {Score Combin�}
translate F {Time Combo} {Time Combin�}
translate F SecondsPerMove {Secondes par coup}
translate F DepthPerMove {Profondeur par coup}
translate F MoveControl {Type d'analyse}
translate F TimeLabel {Time per move}
translate F AddVars {Ajouter les variantes}
translate F AddScores {Additionner scores}
translate F Engine {Moteur}
translate F TimeMode {Mode de r�flexion}
translate F TimeBonus {Temps + bonus}
translate F TimeMin {min}
translate F TimeSec {sec}
translate F AllExercisesDone {Tous les exercices sont faits}
translate F MoveOutOfBook {Coup hors biblioth�que d'ouverture}
translate F LastBookMove {Dernier coup de la biblioth�que d'ouverture}
translate F AnnotateSeveralGames {Annotater plusieurs parties\ndepuis l'actuelle jusqu'� :}
translate F FindOpeningErrors {Chercher les erreurs d'ouverture}
translate F MarkTacticalExercises {Marquer exercices tactiques}
translate F UseBook {Utiliser biblioth�que}
translate F MultiPV {Nombre de variantes}
translate F Hash {M�moire}
translate F OwnBook {Utiliser biblioth�que propre}
translate F BookFile {Biblioth�que d'ouverture}
translate F AnnotateVariations {Annotater les variantes}
translate F ShortAnnotations {Annotations courtes}
translate F addAnnotatorTag {Ajouter Annotateur}
translate F AddScoreToShortAnnotations {Ajouter score aux annotations courtes}
translate F Export {Exporter}
translate F BookPartiallyLoaded {Biblioth�que charg�e en partie}
translate F AddLine {Ajouter ligne}
translate F RemLine {Enlever ligne}
translate F Calvar {Calcul de variantes}
translate F ConfigureCalvar {Configuration}
# Opening names used in tacgame.tcl
translate F Reti {Reti}
translate F English {Anglaise}
translate F d4Nf6Miscellaneous {1.d4 Cf6 divers}
translate F Trompowsky {Trompowsky}
translate F Budapest {Budapest}
translate F OldIndian {Vieille Indienne}
translate F BenkoGambit {Gambit Benko}
translate F ModernBenoni {Benoni Moderne}
translate F DutchDefence {D�fense hollandaise}
translate F Scandinavian {Scandinave}
translate F AlekhineDefence {D�fense Alekhine}
translate F Pirc {Pirc}
translate F CaroKann {Caro-Kann}
translate F CaroKannAdvance {Caro-Kann Avance}
translate F Sicilian {Sicilienne}
translate F SicilianAlapin {Sicilienne Alapin}
translate F SicilianClosed {Sicilienne ferm�e}
translate F SicilianRauzer {Sicilienne Rauzer}
translate F SicilianDragon {Sicilienne Dragon}
translate F SicilianScheveningen {Sicilienne Scheveningen}
translate F SicilianNajdorf {Sicilienne Najdorf}
translate F OpenGame {Partie ouverte}
translate F Vienna {Viennoise}
translate F KingsGambit {Gambit Roi}
translate F RussianGame {Petroff}
translate F ItalianTwoKnights {Italienne/Deux cavaliers}
translate F Spanish {Espagnole}
translate F SpanishExchange {Espagnole �change}
translate F SpanishOpen {Espagnole ouverte}
translate F SpanishClosed {Espagnole ferm�e}
translate F FrenchDefence {D�fense fran�aise}
translate F FrenchAdvance {D�fense fran�aise Avance}
translate F FrenchTarrasch {D�fense fran�aise Tarrasch}
translate F FrenchWinawer {D�fense fran�aise Winawer}
translate F FrenchExchange {D�fense fran�aise Echange}
translate F QueensPawn {Pion Dame}
translate F Slav {Slave}
translate F QGA {GD Accept�}
translate F QGD {GD D�clin�}
translate F QGDExchange {GD Echange}
translate F SemiSlav {Semi-Slave}
translate F QGDwithBg5 {GD d�clin� avec Fg5}
translate F QGDOrthodox {GD d�clin� Orthodoxe}
translate F Grunfeld {Gr�nfeld}
translate F GrunfeldExchange {Gr�nfeld Echange}
translate F GrunfeldRussian {Gr�nfeld Russe}
translate F Catalan {Catalane}
translate F CatalanOpen {Catalane Ouverte}
translate F CatalanClosed {Catalane Ferm�e}
translate F QueensIndian {Ouest indienne}
translate F NimzoIndian {Nimzo-Indienne}
translate F NimzoIndianClassical {Nimzo-Indienne Classique}
translate F NimzoIndianRubinstein {Nimzo-Indienne Rubinstein}
translate F KingsIndian {Est-indienne}
translate F KingsIndianSamisch {Est-indienne S�misch}
translate F KingsIndianMainLine {Est-indienne ligne principale}

translate F ConfigureFics {Configurer FICS}
translate F FICSLogin {Login}
translate F FICSGuest {Login comme invit�}
translate F FICSServerPort {Port du serveur}
translate F FICSServerAddress {Adresse IP}
translate F FICSRefresh {Rafra�chir}
translate F FICSTimeseal {Timeseal}
translate F FICSTimesealPort {Port Timeseal}
translate F FICSSilence {Silence}
translate F FICSOffers {Offres}
translate F FICSMakeOffer {Faire une Offre}
translate F FICSGames {Parties}
translate F FICSFindOpponent {Trouver adversaire}
translate F FICSTakeback {Reprendre un coup}
translate F FICSTakeback2 {Rependre deux coups}
translate F FICSInitTime {Temps initial (min)}
translate F FICSIncrement {Incr�ment (sec)}
translate F FICSRatedGame {Partie class�e}
translate F FICSAutoColour {automatique}
translate F FICSManualConfirm {accepter manuellement}
translate F FICSFilterFormula {Filtrer avec formule}
translate F FICSIssueSeek {Envoyer seek}
translate F FICSAccept {accepter}
translate F FICSDecline {refuser}
translate F FICSColour {Couleur}
translate F FICSSend {envoyer}
translate F FICSConnect {Connecter}
translate F FICSShouts {Cris}
translate F FICSTells {Dire}
translate F FICSOpponent {Informations de l'adversaire}
translate F FICSInfo {Informations}
translate F FICSDraw {Proposer la nulle}
translate F FICSRematch {Revanche}
translate F FICSQuit {Quitter}
translate F FICSCensor {Censurer}

translate F CCDlgConfigureWindowTitle {Configurer �checs par correspondance}
translate F CCDlgCGeneraloptions {Options g�n�rales}
translate F CCDlgDefaultDB {Base par d�faut:}
translate F CCDlgInbox {R�ception (chemin):}
translate F CCDlgOutbox {Envoi (chemin):}
translate F CCDlgXfcc {Configuration Xfcc:}
translate F CCDlgExternalProtocol {Protocole externe (p.e. Xfcc)}
translate F CCDlgFetchTool {Outil de r�ception:}
translate F CCDlgSendTool {Outil d'envoi:}
translate F CCDlgEmailCommunication {Communication eMail}
translate F CCDlgMailPrg {Programme de mail:}
translate F CCDlgBCCAddr {Addresse de copie:}
translate F CCDlgMailerMode {Mode:}
translate F CCDlgThunderbirdEg {p.e. Thunderbird, Mozilla Mail, Icedove...}
translate F CCDlgMailUrlEg {p.e. Evolution}
translate F CCDlgClawsEg {p.e Sylpheed Claws}
translate F CCDlgmailxEg {p.e. mailx, mutt, nail...}
translate F CCDlgAttachementPar {Attachement:}
translate F CCDlgInternalXfcc {Utiliser Xfcc interne}
translate F CCDlgConfirmXfcc {Confirmer coups}
translate F CCDlgSubjectPar {Objet:}
translate F CCDlgDeleteBoxes {Vider bo�tes}
translate F CCDlgDeleteBoxesText {Voulez-vous r�ellement vider les bo�tes entrantes et sortantes pour les �checs par correspondance ? Cela n�cessite une nouvelle synchronisation pour afficher le dernier �tat de vos parties}
translate F CCDlgConfirmMove {Confirmer coup}
translate F CCDlgConfirmMoveText {Si vous confirmez, le coup ci-dessous et le commentaire sont envoy�s au serveur:}
translate F CCDlgDBGameToLong {Ligne principale incoh�rente}
translate F CCDlgDBGameToLongError {La ligne principale dans votre base de donn�es est plus longue que la partie dans votre bo�te de r�ception. Si la bo�te de r�ception contient les parties en cours, c'est-�-dire juste apr�s une synchronisation, certains coups ont �t� ajout�s � tort � la ligne principale dans la base de donn�es.\nDans ce cas veuillez raccourcir la ligne principale � au plus coup\n}
translate F CCDlgStartEmail {Commencer nouvelle partie par eMail}
translate F CCDlgYourName {Votre nom:}
translate F CCDlgYourMail {Votre adresse mail:}
translate F CCDlgOpponentName {Nom adversaire:}
translate F CCDlgOpponentMail {Adresse eMail adversaire:}
translate F CCDlgGameID {Identifiant Partie (unique):}
translate F CCDlgTitNoOutbox {Scid: Bo�te d'envoi}
translate F CCDlgTitNoInbox {Scid: Bo�te de r�ception}
translate F CCDlgTitNoGames {Scid: Pas de parties par correspondence}
translate F CCErrInboxDir {R�pertoire de la bo�te de r�ception:}
translate F CCErrOutboxDir {R�pertoire de la bo�te d'envoi:}
translate F CCErrDirNotUsable {n'existe pas ou inaccessible!\nVeuillez v�rifier les param�tres.}
translate F CCErrNoGames {ne contient pas de parties!\nVeuillez d'abord les r�cup�rer.}
translate F CCDlgTitNoCCDB {Scid: pas de base par correspondance}
translate F CCErrNoCCDB {Aucune base du type 'Correspondance' n'est ouverte. Ouvrez-en une avant d'utiliser les fonctions par correspondance.}
translate F CCFetchBtn {R�cup�rer les parties sur le serveur et les analyser dans la bo�te de r�ception}
translate F CCPrevBtn {Aller � la partie pr�c�dente}
translate F CCNextBtn {Aller � la partie suivante}
translate F CCSendBtn {Envoyer coup}
translate F CCEmptyBtn {Vider les bo�tes d'envoi et de r�ception}
translate F CCHelpBtn {Aide sur les ic�nes et indicateurs.\nPour plus d'aide appuyer sur F1!}
translate F CCDlgServerName {Nom serveur:}
translate F CCDlgLoginName  {Login:}
translate F CCDlgPassword   {Mot de passe:}
translate F CCDlgURL        {Xfcc-URL:}
translate F CCDlgRatingType {Type classement:}
translate F CCDlgDuplicateGame {Identifiant de partie non-unique}
translate F CCDlgDuplicateGameError {Cette partie existe � plusieurs exemplaires dans la base de donn�es. Veuillez effacer tous les doublons et compacter votre fichier de parties (Fichier/Maintenance/Compacter base).}
translate F CCDlgSortOption {Tri:}
translate F CCDlgListOnlyOwnMove {Parties o� c'est mon tour}
translate F CCOrderClassicTxt {Site, Ev�nement, Ronde, R�sultat, Blancs, Noirs}
translate F CCOrderMyTimeTxt {Ma pendule}
translate F CCOrderTimePerMoveTxt {Temps par coup jusqu'au prochain contr�lede temps}
translate F CCOrderStartDate {Date de d�part}
translate F CCOrderOppTimeTxt {Pendule adversaire}
translate F CCDlgConfigRelay {Configurer observations ICCF}
translate F CCDlgConfigRelayHelp {Aller � la page des parties sur http://www.iccf-webchess.com et afficher la partie que vous aimez observer. Si vouz voyez l'�chiquier, copiez l'URL de votre navigateur � la liste ci-dessous. Seule une URL par ligne !\nPar exemple: http://www.iccf-webchess.com/MakeAMove.aspx?id=266452}

translate F ExtHWConfigConnection {Configurer hardware ext�rieur}
translate F ExtHWPort {Port}
translate F ExtHWEngineCmd {Commande du moteur}
translate F ExtHWEngineParam {Param�tre du moteur}
translate F ExtHWShowButton {Montrer bouton}
translate F ExtHWHardware {Hardware}
translate F ExtHWNovag {Novag Citrine}
translate F ExtHWInputEngine {Autre p�riph�rique}
translate F ExtHWNoBoard {Pas de plateau}
translate F IEConsole {Console p�riph�rique}
translate F IESending {Les coups ont �t� envoy�s par}
translate F IESynchronise {Synchroniser}
translate F IERotate  {Retourner}
translate F IEUnableToStart {Echec du d�marrage p�riph�rique:}
translate F DoneWithPosition {Position termin�e}
translate F Board {Echiquier}
translate F showGameInfo {Montrer le panneau d'info}
translate F autoResizeBoard {Redimensionnement automatique}
translate F DockTop {D�placer en haut}
translate F DockBottom {D�placer en bas}
translate F DockLeft {D�placer � gauche}
translate F DockRight {D�placer � droite}
translate F Undock {D�tacher}
translate F ChangeIcon {Changer icone}
translate F More {Plus...}

# Drag & Drop
translate F CannotOpenUri {Ouverture impossible de l'URI:}
translate F InvalidUri {Les donn�es d�pos�es sont sans URI valide}
translate F UriRejected	{Les fichiers suivant sont rejet�s:}
translate F UriRejectedDetail {Seuls les types de fichiers list�s seront g�r�s:}
translate F EmptyUriList {Le contenu d�pos� est vide.}
translate F SelectionOwnerDidntRespond {Timeout durant l'envoi: absence de r�ponse.}
translate F PasteAnal {Coller l'analyse}
translate F SortOpcodes {Tri des Opcodes}
translate F AddPosition {Ajout d'une position}
translate F FindPos {Recherche position profonde}
translate F AnalPosition {Analyse des positions}
translate F StripOpcodes {�limination des Opcodes}
translate F NoMoves {D�placement interdit depuis position}
translate F CountBestMoves {Compteur des meilleurs d�placements}

##########
#
# ECO Opening name translations:

# translateECO F
  # Accelerated {, Acc�l�r�}
  # {: Accelerated} Acc�l�r�
  # Accepted {, accept�}
  # {: Accepted} Accept�
  # Advance Avance
  # {as Black} {avec les Noirs}
  # Attack Attaque
  # Bishop Fou
  # Bishop's Fou
  # Classical Classique
  # Closed Ferm�
  # {Closed System} {Syst�me ferm�}
  # Counterattack Contre-Attaque
  # Countergambit Contre-Gambit
  # Declined {, D�clin�}
  # Defence D�fense
  # deferred diff�r�
  # Deferred {, Diff�r�}
  # Early T�t
  # Exchange Echange
  # Game Partie
  # Improved am�lior�
  # King's Roi
  # Knight Cavalier
  # Line Ligne
  # {Main Line} Ligne principale
  # Open Ouvert
  # Opening Ouverture
  # Queen's Dame
  # Queenswap Permutation de dame
  # Symmetrical Sym�trique
  # Variation Variante
  # Wing Aile
  # with avec
  # without sans
  #
  # Alekhine Alekhine
  # Averbakh Averbakh
  # Botvinnik Botvinnik
  # Chigorin Tchigorine
  # Polugaevsky Polugaevsky
  # Rauzer Rauzer
  # Sveshnikov Sveshnikov
  #
  # Austrian Autrichien
  # Berlin Berlinois
  # Bremen Breme
  # Catalan Catalane
  # Czech Tch�que
  # Dutch Hollandaise
  # English Anglaise
  # French Fran�aise
  # Hungarian Hongroise
  # Indian Indienne
  # Italian Italienne
  # Latvian Letton
  # Meran Meran
  # Moscow Moscou
  # Polish Polonais
  # Prague Prague
  # Russian Russe
  # Scandinavian Scandinave
  # Scheveningen Scheveningen
  # Scotch Ecossaise
  # Sicilian Sicilienne
  # Slav Slave
  # Spanish Espagnole
  # Swedish Su�dois
  # Swiss Suisse
  # Vienna Viennois
  # Yugoslav Yougoslave
  #
  # {Accelerated Fianchetto} {Fianchetto Acc�l�r�}
  # {Accelerated Pterodactyl} {Pterodactyle Acc�l�r�}
  # {Alekhine Defence} D�fense-Alekhine
  # {Alekhine Variation} Variante-Alekhine
  # {Alekhine: S�misch Attack} {Alekhine: Syst�me viennois (Attaque S�misch)}
  # {Anderssen Opening} Ouverture-Anderssen
  # {Anti-King's Indian} Anti-Est-Indienne
  # {Austrian Attack} {Attaque Autrichienne}
  # {Benko Gambit} {Gambit Benko}
  # {Benko Opening} {Ouverture Benk�}
  # {Berlin Defence} {D�fense Berlinoise}
  # Chameleon Cameleon
  # Chelyabinsk Chelyabinsk
  # {Classical Defence} {D�fense Classique}
  # {Spanish: Classical Defence} {Espagnole: D�fense Classique}
  # {Classical Exchange} {Echange Classique}
  # {Classical Variation} {Variante Classique}
  # {Closed Berlin} {Berlinoise Ferm�e}
  # {Open Berlin} {Berlinoise Ouverte}
  # {Bird's,} {Bird,}
  # {Bird's Defence} {D�fense Bird}
  # {Bird's Deferred} {Bird Diff�r�e}
  # {Bishop's Opening} {Ouverture du Fou}
  # {Botvinnik System} {Syst�me Botvinnik}
  # {Central Variation} {Variante du centre}
  # {Centre Attack} {Attaque du centre}
  # {Centre Game} {Ouverture du centre}
  # {Danish Gambit} {Gambit Danois}
  # Dragon Dragon
  # {Dutch Variation} {Variante Hollandaise}
  # {Early Exchange} {Echange rapide}
  # {Early Queenswap} {Echange de Dames rapide}
  # {English Attack} {Attaque Anglaise}
  # {English: King's} {Anglaise: Roi}
  # {English Variation} {Variante Anglaise}
  # {Englund Gambit} {Gambit Englund}
  # {Exchange Variation} {Variante d'�change}
  # {Fianchetto Variation} {Variante du Fianchetto}
  # {Flohr Variation} {Variante Flohr}
  # {Four Knights} {Quatre Cavaliers}
  # {Four Knights Game} {Partie des Quatre Cavaliers}
  # {Four Pawns} {Quatre Pions}
  # {Four Pawns Attack} {Attaque des Quatre Pions}
  # {French Variation} {Variante Fran�aise}
  # {From Gambit} {Gambit From}
  # {Goring Gambit} {Gambit G�ring}
  # {Grob Gambit} {Gambit Grob}
  # {Hungarian Defence} {D�fense Hongroise}
  # {Indian Variation} {Variante Indienne}
  # {Italian Game} {Partie Italienne}
  # KGD {Gambit Roi D�clin�}
  # {Classical KGD} {Gambit Roi D�clin� Classique}
  # {Keres Variation} {Variante Keres}
  # KGA {Gambit Roi Accept�}
  # {KGA: Bishop's Gambit} {Gambit Roi Accept�: Gambit du Fou}
  # {KGA: King's Knight Gambit} {Gambit Roi Accept�: Gambit du Cavalier}
  # {King's Gambit} {Gambit Roi}
  # {King's Gambit Accepted} {Gambit Roi Accept�}
  # {King's Gambit Accepted (KGA)} {Gambit Roi Accept�}
  # {King's Indian} Est-Indienne
  # KIA {Attaque Est-Indienne}
  # {King's Knight Gambit} {Gambit du Cavalier Roi}
  # {King's Pawn} {Pion Roi}
  # {Lasker Variation} {Variante Lasker}
  # {Latvian Gambit} {Gambit Letton}
  # {Maroczy Bind} {Maroczy}
  # {Marshall Variation} {Variante Marshall}
  # {Modern Attack} {Attaque Moderne}
  # {Modern Steinitz} {Steinitz Moderne}
  # {Modern Variation} {Variante Moderne}
  # {Moscow Variation} {Variante de Moscou}
  # Nimzo-Indian Nimzo-Indienne
  # {Old Benoni} {Vieille Benoni}
  # {Old Indian} {Vieille Indienne}
  # {Old Indian Attack} {Attaque Vieille Indienne}
  # {Old Steinitz} {Vieille Steinitz}
  # {Open Game} {Partie Ouverte}
  # {Poisoned Pawn} {Pion empoisonn�}
  # {Polish Variation} {Variante Polonaise}
  # {Polugaevsky Variation} {Variante Polugajewski}
  # {Queen's Gambit} {Gambit Dame}
  # {Queen's Gambit Accepted} {Gambit Dame accept�}
  # QGA {GDA}
  # {Queen's Gambit Accepted (QGA)} {Gambit Dame accept� (GDA)}
  # {Reversed QGA} {GDA invers�}
  # QGD {Gambit Dame D�clin�}
  # {Queen's Gambit Declined (QGD)} {Gambit Dame D�clin� (GDD)}
  # {Reversed QGD} {GDD invers�}
  # {Queen's Indian} Ouest-Indienne
  # {Queen's Pawn} {Pion Dame}
  # {Queen's Pawn Game} {Partie du Pion Dame}
  # {Reversed Slav} {Slave Invers�e}
  # {Rubinstein Variation} {Variante Rubinstein}
  # {Russian Game} {Partie Russe}
  # {Russian Game (Petroff Defence)} {Partie Russe (D�fense Petrov)}
  # {Russian-Three Knights Game} {Partie Russe: Trois Cavaliers}
  # {Scandinavian (Centre Counter)} {Scandinave (Centre)}
  # Schliemann J�nisch
  # {Schliemann (J�nisch)} {Gambit J�nisch (Schliemann)}
  # {Scotch Opening} {Ouverture Ecossaise}
  # {Sicilian Defence} {D�fense Sicilienne}
  # {Sicilian Variation} {Variante Sicilienne}
  # {Slav Defence} {D�fense Slave}
  # Smith-Morra Morra
  # {Smith-Morra Accepted} {Gambit Morra Accept�}
  # {Smith-Morra Gambit} {Gambit Morra}
  # {Spanish (Ruy Lopez)} {Partie Espagnole}
  # {Start position} {Position de d�part}
  # {Steinitz Deferred} {Rubinstein retard�e}
  # {Swedish Variation} {Variante su�doise}
  # {Swiss Variation} {Variante Suisse}
  # {Tarrasch's Gambit} {Gambit Tarrasch}
  # {Three Knights} {Trois Cavaliers}
  # {3 Knights} {Trois Cavaliers}
  # {Three Knights Game} {Partie des Trois Cavaliers}
  # {Three Pawns Attack} {Attaque des Trois Pions}
  # {Two Knights} {Deux Cavaliers}
  # {Two Knights Defence} {D�fense des Deux Cavaliers}
  # {Two Knights Variation} {Variante des Deux Cavaliers}
  # {Two Pawns} {Deux Pions}
  # {Two Pawns Attack} {Attaque des Deux Pions}
  # {Wing Gambit} {Gambit de l'aile}
  # {Yugoslav Attack} {Attaque Yougoslave}


}

# end of francais.tcl
