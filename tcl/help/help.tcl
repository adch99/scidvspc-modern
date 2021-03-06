### help.tcl: Help pages for Scid.

set helpTitle(Contents) "$::scidName"
set helpText(Contents) "<h1>$::scidName</h1>

  <ht><img icon></ht>
  <ht><a Intro>Introduction</a></ht>
  <ht><a TenMinPrimer>10 Minutes to Scid</a></ht>
  <ht><a GUI>Using the GUI</a></ht>
  <ht><a BrowsingPGN>PGN Files and Scid</a></ht>
  <ht><a Analysis>Running Chess Engines</a></ht>
  <ht><a Scid>Databases and General Use</a></ht>
  <ht><a ComputerGame>Playing against the Computer</a></ht>
  <ht><a FICS>Playing on the Internet (FICS)</a></ht>
  <ht><a Tourney>Computer Tournaments</a></ht>
  <ht><a TacticsTrainer>Mate in ..N.. Puzzles</a></ht>
  <ht><a Related>Links</a></ht>
  <ht><a Author>About</a></ht>
  <br>
  <p><footer>$::scidName  version $::scidVersion</footer></p>
"
set helpTitle(Intro) "$::scidName"
set helpText(Intro) {<h1>Introduction</h1>

<p>
<url http://scidvspc.sourceforge.net/>Scid vs. PC</url>
is a usability and bug-fix fork of <b>Shane's Chess Information Database</b>. With
it you can play chess online or against the computer, browse tournaments
downloaded in pgn format, create huge chess databases, and generate opening and player reports.
</p>
<p><i>
See <run ::tip::show 0><green>Tip of the Day</green></run> for some helpful hints, or the <a Console>Splash Window</a> for info and debugging.
</i></p>
</p>

<h3>Features</h3>
<ul>
<li>Overhauled and customizable interface</li>
<li>Engine versus engine computer tournaments</li>
<li>Extra search features, including move, end-of-game, and stalemate/checkmate searches</li>
<li>Drag+Drop file opens for Windows and Linux</li>
<li>Rewritten Gamelist widget with convenient context menus and buttons, and integrated Database Switcher</li>
<li>Improved Computer Game and FICS features, including premove, and simultaneous observed games</li>
<li>Many chess engine improvements, including max-ply option, an unlimited number of engines running, and the function hot-keys can be explicitly set.
<li>Tri-coloured Tree bar-graphs, and options for more or less statistics</li>
<li>Ratings Graph can show multiple players, and Score graph is an attractive bar graph</li>
<li>Improved Book windows, including book compare, and remove move features</li>
<li>Redone Button and Tool bars</li>
<li>The Chessboard/Pieces config widget has been overhauled, and includes support for custom tiles and pieces</li>
<li>Clickable Tablebase moves</li>
<li>Recent Game and Player-info histories</li>
<li>Bug tested Undo and Redo features</li>
<li>The Help index is meaningful to new users, with links to the game's main features</li>
<li>Clickable Variation Arrows, and Paste Variation feature</li>
<li>A user friendly Annotation feature, with search-to-depth feature</li>
<li>Better support for UTF and Latin character sets in PGN export/imports</li>
<li>Improved and more powerful Tree Mask feature</li>
<li>
<li>Chess variants are unsupported except for Chess960/Fischer Chess - which is supported by a source-code patch.<li>
</ul>
  <p><footer>Updated: Scid vs. PC 4.18 July 2017</footer></p>
}

set helpTitle(TenMinPrimer) {10 Minutes to Scid}
set helpText(TenMinPrimer) {<h1>10 Minutes to Scid vs PC</h1>
    <p>
    Scid vs PC is a program that lets you analyse your games, learn theory
    from databases, and prepare for your opponents. What we are going to do now
    is analyse a game with Scid vs PC.
    </p>

    <h2>Get a Game</h2>
    <p>
    We need a game to analyse. We can download the PGN file if we played
    a game online. Open the PGN file from File <gt> Open. We can also
    copy-paste the PGN text into Scid with Edit <gt> Paste PGN <gt> Import.
    If we played over the board and have the moves, we go to Game <gt> New Game
    and then start playing the moves on the board.
    </p>

    <h2>Human Analysis and Annotation</h2>
    <p>
    Now we can analyse our game manually by moving through the game. We can
    move through the game by the arrow buttons above the board. The normal
    arrow keys and mouse scrolling also works. Hold Ctrl and click on two
    squares to create arrows, hold Shift and click on a square to highlight the
    square. To add a comment on a move, we right-click the move in the PGN
    window and select Comment Editor. We can write our comments here and add
    manual annotation symbols. Arrows, highlights, labels can all be added
    from here as well (See <a Comment>Comment Editor</a>).
    </p>

    <h2>Engine Analysis</h2>
    <p>
    An engine is a program that analyses the board position, gives a score
    to each move and recommends the best move. Scid vs PC comes Stockfish 9
    by default, but there are many free and open source engines out there and
    we can download and add them to Scid vs PC. We go to Tools <gt> Analysis
    Engines, select Stockfish and click Start. Now Stockfish begins to analyse
    the current position on the board. It will open in a new tab on the right.
    It will output a lot of lines, which are irrelevant for us. We only want
    to look at the top lines, so increase the 1 beside the book icon to 3 or
    4. This controls the number of lines. The topmost line is the best move
    as per the engine and the score is taken as the score for the position.
    Let us take a particular line:
    </p>
    <ol>
        <li><b>Displayed Line:</b> 1. 27 [+0.26] 3.Bb5  Nf6  4.O-O  Nxe4</li>
        <li><b>Depth:</b> 27</li>
        <li><b>Score:</b> [+0.26]</li>
        <li><b>Moves:</b> 3.Bb5  Nf6  4.O-O  Nxe4</li>
    </ol>
    <br>
    <p>
    We can also annotate the whole game at once. Go to the first move by
    clicking the arrow buttons above the board. Now in the engine (Stockfish)
    tab, click the annotate button
    <button tb_annotate />. We leave most
    of the values as defaults, but change the depth to around 20 for a quick
    run. Higher depths give more accurate analysis but also take more time.
    We can also run this for multiple games together. Once it is done, we can
    see the score along with the moves in the PGN window. We can generate an
    interactive graph using Tools <gt> Score Graph. The graph can show both
    time taken per move (if your PGN file has it) and the engine score.
    To switch between them, left-click on the little arrow beside the Graph
    tab label to open a menu. We can select the graph type in Options in this
    menu. As we move through the game, we also see arrows added by engine to
    show the best move wherever the actual move is a blunder.
    </p>

    <h2>Databases</h2>
    <p>
    The place where Scid vs PC really shines in comparison to online websites
    which will also do game analysis for you is in it's database capabilities. A
    database simply is a collection of chess games. Like many simple things, it
    is a fairly powerful tool when used properly. Suppose we have a database of
    a 10,000 chess games played by GMs in the past year. We can open up a game
    of our own, and look at what moves were played by these GMs in the same
    position as us. This allows us to learn from their games and improve our
    openings. Suppose we have a large collection of our own games, we can look
    at what openings are performing better for us, which endgames are we weak
    at, which moves do we face the most in a certain position etc. Having a
    collection of our opponents games tells us what they do in certain lines and
    openings.
    </p>
    <p>
    Most of these can be done using a simple tree window. We download a large
    collection of our games from a website in PGN or if they were played over
    the board, then we can add them by hand. In any case, we create a new
    database from File <gt> New Database. Give it an appropriate name and
    location. Now open the PGN file from File <gt> Open. Open the game list
    window from Windows <gt> Game List. At the bottom, we see three boxes:
    Clipbase, the PGN file and the newly created Database. Drag and drop the PGN
    box onto the Database to copy the games to it. To add games manually, we go
    to Game <gt> New Game, input the moves and then Game <gt> Add Game (or
    Ctrl-S).
    </p>
    <p>
    Now, we go to File <gt> Open Base as Tree and select our new database.
    This shows us the frequency of the moves played by/against us and their win
    rates. So when if we now analyse a new game, we can see all this for each
    move in the tree window.
    </p>

    <h2>TL;DR</h2>
    <p>
    Scid vs PC has 3 major parts:
    </p>
    <ol>
    <li>
        <b>Game Data:</b> Game Data is what the user has to bring, Scid vs PC can't
        help with this. User's and opponents games can be brought from wherever
        they play. Most websites give an option to download this. For Master's
        games Caissabase (https://caissabase.co.uk/) is a large,
        good and free database. It is NOT included with Scid vs PC.
    </li>
    <li>
        <b>Analysis Engines and Tools:</b> Analysis engines and tools are all
        present in Scid vs PC already. You can download more and add them
        too.
    </li>
    <li>
        <b>Databases:</b> Databases are what store the game data and
        allow analysis tools to work fast and accurately.
    </li>
    </ol>
    <p><footer>Updated: Scid vs PC 4.22, July 2021</footer></p>
}

set helpTitle(GUI) {Scid's GUI}
set helpText(GUI) {<h1>Scid's User Interface</h1>

  <br>
  <ht><a Docking><b>Docked Windows</b></a></ht>
  <ht><a MainWindow>The <b>Main Board</b></a></ht>
  <ht><a GameList>Game List window</a></ht>
  <ht><a Menus><b>Main Menus</b></a></ht>
  <ht><a Moves>Entering <b>Moves</b></a></ht>
  <br>
  <p><footer>Updated: Scid vs. PC 4.14 Dec 2014</footer></p>
}

set helpTitle(FICS) "FICS"
set helpText(FICS) {<h1>FICS</h1>
<ul>
<p>The Free Internet Chess Server (FICS) is a web portal where people from
all over the world play chess.  Features include a player rating system,
international tournaments and the ability to follow and discuss other people's
games.</p>

<p>Though it is possible to play anonymously, to create a user account
visit <url http://www.freechess.org>www.freechess.org</url>.
Players may see their games at <url http://ficsgames.org>http://ficsgames.org</url>.
</p>

<p>To start FICS use <run ::fics::config><green>Play--<gt>Internet (FICS)</green></run>.
</p>

<li><a FICSlogin>Logging In</a>
<br>
<li><a FICSwidget>Using FICS</a></li>
<br>
<li><a FICSfindopp>Finding an Opponent</a></li>
<br>
<li><a FICSobserve>Observing/Examining Games, International Events</a> and other features</li>
<br>
<li><a FICScommands>FICS Commands and Variables</a></li>
</ul>

<p><i>Scid vs. PC currently does not support the commercial ICC Chess Server,
but could do so by tweaking the string matches in "fics.tcl". FICS and ICC have
<url http://www.edcollins.com/chess/fics-icc.htm>a shared history</url></i>.
</p>

  <p><footer>Updated: Scid vs. PC 4.7 Febuary 2012</footer></p>
}

set helpTitle(BrowsingPGN) "PGN"
set helpText(BrowsingPGN) {<h1>PGN Files and Scid</h1>

<p>PGN is the standard format for chess games, and Scid will happily open and display large game archives.
<i>But PGN is not the native format of Scid's Databases. It takes a little
learning, but using <a Scid>Scid Databases</a> instead of PGN is highly recommended.</i></p>

<p>To open PGN files, use the <run ::file::Open><green>File-<gt>Open</green></run> dialog,
<a Switcher draganddrop>Drag and Drop</a>, or the
<a Pgnscid>Pgnscid</a> utility for quick imports and troubleshooting.</p>


<h3>Viewing Games</h3>

<p>Once you have loaded a game, open the <a PGN>PGN Window</a>
to browse the game. Clicking on moves will advance the game, or
use the wheel-mouse in the main window. Clicking on <a Comment>comments</a>
allows you to edit them.</p>

<p>In the <a MainWindow GameInfo>Game Info</a> window, you will see the names of the players and
tournament. These names are also clickable, and display information about
the tournament and how the player performed. This is the start of Scid's
database capabilities.</p>

<p>If you have opened a multigame PGN, the <a GameList>Game List</a>
widget allows you to browse the games and select those of interest.
<i>The Game List also serves to select and delete games from Scid's
databases.</i></p>

<h3>Editing Games</h3>

<p>Changes made to a single game PGN file may be saved back to PGN via <run
::pgn::savePgn .><green>File--<gt>Save PGN</green></run>.

But If you wish to change a file with multiple games, it must first be
converted to a <a Scid>Scid Database</a>. The easiest way to do this is by
opening the <a GameList>Game List</a> and dragging the PGN file to the Clipbase.
After making changes in the Clipbase, then use <a Export>Export</a> to write them
back to PGN.
</p>

<p><footer>Updated: Scid vs. PC 4.8 May 2012</footer></p>
}

set helpTitle(Scid) {General Use}
set helpText(Scid) {<h1>Databases and General Use</h1>

  <p><i>
  Databases are implemented via a fast <a Formats>three file format</a>,
  and populated by importing PGN archives or other databases using the <a
  Clipbase>Clipbase</a> as a cut and paste tool.
  </i></p>

  <p><i>
  Ca??ssabase free database <url http://caissabase.co.uk/>http://caissabase.co.uk/</url>
  </i></p>

  <h4>Using Databases</h4>
  <ul>
  <li><a Clipbase><b>Clipbase</b> - the default database</a></li>
  <li><a Sorting><b>Sorting</b> databases</a></li>
  <li><a Flags><b>Game Flags</b></a></li>
  <li><a Searches><b>Searches</b></a></li>
  <li><a Reports><b>Reports</b></a></li>
  <li><a Formats><b>Database</b> file formats</a></li>
  </ul>

  <h4>Main Features/Windows</h4>
  <ul>
  <li><a Analysis><b>Analysis</b> Window</a></li>
  <li><a Book><b>Book</b> Window</a></li>
  <li><a Comment><b>Comment Editor</b></a></li>
  <li><a Crosstable>The <b>Crosstable</b></a></li>
  <li><a Finder>The <b>File Finder</b></a></li>
  <li><a GameList><b>Game List</b> Window</a></li>
  <li><a PGN><b>PGN (Moves)</b> Window</a></li>
  <li><a PList><b>Player Finder</b> Window</a></li>
  <li><a PInfo><b>Player Info</b> Window</a></li>
  <li><a Tmt><b>Tournament Finder</b> Window</a></li>
  <li><a Tree><b>Tree</b> Window</a></li>
  <li><a Graphs><b>Graph</b> Windows</a></li>
  </ul>

  <h4>Other Utilities and Information</h4>
  <ul>
  <li><a Analysis Annotating>Annotating games</a> automatically</li>
  <li><a Bookmarks><b>Bookmarks</b></a></li>
  <li><a CalVar><b>Calculation of Variations</b> training</a></li>
  <li><a Cmdline><b>Command-line</b> options</a></li>
  <li><a Compact><b>Compacting</b> a database</a></li>
  <li><a Correspondence>Correspondence Chess</a></li>
  <li><a Maintenance><b>Database maintenance</b> tools</a></li>
  <li><a ECO><b>ECO</b> codes</a></li>
  <li><a Email><b>Email</b> Chess Manager</a></li>
  <li><a EPD><b>EPD</b> files</a></li>
  <li><a Export><b>Exporting</b> games</a></li>
  <li><a Import><b>Import game</b> Window</a></li>
  <li><a LaTeX>Using <b>LaTeX</b> with Scid</a></li>
  <li><a Options><b>Options</b> and preferences</a></li>
  <li><a PTracker><b>Piece Tracker</b></a></li>
  <li><a Pgnscid><b>Pgnscid</b>: converting PGN files</a></li>
  <li><a NAGs>Standard <b>NAG</b> annotation values</a></li>
  <li><a TB><b>Tablebases</b></a></li>
  </ul>

  <p><footer>Updated: Scid vs. PC 4.7, January 2012</footer></p>
}

set helpTitle(Index) "Scid Help Topic Index"
set helpText(Index) "<h1>$::scidName Help Index</h1>"
append helpText(Index) {
<br>
<a Index A>  A</a> <a Index B>  B</a> <a Index C>  C</a> <a Index D>  D</a> <a Index  E> E</a> <a Index F>  F</a> <a Index G>  G</a> <a Index H>  H</a> <a Index I>  I</a> <a Index  J> J</a> <a Index K>  K</a> <a Index L>  L</a> <a Index M>  M</a> <a Index N>  N</a> <a Index O>  O</a> <a Index P>  P</a> <a Index Q>  Q</a> <a Index R>  R</a> <a Index S>  S</a> <a Index T>  T</a> <a Index U>  U</a> <a Index V>  V</a> <a Index W>  W</a> <a Index X>  X</a> <a Index Y>  Y</a> <a Index Z>  Z</a>
<br>
  <h4><name A>A </name></h4>
  <ul>
  <li><a Analysis>Analysis</a> window</li>
  <li><a Comment>Annotating games</a></li>
  <li><a Analysis Annotating>Annotating games</a> automatically</li>
  <li><a Comment Annotation>Annotation symbols</a></li>
  <li><a NAGs>Annotation symbols</a> (NAGs)</li>
  <li>Entering <a Moves Informant>annotation symbols</a></li>
  <li><a Comment Diagrams>Arrows</a></li>
  <li><a Author>Author, contacting</a></li>
  <li><a Maintenance Autoload>Autoloading</a> a game</li>
  <li><a MainWindow Autoplay>Autoplay mode</a></li>
  </ul>

  <h3><name B>B</name></h3>
  <ul>
  <li><a Finder>Backups</a></li>
  <li><a Tree Best>Best games</a> window</li>
  <li><a MainWindow>Board setup</a></li>
  <li><a Board>Board textures and pieces</a></li>
  <li><a Searches Board>Board searches</a></li>
  <li><a Book>Book</a> window</li>
  <li><a BookTuning>Book tuning</a></li>
  <li>Making <a Book Polyglot>Polyglot Books</a></li>
  <li><a Bookmarks>Bookmarks</a></li>
  <li><a GameList Browsing>Browsing games</a></li>
  <li><a MainWindow>Button Bar</a></li>
  </ul>

  <h3><name C>C</name></h3>
  <ul>
  <li><a Changelog>Changelog</a></li>
  <li><a Analysis>Chess Engines</a></li>
  <li><a Analysis List>Chess Engine</a> configuration</li>
  <li><a Analysis Debugging>Chess Engine</a>  debugging</li>
  <li><a Board>Chess Pieces</a></li>
  <li><a Maintenance Cleaner>Cleaner</a></li>
  <li><a Clipbase>Clipbase</a></li>
  <li><a Options Colours>Colours</a> (various colour options)</li>
  <li><a Cmdline>Command-line options</a></li>
  <li><a Comment>Comment Editor</a></li>
  <li><a Maintenance Twins>Comparing games</a> with the Twin Game Checker</li>
  <li><a ComputerGame>Computer Game</a></li>
  <li><a Tourney>Computer Tournament</a></li>
  <li><a Compact>Compacting a database</a></li>
  <li>Scid vs PC's <a Console>Console</a></li>
  <li><a Correspondence>Correspondence Chess</a></li>
  <li><a CCIcons>Correspondence Chess Icons</a></li>
  <li><a Import CCRL>Computer Chess (CCRL) game imports</a></li>
  <li><a Author>Contact information</a></li>
  <li><a Contents>Contents</a></li>
  <li><a CQL>CQL</a> Chess Query Language</li>
  <li><a Crosstable>Crosstable</a></li>
  </ul>

  <h3><name D>D</name></h3>
  <ul>
  <li><a Compact>Database compaction</a></li>
  <li><a Formats>Database file formats</a></li>
  <li><a Maintenance>Database maintenance</a></li>
  <li><a Sorting>Database sorting</a></li>
  <li><a Switcher>Database switcher</a> window</li>
  <li><a GameList Del>Deleted and Filtered games.</a>
  <li><a Flags>Delete flag</a></li>
  <li><a Maintenance Twins>Deleting twin games</a></li>
  <li>Configuring <a HardwareConfig>DGT Electronic Chess Board</a></li>
  <li><a InputEngine>DGT Usage</a></li>
  <li><a Comment Diagrams>Diagrams</a></li>
  <li><a Comment Diagrams>Drawing arrows</a></li>
  <li><a Docking>Docked Windows</a></li>
  <li><a Switcher draganddrop>Drag and Drop</a></li>
  </ul>

  <h3><name E>E</name></h3>
  <ul>
  <li><a ECO>ECO codes</a></li>
  <li><a ECO Browser>ECO Browser</a> window</li>
  <li><a ECO Codes>ECO codes specification</a></li>
  <li><a Menus Edit>Edit menu</a></li>
  <li>Adding <a Maintenance Ratings>Elo Ratings</a></li>
  <li><a Email>Email window</a> (deprecated)</li>
  <li>Correspondence Chess via <a CCeMailChess>eMail</a></li>
  <li>Character <a Encoding>Encoding</a></li>
  <li><a Analysis>Engines, Chess</a></li>
  <li><a Analysis List>Engines</a> - configuring</li>
  <li><a Analysis Debugging>Engines</a> - debugging</li>
  <li><a Moves>Entering Moves</a></li>
  <li><a EPD>EPD Files</a></li>
  <li><a EPD opcodes>EPD Opcodes</a></li>
  <li><a Export>Exporting Games</a></li>
  <li><a HardwareConfig>External Hardware</a> (Novag, DGT...)</li>
  </ul>

  <h3><name F>F</name></h3>
  <ul>
  <li><a Cmdline>Fast mode</a>
  <li>EPD and <a Export EPD>FEN</a> exports</li>
  <li><a FICS>FICS</a> (Free Internet Chess Server)</li>
  <li><a Finder>File Finder</a></li>
  <li><a Formats>File formats</a></li>
  <li><a Menus File>File menu</a></li>
  <li><a Filter>Filter</a></li>
  <li><a Export>Filter, exporting</a></li>
  <li><a Graphs Filter>Filter graph</a></li>
  <li><a FindBestMove>Find Best Move</a> training</li>
  <li><a Finder>Finder</a></li>
  <li><a Flags>Flags</a></li>
  <li><a Options Fonts>Fonts</a></li>
  </ul>

  <h3><name G>G</name></h3>
  <ul>
  <li><a Flags>Game flags</a></li>
  <li><a MainWindow GameInfo>Game Information</a> window</li>
  <li><a GameList>Game List</a> window</li>
  <li><a Menus Game>Game menu</a></li>
  <li><a Searches Header>General searches</a></li>
  <li><a Maintenance Editing>Global substitutions</a></li>
  <li><a Graphs>Graph windows</a></li>
  <li>Using the <a GUI>GUI</a></li>
  </ul>

  <h3><name H>H</name></h3>
  <ul>
  <li><a Searches Header>Header searches</a></li>
  <li><a Menus Help>Help menu</a></li>
  </ul>

  <h3><name I>I</name></h3>
  <ul>
  <li><a Moves Trial>Immediate Threat</a></li>
  <li><a Import>Import</a> window</li>
  <li><a Moves Informant>Informant Symbols</a></li>
  <li><a FICS>Internet play</a></li>
  </ul>

  <h3><name J>J</name></h3>
  <ul>
  </ul>

  <h3><name K>K</name></h3>
  <ul>
  <li><a ShortCuts>Keyboard shortcuts</a></li>
  <li><a ShortCuts alpha>Keyboard shortcuts (alphabetical)</a></li>
  </ul>

  <h3><name L>L</name></h3>
  <ul>
  <li><a LaTeX>LaTeX</a> output format</li>
  <li><a Related>Links</a></li>
  </ul>

  <h3><name M>M</name></h3>
  <ul>
  <li><a MainWindow>Main window</a></li>
  <li><a Maintenance>Maintenance tools</a></li>
  <li>Tree <a TreeMasks>Masks</a></li>
  <li><a TacticsTrainer>Mate in ..N..</a> puzzle</li>
  <li><a Searches Material>Material/pattern searches</a></li>
  <li><a Searches Move>Move searches</a></li>
  <li><a Formats>Maximum</a> number of games</li>
  <li><a Menus>Menus</a></li>
  <li><a GameList Browsing>Merging games</a></li>
  <li><a Moves>Move entry</a> and options</li>
  <li><a Options MyPlayerNames>My Player Names</a>
  </ul>

  <h3><name N>N</name></h3>
  <ul>
  <li><a NAGs>NAG annotation values</a></li>
  <li><a Maintenance Editing>Names, editing</a></li>
  <li><a Maintenance Spellcheck>Names, spellchecking</a></li>
  <li><a Novag>Novag Citrine</a></li>
  <li><a Variations Null>Null moves</a></li>
  </ul>

  <h3><name O>O</name></h3>
  <ul>
  <li><a Book>Opening Books</a></li>
  <li><a ECO>Opening Classification</a> (ECO)</li>
  <li><a Repertoire>Opening Repertoires</a></li>
  <li><a Reports Opening>Opening Reports</a></li>
  <li>Tree <a Tree Training>Opening Trainer</a></li>
  <li><a Options>Options</a></li>
  <li>Command line <a Cmdline>options</a></li>
  </ul>

  <h3><name P>P</name></h3>
  <ul>
  <li><a PGN>PGN</a> window</li>
  <li><a BrowsingPGN>PGN and Scid</a></li>
  <li><a Variations Paste>Paste variation</a></li>
  <li><a Export PDF>PDF</a> support</li>
  <li><a Pgnscid>Pgnscid</a></li>
  <li><a PInfo Photos>Photos</a></li>
  <li><a Board>Pieces</a></li>
  <li><a FICS>Play on the Internet (FICS)</a></li>
  <li><a PTracker>Piece Tracker</a> window</li>
  <li><a PList>Player Finder</a> window</li>
  <li><a PInfo>Player Information</a> </li>
  <li><a PInfo Photos>Player Photos</a></li>
  <li><a FICSwidget premove>Premove (FICS)</a></li>
  <li>Spell Checking <a Maintenance Spellcheck>Player Names</a></li>
  <li><a Reports Player>Player Reports</a></li>
  <li><a ComputerGame>Play against the Computer</a></li>
  <li><a Book Polyglot>Polyglot</a></li>
  <li><a TacticsTrainer>Puzzles</a> - Mate in ... </li>
  </ul>

  <h3><name Q>Q</name></h3>
  <ul>
  </ul>

  <h3><name R>R</name></h3>
  <ul>
  <li><a Graphs Rating>Rating graph</a></li>
  <li><a Moves Undo>Redo</a></li>
  <li><a Repertoire>Repertoire editor</a></li>
  <li><a Reports>Reports</a></li>
  <li><a Import CCRL>Round Name</a> problems</li>
  </ul>

  <h3><name S>S</name></h3>
  <ul>
  <li><a Analysis Annotating>Scoring</a> games</li>
  <li><a Graphs Score>Score Graph</a></li>
  <li><a Searches>Searches</a></li>
  <li><a Menus Search>Search menu</a></li>
  <li><a ShortCuts>Shortcuts</a></li>
  <li><a ShortCuts alpha>Shortcuts (alphabetical)</a></li>
  <li><a Formats>si4</a> database format</li>
  <li><a Sorting>Sorting a database</a></li>
  <li><a Sound>Sound</a></li>
  <li><a Maintenance Spellfile>Spellcheck File</a></li>
  <li><a Maintenance Spellcheck>Spellchecking</a> names</li>
  <li>Editing Name <a Maintenance Editing>Spelling</a></li>
  <li><a Console>Startup</a> / Splash Window</li>
  <li><a MainWindow Status>Status bar</a></li>
  <li><a CalVar>Stoyko Exercise</a></li>
  <li><a Switcher>Switcher</a> window</li>
  </ul>

  <h3><name T>T</name></h3>
  <ul>
  <li><a TB>Tablebases</a></li>
  <li>Finding extra PGN <a Maintenance Tags>Tags</a>
  <li><a Options Themes>Themes</a></li>
  <li><a Crosstable tiebreak>Tie-Breaks</a></li>
  <li><a Graphs Score>Time Graph</a></li>
  <li>The <a MainWindow Toolbar>Toolbar</a></li>
  <li><a Menus Tools>Tools menu</a></li>
  <li><a Tourney>Tournament</a> of Chess Engines</li>
  <li><a Tmt>Tournament finder</a></li>
  <li><a FindBestMove>Training: Find best move</a></li>
  <li><a CalVar>Training: Calculation of Variations</a></li>
  <li><a Tree>Tree window</a></li>
  <li><a Moves Trial>Trial mode</a></li>
  <li><a Maintenance Twins>Twin (duplicate) games</a></li>
  </ul>

  <h3><name U>U</name></h3>
  <ul>
  <li><a Analysis UCI>UCI Engine</a> Options</li>
  <li><a Moves Undo>Undo</a></li>
  <li><a Encoding>UTF-8</a> character encoding</li>
  </ul>

  <h3><name V>V</name></h3>
  <ul>
  <li><a Variations>Variations</a></li>
  <li><a FICSobserve exam>Variants</a> on FICS</li>
  </ul>

  <h3><name W>W</name></h3>
  <ul>
  <li><a Menus Windows>Windows menu</a></li>
  <li><a Docking>Window docking</a></li>
  </ul>

  <h3><name X>X</name></h3>
  <ul>
  <li><a CCXfcc>Xfcc Support</a></li>
  <li><a CCXfccSetupDialog>Xfcc Server Setup</a></li>
  </ul>

  <h3><name Y>Y</name></h3>
  <ul>
  </ul>

  <h3><name Z>Z</name></h3>
  <ul>
  </ul>

  <p><footer>Updated: Scid vs PC 4.0, June 2010</footer></p>
}


set helpTitle(MainWindow) "Main Window"
set helpText(MainWindow) {<h1>Scid vs. PC's Main Window</h1>
  <p>
  This section describes the main board (showing the current game), the game information area below it, and a few other widgets.
  Also see separate help pages about the <a Menus>menus</a>, <a Board>board customisations</a>, <a Options Colours>other colours</a>, how-to <a Moves>enter chess moves</a>,
  <a ShortCuts General>keyboard shortcuts</a> for navigating games, and <a Comment Diagrams>drawing arrows and marks.</a>
  </p>
  <p>
  <i>Right-clicking the 'Board' tab, (or the whole board in undocked mode), allows one to show/hide many elements described below. See Scid's <run ::tip::show><green>Tip of the Day</green></run> for more helplful hints.</i>
  </p>

  <h4>Main Button Bar</h4>
  <p>
  Key bindings for each button are shown in brackets.
  <ul>
  <li> <button tb_start> Move to the start of the game  [home] </li>
  <li> <button tb_prev> Move back one move  [left] </li>
  <li> <button tb_next> Move forward one move  [right] </li>
  <li> <button tb_end> Move to the end of the game  [end] </li>
  <li> <button tb_invar> Move into a <a Variations>variation</a>  [v] (Holding button shows a menu of available variations)</li>
  <li> <button tb_outvar> Move out of the current variation  [z] (Right-click exits all vars)</li>
  <li> <button tb_addvar> Add a new variation  [control+a]</li>
  <li> <button autoplay_off> Start/stop <a MainWindow Autoplay>Autoplay mode</a> (Right-click autoplays all filter games)</li>
  <li> <button tb_trial> Start/stop <a Moves Trial>Trial mode</a> [control+space] </li>
  <li> <button tb_flip> Flip the board [control+f]</li>
  <li> <button tb_windows> Raise open windows [tab]. This feature may only work if you disable your window-manager's focus stealing policy. (Right-click shows Splash window)</li>
  </ul>
  </p>

  <h4><name Toolbar>Toolbar</name></h4>
  <p>
  At the top of the main window is a row of small icons called the Toolbar.
  Hovering the mouse over each will show their name, and selecting which icons are
  shown is done in <green>Options-<gt>Toolbar</green>.
  Right-clicking the Replace Game icon does a quick save.
  </p>

  <h4><name GameInfo>Game Information Window</name></h4>

  <p><i>The Game Info window can be hidden/unhidden by pressing Control-i</i></p>

  <p>
  Below the main board is general information about the current game.
  It includes <b>Player Names</b>, <b>Ratings</b>,
  <b>Event</b> and <b>Site</b> fields, and <b>ECO</b> codes.
  </p>
  <p>
  If Scid can find a suitable <a PInfo Photos>photo file</a>  then player photos will appear here. Clicking on them will make them smaller.
  </p>
  <p>
  The game information area also displays <a PInfo Photos>player photos</a>
  and <a TB>tablebase</a> results</b>.
  </p>
  <p>
  Display options for this window are in <green>Options-<gt>Game Information</green>.
  </p>

  <h4>Material Values</h4>
  <p>
  On the right hand side of the board the <b>material</b> balance is displayed by small chess pieces.
  </p>

  <h4><name Status>The Status Bar</name></h4>
  <p>
  The Status Bar shows information about the current database and game -
  including game number, game flags, and whether the game has been altered or the DB is read-only.
  Occasionally other information is be shown - such as matching moves (when entering moves with the keyboard)
  and occasional Fics notifications.
  </p>

  <h4><name Autoplay>Autoplay Mode</name></h4>
  <p>
  In autoplay mode, Scid automatically plays the moves in the current game,
  moving forward until the end of the game. The time delay between moves can
  be set from the <green>Options--<gt>Moves</green> menu
  </p>
  <p>
  Right-clicking Autoplay allows autoplay to progress through all filter games.
  </p>
  <p>
  Autoplay is also started when the
  game is being <a Analysis Annotating>annotated</a>, and pressing the autoplay button will stop annotation.
  </p>

  <p><footer>Updated: Scid vs. PC 4.19 Feb 2018 </footer></p>
}

set helpTitle(Docking) "Docked Windows"
set helpText(Docking) {<h1>Docked Windows</h1>
<p>
Scid's GUI has two modes. In Docked Windows mode (the default), most windows
are tiled - or docked - into a single large window.
Docking is enabled or disabled in <b>Options-<gt>Windows</b>,
where you can also load any of the three built-in layouts, or save your own Window
arrangements.  The current window arrangement can also be saved via <b>Options-<gt>Save Layout</b>.
</p><p>
Arranging Docked Windows is a little difficult. One can right-click any tab (except the main
board) and select to move to the side of the current pane, or one can
drag the tab and group it with other tabs in another paned window.
Windows can also be undocked by right-clicking the tab, though Mac OS X does not support undocking windows.</p>
<p>
Window focus automatically follows the mouse around, and also impacts which keyboard bindings are active.
Most bindings are active when the mouse is over the Main Board.</p>
<p>
The window's menus are accessible via clicking the arrow in the window tab.
</p><p>
With the focus on a window tab, one can press the Tab key to move between window panes. Control+Tab switches between active tabs.
</p>
<p><i>
If Scid fails to start, use the </i><b>-nodock</b><i> command-line option to start in undocked mode.
</i></p>
<p><footer>Updated: Scid vs. PC 4.14, Dec 2014</footer></p> }

set helpTitle(Menus) "Menus"
set helpText(Menus) "<h1> $::scidName Main Menus</h1>"
append helpText(Menus) {
  <h3><name File>File</name></h3>
  <ul>
  <li><b>New</b>  Creates a new empty Scid database.</li>
  <li><b>Open</b>  Opens an existing database/file.</li>
  <li><b>Save Pgn</b>  Save this game as a PGN file.</li>
  <li><b>Close</b>  Closes the current database/file.</li>
  <li><b>Read-Only</b>  Makes the current database read-only.</li>
  <li><b>Finder</b>  Opens the <a Finder>File Finder</a>.</li>
  <li><b>Bookmarks</b>  Show and edit <a Bookmarks>Bookmarks</a>.</li>
  <br>
  <li><b>Switch to Base</b>  Switch between the nine available databases (including the <a Clipbase>Clipbase</a>).</li>
  <li><b>Open Base as Tree</b></li>
  <li><b>Open Recent as Tree</b>  Open database in a <a Tree>tree window</a>. The databases will be closed when the tree is closed.</li>
  <br>
  <li><b>Exit</b>  Exit Scid. </li>
  </ul>

  <h3><name Edit>Play</name></h3>
  <ul>
  <li> Play against computer, online, and training.</li>
  </ul>

  <h3><name Edit>Edit</name></h3>
  <ul>
  <li><b>Setup Board</b>  Set a (non-standard) start position for the current game.</li>
  <li><b>Copy FEN</b>  Set the clipboard to the FEN representing current position.</li>
  <li><b>Copy PGN</b>  Set the clipboard to the game PGN.</li>
  <li><b>Paste FEN</b>  Set-up board according to FEN in clipboard.</li>
  <li><b>Paste PGN</b>  Import a game from PGN in clipboard.</li>
  <br>
  <li><b>Empty Clipbase</b>  Clear the temporary database (<a Clipbase>Clipbase</a>).</li>
  <li><b>Copy to Clipbase</b>  Copies the current game to the <a Clipbase>Clipbase</a> database.</li>
  <li><b>Paste from Clipbase</b>  Pastes the active game of the <a Clipbase>Clipbase</a> to be the active game of the current database.</li>
  <br>
  <li><b>Strip</b>  Strips all comments or variations from the current game.</li>
  <li><b>Undo</b>  Undo changes to this game. The undo buffer holds 20 positions.</li>
  <li><b>Redo</b>  Redo changes.</li>
  <br>
  <li><b>Add Variation</b>  Adds a new empty variation for the
  next move, or for the previous move if there is no next move yet.</li>
  <li><b>Paste Variation</b>  Pastes the current text selection as a variation.</li>
  <li><b>Delete Variation</b>  Provides a submenu of variations for
  the current move, so one can be deleted.</li>
  <li><b>Make First Variation</b>  Promotes a variation to be the
  first variation of the current move.</li>
  <li><b>Promote Variation to Main line</b>  Promotes a variation
  to be the main line, swapping it with its parent.</li>
  <li><b>Try Variation</b>  Enters <a Moves Trial>trial mode</a> for
  testing a temporary variation without altering the current game.</li>
  </ul>

  <h3><name Game>Game</name></h3>
  <ul>
  <li><b>New Game</b>  Resets the scratch game.
  <li><b>Replace Game</b>  Saves the current game, replacing it in the database.</li>
  <li><b>Add Game</b>  Save this game, adding one to the database.</li>
  <br>
  <li><b>Set Game Info</b>  Set various details about the current game.</li>
  <li><b>Browse Game</b> Popup a small Game Browser window.</li>
  <li><b>List all Games</b>  Show the <a GameList>list of games</a> in this database.</li>
  <br>
  <li><b>Delete Game</b>  Mark as deleted (for removal during compaction).</li>
  <li><b>Reload this game</b>  Reloads the current game, discarding any changes made.</li>
  <br>
  <li><b>Load First/Previous/Next/Last Game</b>  These load the first, previous, next or last game in the <a Filter>filter</a>.</li>
  <li><b>Load Game Number</b>  Loads the game given its game number
  in the current database.</li>
  <br>
  <li><b>Identify opening</b>  Finds the deepest
  position in the current game that is in the ECO file.</li>
  <li><b>Goto move number</b>  Goes to the specified move number in the current game.</li>
  <li><b>Find novelty</b>  Finds the first move of the current game
  that has not been played before.</li>
  </ul>

  <h3><name Search>Search</name></h3>
  <ul>
  <li><b>Reset Filter</b>  Resets the <a Filter>filter</a> so all games are included.</li>
  <li><b>Negate filter</b>  Inverts/toggles the game filter.</li>
  <li><b>Filter to Last Move</b>  Make all games show the last move when loaded.</li>
  <br>
  <li><b>General</b>  Searches by <a Searches Header>header</a> information such as player names.</li>
  <li><b>Current board</b>  Searches for the <a Searches Board>current board</a> position.</li>
  <li><b>Material/Pattern</b>  Searches by <a Searches Material>material</a> or chessboard patterns.</li>
  <li><b>Move</b> Find a certain move or <a Searches Move>move combination</a>.</li>
  <li><b>CQL</b> Show the (technical) CQL game search window.</li>
  <br>
  <li><b>Player Finder</b>  Search for a player name.</li>
  <li><b>Tournament Finder</b>  Search for a tournament by date or name.</li>
  <br>
  <li><b>Load search file</b>  Searches using
  <a Searches Settings>settings</a> from a SearchOptions file.</li>
  </ul>

  <h3><name Windows>Windows</name></h3>
  <ul>
  <li><b>Game Info</b>  Show/hide the Game Information window.</li>
  <li><b>Comment Editor</b>  Opens/reveals the <a Comment>Comment Editor</a>.</li>
  <li><b>Game List window</b>  Opens/reveals the <a GameList>Game List</a>.</li>
  <li><b>PGN window</b>  Opens/reveals the <a PGN>PGN window</a>.</li>
  <li><b>Crosstable</b>  Constructs a tournament <a Crosstable>crosstable</a> for the current game. </li>
  <li><b>Player Finder</b>  Opens/reveals the <a PList>Player Finder</a> window.</li>
  <li><b>Tournament Finder</b>  Opens/reveals the <a Tmt>Tournament Finder</a> window.</li>
  <br>
  <li><b>Maintenance window</b>  Opens/reveals the <a Maintenance>Maintenance</a> Window.</li>
  <br>
  <li><b>ECO Browser</b>  Opens/closes the <a ECO browser>ECO Browser</a> window.</li>
  <li><b>Statistics window</b>  Opens/reveals the <b>Filter statistics window</b> which gives a win/loss summary
  of the games in the <a Filter>filter.</a></li>
  <li><b>Tree window</b>  Opens/reveals the <a Tree>tree window</a>.</li>
  <li><b>Tablebase window</b>  Opens/reveals the endgame <a TB>tablebase</a> information.</li>
  <li><b>Book Window</b>  Opens/reveals the Book window.</li>
  <li><b>Correspondence Window</b>  Opens/reveals the Correspondence window.</li>
  </ul>

  <h3><name Tools>Tools</name></h3>
  <ul>
  <li><b>Analysis Engines</b>  Configure Analysis Engines.</li>
  <li><b>Analysis engine #1</b>
  <li><b>Analysis engine #2</b>  Start/stops <a Analysis>analysis engines</a>,
 displaying the evaluation of the current position.</li>
  <br>
  <li><b>Maintenance</b>  Database <a Maintenance>maintenance</a> functions.</li>
  <ul>
  <li><b>Maintenance window</b>  Opens/closes the database maintenance window.</li>
  <li><b>Name editor</b>  Replaces all occurrences of a player,
  <li><b>Compact Database</b>  Perform database compaction.</li>
  <li><b>Sort</b>  Sort base by name, rating, etc.</li>
  <li><b>Spellcheck</b>  Search the spelling file for possible Name corrections.</li>
  <li><b>Delete twin games</b>  Finds <a Maintenance Twins>twin</a> games in the database.</li>
  event site or round name.</li>
  <li><b>Repair Base</b>  Repair broken database.</li>
  </ul>

  <li><b>Book Tuning</b>  For editing Polyglot books.</li>
  <li><b>Player report</b>  Generates an <a Reports Player>opening report</a>.</li>
  <li><b>Opening report</b>  Generates an <a Reports Opening>opening report</a> for the current position.</li>
  <li><b>Piece Tracker</b>  Opens the <a PTracker>piece tracker</a> window.</li>
  <li><b>Email manager</b>  Opens/closes the <a Email>email manager</a> window, for managing email correspondence games.</li>
  <li><b>Connect Hardware</b>  ... Configure external hardware devices.</li>
  <br>
  <li><b>Rel Filter Graph Ratings</b></li>
  <li><b>Abd Filter Graph Ratings</b>  Displays the <a Graphs Filter>filter graphs</a>.</li>
  <li><b>Player Ratings</b>  Displays the <a Graphs Rating>rating graph</a>.</li>
  <li><b>Score Graph</b>  Displays the <a Graphs Score>score graph</a>.</li>
  <br>
  <li><b>Export current game</b>  Saves the current game to a text
  file in PGN, HTML or LaTeX format. See the <a Export>export</a> help
  page.</li>
  <li><b>Export all filter games</b>  Saves all games in the
  search <a Filter>filter</a> to a text file in PGN, HTML or
  LaTeX format. See the <a Export>export</a> help page.</li>
  <br>
  <li><b>Import PGN text</b>  Opens the <a Import>Import window</a>
  for entering a game by typing or pasting its text in
  <a PGN>PGN format</a>.</li>
  <li><b>Import PGN file</b>  Imports a whole file containing
  games in PGN format to the current database. Note, that several PGN
  files can be selected in this dialogue at once.</li>
  <br>
  <li><b>Board Screenshot</b>  Save a screenshot of the board to a file.</li>
  </ul>

  <h3><name Options>Options</name></h3>
  <ul>
  <li>Various <a Options>Options</a> settings.</li>

  </ul>

  <p><footer>Updated: Scid vs. PC 4.22, Feb 2021</footer></p>
}


set helpTitle(Moves) "Entering Moves"
set helpText(Moves) {<h1>Move Entry and Options</h1>
  <p>Scid uses the arrow keys and wheelmouse to move forward and back through a game. And at any time, moves can be entered using the mouse or keyboard.
</p><p>
  Use the mouse to click on a piece, then the destination square. Alternatively one may drag the piece.
  </p>
  <p>
  Keyboard moves are made using standard San or UCI notations.
  Castling is done with <b>OO</b>, or <b>OK</b> and <b>OQ</b>
  for King and Queenside respectively. For more info, see below.
  </p>
  <p><i>Pressing </i><b>Escape</b><i> cancels keyboard and mouse move entry.</i></p>

  <h4>Replacing Moves</h4>
  <p>
  When you enter a move where a move already exists,
  Scid will ask if you want to replace the
  move (when the old move and all after it will be lost), or
  add the new move as a variation or new mainline. If one finds this annoying,
  it is possible to skip this dialog by unchecking the
  <green>Options--<gt>Moves--<gt>Ask Before Replacing Moves</green> menu option
  </p>
  <p>
  If the same move already exists, Scid will merely move into this move.
  <i>This behaviour is different when it is end-of-game. Now, Scid will automatically
  create a new variation. This allows one to easily add end-of-game variations.</i>
  </p>

  <h4><name Undo>Undo</name></h4>
  <p>
  Scid vs. PC has Undo and Redo features which store up to 20
  Move, Variation, Comment or Game Information changes. The Undo and Redo commands are
  bound to <b>Control-z</b> and <b>Control-y</b> (when the mouse is over the main board),
  but they should be used carefully as these shortcuts
  are also the defaults for editing text windows such as the Comment Editor.
  </p>

  <h4><name Trial>Trial Mode</name></h4>
  <p>
  Trial Mode allows one to make temporary moves and changes to a game.
  Pressing the Trial Mode button a second time ends Trial Mode, and reverts the game to it's original form.
  </p>
  <p>
  Right-clicking enters Trial Mode, and automatically adds a <a Variations Null>null move</a>. This is handy to see immediate threats with chess engines.
  </p>
  <p><i>
  Game Saves, Undo and Redo are disabled in Trial Mode.
  When switching databases - Trial Mode automatically exits.
  </i></p>


  <h4><name Mistakes>Correcting Mistakes</name></h4>
  <p>
  If you are entering a game and suddenly see an incorrect move several
  moves earlier, it is possible to correct it without losing the extra
  moves you have added. This is done by editing the PGN representation
  of the game. Open the <a Import>Import</a> window, select "Paste Current
  Game", correct the incorrect move, then select "Import".
  </p>

  <h3>Keyboard Move Entry</h3>
  <p>
  To enter moves from the keyboard, simply press letter and digit
  keys - in long or short algbraic notation - and
  without the capture "x" or promotion "=" symbols.
  Moves are matched case-insensitively, so you can type
  nf3 instead of Nf3, for example.
  </p>
  <p>
  As you enter a move, the status bar will show the list of matching moves.
  </p>
  <p>
  The notation for castling is [O][O], but Kingside and Queenside castling
  can also be stipulated explicitly with [O][K] and [O][Q].
  </p>
  <p>
  Lower-case letter matches to a pawn first, so a
  [b] can match to a pawn or Bishop. If there is a conflict
  you must use a capital [B] for the Bishop move.
  </p>

  <h4>Coordinate Move Entry</h4>
  <p>
  This move option allows one to input moves in UCI notation (such as
  a2a4 and g1f3). This feature is enabled default, but it
  interferes with the Auto-Completion feature (which is off by default).
  </p>

  <h4>Auto-Completion</h4>
  <p>
  Is enabled via <green>Options--<gt>Moves--<gt>Keyboard Completion</green>.
  and it makes a move as soon as you have typed enough
  to distinguish it from any other legal move. For example,
  you would only need to type [n][f] instead
  of [n][f][3] in the starting position.
  This feature only works with pawn moves if Coordinate Move Entry
  is disabled.
  </p>

  <h3><name Null>Entering Null Moves</name></h3>
  <p>
  <a Variations Null>Null Moves</a> (or empty moves) can be useful in variations where
  you want to skip a move for one side. You can enter a null move with the
  mouse by capturing one king with the other king, or with the keyboard by
  typing "<b>--</b>" (that is, pressing the minus key twice).
  </p>

  <h3><name Informant>Common Annotation Symbols</h3>
  <p>
  One may add annotation symbols (or <a NAGs>NAGs</a>) using the keyboard
  (and without the <a Comment>comment editor)</a>. Below are the relevant shortcuts.
  </p>
  <p>
  Scid also uses some of these symbols for <a Analysis Annotating>Automatic
  Annotations</a>. To this end, the symbols are associated
  with a certain pawn value which can be set via
  <run configInformant><green>Options-<gt>Configure Informant Values</green></run>.
  </p>

  <ul>
  <li> !	[!][Return]</li>
  <li> ?	[?][Return]</li>
  <li> !?	[!][?][Return]</li>
  <li> ?!	[?][!][Return]</li>
  <li> !!	[!][!][Return]</li>
  <li> ??	[?][?][Return]</li>
  <li></li>
  <li> +-	[+][-]</li>
  <li> +/-	[+][/]</li>
  <li> +=	[+][=]</li>
  <li> =	[=][Return]</li>
  <li> -+	[-][+]</li>
  <li> -/+	[-][/]</li>
  <li> =+	[=][+]</li>
  </ul>

  <p><footer>Updated: Scid vs. PC 4.17 March 2016 </footer></p>
}

set helpTitle(Searches) "Searches"
set helpText(Searches) {<h1>Searches in Scid</h1>
  <p>
  Scid can perform several different types of searches. The main ones are:
  <ul>
  <li><a Searches Header>General</a> (or Header) searches - such as Players, Result or Date</li>
  <li><a Searches Board>Game Positions</a> - matching the Current Board</li>
  <li><a Searches Material>Material and Piece Pattern</a> searches.</li>
  <li><a Searches Move>Move Sequence</a> searches.</li>
  <li><a CQL>Chess Query Language</a> searches.</li>
  </p>
  <p>
  Searches display their results by adjusting the <a Filter>Filter</a> with matching games.
  By default they will <b>Reset</b> the Filter (ie - search the whole database). But one may also
  <b>Add to</b>, or <b>Restrict</b> the Filter, allowing complex searches to be built up.
  </p>
  <p>
  With Position, Tree, and Material/Pattern searches, when you load a matching game
  it will automatically show the relevant game position, (except
  - in the unlikely event - that the position occurred after move 255 which causes a byte overflow).
  </p>
  <p>
  <i>Most searches only apply to the mainline of a game, and not to variations</i>.
  <br>
  <br>
  <i>Positional Searches can also be performed by the <a Tree>Tree Window</a>.</i>
  </p>

  <h3><name Header>General (Header) Search</name></h3>
  <p>
  The General Search is for information stored in the Game Header (such as Player Names, Date, etc), or in the PGN text of a game.
  <br>
  For a successful match, <b>all fields must match</b>.
  </p>
  <p>
  The name fields (White, Black, Event, Site and Round) match on any text.
  They are case-insensitive and ignoring spaces. Eg - <b>Michael</b> will match a host of christian and surnames.
  But more precise matches can be got using wild-cards (<b>?</b> for 1 character, <b> * </b> for
  zero or more characters) - and enclosing the search in double quotes.
  For example - a search for the site <b>USA</b>
  will find American cities but also <b>Lausanne SUI</b>, which is probably
  not what you wanted! <b>"*USA"</b> (note the double-quotes)
  is how to find sites ending with USA.
  Another example - to find only games played in Round 1, use <b>"1"</b>.
  Without the double-quotes, the Round field will also match 10, 21 etc.
  </p>
  <p>
  If you are searching for a particular player (or pair of opponents) as White
  or Black and it does not matter what color they played, select the
  <b>Ignore Colors</b> option.
  </p>
  <p>
  A search can also be done for a pre-game comment or final move comment.
  These searches will *not* match hidden comments (ie - those starting with '[' *and* ending with ']').
  </p>
  <p>
  The <b>Extra Tags</b> search matches common tags such as "Annotator" and "PlyCount" found in the game header,
  and is quicker than a full PGN text search (see below).
  The "Value" field is optional. If the value starts with a digit, only exact matches are made, but
  otherwise the match searches for prefixes - eg "Rogers" will match "Rogers, Ian".
  </p><p>
  <i>Extra Tags does *not* match normal tags such as White, Event and EventDate</i>.
  </p><p>
  Finally, the Header search can be used to find any text
  (case-sensitive and without wildcards) in the PGN of
  a game.  You may enter up to three phrases which must all appear
  for it to be a match.  This search is very
  useful for searching the comments of a game (such
  as "lost on time" or "novelty"), or for move sequences
  (eg "Bxh7+" and "Kxh7").  However, it is generally very slow
  as all games (that match the other criteria) must be decoded and
  scanned - so it is a good idea to limit these searches as much as possible.
  </p><p>
  Here are some examples.  To find
  games with under-promotions to a rook, search for <b>=R</b> and also
  set the <b>Promotions</b> flag to Yes.  When searching for text that
  would appear in comments, set the <b>Comments</b> flag to Yes.  If
  you are searching for the moves <b>Bxh7+</b> and <b>Kxh7</b>, you
  may want to restrict the search to games with a 1-0 result and at
  least 40 half-moves, for example, or do a material/pattern search
  first to find games where a white bishop moves to h7.
  </p>
  <p>
  <i>Note - if a search by <a ECO>ECO</a> code is performed, games
  that have no ECO code attached are ignored</i>.
  </p>
  <p>
  <i>Searching for extra PGN tags (such as "Annotator") can be done
  within the <a Maintenance Tags>Maintenance Strip Tags</a> feature.
  </p>

  <h3><name Board>Current Board Searches</name></h3>
  <p>
  This search finds games that contain the currently displayed position,
  ignoring castling and <i>en passant</i> rights.
  </p>
  <p>
  There are four different board searches:
  <ul>
  <li> <b>Exact</b> - the two positions must match on every square </li>
  <li> <b>Pawns</b> - the pawn structure must match exactly, but other pieces
  can be anywhere </li>
  <li> <b>Files</b> - the number of white and black pawns on each file must match
  exactly, but other pieces can be anywhere </li>
  <li> <b>Material</b> - pawns and pieces can be anywhere </li>
  </ul>
  <p>
  The pawns search is useful for studying openings by pawn structure, and
  the files and material searches are useful for finding similar positions
  in an endgame.
  </p>
  <p>
  To search for an arbitrary position, set the board position
  via <green>Edit--<gt>Setup Board</green> before running the search.
  </p>
  <p>
  You can request that the search look in variations (instead of only
  examining actual game moves) by selecting <b>Look in variations</b>
  , but this may slow the search if your database
  is large with many games and variations.
  </p>

  <h3><name Material>Material / Pattern Searches</name></h3>
  <p>
  This powerful feature is useful for finding end-game or middle-game themes.
  You can specify minimum and maximum amounts of each type of material,
  and patterns such as a bishop on f7, or a pawn on the f-file.
  </p>
  <p>
  A number of common material and pattern settings are provided, such
  as Rook vs. Pawn endings, or isolated Queens pawns.
  </p>
  <p>
  Scid vs. PC allows one to perform material searches that match the end position only;
  though these searches do not match games with non-standard starts and <i>zero length</i>.
  </p>
  <p>
  <i>Hint -
  The speed of pattern searches can vary widely, and be reduced
  by setting restrictions intelligently. For example,
  if you set the minimum move number to 20 for an ending, all games that
  end in under 20 moves can be skipped</i>.
  </p>

  <h3><name Move>Move Searches</name></h3>
  <p>
  Move Searches allow one to search for particular moves and combinations.
  Enter the move(s) in the entry box, and matching positions will be
  found. Move combinations can extend unlimited, and to match any
  move, use a '?' character.</p>
  <p> For example, use <b>Rh8 ? R1h7</b> to find doubling of rooks on the H file.</p>
  <p>The <b>Check Test</b> option allows one to input moves of the form <b>Qh7+</b>
  (or <b>Rh8#</b>, but these checks slow the search down a little. Judicious
  use of <b>Side to Move</b> can speed up the search.</p>

  <h3><name Settings>Saving Search Settings</name></h3>
  <p>
  The Material/Pattern and Header Search windows provide a
  <b>Save</b> button, enabling one to save the current
  search settings to a SearchOptions file (<b>.sso</b>).
  Loading this file is done from <green>Search--<gt>Load Search File</green> menu.
  </p>

  <h3>Search Times and Skipped Games</h3>
  <p>
  Most searches produce a message indicating the time taken and the number
  of games that were skipped. A <b>skipped</b> game is one that can
  be excluded from the search without decoding any of its moves, based on
  information stored in the index. See the help page on
  <a Formats>file formats</a> for more information.
  </p>

  <p><footer>Updated: Scid vs. PC 4.22 Jan 2020</footer></p>
}

set helpTitle(CQL) "CQL"
set helpText(CQL) {<h1>Chess Query Language</h1>
  <p>
  CQL is a powerful query language which allows for a huge variety of searches.
  It differs from normal Scid searches in that it can also add detailed comments to matching games.
  </p><p><i>
  Quick and powerful position searches can be done by marking squares with Shift+Click, then opening the CQL search dialog.
  </i></p><p>
  Because of CQL's cryptic nature, adding comments is restricted to the clipbase,
  and must be enabled with <b>Allow Comments</b>.
  </i></p><p>
  When comments are enabled in the clipbase, all matching positions will be annotated with <b>MATCH</b>.
  These comments can be removed in subsequent searches by enabling <b>Strip Match Comments</b>.
  Additionally, some CQL filters and keywords (esp. <b>silent</b>), will over-ride these buttons.
  Other CQL commands also allow for other comments to be added and for processing of variations.
  These additional comments will *not* be removed with the Strip button, and neither does stripping
  remove any comments from variations.
  </p>
  <p>
  It's worth noting that for many simple CQL searches,
  the equivalent native Scid search (header, material, pattern, etc) will be much faster.
  CQL is not optimized for trivial queries - though it is more powerful of course -
  and as a result complex searches can be very slow.
  </p>
  <p>
  Thanks go to Lewis Stiller and Gady Costeff for their innovative work on CQL.
<br>
  Fairly technical documentation for their language can be found at
  <url http://www.gadycosteff.com/cql>their CQL site</url>
  </p>

  <h3>Examples</h3>
  <ul>
  <li>cql() shifthorizontal shiftvertical flipcolor {ra8 rc8 Pb7} ; Find all pawn forks both rooks.</li>
  <li>cql() flipcolor shifthorizontal countsquares 3 P[b2-7] ; Tripled pawns
  <li>cql() flipcolor flip { next2 5 100 ((move from Q to up 1 Q move from Q to right 1 Q)+ {move from Q to up 1 Q}? ) } ; Queen 'Staircase'
  </ul>
  </p>

  <h3>Technical</h3>
  <p>
  This feature is not mature; it leaks memory, is not terribly re-entrant (some errors will make
  future searches broken until ScidvsPC is restarted), and can choke on games with <a Variations Null>null move</a>.
  </p>
  <p>
  Some error messages will be shown in the status bar, others
  in more detail on the command line (Linux and OS X only). For developers, more
  information can be had by setting the variables CqlShowLex, CqlShowParse, and CqlDebug in tkscid.cpp.
  </p>
  <p>
  A few CQL keywords which are non-sensical in an Scid context, have null effect.
  The CQL header params <b>input</b> and <b>output</b> are obvious candidates, likewise
  the CQL header will now generally be empty  <b>cql()</b> , unlike the standalone CQL executable.
  The <b>sort filter</b> has been disabled for the time being, though may be implemented later.
  </p>

  <p><footer>Updated: Scid vs. PC 4.19 Dec 2017</footer></p>
}
set helpTitle(Filter) "The Filter"
set helpText(Filter) {<h1>The Filter</h1>
  <p>
  Scid's Filter represents a selection of games from the current base (or pgn archive). Filtered games are displayed in the <a GameList>Game List</a> widget.
  </p>
  <p>
  The Filter is often used to show <a Searches>Search</a> results.
  </p>
  <p><i>Do not confuse Filtered games with Deleted games. They are <a GameList Del>separate things.</a></i></p>
  <p>
  You can also copy all games in the Filter of one Database to another
  using the <a Switcher>Database Switcher</a>.
  </p>

  <p><footer>Updated: Scid vs. PC 4.6 October 2011</footer></p>
}

set helpTitle(Clipbase) "The Clipbase"
set helpText(Clipbase) {<h1>The Default Database</h1>
  <p>
  In addition to physical databases existing on disk, Scid provides
  a temporary one known as the <b>Clipbase</b>. It is always open, and
  can be used to cut and paste games between other bases via the <a
  Switcher>Database Switcher</a>. Additionally, each base has a game numbered 0
  which also acts as a scratch game.
  </p>
<h3>Use</h3>
  <p>
  The Clipbase is useful for merging
  the results of searches on more than one database or for treating the
  results of a search as a separate database.
  </p>
  <p>
  For example, assume you want to prepare for an opponent and have searched
  a database so the <a Filter>filter</a> contains only games where
  the opponent played white.
  You can copy these games to the Clipbase by opening the Gamelist / <a Switcher>Switcher</a> and
  dragging from the database to the Clipbase.
  Then, click on the Clipbase, and open
  the <a Tree>Tree Window</a> to examine that players repertoire.
  </p>
<h3>Notes</h3>
  <p>
  You can copy games from one open database directly to another
  without using the Clipbase as an intermediary.
  </p>
  <p>
  The Clipbase cannot be closed; selecting <green>File--<gt>Close</green> is equivalent
  to emptying it with <green>Edit--<gt>Empty Clipbase</green>.
  </p>
  <p>
  Games in the Clipbase consume your computers memory. So please consider this when copying a large number of games.
  </p>

  <p><footer>Updated: Scid vs. PC 4.15 September 2015</footer></p>
}

set helpTitle(Variations) "Variations"
set helpText(Variations) {<h1>Variations</h1>

  <p>
  A Variation is an alternative sequence of
  moves at a particular point in a game. They can contain
  comments and recursive subvariations.
  </p>
  <p>The <button tb_outvar 32> <button tb_invar 32>  <button tb_addvar 32>
  buttons are used to exit, enter and add variations respectively.
  And in the <b>Edit Menu</b>, and <a PGN>PGN</a> context menu, are further useful commands.
  </p>
  <p><i>
  If you want to enter a variation without being asked for a
  confirmation, use the middle mouse button of the mouse to enter the
  move.
  </i></p>

  <h4>Variation Arrows</h4>
  <p>
  Scid vs. PC has clickable Variation Arrows (enabled via
  Options / Moves / Show Variation Arrows). But for this feature to work, the
  <b>Variations Window</b> (Options / Moves / Show Variation Window) must first
  be disabled.
  </p>

  <h4><name Paste>Paste Variation</h4>
  <p>
  This feature (in the Edit Menu) will try to add the currently selected text as a variation.
  It is not very sophisticated; but very useful when adding a <b>single line of MulitPV analysis</b>
from a paused engine.
  </p>
  <p>
  <i>Please see <a Variations Null>below</a> in regards to adding null moves.</i>
  </p>

  <h4>Keyboard Shortcuts</h4>
  <p>
  When a move has variations they are shown in the game information
  area. You can click on a variation to enter it, or press "v", whence
  the <b>Variation Window</b> will pop up.
  Setting Options-<gt>Moves-<gt>ShowVariationWindow will automatically show
  this window when a variation is found.</p>
  <p>In the variation window one can select a variation with the up/down
  keys and then hitting enter, or pressing 0, 1, 2 etc for each variation.
  Additionally, 'vv' will enter the first var.
  </p><p>
  To leave a variation, use "z" or up-arrow.
  </p>

  <h3><name Null>Null Moves</name></h3>
  <p>
  Null moves are used to skip a move by one side. This is of course illegal,
  but is a well known idea, and useful for analyzing your opponent's immediate threats.
  </p>
  <p>
  Null moves are displayed as "<b>--</b>" and can be made by typing this string, or by
  using the mouse to make a <b>King</b> x <b>King</b> capture.
  They are not a part of the PGN Standard, so when
  <a Export>exporting games</a> to PGN, Scid provides (among
  other options) one to convert null moves to comments - for compatibility with other software.
  </p>
  <p><i>
  Some other programs use <term>Z0</term> as a null move, and Scid will successfully import this move.
  </i></p>
  <p>
  One final issue arises with Engine Analysis. If you have null move <b>at then
end</b> of a game or variation , the <a Analysis>Analysis Window</a> will not
successfully add a variation to it. Instead, one should <b>first add a single
move</b>, then variations may be added. This note also applies to the <b>
<b>Paste Variation</b> feature.
  </p>

  <p><footer>Updated: Scid vs. PC 4.8 June 2012</footer></p>
}

set helpTitle(Comment) "Comment Editor"
set helpText(Comment) {<h1>The Comment Editor</h1>
  <p>
  The <run ::commenteditor::Open><green>Comment Editor</green></run> lets you add
  comments and <a NAGs>annotations</a>, and also includes a small board for drawing arrows (etc). <i>These three sections can be shown/hidden by pressing the <img bookmark_down> button, though if sections are missing, try resizing the window.</i>
  </p>

  <h3>Comments</h3>
  <p>
  Comments are text associated with individual moves.
  You can add comments by typing them in the entry box (where
  the Control-A, Control-Z and Control-Y shortcuts can be used to
  manipulate text and undo changes).
  Comments are <b>automatically stored</b> whenever you move to another position in the game,
  or move the mouse away from the Comment Editor.
  </p>

  <p>
  Comments may also exist at the start of a game or variation.
  To add a comment <b>prefixing a variation</b>
  go to the variation's first move; then move back one move before entering the comment.
  </p>

  <p><i>With the focus in the Comment Editor, one can move the game forward and back by pressing the control+left/right keys. Control-Enter saves the comment and closes the window.</i></p>


  <h3><name Annotation>Annotation Symbols</name></h3>
  <p>
  Scid uses the <a PGN>PGN Standard</a>
  and <a NAGs>NAGs</a> for annotation symbols.
  While the most common symbols  are displayed
  as Ascii characters (such as "!" or "+-"), others must be entered as the appropriate
  numeric value (ie - a number from 1 to 255).
  For example, the NAG value 36 means "White has the initiative" and will
  be displayed as "$36" in the PGN window.
  </p>
  <p>
  The most common move evaluation symbols (!, ?, !!,
  ??, !? and ?!) can be added firectly from the main window by typing the symbol followed by
  the [Return] key.  This is especially useful if you are <a Moves>entering chess moves</a>
  using the keyboard.
  </p>

  <h3><name Diagrams>Diagrams</name></h3>
  <p>
  In addition to text comments, Scid can also draw colour symbols and arrows on the board.
  These can be drawn straight onto the main board, or more detailed drawings can be made
  in the Comment Editor by pressing <img bookmark_down> to show/hide a small board and diagrams.
  </p>

  <h4>Drawing Arrows</h4>
  <p>
  Arrows can be drawn in two ways - In the Main Board, hold Control then click on the start square and then end square.
  Or in the Comment Editor, arrows can be drawn (and erased) by dragging between two squares. The arrow width and length can be altered in the Comment Editor.
  </p>
  <h4>Colouring Squares</h4>
  <p>
  Similarly, hold Shift and click on the main board to colour a square, or
  click on any square in the Comment Editor board to add the selected colour/mark.
  </p>
  <p> The comments associated with these diagrams are visible as special % codes in the PGN
window, but can be hidden by selecting "Hide Square/Arrow Codes" in the PGN window
Options.</p>

  <p><footer>Updated: Scid vs. PC 4.22, Jun 2021</footer></p>
}

set helpTitle(Crosstable) "Crosstable Window"
set helpText(Crosstable) {<h1>The Crosstable Window</h1>
  <p>The <run ::crosstab::Open><green>Crosstable</green></run> shows the
  tournament table (for the current game) in All-Play-All, Swiss or Knockout formats.
  Any game played up to <b>twelve months before or after</b> the current game,
  with <b>identical Event and Site</b> tags, is considered to be in the tournament.
  </p>
  <p><i>For a good crosstable, <b>duplicate games</b> should be marked for deletion, and
  Player, Site and Event names should be spelt consistently.  See
  <a Maintenance>Database Maintenance</a> for more information.
  </i></p>

  <h4>Features</h4>
  <p>Clicking on a Game Result shows a menu from which one may Browse, Load or Merge a game.
  </p>
  <p>From the menu you'll be able to edit the tournament details,
  export the table as Text, LaTex or HTML, choose the Sort Criteria, and select various other options.
  Right-clicking the crosstable displays the menu.
  </p>

  <h4>Table Formats</h4>
  <ul>
  <li><b>All-Play-All</b> - For round-robin events. Has a limit of 30 players</li>
  <br>
  <li><b>Swiss</b> - For tournaments with a large number of players.
  Can display up to 200 players and 20 rounds.
  Scid uses the "Round" tag of each game to produce a Swiss Crosstable,
  so you will not see games if they don't have numeric round values.
  </li>
  <br>
  <li><b>Knockout</b> - Shows game results round-by-round.</li>
  </ul>

  <h4><name tiebreak>Tie-Breaks</name></h4>
  <p>When sorting by score, players with equal scores are ordered by their tie-break.
These are <b>Sonneborn-Berger</b> for All-Play-All, and <b>Bucholz</b> for Swiss.
Optionally, Head-to-Head and Total-Wins tie-breaks (in that order), can also be used.
</p>

  <h4>Other Options</h4>
<ul>
  <li><b>Group Scores</b> draws a blank line between players with the same score.  </li>
  <li><b>Color Information</b> shows a w/b in the Swiss format, representing if player was white or black.</li>
  <li><b>Color Rows</b> shades every second row. The color can be set in <b>MainMenu-<gt>Options-<gt>Colors</b>.</li>
</ul>

  <h4>ELO Performance Ratings Calculation</h4>
  <p>To calculate ELO Performance ratings and ratings changes, Scid uses algorithms from the
  <url http://www.fide.com/component/handbook/?view=article&id=172>FIDE handbook article 172</url>
  , or older versions of this article. Some related discussion can be found <url
http://www.chesschat.org/showthread.php?12161-Performance-ratings-models-for-100-and-0-scores>here</url>.
  </p>
 <p><i>Compared to some sources, Scid's Ratings Changes have small discrepencies, due to taking average opponent scores.
 Persons interested in authoritatively updating Scid's statistics will find the relevant code in Crosstable::RatingChange.</i></p>

  <p><footer>Updated: Scid vs. PC 4.13 September 2013</footer></p>
}


set helpTitle(Switcher) "Database Switcher"
set helpText(Switcher) {<h1>The Database Switcher</h1>
  <p>
  The Database Switcher, located at the bottom of the <a GameList>Game List</a>,
  gives visual feedback on open databases.
  The name, <a Filter>filter</a> state, and icon
  of each database is displayed, and the active database is highlighted
  with a coloured background. At the left most is a <a Bookmarks>bookmark</a> button.
  </p>
  <p>
  Right-clicking a database produces a popup menu. From this, one can perform <a Filter>filter</a> ops, mark base as Read-Only or
  close the database. There is also an extra menu which shows <a Tree>Tree</a> or <a Tree Best>Best Games</a>, (and includes un-implemented filter-save functions), or changes the icon.
  Middle clicking a base will show/hide the icons.
  </p>
  <h2><name draganddrop>Drag and Drop</name></h2>
  <p>
  Two separate forms of Drag and Drop are enabled.
  <br> <br>
  * Files can be opened from the Windows, KDE or Gnome file managers by dropping
  them onto the Switcher at the bottom of the Game List. (Files can also be dropped to the Gameinfo widget and Main board).
  <br> <br>
  * Dragging within the Switcher from one base to another, copies filtered games.
  This is an important way to manage and copy games within databases. Copying to databases (other than the clipbase) requires confirmation, but this can be disabled from the switcher context menu.
  </p>

  <p><footer>Updated: Scid vs. PC 4.16, January 2016</footer></p>
}


set helpTitle(Finder) "File Finder Window"
set helpText(Finder) {<h1>File Finder Window</h1>
  <p>
  With the <run ::file::finder::Open><green>File--<gt>Finder</green></run>
  you can browse the filesystem for Scid files, perform backups and other file
operations.
  </p>

  <p>
  Double clicking a file will open it, while right-click will
  show a context menu from which you can perform
  various file operations:

  <ul>
  <li><term>Open</term>	Open the file.
  <li><term>Backup</term>	Makes a copy of the file with the current date and time appended to its name.</li>
  <li><term>Copy</term>	Copy the selected database to a new location.</li>
  <li><term>Move</term>	Move the selected database to a new location.</li>
  <li><term>Rename</term>	Rename the selected database.</li>
  <li><term>Delete</term>	Delete the selected database.</li>
   </ul>
  <p>
   These functions are especially useful for si4 databases, which consist of three files.
  </p>

  <h3>Look in Subdirectories</h3>
  <p>
  This checkbox makes Scid recursively examine subdirectories for compatible
  files.  This, however, can take a long time, so you may not
  want to do it for large directory trees.  The process can be
  interrupted by pressing the <b>Stop</b> button.
  </p>

  <h3>Games Field</h3>
  <p>
  The meaning of this field depends on the file type.
  For Databases and PGN files, it is the number of games, and for EPD files the number of
  positions.
  </p>
  <p>
  For all file types except Scid Databases, the games field is only
  an estimate (represented by '~'), read from the first 64 Kilobytes.
  </p>


  <p><footer>Updated: Scid vs. PC 4.8, April 2012</footer></p>
}

set helpTitle(Tmt) "Tournament Finder window"
set helpText(Tmt) {<h1>The Tournament Finder window</h1>
  <p>
  The <run ::tourney::Open><green>Tournament Finder</green></run> searches for tournaments in the
  current database. It scans all the database games and collates data
  about the tournaments found.
  </p>
  <p><i>
  Two games are considered to be in the same tournament if they have the same Event and Site
  tags, and the same EventDate or were played within three months of each other.
  </i></p>
  <p>
  Tournament selection criteria includes the Number of Players/Games, Date, Mean ELO and Country.
  Adjust these fields in the widget, and press <b>Update</b> to see the new results.
  </p>
  <p>
  Clicking on a tournament updates the <a Crosstable>Crosstable</a>.
  Right-clicking will also load the first game.
  </p>
  <h3>Sorting Tournaments</h3>
  <p>
  The results can be sorted by Date, Number of Players, Number
  of Games, Mean Elo rating, Site, Event or the Winner by
  <b>clicking on a column title</b>.
  </p>
  <p>
  In Scid vs. PC 4.17 we implemented a new sort algorithm. Sort results are no longer dependant on the list size.
  </p>

  <p><footer>Updated: Scid vs. PC 4.17 September 2016</footer></p>
}

set helpTitle(GameList) "Game List window"
set helpText(GameList) {<h1>The Game List</h1>

<p>The <run ::windows::gamelist::Open><green>Game List</green></run>
shows all filter games in the currently open database/PGN file.</p>
<p>Below the Game List are various buttons and entries,
and at the bottom you'll find the <a Switcher>Database Switcher</a>.</p>
<p>Clicking a game will select it. Select multiple games using Control+Click and Shift+Click.
Right-clicking game(s) shows a context menu for various actions. Double-clicking loads a game.</p>
<p>Right-clicking a Column Title allows one to add columns or reorder them ('add' also repositions a column), or change the text left-right formatting.</p>
<p>Quick searches can be performed by entering text in the combobox and pressing Enter, or clicking the <b>Filter</b> button.
Use "+" as a logical AND with Filter, eg "Kasparov+Karpov".
Similarly, the entrybox allows finding a particular game by number. Both these widgets will load the current game by pressing Control+Enter.</p>
<p><i>To see games matching the current position, set 'adjust filter' in the <a Tree>Tree window</a>.
This also changes the 'Moves' column to show subsequent game moves.
For more info about Searches and Filters, <a Searches>see here</a> or below.
</i></p>
<h3>Sorting the Game List</h3>
<p>The database can be <b>permanently sorted</b> by clicking column titles.
Sorting is not undoable, and may (marginally) affect search and tree performance. For more details see <a Sorting>Sorting Database</a>.
</p>

  <h3><name Del>Filtered and Deleted Games</name></h3>
  <p>Scid has two notions of removed games, which can be confusing.</p>

  <p>The first is <b>Filtered Games</b>.  In the Game List widget,
  right-clicking some games and selecting <b>Remove</b>
  will remove those games from the filter. They will disappear from the Game List,
  but can easily be seen again by reseting the filter with <b>Reset</b>. Filtering games
  has no effect on the database.</p>

  <p><b>Deleted</b> games on the other hand, are not removed from the Game List.
  They are simply marked as deleted, and no further action is taken until
  the database is compacted - whence they will be <b>permanently deleted</b> from the database.
  This can be done by the <b>Compact</b> button, or
  from the <a Maintenance>maintenance</a> window.</p>
<p><i>The Game List only deletes (up to) a page of games at a time. Deleting or manipulating ALL filtered games,
is done from the Maintenance window.</i></p>


<p><i>The default database (Clipbase) cannot be compacted</i>.</p>

<h3>Buttons</h3>
<ul>
<li><img tb_save> - replace current game</li>
<li><img tb_bkm> - show bookmarks</li>
<li><img tb_gfirst> - load first filter game</li>
<li><img tb_gprev> - load previous filter game</li>
<li><img tb_gnext> - load next filter game</li>
<li><img tb_glast> - load last filter game</li>
<li><b>Reset</b> - reset game filter</li>
<li><b>Negate</b> - negate game filter</li>
<li><b>Filter</b> - searches/filters the current filter for entered text</li>
<li><b>Find</b> - (Press 'Enter' in the entrybox) perform a (slow) general find for entered text</li>
<br>
<li><b>Current</b> - highlight the current game (if it has not been filtered)</li>
<li><b>Compact</b> -  database (game) compaction.</li>
</ul>
</p>

<h3>Notes</h3>
<ul>
<li>The <b>Country</b> field is actually the last three letters of the Site (if the third last is capitalized, and preceded by a space). The <a Maintenance Spellcheck>Spellchecking</a> Site name tool may be helpful to add Country names. </li>
<li>The <b>Moves</b> field shows the Opening Moves or, if tree is adjusting the filter, each game's Next Moves.</li>
<li>A maximum of 50 comments are recorded/shown.</li>
<li>ELO shown in brackets are guess-estimates.</li>
</ul>
</p>

<h3>Other Features</h3>
<ul>
<li>Pressing Delete removes selected game(s) from filter</li>
<li>Control+Delete - Toggle 'Delete' flag.</li>
<li>Control+a - Select all visible games</li>
<li>Control+n - Negate the filter</li>
<li>Control+r - Reset the filter</li>
<li>Control+c - Copy game to clipbase</li>
<li>Control+v - Paste game from clipbase to current base</li>
<br>
<li>Resize column widths by dragging the column edges.</li>
<li>Drag and Drop file opens from KDE/Gnome to the switcher (from Windows/KDE/Gnome).</li>
<li>Drag and Drop between switcher icons to copy files.</li>
<li>Middle-click the Game List to hide the button bar.</li>
</ul>

  <h3><name Browsing>Browsing and Merging Games</name></h3>
  <p>
  From the Gamelist context menu, one may <b>Browse</b> a game. This is a game
  preview which displays in a separate window, without comments or variations.
  </p>
  <p>
  From this preview, one may <b>Merge</b> the game back into the
  current one as a variation. The merge starts from where the games differ (taking transpositions into account),
  and you can change the last move number to be merged, according to whether
  you are interested in adding the whole game or just its next few moves.
  </p>
<p><i>The board size can be resized by Control+Wheelmouse or Control+Shift+Left/Right.</i></p>
<p><i>The current gamelist may be exported as text from ScidvsPC's Tools-<gt>ExportFilter menu.</i></p>


  <p><footer>Updated: Scid vs. PC 4.21, August 2019</footer></p>
}


set helpTitle(Import) "Import window"
set helpText(Import) {<h1>The Import Window</h1>
  <p>
  The <run importPgnGame><green>Import Window</green></run> provides an easy way for you to paste a game
  into Scid from some other application or window.
  The top-most frame is where to enter or paste
  the game in PGN format, and the lower frame
  provides feedback of any errors or warnings.
  </p>

  <p>
  <i>Imported PGN must be in English notation.</p>
  <p>
  Scid provides several ways to access games in PGN. As well as the Import
  Window, games can be opened via <run ::file::Open><green>File-<gt>Open</green></run>.
  Large PGN archives can sometimes give Scid problems. A more reliable import method is the
  <a Pgnscid>Pgnscid</a> utility</i>
  </p>

  <h3>Editing the Current Game</h3>
  <p>
  The Import window also doubles as a way to make changes or corrections
  to a game. First paste the current game
  with <b>Paste Current Game</b>, then edit the moves
  , and click <b>Import</b> when done.
  </p>

  <h3>Notes</h3>
  <p>
  Scid expects to see PGN header tags such as
  <ul>
  <li> <b>[Result "*"]</b> </li>
  </ul>
  before any moves, but pasting a game fragment such as
  <ul>
  <li> <b>1.e4 e5 2.Bc4 Bc5 3.Qh5?! Nf6?? 4.Qxf7# 1-0</b> </li>
  </ul>
  (without any header tags) is generally ok.
  </p>

  <h3><name CCRL>CCRL Imports / Round Name issues</name></h3>
  <p>
  The Computer Chess Rating Lists distributes PGN archives which can cause Scid problems.
  They use the Round field to represent unique game numbers, and Scid only supports 262,143 Round Names.
  You may wish to replace the "Round" field with "Rd", or some other tag.
  </p>
  <p>
  This can be achieved using the <b>sed</b> utility and the command
  <ul><li>sed -e "s/\[Round /[Rd /" <lt> CCRL.pgn <gt> new.pgn</li></ul>
  Sed comes with Linux and OSX, but Windows users may wish to try this version.
  <url http://sed.sourceforge.net/grabbag/ssed/sed-3.59.zip>http://sed.sourceforge.net/grabbag/ssed/sed-3.59.zip</url>.
</p>

  </p>

  <p><footer>Updated: Scid vs. PC 4.3, February 2011</footer></p>
}

set helpTitle(Export) "Exporting Games"
set helpText(Export) {<h1>Exporting Games</h1>
  <p>
  Commands to export games to other formats are found in the <b>Tools</b> menu.
  Four file formats are supported:
  <ul>
  <li><a PGN>PGN</a> The default chess game format</li>
  <li><b>HTML</b> for web pages</li>
  <li><b>HTML and JavaScript</b> for interactive web pages</li>
  <li><b>LaTeX</b> a popular typesetting system</li>
  </ul>
  Additionally, on Unix systems, LaTeX can be converted to <a Export PDF>PDF</a>.
  </p>

  <h3><name Null>PGN Compatability Issues</name></h3>
  <p>
  Scid's si4 database format does not enforce any particular character encoding. Scid vs. PC now exports PGN
  to either Latin-1 or Utf-8 format. For more information, see the <a Encoding>Encoding</a> section.
  </p>
  <p>
  The <url http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm>PGN Standard</url>
  has no <a Variations Null>null move</a> concept. So
  if you export games including them to PGN, other
  software may not be able to read these games correctly.
  </p>
  <p>
  To solve this problem, one should enable the <b>Convert null moves to comments</b> option.
  Of course, if you wish to later reimport the PGN file
  , with null moves preserved, disable this option.
  </p>
  <p>
  Exporting PGN is normally formatted (for readability) to around 80 characters line width. To disable this, deselect <b>Insert newlines</b>.
  </p>
  <p>
  Scid's use of Ascii strings (such as <b>+=</b> to represent annotations is also against the PGN standard.
  For compatability, <b>Symbolic annotation style</b> should be set to <b>$2 $14</b>.
  </p>
  <p>
  The use of '{' and '}' inside comments is also against the standard, and Scid vs. PC replaces these with parenthesis when exporting PGN.
  </p>
<p>Scid vs. PC also has the option to preserve Scid flags - including the Delete flag. This allows one to export games to
PGN, perform some text editing on the file (for example), and then reload the games while still preserving the DB flags.
</p>


  <h3>HTML with JavaScript</h3>
<p><i>
  Diagrams are drawn (in HTML or LaTeX formats),
  wherever a <b>D</b> nag, or a comment (starts with <b>#</b>) appears.
  In the case of HTML, Scid's bitmaps directory should be placed alongside your exported file.
  </i></p>

  <p>
  While the HTML export generates a static file that may contain
  static board diagrams, this format offers dynamic HTML, that allows
  to move through the game interactively with the mouse.
  </p>
  <p>
  This format consists of several files that need to be stored in a
  specific structure. Therefore, it is advisable to first generate a
  empty folder that will contain these files. The name of the main
  file can be specified and it will get the extension html (e.g.
  mygame.html). This file should be loaded by the web browser. The
  other files are required to exist in exactly the position the export
  filter places them. However, the whole folder can easily be uploaded
  to some web server.
  </p>

  <h3>LaTeX</h3>
  <p>
  Scid can export games to a LaTeX file.  Games are printed two columns
  to a page, and moves are in figurine algebraic notation with proper
  translation of the nag symbols. </p>
  <p>
  See <a LaTeX>Using LaTeX with Scid</a> for more information.
  </p>
  <p>
  <b><name PDF>Converting LaTeX to PDF</name></b>
  can be achieved on Unix systems with the <b>pdflatex</b> command.
  A quick conversion is of the form:
  <br>
  <ul><li>pdflatex -interaction batchmode mytexfile.tex</li></ul>
  </p>

  <h3><name EPD>EPD / FEN</name></h3>
  <p>
  This feature runs through the filter, and exports select games to a basic EPD file.
  Only games with non-standard start positions, or those that load into ply (for example, after a material search, or after Search-<gt>Filter to last move), will be saved.
  Note - subsequent loading of this file may show fewer positions than (non-standard) games, as EPD files discard duplicate positions.
</p><p><i>
  Todo: support EPD halfmove and fullmove counters (hmvc and fmvn) with save and load... but this would break FEN only usages.
</i></p>

  <p><footer>Updated: Scid vs. PC 4.21 June 2019</footer></p>
}

set helpTitle(Encoding) "PGN Encoding"
set helpText(Encoding) {<h1>PGN Encoding</h1>
  <h3>PGN Encoding and UTF-8</h3>
  <p>
Scid vs. PC can <a Export>export PGN</a> to UTF-8 or Latin-1 (ISO 8859/1) character sets.
English speakers will generally prefer Latin-1
(the <url http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm>PGN</url> standard)
, but other locales may find UTF-8 a better choice.
</p>
<p>
Enforcing selection of one of these is necessary because <a Formats>si4</a> has weaknesses concerning the
internationalization of game data. Player, Site, Event names, etc, and PGN comments,
can be stored with <b>any</b> character-set encoding.
</p>

<h3>Technical Details</h3>
<p>These factors affect the encoding of Scid databases.</p>
<ul>
<li>Older Linux/Unix distributions were installed with Latin-1 encoding as
default, and older MS Windows used CP1252. But UTF-8 is now the <i>default</i> system encoding for both Linux and Windows.
Currently Scid interprets PGN files as system encoded, without actually checking if this is correct.</li>
<br>
<li>Many applications produce PGN files with unsuitable character
encodings. It is not uncommon that a PGN file has extended ASCII (CP850 for
example), or is UTF-8 encoded but without a leading UTF-8 BOM.
When importing these PGN, Scid is interpreting the content as system encoded,
which may result in the games not being displayed properly.</li>
</ul>

<p>
The PGN export will be done with the use of a character-set detector. This
detector examines the content of the text, and
converts it to either Latin-1 or UTF-8 (depending on the user's choice).
In many cases it is even able to convert defective encodings into a proper character-set.</p>
<p>
Implementing this feature in Scid vs. PC is also an important step towards the support of the <b>C/CIF archive</b> format,
which only allows valid UTF-8, and the character-set detector will be used for a proper conversion.
</p>

  <p><footer>Updated: Scid vs. PC 4.15 June 2015</footer></p>
}

set helpTitle(LaTeX) "Scid and LaTeX"
set helpText(LaTeX) {<h1>Using LaTeX with Scid</h1>
  <p>
  Latex is an attractive and comprehensive documentation system -
  used by Scid for previewing player and opening reports and exporting games -
  but it is tough to install and use.
  </p>
  <p><i>
  Scid vs. PC no longer uses Chess12 for LaTeX output. The new Skak implementation is mostly complete,
but not quite. It remains todo: Implement comments inside variations, castling diagrams, and adding a
"Compact" option which disables diagrams and score graphs and restricts the game header to (half the page width).
  </i></p>
  <h2>Installation</h2>
  The author installed texlive on Linux Mint 17 (Ubuntu 14.04), and additonally these packages
  </p>
  <ul>
<li>latex-xcolor (xcolor.sty)</li>
<li>texlive-games (xskak.sty)</li>
<li>texlive-generic-extra, (lambda.sty) </li>
<li>texlive-latex-extra (xifthem.sty)</li>
<li>pgf (pgfcore.sty)</li>
<li>lmodern (lmodern.sty)</li>
<li>texlive-pstricks (pstricks-add.sty)</li>
<li>texlive-xetex (xelatex)</li>
  </ul>
<h2>Generating PDF</h2>
<p>Latex will generally need to be converted to PDF. Scid's Latex preview function will do this, but for manually
converting to pdf, use this command <b>xelatex file.tex</b></p>

<p>The older method for doing this is<ul>
<li>latex file.tex       // This will create a file.dvi file</li>
<li>dvi2ps file.dvi     // Then this will create a file.ps file</li>
<li>ps2pdf file.ps     // Then this will create a file.pdf</li>
</ul></p>
<h2>Viewing</h2>
  <p>
  To use the Latex preview options for the Opening and Player Reports,
  it is recommend to have a pdf viewer available in your
  environment/system. Compatible viewers are
  </p>
  <ul>
        <li><b>Linux</b> - evince, okular, etc</li>
        <li><b>OS X</b> - TODO</li>
        <li><b>Windows</b> - TODO</li>
  </ul>
</p><p>
More generally, on Linux the tex output generated by Scid is first converted into pdf format using
"pdflatex -interaction=nonstopmode" , and then opened by the viewer (default evince).
</p>
<p>
Both the renderer and viewer are configurable in <run setExportText Latex><green>Options-<gt>Exporting-<gt>Latex</green></run>
</p>
<h2>OS X Notes</h2>
<p>
Ileano writes<ul>
<li>On El Capitan ...  It is necessary to add in the Latex options "\usepackage{auto-pst-pdf}"
, and  call the pdflatex tool  with "pdflatex -shell-escape myfile.tex".
Also ...  add "PATH=$PATH:/Library/TeX/Root/bin/x86_64-darwin" to the startup scripts</li></ul>
</p>

  <p><footer>Updated: Scid vs. PC 4.17, Sept 2016</footer></p>
}

set helpTitle(PGN) "PGN Window"
set helpText(PGN) {<h1>PGN Window</h1>

  <p>
  This section explains how to use Scid's <run ::pgn::Open><green>PGN Window</green></run>.
  </p>

  <p> <i>Other help subjects include <a BrowsingPGN>PGN files and Scid</a>,
  <a Export>Exporting</a>, and <a Import>Importing games</a></i> </p>

  <p>
  <i>Portable Game Notation is a common
  <url http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm>standard</url>
  for representing chess games.  A PGN file consists of two
  sections - a 'Header' containing tags such as
  [White "Kasparov, Gary"] and
  [Result "1/2-1/2"], and a 'Body' containing the actual moves in standard
  algebraic notation (SAN) along with any <a Variations>variations</a>, <a NAGs>annotation
  symbols</a> and <a Comment>comments</a></i>.
  </p>

  <h3>General Use</h3>
  <p>
  The PGN Window allows one to navigate around the game. Clicking
  on moves will jump to them, clicking on comments edits them.
  (And just like the main window, the <b>arrow keys</b>, <b>v</b> and <b>z</b> allow for
  game navigation).  Using the middle button displays a small
  board. Right-clicking displays a context menu.
  </p>

  <h3><name ttf>Chess Figurines</name></h3>
  <p>
  The <b>Chess Pieces</b> option displays small chess figurines instead of letters, to represent pieces.
  This feature is only available if truetype fonts are supported, and ScidChessStandard.ttf has successfully been installed,
  and may incur a small performance loss.
  </p>
  <p>
  On <b>Microsoft Windows</b>, the fonts are installed automatically, but may
  not be available until Windows has updated the font cache. If they aren't available, browse the Windows\Fonts directory
  and double click the Scid fonts.
  </p>
  <p> <b>OS X</b> users should also manually install the font.</p>

  <p><url https://sourceforge.net/projects/scidvspc/files/support files/pgn_ttf_fonts.tgz/download>Download ttf font</url>
  </p>

  <h3>Options</h3>
  <p>
  The PGN menu contains options about how the game is displayed.
  Some of them include: Colour or Plain text, Short Header, Column Style and <b>Scrollbar</b>.
  Personalised <b>Colours</b> may also be selected.
  </p>
  <p>
  One slow systems, deselecting <b>Color Display</b>, will speed things up but with reduced features.
  You can also alter the format of comments and variations, choosing
  to display them indented on a separate line for greater visibility.
  </p>

  <h3>Context Menu</h3>
  <ul>
     <li><term>Delete Variation:</term> Deletes the current variation </li>
     <li><term>Make First Variation:</term>
     Moves the current variation to the first position of all variations on that level </li>
     <li><term>Promote Variation to Mainline</term>
     Promotes the current variation to the mainline and demotes the
     current mainline to a variation.  </li>
     <li><term>Strip:Comments</term> Removes all comments </li>
     <li><term>Strip:Variations</term> Removes all variations </li>
     <li><term>Strip:Moves from the beginning</term> </li>
     <li><term>Strip:Moves to the End</term> </li>
  </ul>

  <p><footer>Updated: Scid vs. PC 4.10, July 2013</footer></p>
}


set helpTitle(PTracker) "Piece tracker"
set helpText(PTracker) {<h1>The Piece Tracker Window</h1>
  <p>
  The <term>Piece Tracker</term> is a tool that tracks the movements
  of a particular piece in all games in the current filter, and
  generates a "footprint" showing how often each square has been
  visited by the piece.
  </p>
  <p>
  To use the Piece Tracker, first make sure the filter contains the
  games you are interested in, such as games reaching a particular
  opening position or all games where a certain player had the white pieces.
  Then, select the piece to track and set other tracking options; these are
  explained below. Then press the <b>Update</b> button.
  </p>
  <p>
  The tracked piece movement information is displayed in two ways: a
  graphical "footprint", and a text list with one line of data per square.
  </p>

  <h3>Selecting the tracked piece</h3>
  <p>
  The chess pieces are displayed as in the standard chess starting position
  below the footprint chart. A single piece (such as the White b1 knight or
  the Black d7 pawn) can be selected with the left mouse button, and all
  pieces of the same type and color (such as all White pawns or both Black
  rooks) can be selected using the right mouse button.
  </p>

  <h3>Other piece tracker settings</h3>
  <p>
  The move number range controls when tracking should start and stop in
  each game. The default range of 1-20 (meaning tracking should stop after
  Black's 20th move) is appropriate for examining opening themes, but (for
  example) a range like 15-35 would be better when looking for middlegame
  trends.
  </p>
  <p>
  There are two types of statistic the tracker can generate:
  <ul>
  <li> <b>% games with move to square</b>: shows what proportion of filter
  games contain a move by the tracked piece to each square. This is
  the default setting and usually the most suitable choice.
  <li> <b>% time in each square</b>: shows the proportion of time the
  tracked piece has spent on each square.
  </ul>
  </p>

  <h3>Hints</h3>
  <p>
  There are at least three good uses for the Piece Tracker: opening
  preparation, middlegame themes, and player preparation.
  </p>
  <p>
  For opening preparation, use the piece tracker with the <a Tree>Tree</a>
  opened. By tracking pieces you can see trends in the current opening
  such as common pawn pushes, knight outposts, and where the bishops are
  most often placed. You may find it useful to set the move number range
  to start after the current move in the game, so the moves made to reach
  the current position are not included in the statistics.
  </p>
  <p>
  For middlegame themes, the piece tracker can be useful when the filter
  has been set to contain a certain ECO range (using a
  <a Searches Header>Header search</a>) or perhaps a pattern such as a
  White IQP (using a <a Searches Material>Material/pattern search</a>).
  Set the move range to something suitable (such as 20-40), and track
  pieces to see pawn pushes in the late middlegame or early endgame,
  for example.
  </p>
  <p>
  For player preparation, use a <a Searches Header>Header search</a> or
  the <a PInfo>Player information</a> window to find all games by a
  certain player with one color. The Piece Tracker can then be used to
  discover how likely the player is to fianchetto bishops, castle
  queenside, or set up a d5 or e5 pawn wedge, for example.
  </p>

  <p><footer>Updated: Scid 3.6.2, December 2006</footer></p>
}


set helpTitle(Repertoire) "Repertoire editor"
set helpText(Repertoire) {<h1>The Repertoire Editor</h1>
<p>
The Repertoire Editor has been removed since Scid vs. PC 4.2.
<br>
Simililar and more powerful features are available in the <a TreeMasks>Tree Masks</a> window.
</p>

  <p><footer>Updated: Scid vs. PC 4.2, November 2010</footer></p>
}

set helpTitle(Tree) "Tree Window"
set helpText(Tree) {<h1>Tree Window</h1>
  <p>
  The <run ::tree::Open><green>Tree Window</green></run> is an powerful Scid
  feature. It shows information about moves from the current
  position in the form of statistics and a coloured graph representing
  white-wins, draws, and black-wins.
  </p>
  <p><i>
  Scid's Tree search is fast because of a novel idea - we
search for games that do not reach this position!
  </i></p>
  <h3>Opening a Tree</h3>
  <p>One can open a database and then select <b>Windows--<gt>Tree Window</b>,
  use the <b>Control-T</b> short-cut, or <b>Open Base as Tree</b> from the file menu.
  This last method means games in one database can be examined via the tree from a different database.</p>

  <h3>General Use</h3>
  <p>
  The Tree Window shows statistics about the next move, as calulated from all games in the current base.
  Extended info is shown by the <button tb_info> button.
  The Score is always computed from white's perspective, so 100% means all White wins and 0% means all Black
  wins. Games with no result do not contribute to the percentage drawn, but as half-won/half-loss.
  </p>
  <p>
  Clicking on a move adds that move to the game. Middle-click shows/hides the button bar.
  </p>
  <p>
  The moves in the tree window can be sorted by
  Move (alphabetically), ECO code, Frequency, or Score.
  </p>
  <p>
  The <b>Adjust-Filter</b> checkbox alters the gamelist/filter so that only games matching the current position are displayed.
  Its behaviour is a little complicated. Deselecting Adjust-Filter will set the regular filter to the <i>current</i>
  (adjusted) filter. But closing the Tree, will restore the regular filter to how it was when Adjust-Filter was selected.
</p>
  <h3><name Best>Best Games Window</name></h3>
  <p>
  The <button b_list> button in the Tree window, shows games matching the current position.
  </p><p>
  Normally, the highest rated games are displayed first, but by changing the
  'Sort' button, games will be shown in their normal database order.
  (The default for this feature can be altered in the Tree options menu).
  </p>
  <p>
  You can also restrict the list to show games with a particular result,
  and alter the displayed columns by right-clicking the column titles.
  </p>

  <h3>Tree Masks</h3>
  <p> Tree Masks
  provide additional information beyond pure statistical data, and can be
  imagined as a transparent layer above the current tree that holds additional
  data. For more info see <a TreeMasks>here</a>.
  </p>

  <h3><name Lock>Locking the Tree Window</name></h3>
  <p>
  Each tree window is associated with a specific base, that is, if
  several bases are opened simultaneously, several tree windows may
  exist. If the <term>Lock</term> button in the tree window is
  enabled, closing the tree window will also close the database
  associated with this specific tree. Additionally, this also closes
  associated graph or best games windows. If the <term>Lock</term>
  button is not checked closing the tree will leave all these windows
  opened and just close the tree view of the base.
  </p>
  <p>
  Note that opening a base as tree from the file menu will
  automatically lock the database by default.
  </p>

  <h3><name Training>Training</name></h3>
  <p>
  The Training button <button tb_training> enables a basic Opening Trainer feature.
  Moves in the tree are hidden, trial mode is engaged, and
  Scid replies to <b>in-tree</b> player moves with one of it's own, according to database weight.
  So a move existing in 80% of database games will be played 80% of the time.
  </p><p>
  <i>There are addition functions associated with Tree Masks, but these are untested by this author.</i>
  </p>

  <h3>Caching for Faster Results</h3>
  <p><i>The Tree Cache is not as important as previously, as Scid now has an Interuptible Tree feature.</i></p>
  <p>
  Scid maintains an in-memory cache of tree search results. This allows the Tree Window to update much faster
  when the current position is in the cache.
  Configuration of this feature is via the Tree Window menus.
  </p>
  <p>
  This cache can be written to disk for future use with the <b>Save Cache</b> command,
  which writes the cache to a file with the suffix <b>.stc</b>,
  in the same directory as the database.  One may also select <b>Auto-Save Cache</b>
  to automatically save the cache when the base is closed; though this may not work when Scid is quit before closing a base.
  </p>
  <p>
  The <b>Fill Cache File</b> command fills the cache with data for around 100 of the most common openings.
  </p>
  <p><i>
  The maximum size of the Cache is configurable, and defaults to 1000 lines.
  The cache file (.stc) is completely disposable. One may remove
  it without affecting the database, and in fact it is discarded by Scid
  whenever an action occurs that could leave it out of date - for example,
  adding or replacing a game, sorting the database, or decreasing the cache size.
  </i></p>
  <p>
  Alternatively, one may fill the cache with the contents of a
  base or single game, including all variations. Generally, the cache will not be
  large enough for a whole base. In this case, less common lines will be discarded for those more common.
  This feature is useful if you have one, or more, repertoire bases that can serve as input.
  </p>

  <h3>Fast / Slow Mode</h3>
  <p>
  Tree Refresh can be sped-up if the database is sorted
  by ECO code and then compacted (see the <a Maintenance>maintenance</a>
  window). Once this is done (which can take some time),
  turn on the option <b>Fast Mode</b>. Tree Window refresh will be 20 times faster on average
  at the cost of some inaccuracies; games not in current filter will not be taken
  into account. Also, Fast mode does not update the Tree Cache, nor
  consider move transpositions. To allow for this there is a third Tree mode.
  <b>Fast and Slow Mode</b> initially gives one a preview of statistics, then performs a slow update afterwards.
  For more info see Pascal's comment's
<br><br>https://sourceforge.net/p/scid/mailman/scid-users/thread/48103F94.1010408%40free.fr/
  </p>

  <p><footer>Updated: Scid vs. PC 4.22, December 2020</footer></p>
}

set helpTitle(TreeMasks) "Tree Masks"
set helpText(TreeMasks) {<h1>Tree Masks</h1>
  <p>
  The <a Tree>Tree window</a> displays information on all the moves in the
  database made from the current position.  <b>Masks</b> add additional
  information, and can be imagined as a transparent layer above the Tree that
  holds data such as commentaries for moves or positions, own
  evaluations, and ones Opening Repertoir.
  </p>
  <p>
  They are stored in a Mask file (<b>.stm</b> - Scid Tree Mask) and are independent of any
  database. That is - once created, a Mask can be used with any database by
  loading it from the Tree Mask menu.
  </p>
  <p>
  When a Mask is opened, the display of the Tree window changes. First of all,
  all moves present in the mask are highlighted in purple.  Additionally, nags and
  markers are shown in front of a move, and Comments concerning the move are
  shown afterwards.  Finally, the current postition may also hold a comment.
  </p>
  <p>
  <i>The indepencence of Masks from a database
  make them a very powerful tool for handling opening repertoires.
  Contrary to the traditional way of opening lines, Masks
  have the advantage to handle transpositions transparently, simply
  because they are based on the current positions instead of a line
  leading to it.</i>
  </p>
  <h3>Using Masks</h3>
  <p>
  The Tree window has a Mask sub-menu, where Masks are opened or created (as well as other features).
  </p><p>
  Once a Mask is opened, commentary can be added
  by <b>right-clicking moves</b> and adding comments/nags/markers (etc, see below).
  </p>
  <p>
  Whole lines may be marked by <b>holding the Control key</b> down while right-clicking.
  I.E. - for most operations, all *preceding* moves will be marked this way. The exception is
  RemoveFromMask, which will remove all *following* moves.
  </p>
  <p>
  Moves not displayed in the Tree may be added to the Mask via
  the "Add Move to Mask" context menu.
  </p>
  <p>
  Don't forget to save the Mask! You will be prompted to do it
  if you close a Mask that has been modified, or if a Tree Window is closed.
  The most recent Mask file may be automatically opened via Tree-<gt>Options-<gt>Auto-Load-Mask.
  </p>
  <p><i>
  For an opening repertoire , one might consider having
  two masks, one for White, and one for Black openings.
  </i></p>
  <h3>Configuring Masks</h3>
  <ul>
  <li><term>Markers</term> (1 and 2) allow two graphical markers to be attached to a move. They
  are mainly meant to handle opening repertoires. The available options
  are:
     <ul>
     <li> <img ::rep::_tb_include> Include line in repertoire</li>
     <li> <img ::rep::_tb_exclude> Exclude line from repertoire</li>
     <li> <img ::tree::mask::imageMainLine> Main Line</li>
     <li> <img tb_bkm> Bookmark</li>
     <li> <img ::tree::mask::imageWhite> White</li>
     <li> <img ::tree::mask::imageBlack> Black</li>
     <li> <img tb_new> New line</li>
     <li> <img tb_rfilter> To be verified by further analysis</li>
     <li> <img tb_msearch> To train</li>
     <li> <img tb_help_small> Dubious line</li>
     <li> <img tb_cut> To remove</li>
     <li> No Marker</li>
     </ul>
  </li>
  <br>
  <li><term>Color</term> Allows to add a little coloured square in
  front of the move for ones own highlighting. To remove it again
  select <b>White</b></li>
  <br>
  <li><term>NAG</term> symbols are the simplest annotation symbol. The
  menu displays only those nags sensible for a move (not a position)
  which results in the following symbols possible <term>!!, !, !?, ?!,
  ?, ??, ~</term>
  </li>
<br>
  <li><term>Comment Move</term> adds a text comment for
  the move/line. Double-clicking comments allows easy editing.
  associated. Note that only a part of the first line shows up there
  to give some visual feedback that commentary exists. The whole
  comment shows up in a tooltip once the mouse is moved over the line
  in question.
  </li>
  <br>
  <li><term>Comment Position</term> can be used to add a comment for the
  current position. This comment is shown on top of Tree
  window once the commented position is reached.
  </li>
  </ul>
  <h3>Mask Searches</h3>
  <p>
  <i>When using Mask Searches, enabling the Tree </i><b>Adjust Filter</b><i> checkbox is recommended.</i>
  </p>
  <p>
  The Mask Search feature enables searches for commentary, symbols etc.
  Selecting the <b>Search</b> button displays a list of all positions found
  in FEN notation, followed by the move in question and commentary if any.
  </p>
  <h3>Mask Display</h3>
  <p>
  The Mask Display feature shows the current Mask in a line
  style. Starting at the current position all subsequent moves are
  sorted into some unfoldable tree to give an overview of the current
  lines of play - similar to what is found in many repertoire books.
  Not all information is displayed (e.g. Comments are
  shorted to fit the display). Additionally, as Masks
  work on positions rather than move sequences, they may contain loops
  (ie. transpositions) which can't be properly unfolded in a line wise
  display. i.e this display may be cut at a certain point.
  </p>
  <h3>Conversion to Masks</h3>
  <p>
  Setting up a mask can be a tedious task, especially for complex
  opening repertoires. However, if such a repertoire is available as a
  Scid Database or a number of PGN games, or lines stored in usual
  chess games, Scid can use that information to set up suitable
  Masks automatically.
  </p>
  <p>
  First of all one has to load the information into a Scid Database.
  In case the information is already available as a Scid Database this
  is as easy as opening it. In case a PGN file is use it should be
  either imported into a Scid Database or one can use the
  Clipbase to import it temporarily (In which case one
  should make sure the Clipbase is empty before
  importing).
  </p>
  <p>
  The next step is to open the tree for the just opened Scid Database.
  Then a new Mask should be created or an existing one
  opened. <i>This function may be used to consolidate
  serveral bases into a single Mask</i>.
  </p>
  <p>
  Now, the Mask can be filled automatically with the game content of the
  database. In this process, comments within the games will be converted to move
  comments (appending to those existing eventually) in the Mask. NAGs will be
  added as well. To initiate this process one can chose either <b>Fill with
  game</b> to fill the Mask with the contents of a single game, or <b>Fill with
  Database</b> to loop over all games in the database.
  </p>
  <p>
  <b>Note</b> filling a Mask with an entire base can be quite time consuming.
  </p>
  <p>
  <b>Note</b> The Mask is filled with all moves till the
  end of the game including all variations within a game. Therefore,
  it is sensible to use only bases for this procedure that end the
  games as soon as the middle game is reached.
  </p>

  <p><footer>(Updated: Scid vs. PC 4.14, March 2015)</footer></p>
}


set helpTitle(Compact) "Database compaction"
set helpText(Compact) {<h1>Database Compaction</h1>
  <p>
  Database Compaction is a specific type of
  <a Maintenance>maintenance</a> that keeps a database as small and
  efficient as possible.
  It involves removing any unused space in its files.
  </p>
  <p><i>
  File Compaction is irreversible. After compaction, deleted Names/Games are gone forever.
  </i></p>

  <h3>Name File Compaction</h3>
  <p>
  Over time, you may find a database starts to contain a number of Player,
  Event, Site or Round names that are no longer used in any game. This will
  often happen after you spellcheck names. The unused names waste space in
  the name file, and can slow down name searches.
  Name File compaction removes all names that are not used in any games.
  </p>

  <h3>Game File Compaction</h3>
  <p>
  Whenever a game is replaced or deleted, wasted space is left in the game
  file (the largest of the three files in a Scid Database). Game File
  compaction removes these deleted games.
  </p>
  <p>
  Game File compaction is recommended after a database <a Sorting>sort</a>
  , to keep the order of the Game File consistent with the sorted Index File.
  </p>

  <p><footer>Updated: Scid vs. PC 4.13, August 2014</footer></p>
}


set helpTitle(Maintenance) "Database Maintenance"
set helpText(Maintenance) {<h1>Database Maintenance</h1>
  <p>
  Most Scid Database maintenance can be done from the
<green><run ::maint::Open>Maintenance Window</b></run></green> (Control+m).
  </p>
  <p>
  Operations include - using <a Flags>Delete (and other Game Flags)</a>, <a Maintenance Spellcheck>Spellcheck Names</a>,
  <a Compact>Compact</a> and <a Sorting>Sort</a> databases, and delete PGN Tags, Comments and Variations.
  </p>
  <p><i>
  <a Flags>Flags</a>, <a Compact>Compaction</a> and <a Sorting>Sorting</a> features are documented separately.
  </i></p>

  <h3><name Twins>Deleting Twin Games</name></h3>
  <p>
  <run markTwins><green>Delete Twin Games</green></run> facilitates removal of duplicate
  games.  It identifies game twins, and flags one as deleted.
  Two games are considered twins if their Players, and
  any other tags that you specify, exactly match.
  If you specify the "Same moves" option (strongly recommended) each pair must have the
  same moves; up to the length of the shorter game , or 60 moves maximum.
  </p>
  <p>
  When you have identified twins, it is good practice
  to confirm they have been correctly marked. Selecting "Set filter to twins to be deleted"
  allows easy perusal through the <b>Twin Game Checker</b> window
  (which automatically appears). Here, tag differences are highlighted, and
  Scid vs. PC shows a inline comparison of game variations and comments.
  </p>
  <p>
  Use the Arrow Keys to progress through the games, "1", "2" and "t" keys to
  toggle the Delete Fields, and "u" to Undelete both games.
  </p>
  <p>
  <i>To actually delete the games, you must <a Compact>compact</a> the database.</i>
  </p>

  <h3><name Editing>Editing Names</name></h3>
  <p>
  The
  <run nameEditor><green>Name Editor</green></run>
  is a tool to selectively edit entity names (eg Player names).
  </p>
  <p>
  Each unique name is only stored once in the <a Formats>name file</a>, so changing a name
  actually changes all occurrences of it. Similarly, some names in the name file may not actually be used. To remove such names,
perform a <a Compact>namebase compaction</a>.
  </p>
  <p>
  An single asterisk '*' may be used to match <b>any</b> name. This global substitution is only available for
  the Event, Site and Round names - not the Player, Elo or Date names.
  </p>
  <p>
  Date and Eventdate fields must be of the form YYYY.MM.DD (year, month, day)
  </p>
  <p>
  <i>Please take care when using the Name Editor. Changes are not properly undoable if the new name already exists. There is also a safety mechanism - Using '*' or '?' is not allowed with 'All games in database'.</i>
  </p>

  <h3><name Spellfile>Spellcheck File</name></h3>
  <p>
  The spellcheck file <b>spelling.ssp</b> contains information about Player Names, Titles, Birth & Death dates, and Country(s) of origin.
  <b>Please use with caution</b>. The names it contains may not be
  unique, and player initials may be incorrectly identified.
  It is also possible to substitute the larger <b>ratings.ssp</b>, which includes Elo ratings and FIDE Biographical data.
  </p>
  <p>
  The file should be loaded on startup, or can be <run
  readSpellCheckFile><green>loaded manually</green></run>.<i>
  Updated versions are available at the
  <url http://sourceforge.net/projects/scid/files/Player Data/>Scid Website</url>.
  </i></p>

  <h3><name Spellcheck>Spell Checking</name></h3>
  <p>
  Scid's Spell Checking feature is used to standardize Player, Event, Site and Round names throughout a database.
  To do so, a <a Maintenance Spellfile>spelling</a> file must be loaded.
  </p>
  <p>
  When Spell Check is run, a list of proposed corrections is produced. These
  should be perused and edited before actually making the corrections on disk.
  <i>The normal keyboard shortcuts for Cut, Copy, Paste, Undo and Redo apply</i>.
  </p>
  <p>
  The format of each correction is:
  <br><b>"Old Name" <gt><gt> "New Name"</b> (<b>N</b>) <b>Birthdate</b>--<b>Deathdate</b><br>
  There should be no space before "Old Name", and "N" represents the number of games matching the original player name.
  </p>
  <p>
  One may discard any correction by deleting it, or adding a
  space or any other character at the start of the line.  Player names with a
  <b>surname only</b> do not get corrected by default.
  Simliarly , <b>Ambiguous</b> name substitutions are not performed unless one
  manually removes the Ambiguous prefix from each line.
  </p>
  <p>
  Name substitution will not occur in games dated before the Player's birth, or after death - unless the birth and death dates are removed from the translation.
  </p>
<p>
For problematic PGN files, it may be necessary to use regexps and a word processor such as "vi".
For example - the first two examples remove four digit ELOs from player names. The last removes trailing spaces from all tags.
<br>
:%s/\(White .*\) *[[:digit:]][[:digit:]][[:digit:]][[:digit:]].*"/\1"/g
<br>
:%s/\(Black .*\) *[[:digit:]][[:digit:]][[:digit:]][[:digit:]].*"/\1"/g
<br>
:%s/ *"]$/"]/
</p>

  <h3><name Ratings>Adding Elo Ratings</name></h3>
  <p>
  The spelling file <b>ratings.ssp</b> contains ELO / Date information for rated players.
  The <b>Add Elo Ratings</b> button (in the Maintenance window) searches games and adds the appropriate
  ELO rating <b>at the date of the game<b>. There is also the option to overwrite existing ratings.
  </p>
  <p>
  The <a Maintenance Spellfile>spellcheck file</a> provided with Scid does not contain
  the Elo rating information needed for this function. Instead,
  the larger ratings.ssp file should be used.
  </p>
  <p>
  <i>Ratings are not added to games with known aliases.
  One may wish to run the Spell Checker first, which changes names using player aliases.
  </i>
  </p>


  <h3><name Cleaner>The Cleaner</name></h3>
  <p>
  The <run cleanerWin><green>Cleaner</green></run> window
  is a tool for doing a number of maintenance tasks at one time.
  You can choose which tasks you want to do, and Scid will
  perform them on the current database without requiring user interaction.
  This is especially useful for maintenance of large databases.
  </p>

  <h3><name Autoload>Autoloading a Game</name></h3>
  <p>
  When a database is opened, one may automatically load a particular game
  using the Maintenance <b>Autoload game</b> feature.
  <i>Note: Because of design of si4 header, this number's upper limit is 16,777,214 (Approximately 2^(8*3)).</i>
  </p>
  </p>

  <h3><name CV>Strip Comments/Variations</name></h3>
  <p>
  <b>Use with caution</b>. Bulk stripping Comments and Variations cannot be undone.
  Additionally, because of our implementation, some poorly defined names (eg Events/White/Black) can be changed -
 eg those with a '"' in a name, and the missing space in "Kramnik,V" will get converted to "Kramnik, V"
  </p>

  <h3><name Tags>Strip Extra Tags</name></h3>
  <p>
  This feature scans the database for extra PGN tags (such as "Annotator").
  Then, one may strip these tags, or adjust the filter to
  show the matching games.
  </p>

  <h3><name Check>Check Games</name></h3>
  <p>
  This feature performs basic checks on every game/filter games.
  </p>
  <p>
  Each Game
  <br>
  * Has index entry fetched
  <br>
  * Read from disk
  <br>
  * And is Decoded.
  </p>
  <p>
  Any errors are reported.
  </p>

  <h3>Repair a Base</h3>
  <p>
  In the rare case that a Scid Database is corrupted, one might try to
  repair it using Tools--<gt>Maintenance--<gt>Repair base. For this to work,
  the base in question must not be opened (which is not possible in
  most cases anyway). Scid will then try its best to get the database
  back in a consistent and usable state.
  </p>

  <p><footer>Updated: Scid vs. PC 4.22, September 2020</footer></p>
}

set helpTitle(Sorting) "Sorting a database"
set helpText(Sorting) {<h1>Sorting Databases</h1>
  <p>
  Scid has a fast and powerful <run makeSortWin><green>Sort Database</green></run>
  feature. Sorts can be performed on single fields (eg: Dates, Names and ECO codes),
  or multiple fields, with the first field having priority, and so-on.
  </p>

  <p>
  The available criteria/fields are
  </p>
  <ul>
  <li> Date (oldest games first)
  <li> Year (same as date, but using the year only)
  <li> Event name
  <li> Site name
  <li> Country (last 3 letters of Site name)
  <li> Round name
  <li> White name
  <li> Black name
  <li> Rating (average of White and Black ratings, highest first)
  <li> Result
  <li> Length (number of full moves in the game)
  <li> ECO (<a ECO>Encyclopedia of Chess Openings code</a>)
  <li> Variations (number of variations in game)
  <li> Comments (number of comments in game)
  <li> Random
  </ul>

  <h3>Sorting is Permanent</h3>
  <p>
  When you sort a database which is not read-only, the
  results are saved immediately and the <b>order of games is
  permanently changed</b>.  If this is not desired,
  one may first make the database <b>read-only</b> from the
  <a Maintenance>maintenance</a> window, or sort the games in the clipbase.
  </p>
  <p>
  When sorting a read-only database (or PGN archive)
  , the results cannot be saved and the order of games
  is lost when the file is closed.
  </p>

  <h3>Database Performance</h3>
  <p>
  When a database is sorted the Index File is altered but the Game File
  is not (leaving the game file records out of order relative to the Index File).
  This can result in slow <a Tree>tree</a>, position and material/pattern
  <a Searches>searches</a>. After sorting, one should reorder the game file by
  <a Compact>compacting</a> it to maintain good search performance.
  </p>
  <p>
  Additionaly, only databases sorted by <a ECO>ECO</a> codes (and subsequently
compacted) can use <b>fast tree searches<b>.
  </p>

  <p><footer>Updated: Scid vs. PC 4.10 August 2013</footer></p>
}

set helpTitle(Flags) "Game Flags"
set helpText(Flags) {<h1>Game Flags</h1>

  <p>
  Game Flags are indicators of some characteristic, such as "Brilliant Play" or "White Opening",
  and are used for classifying games and enabling fast database searches.
  There are <b>12 user flags</b> and <b>6 custom flags</b>
  </p>

  <p> Flags are set in the <a Maintenance>Maintenance Window</a>. Select the desired
  flag from the menu-button, and then use the appropriate "Mark" button.
  The <a GameList Del>Delete</a> flag has its own buttons,
  but it is just a special-case flag which indicates games will be removed when the
  database it is next <a Compact>compacted</a>.
  Scid vs. PC also allows quick flag tagging via the <a GameList>Game List</a> context menu.
  </p>
  <p>
  The User Flags are
  </p>

  <ul>
  <li>W - White opening</li>
  <li>B - Black opening</li>
  <li>M - Middlegame</li>
  <li>E - Endgame</li>
  <li>N - Novelty</li>
  <li>P - Pawn structure</li>
  <li>T - Tactics</li>
  <li>Q - Queenside play</li>
  <li>K - Kingside play</li>
  <li>! - Brilliancy</li>
  <li>? - Blunder</li>
  <li>U - User-defined</li>
  </ul>
  <p>
  The Custom Flags (1 to 6) have labels up to eight characters long, which are
  changeable in the Maintenance Window.
  </p>

  <p>
  You can use a <a Searches Header>Header Search</a> to find
  games with a particular flag turned on or off,
  or use flags as part of more complex searches.
  </p>
  <p>
  Since all the user flags (except Delete and Tactics) have
  no special significance, one may use them for any purpose.
  For example, you could use the Kingside (K)
  flag for kingside pawn storms, or kingside heavy piece attacks,
  or even for endgames with all pawns on the kingside.
  </p>
  <p>
  More information about use of the <b>Tactics</b> flag can be found in
  <ul>
     <li><a Analysis Annotating>Mark tactical exercise</a> (sets the T flag)
     <li><a FindBestMove>Training-<gt>Find best move</a> (evaluates the T flag)
  </ul>

  <p><footer>Updated: Scid vs. PC 4.19, Jan 2018</footer></p>
}

set helpTitle(Analysis) "Analysis Window"
set helpText(Analysis) {<h1>Analysis Windows</h1>

  <p> Scid vs. PC has powerful chess analysis features. Multiple engines can
run simultaneously; they can be matched against each other in a <a
Tourney>Computer Tournament</a>, and log files can be browsed from within the app -
making for easier <a Analysis Debugging>Debugging</a>.
</p>

  <h3>Getting Started</h3>

  <p>A few engines come preinstalled, while others can be added via the <a
  Analysis List>Engine Configuration</a> window.</p>

  <p>Starting them can be done in various ways
  By <run ::startAnalysisWin F2><green>pressing F2</green></run>
  , F3 or F4 from the Configuration Widget, or via the <b>Tools--<gt>Start Engine</b> menu.
  Additionally, Engine 1 can be start/stopped by <b>double-clicking the status-bar</b>.
  Right-clicking the status-bar will dock/undock the engine,
  which, when running docked, will run at low CPU priority.<p>

  <p>
  <b>Space Bar</b> makes the engine start/stop. Pressing <b>Enter</b> will
  add the engine's current best move, and <b>Control+Enter</b>, the whole line.
  Keys <b>1 to 5</b> will set the engine's variation count (MultiPV).
  </p>
  <p>
  At the top of the window are some useful buttons.
  <a Analysis Moves>Engine Analysis</a> occupy most of the space,
  and at the bottom is some <a Analysis Info>Extra Information</a> (which may be hidden).
  </p>

  <p>
  <i>The analysis output has three modes: No wrap, Word wrap, and Hidden.
  These are toggled between by middle-clicking the Analysis Window.</i>
  </p>

  <h3><name Buttons>Buttons</h3>
  <p>
  At the top you'll find the button bar
  <p>
  <ul>
  <li> <button tb_play 32> <b>Play</b> / <button tb_pause 32> <b>Pause</b>. Start / Stop engine analysis.
  <li> <button tb_addmove 32> <b>Add Move</b>
  adds the engine's best move to the current game. (Right click adds the engine score).</li>
  <li> <button tb_addvar 32> <b>Add Variation</b>  adds the whole main line.  (Right click adds the second variation if multi-pv enabled)</li>
  <li> <button tb_addallvars 32> <b>MultiPV</b>  if the engine supports MultiPV, add all variations.</li>

  <li> <button tb_annotate 32> <b>Annotate Game</b> (see <a Analysis Annotating>below</a>).</li>
  <li> <button tb_lockengine 32> <b>Lock Analysis</b> to a certain position.
  Hover cursor over this button to see stats for locked game.
  After a while, to add this analysis to game, return to the locked position,
  press Pause, Unlock, and Add Variation.</li>
  <li> <button tb_coords 32> <b>Show Board</b> displays a small working board.
  If engine is locked the board displays the locked position, otherwise middle-click toggles between display modes.</li>
  <li> <button tb_exclude 32> <b>Exclude Move(s)</b> helps refine the engine's search list (mainly UCI engines only). Hovering mouse shows the current excluded moves.</li>
  <li> <button tb_cpu 32> <b>Low CPU priority</b>
  give the engine a low priority for CPU
  scheduling. On Windows, engines are run on low priority by default.
  On Unix systems the engines priority can not be set back to normal.  </li>
  <li> <button tb_info 32> <b>Show Info</b> show additional information.</li>
  <li> <button autoplay_off 32> <b>Shoot out</b>, or "demo", mode allows the engine to play out the game. (Time delay is the same as for Autoplay).</li>
  <li> <button tb_help 32> <b>Help</b> button. (Right-click shows the engine log).
  <li> <button tb_training 32> <b>Training</b> feature (see <a Analysis Training>below</a>).</li>
<br>
  <li> And for Xboard engines only:</li>
  <li> <button tb_update 32> <b>Update</b> gets the engine to display a statistics line,
with the format "stat01: time nodes ply mvleft mvtot mvname". The results can be found in the engine's log file.</li>
  </ul>
  </p>

  <h3><name Moves>Moves / PV</name></h3>
  <p>
  Each line in the main text window contains an engine <b>Info</b>.
  The first number is the current <b>Search Depth</b>. The next (prefixed with
  a +/-), is a <b>Move Score</b>.  It is measured in 'pawns' from the
  perspective of white. A positive score means white is ahead, a negative score
  means black. Then follows the moves - also know as <b>Principal Variation</b> or <b>PV</b>.  </p>
  <p>
  Most UCI engines allow one to analyse several moves (or <b>lines</b>) at
  once. Using this <b>MultiPV</b> feature, the user can see the second or
  third (et cetera) best continuations.  The best line is always on top and
  highlighted.  If MultiPV is supported, the spinbox can be used to set the number of PV shown.  In this case,
  instead of the calculation history, only the resulting principal lines are
  shown. The spin box is disabled if an engine doesn't offer this feature.
  </p>

  <h3><name Info>Extra Info</h3>
  <p>
  At the bottom is some additional technical info, shown/hidden by pressing the <button tb_info 32> button.
  These are -
  <br>
  <br><b>Depth</b>  The search depth already reached by
  the engines calculations (in half moves).
  <br><b>Nodes</b>  The number of positions analyzed for the current
  result (and the number of positions per second).
  <br><b>Time</b>  The amount of time spent for the current analysis.
  </p><p>
  Additional information may include - the number of tablebase hits, a
  more exact number of nodes analyzed per second, the watermark of the
  engines hash, and the current CPU load.
  </p>

  <h1>Features</h1>

  <h3><name Annotating>Annotating Games</name></h3>
  <p>
  Games can be automatically analyzed using
  the Annotate Button <button tb_annotate> (in the <a Analysis>Analysis Engine</a> toolbar).
  This feature adds Scores, <a Comment>Comments</a>, <a Moves Informant>Informants</a>,
  Bestlines to games. </p>

  <p>
  There is also a new option to add <b>Missed Mates</b>. This adds all missed
  and shorter mates which are at least a few ply shorter of the 'Depth per move'
  setting (- at higher ply, the engine's PV aren't always reliable).
  Additionally, the added line may not be complete - ie. it may not end in mate.
  This is due to the engine reporting "Mate in n", but not actually giving the
  whole line/PV, which is a common UCI engine oddity.
  </p>

  <p><i>
  The Annotate button is only shown in the </i><b>first</b><i> engine window.
  </i></p>

  <p>After configuring the options and pressing OK, Autoplay
  Mode is enabled, tree updating is disabled, and the engine starts its analysis.
  A variation and/or score is
  automatically added for each position as the engine processes the game.
  Only positions from the current one until the end of the game
  are annotated, so you can skip annotation of opening moves
  by moving to a mid-game position before starting.
  Pressing the Annotate Button a second time cancels annotation.
  </p>

  <p><b>Options</b>
  <ul>
     <li><b>Move Control</b> Whether to process each move for a fixed time, or fixed depth (UCI only).</li>
     <li><b>Depth per move</b> Number of half-moves engine spends on analysing each move (UCI only).</li>
     <li><b>Seconds per move</b> Number of seconds engine spends on analysing each move.</li>
     <li><b>Blunder Threshold</b> A Score which determines whether it's a bad move or not,
     representing pawns (i.e. 0.5 means an evaluation drop of half a pawn).  </li>
     <li><b>Cut Off Threshold</b> Above this score, dont worry about adding variations, as game is won.</li>
<br>
     <li><b>Add Scores/Variations</b> Choose when to add Scores and Variations.
     (Scores can then be utilized by the <a Graphs Score>Score Graph</a>)</li>
     <li><b>Which Side</b> Select which side(s) should be annotated.</li>
<br>
     <li><b>Score format</b> Select how single scores will be formatted. The square bracket options will hide comments in the PGN window if PGN-<gt>Options-<gt>Hide-Codes is selected.</li>
     <li><b>Add annotator tag</b>
     Store engine name as an "Annotator" tag in the PGN header.</li>
     <li><b>Process variations</b> Recursively process variations.</li>
     <li><b>Use book</b> Moves that are contained in this opening book are skipped
     , and annotation starts after the book moves.</li>
     <li><b>Batch annotation</b>
     Automatically process multiple games, saving them as we go.</li>
     <li><b>Opening errors only</b> Only check for opening errors.
     (up to the move specified).</li>
     <li><b>Mark tactical exercises</b> This can be used to
     generate exercises for the training function <a FindBestMove>Find
     Best Move</a>. (UCI only).</li>
  </ul>
<p><i>
  Informant values are also <run configInformant><green>configurable</green></run>.
</i></p>
  <h3>Threat Analysis</h3>
  <p>
  By making use of the <a Variations Null>null move</a> feature, it is possible
  to use the engine to see immediate threats. This idea is further developed by
  right-clicking the <a Moves Trial>Trial Mode</a> button, which automatically adds a null move and
  enters trial mode.
  </p>

  <h3><name Training>Training</name></h3>
  <p>
  Training <button tb_training> is a poorly implemented Engine vs Player
feature only available for the 2nd and 3rd engines (in the enginelist).
The <a ComputerGame>Playing against the Computer</a> features are much better supported.
</p><p>
  From the current position (which must be end-of-game), the engine moves first, and may be stopped by pressing the button again.
  The time for each move is fixed, and analysis results are not updated while training mode is on.
  </p>

  <h2><name List>Configuring Engines</name></h2>
  <p>
  The <run ::enginelist::choose><green>Tools--<gt>Analysis Engines</green></run>
  widget is where you can <b>Configure</b>, <b>Add</b>, and <b>Start</b> Chess Engines.
  </p>

<p>
  Scid vs. PC installs a few engines by default. To install new ones you'll need to know
  the program's <b>Command</b>, any <b>Parameters</b> it takes,
  whether it is uses the <b>UCI or Xboard</b> protocol, and also the
  <b>Directory</b> it should be run in.
  This sounds complicated, but it is not too hard ;-)
  Sticking points are likely to be the choice of
  which directory to use, and whether it's UCI or not.</p>


  <h3>Details</h3>
<p> Many engines require an
  initialization or opening book file in their start directory to run
  properly.  Other engines, like Crafty and Phalanx, write log files to the
  directory they start in, so write access will be required.
  If the directory setting for an engine
  is ".", Scid will just start the engine in the current directory.
  </p>

  <p>
  If an engine fails to start, try
  changing its directory setting. To avoid engines creating log files
  in many different directories, I recommend trying the <b>~/.scidvspc</b>
  button. Engines necessitating opening books and/or .ini files, will need
  a directory of their own however.
  </p>
  <p>
  UCI and Xboard (also known as Winboard) are two protocols
  for communicating with engines, and it is necessary to set this flag accordingly.
  If you're not sure, try one then the other, as nothing will break. Some chess
engines support both formats.
  </p>
  <p>
  If an engine needs additional parameters for startup (e.g. a
  specific opening book) they can be specified in the
  <b>Parameters</b> field. ... Please refer to the engines documentation.
  </p>
  <p><b>Webpage</b> allows you to set the engines homepage. This
  comes in handy to check for updates e.g. or to have a look at recent
  developments. Pressing the <term>Open...</term> button will open
  this page in the web browser.
  </p>
  <p>After the engine is configured, Scid vs PC will give it a <b>Date</b> stamp, according to the
  executable's modification time.</p>

  <h2><name UCI>UCI Configuration Options</name></h2>

  <p>
  UCI Engines can be configured by pressing <button uci> or <b>Configure</b> in the Edit Window, whence
  a dialog with the engines parameters will be shown. (Gilles - where is the help section :|).
  Scid generally ignores options of the format UCI_* , according to the
<url http://wbec-ridderkerk.nl/html/UCIProtocol.html>UCI standard</url>. Additionally, Chess960 support is not enabled
because implementation is very problematic.</p>

  <h2><name Debugging>Advanced</name></h2>
  <p>
  If an engine fails to start, or crashes, one may examine its log file.
  These are kept in the Scidvspc's log directory and can be viewed by right-clicking the <button tb_help> button,
or via the <button tb_annotate> button in the <run ::enginelist::choose><green>engine configuration</green></run> widget.
The <b>Log Size</b> is the max number of lines in the log. Setting it to zero disables logging altogether.</p>
  <p>The default UCI command for <button tb_play> is "go infinite", but this may be altered by changing <b>::uci::goCommand</b> in ScidvsPC's <a Console>Console</a> (for example "set ::uci::goCommand {go movetime 60}").
</p>

  <p><footer>Updated: Scid vs. PC 4.21, July 2019</footer></p>
}

set helpTitle(Tourney) "Computer Tournament"
set helpText(Tourney) {<h1>Computer Tournament</h1>

  <p>
  Automated <run ::compInit><green>Computer Tournaments</green></run>
  can be run with any XBoard or UCI engine installed via the
  <a Analysis List>Analysis Engines</a> widget.
  </p>
  <p>
  <i>Support for different engines is good, but some older XBoard engines don't work well.
  For more information about engine compatibility, see below.
  </i></p>

  <h3>Getting Started</h3>

  <p>
  First, select the details of your tournament. Configurable items include:
  the <b>Number of Engines</b>, <b>Tournament Name</b>, <b>Time-Control Method</b> and <b>Period</b>.
  If using the per-game time control, <b>Show Clocks</b> will display the engine's remaining time.
</p>
<p>
  <b>Time per Game</b> is the best time control method.
  The first spinbox is the base time for the game, the second spinbox is the per-move increment
 (both times are in seconds). Rapid games can be played with 0 or 0.1 second increments (for example),
but on slower systems (especially Mac OS X), engines may tend to lose on time.
</p>
<p>
  <b>Time per Move</b> games allow a generous time slice, and only forfeits an engine if it takes over 175%
  of its nominal move period.
</p>
<p>
  <b>Permanent Thinking</b> allows engines to play at their strongest.
  For UCI engines, it enables pondering, and sets Xboard engines to hard mode.
<i>Permanent Thinking does not work with non-standard start positions.</i>
</p>
<p>
  <b>Use book</b>  UCI engines access to polyglot opening books, enabling a greater variety
  of play. Book moves are selected in frequency according to their weight.
</p>
<p>
  <b>Game Scheduling</b> has three options. Normal is a simplistic engines play in-order, while Carousel is a well known round-robin scheduling system. First-plays-others is not round-robin, but for testing one engine only.
</p>
<p>
  Scid's GUI does use more resources than other tournament managers, so, for short time controlled games,
  it is good practice to disable engine logs, move animations, and to hide the clocks, gameinfo and pgn windows.
<i>
  Engine logging is enabled/disabled in <a Analysis List>Analysis Engines</a>. A zero log size disables logging.
</i></p>
  <p>
  Games are <b>saved after each is completed</b>, so open an appropriate base, or just
  use the Clipbase. When the tournament is over, press "Close".
  </p>
  <p>
  If a game drags on for any reason, three buttons allow for <b>manual adjudication</b>.
  The <b>Pause Game</b> button does not take effect instantaneously, but first waits for the current move to be made before pausing further progress.
  </p>
  <p><i>
  Once the tournament is completed, be sure to have a look at the
  <run ::crosstab::Open><green>Crosstable</green></run> window
  to see the results summary. Uwe Klimmek has written an alternative Computer Tournament feature, which can be found in the 'patches' directory of the Scid vs PC source code.
  </i></p>

  <h3>Notes</h3>
<p>
  Scid vs PC's Gui does take more CPU overhead than other Computer Tournament managers, but effort is made to not include this time in each engine's time-slice.
  Additionally, the Clock Widgets take a small CPU slice - around .0005 seconds per move on my 2600MHz Core2Quad.
</p><p>
  For some general information about Computer Tournaments, try this
<url http://en.chessbase.com/post/fair-play-in-engine-match>Chessbase link</url>.
</p>

  <h3>Engines</h3>
<p>
The author has tested quite a few engines under Linux, and a lesser number with Windows and Macs. Generally, newer UCI engines will work better than older Xboard ones:
</p><p>
Komodo performs well, but some versions have broken time-per-move time control.
Some versions of Stockfish aggressively grab the Cpu and may need 'Number of Threads' reduced.
Pervious versions of Phalanx had no time control, but it now works well.
Gnuchess may need the "-x" parameter to work in XBoard mode (but recent versions also support UCI),
and only versions > 5.07 will properly handle time-per-game time control.
Faile seems not to work well with time-per-move.
Arasanx UCI <lt>= 14.1 does not work with Permanent Thinking.
</p>

<p><footer>Updated: Scid vs. PC 4.20, Dec 2018</footer></p>

}

set helpTitle(CalVar) "Calculation of variation"
set helpText(CalVar) {<h1>Calculation of Variations</h1>
  <p>
   The <run ::calvar::config><green>Calculation of Variations</green></run> excercise (also known as the <b>Stoyko Exercise</b>)
   involves analysing a complex position, to find and evaluate as many sound
   lines as possible.
  </p>
  <p>
  Configuration is fairly straight-forward, and involves
  <ul>
     <li>* The UCI engine to use</li>
     <li>* <b>Initial thinking time</b> - seconds for the engine to analyse the position</li>
     <li>* <b>Variation thinking time</b> - seconds for the engine to analyse each variation entered by the user</li>
  </ul>
  Clicking Start begins the exercise.
  </p>

  <p>
  After the engine's initial thinking time, the "Done with Position" button will become active,
  and the player should click on the board to enter a variation.
  <i>The board is not responsive, but moves are instead entered into the text widget.</i>
  </p>

  <p>
  To finalise the move, one should click one of the NAG codes buttons.
  The engine will evaluate the move, after which the user may enter more good moves.
  When the user has finished entering their best moves, click
  <b>Done with position</b>. The engine will append (any) missed lines to the game PGN.
  </p>
  <h4>Bugs</h4>
  <p>This feature does not work from within an existing variation, of at the end of a game.
  Program flow probably needs refining too.
  </p>

  <p><footer>Updated: Scid vs. PC 4.7, January 2012</footer></p>
}

set helpTitle(EPD) "EPD Files"
set helpText(EPD) {<h1>EPD Files</h1>
  <p>
  <b>Extended Position Description</b> files are a common standard for chess information and are composed of chess positions, each with some associated text.
</p><p>
  The positions are a slightly shortened FEN (the standard chess position) format.
  The text is freeform, but normally made up of <a EPD opcodes>Opcodes</a> , or fields, separated by semicolons but shown on separate lines in Scid's EPD Window.
</p><p>
  EPD files have a number of uses, but are perhaps most commonly used for collections of puzzles, end game studies and tactical shots.
  </p>
  <p>
  Up to four EPD files may be open at any time.
  Opening a file with duplicate or erroneous positions will silently eliminate
  these positions, though poorly formed or non-standard operands are accepted
  without complaint.
  </p>

  <h3>Navigating EPD Files</h3>
  <p>
  To browse the positions in an EPD file, simply click on any position, or use the <b>Control+Down</b>,
  <b>Control+Up</b>, <b>Control+Home</b> or <b>Control+End</b> keys.
  These commands move to the next/previous or first/last position in the file, discarding any changes to
  the current game and setting the scratch game's start position.
  </p>

  <h3>Analyzing EPD Files</h3>
  <p>
  EPD files can be analyzed with <b>Tools--<gt>Analyze Positions</b>.
  A dialogue will ask for the Engine, Analysis Time and Analysis Mode, which will start.
  Pausing the analysis engine will terminate analysis.
  </p>
  <p>The two modes are <b>Count Best Moves</b> and <b>Annotate</b>. Both modes involve analyzing
  all positions with an engine. In Best Moves - the existing comments are scanned for 'bm' or 'am' fields, and
seeing if this matches the computer evaluation, showing a tally of correct bestmoves at the completion.
  Annotate mode simply stores the engines evaluation in several opcodes, without checking the best move.
  The opcodes used are <b>acd</b>, <b>acn</b>, <b>ce</b>, <b>dm</b> and <b>pv</b>.
  Finally, both these modes can be run together, in which event an additional
  'engine' opcode will be written - indicating test success, fail or no-result - and the result stored in the last EPD position.
  </p>
  <p><i>
  Annotate mode will first strip out the above opcodes from all positions.
  To undo any changes made, simply destroy the EPD window without saving the file.
  </i></p>

  <h3>Pasting Analysis</h3>
  <p>
  Select <b>Tools--<gt>Paste Analysis</b> (or Control+P) to annotate a single position,
  overwriting any previous opcodes. Pressing 'Space' in the listbox will start/stop an open engine.
  </p>

  <h3>Stripping Out EPD Fields</h3>
  <p>
  EPD files one finds on the Internet may contain fields that are not of
  interest, and they can waste a lot of space in the file.
  For example, an EPD file of computer evaluations might have ce, acd,
  acn, pm, pv and id fields but one may only need the ce and pv fields.
  </p>
  <p>
  Strip out an EPD opcode from all positions in the EPD file by using
  <b>Tools--<gt>Strip Opcodes</b>.
  </p>

  <h3>Sorting EPD Fields</h3>
  <p>
  The EPD specification requires that opcodes are sorted.  After editing
  EPD fields, one may sort the current position's opcodes with <b>Tools--<gt>Sort Opcodes</b>.
  </p>

  <h3>Adding a New Position</h3>
  <p>
  The main board's current position can be appended to the EPD file with
  <b>Tools--<gt>Add Position</b>.  One cannot add a position which already
  exists in the file. Attempting to do so will simply select that position.
  </p>
  <p><i>
  For technical reasons, there is no 'Delete Position' command. To achieve this one must edit the epd file manually with a text editor.
  </i></p>

  <h3>Finding the Deepest Game Position</h3>
  <p>
  One can update the board to the deepest ply in the current game that matches
  a position in the current EPD file by selecting <b>Tools--<gt>Find Deepest Game Position</b>.
  </p>

  <h3>The EPD Window Status Bar</h3>
  <p>
  The statusbar of each EPD window shows
  <ul>
  <li>- whether the file is readonly or has been modified</li>
  <li>- the number of positions in the file</li>
  <li>- legal moves from the current position that reach another position in this EPD file</li>
  </ul>

  <h3>Other Notes</h3>
  <p>
  <p>Scid vs. PC provides a simple <a Export EPD>Export to EPD</a> feature.</p>
  <p>Textual semicolons are stored as "\s" to distinguish them from end-of-field semicolons.</p>
  <p>Scid vs PC no longer saves changes automatically, but from </i><b>File--<gt>Save</b> (or Control+s).
  The current save status can be seen in the EPD statusbar.</p>
  </p>

  <h3><name opcodes>Standard EPD Opcodes</name></h3>
  <ul>
  <li> <b>acd</b> Analysis count: depth searched.</li>
  <li> <b>acn</b> Analysis count: number of nodes searched.</li>
  <li> <b>acs</b> Analysis count: search time in seconds.</li>
  <li> <b>am</b> Avoid move: poor moves.</li>
  <li> <b>bm</b> Best moves: move(s) judged best for some reason.</li>
  <li> <b>ce</b> Centipawn evaluation: evaluation in hundredths of a
  pawn from the perspective of the <b>side to move</b> -- note this
  differs from the Analysis window which shows evaluations in pawns from
  Whites perspective. </li>
  <li> <b>cX</b> Comment (where <b>X</b> is a digit, 0-9).</li>
  <li> <b>dm</b> Direct mate fullmove count.</li>
  <li> <b>eco</b> <a ECO>ECO</a> system opening code.</li>
  <li> <b>id</b> Unique Identification for this position.</li>
  <li> <b>nic</b> <i>New In Chess</i> system opening code.</li>
  <li> <b>pm</b> Predicted move: the first move of the PV.</li>
  <li> <b>pv</b> Predicted variation: the line of best play.</li>
  </ul>
<url https://www.chessprogramming.org/Extended_Position_Description#Opcode_mnemonics>Chessprogramming Opcodes</url>

  <p><footer>Updated: Scid vs. PC 4.21, December 2019</footer></p>
}

set helpTitle(Email) "Email window"
set helpText(Email) {<h1>The Email Window</h1>
  <p><i>This feature is not often used or tested. Also, it should not be confused with Scid's <a Correspondence>Correspondence Chess</a> email support.</i></p>
  <p>
  The <run ::tools::email>Email Window</green> provides basic support for correspondence games played by email.
  One may send messages directly from Scid, but you still need to manually add your opponents moves as
  there is no capability to check your email folder.
  </p>
  <p><i>Email settings are database dependant, and are stored in the same directory as the si4 file, with an .sem file extension.</i></p>
  <p>
  To use the email manager:
  <ul>
  <li><b>1)</b> Create the game(s) for your opponent in the
  database. </li>
  <li><b>2)</b> In the email manager window, select <b>Add</b> and enter
  your opponents details: name, email address, and the game numbers (separated by spaces) in the
  database. </li>
  <li><b>3)</b> Select <b>Send email</b> in the email window each time you
  have added moves to the game(s) and want to send a message. </li>
  </ul>

  <p>
  When you send an email message, Scid generates the message with the games
  in PGN format <b>without</b> any comments, annotations or variations, since
  you would not usually want your opponent to see your analysis.
  You can edit the message before sending it to add conditional moves or
  other text.
  </p>
  <p>
  For each opponent, you may have any number of games; one or two is most
  common. Note that Scid does not check if game numbers change, so after
  setting up the details of your opponents, be careful to avoid deleting games
  or sorting your database of email games, since this will rearrange games
  and the game numbers for each opponent will be incorrect.
  </p>

  <h3>Configuration</h3>
  <p>
  A copy of each email message sent by Scid is stored in the file
  <b>~/.scid/scidmail.log</b>.
  </p>
  <p>
  Scid can send email messages using an SMTP server or sendmail.
  User the <b>Settings</b> button in the Email Manager to specify which
  you want to use.
  </p>

  <p><footer>Updated: Scid vs 4.12, December 2013</footer></p>
}

set helpTitle(Reports) "Reports"
set helpText(Reports) {<h1>Reports</h1>
  <p>
  There are two types of reports: Opening and <a Reports Player>Player Reports</a>.
  </p>

  <h2><name Opening>Opening Reports</name></h2>
  <p>
  Scid's <run ::optable::makeReportWin><green>Opening Report</green></run>
  displays various information about the current position.
  </p>
  <p><i>
  Some features are affected by the "Maximum games for statistics" Option, which is 10,000 by default
  but can now be increased to 25,000 in the Options Window.
  </i></p>
  <p>
  The <b>first few sections</b> show matching games and subsequent moves.
  One can see if the opening is becoming more popular, if it has many short draws,
  and what move orders (transpositions) are used to reach it.
  </p>
  <p>Section 4, <b>Moves and Themes</b>, reports the move orders leading to the position,
  and also positional themes within the first 20 moves.
  To be counted , a game must match a theme
  in at least 4 positions of its first 20 moves.
  This avoids the brief occurrence of a theme (such as an isolated
  Queen pawn which is quickly captured) distorting results.
  </p>
  <p>
  The final and largest part of the report is the <b>Theory Table</b>.
  When saving the report to a file, you can choose to save just the table, a compact
  report without the table, or the whole report. The hyper-links (in red) reference diverging games.
  </p>
  <p><i>
  The Theory Table has a game limit of 500 by default (but configurable in Report Options).
  If the report position occurs more often, only games with the highest
  average Elo are used to generate the Theory Table.
  </i></p>

  <h4>Features</h4>
  <p>
  Clicking on the board will flip it. Right-clicking will resize it.
  Most coloured items in the report window are clickable, and
  invoke some relevant action. For example - clicking a game reference
  will load that game, or clicking a positional theme will set the filter
  to matching games.
  </p>
  <p>
  <b>Merge Games</b> merges the 50 best games from the
  Opening Report into the current game as variations, including full references.
  </p>
  <p>
  <b>Exclude</b> allows removal of a move from the Theory Table.
  </p>
  <p>
  Almost all the report sections can be turned on or off or adjusted in
  the Opening Report Options.
  </p>

  <h4><name Favorites>Favorites</name></h4>
  <p>
  The <b>Favorites Menu</b> in the Report Window allows one to maintain a
  collection of favorite opening positions.
  </p>
  <p>
  <b>Add Report</b> adds the current position as a favourite, and
  <b>Generate Reports</b> generates a report
  for each of these favorites. A dialog-box
  will appear allowing you to specify the report type and format, and
  a directory where report files will be saved. A suitable suffix for the
  format you selected (e.g. ".html" for HTML format) will be added to each
  report file name.
  </p>

  <h2><name Player>Player Reports</name></h2>
  <p>
  Player Reports are similar to <a Reports Opening>Opening Reports</a>, but
  contain information about the games of a single player with the White or
  Black pieces. One can generate a Player Report from
  <run ::preport::preportDlg><green>Tools-<gt>Player Report</green></run>
  or from the <a PInfo>Player Info</a> window.
  </p>
  <p>
  Player Reports can be generated for all games (with the specified player and pieces),
  or for games matching the current position.
  </p>

  <p><footer>Updated: Scid vs. PC 4.22, Feb 2020</footer></p>
}


set helpTitle(PList) "Player Finder window"
set helpText(PList) {<h1>The Player Finder Window</h1>
  <p>
  The <run ::plist::Open><green>Player Finder</green></run> window displays a list of names of
  players in the current database. Selecting a player will open the
  <a PInfo>Player Info</a> window to display more detailed information
  about that player.
  </p>
  <p>
  Five columns are displayed showing each player's name, peak Elo
  rating, number of games played and the year of their oldest and
  newest game.
  Click on any column title to sort the list by that column.
  </p>
  <p>
  The controls below the list allow you to filter the list contents.
  You can alter the maximum list size, enter a case-insensitive player
  name prefix (such as "ada" to search for "Adams"), and restrict the
  ranges of Elo rating and number of games played.
  </p>

  <p><footer>Updated: Scid 3.6.2, December 2006</footer></p>
}

set helpTitle(PInfo) "Player Information"
set helpText(PInfo) {<h1>Player Information</h1>
  <p>

  The Player Information window shows basic information when available.
  It draws upon the <a Maintenance Spellfile>spelling.ssp file</a>,
  and includes Ratings, Country of Origin,  Official Titles and even Photos.</p>

  <p><b>Please use with caution</b>. <i>The names it contains may not be
  unique, and player initials may be incorrectly identified. Mainline SCID uses a
  more specific name match algorithm - which is less useful - but also less likely
  to make erroneous matches.  The larger </i><b>ratings.ssp</b><i> file (which may be
substituted), includes FIDE IDs and biographical data which help clarify unique
players.
</i></p>

  <p>Also displayed are statistics about
  success with white and black, favorite openings (by <a ECO>ECO code</a>),
  and rating history.
  All percentages displayed are an expected score (success rate), from the
  player's perspective -- so higher is always better for the player, whether they
  are White or Black.
  Clicking the numbers displayed in green will set the <a Filter>filter</a>
  according to the statistic it represents.
  </p>

  <h4>Features</h4>
  <p>
  You can see a player's rating history by pressing
  <a Graphs Rating>Rating Graph</a> , and perform rating assignments.
  </p>
  <p>
  There are also buttons to help browse similar Player Names,
  perform <a Maintenance Editing>name substitutions</b> in the whole (or part) database, or run the
  <a Reports Player>Player Report</a> feature.
  </p>
  <p>
  Right-clicking shows a menu of recently viewed players.
  </p>

<h3><name Photos>Player Photos</name></h3>
<p>To enable player photos, place Scid Photo Files (such as "FIDE.spf" from
<url http://scid.sourceforge.net/download.html>Scid download page</url>),
into Scid vs. PC's user directory.
On Linux and Macs this is "$HOME/.scidvspc", or "Scid vs PC/bin" on Windows.
The <a Console>Splash Window</a> will help you find it's location, and
will also indicate if the photo files have been loaded correctly.
</p>
<p>Custom gifs can be placed into a "photos" directory beneath the user dir.
They should preferably be 100x100, with the file name being the same as the player it portrays.
Eg - a photo for Magnus should be placed in 'photos/Carlsen, Magnus.gif'.
These photos will override any found in the .spf files.
</p>
<p>Once installed, available player photos are shown in the <a MainWindow GameInfo>game information</a> widget.
Clicking on the photos makes them smaller. To disable them, deselect <green>Options--<gt>Game Information--<gt>Show Photos</green>.

</p>

  <p><footer>Updated: Scid vs. PC 4.17 March 2016</footer></p>
}

set helpTitle(Graphs) "Graph windows"
set helpText(Graphs) {<h1>Graph Windows</h1>
  <p>
  Scid has a number of graph features, displaying information about Player Ratings, Game Frequencies and Score Evaluation.
  <p>
  <p><i>
  The Graph-<gt>SaveAs feature is quite poor quality. A better option is to use your system screenshot feature.
  </i></p>

  <h3><name Filter>Filter Graph Windows</name></h3>
<p>
  <b>Relative Filter Graph</b>
  <p>
  The <green><run ::tools::graphs::filter::Open>Relative Filter Graph</run></green> shows trends by Date,
  Elo Rating or Moves for games in the current filter compared to the
  entire database. For example; when the <a Tree>tree</a>
  is open it shows how the current opening has changed
  in popularity in recent years, or whether it is especially
  popular among higher-rated players.
  Each point on the graph represents the number of games in the filter
  per 100 games in the entire database, for a particular date or Elo
  rating range.
  </p><p>
  <b>Absolute Filter Graph</b>
  <p>
  The <green><run ::tools::graphs::absfilter::Open>Absolute Filter Graph</run></green>
  shows the quantity of games in the filter according to the selected criteria.
</p><p>
<b>Usage</b>
  <p>
  The iconic button near the bottom opens a dialog to configure
  the graph. You can select the range and interval for the X axis. The "Decade" criteria can't be configured,
  use "Year" instead. If "Estimate" is selected, a missing rating will be
  estimates as described below. Otherwise no estimation is done
  and missing ratings are count as zero. This matches the Min. Elo
  evaluation in the statistic-window.</p>
  <p>
  <i>Note: the calculation can take some time on large ranges and
  small intervals</i>.
  </p>
  <p>
  When plotting the Filter graph by rating, Scid uses the average
  rating for each game. Estimate ratings (such as those in the spelling file)
  are not used. If one player in a game has a rating but the opponent
  does not, the opponent is presumed to have the same up to a limit of 2200.
  For example, if one player is rated 2500 and the opponent has no rating,
  the mean rating is (2500+2200)/2=2350.
  </p>

  <h3><name Rating>Player Rating Graph</name></h3>
  <p>
  The <green><run ::tools::graphs::rating::Refresh both>Rating
Graph</run></green> shows the ELO history of one, or many, players.
You can access the graph by pressing the "Rating Graph" button
in the <a PInfo>Player Information</a> window, or by selecting "Player Ratings"
from the Tools menu. Right-clicking the graph will refresh it.
  </p>

  <h3><name Score>Score/Time Graph</name></h3>
  <p>
  The <green><run ::tools::graphs::score::Raise>Score/Time Graph</run></green> (Control-Shift-Z)
  shows the Move Evaluations or Move Times (stored as comments in the current game) as a graph. </p>
  <p>The graph type is changed in Graph-<gt>Options or by right-clicking the in-graph title. Data for the graphs is found/gathered in the standard PGN comments or "commands" as <b>%eval</b> (scores) and <b>%emt</b> (move times).</p>
  <p><b>%clk</b> datas are also supported, but they are recalculated and displayed as %emt. Additionally, they do not properly calculate time totals because of (generally) unknown time-increments, and the common 40-move time top-ups.</p>
  <p>Alternatively, Scid vs PC can add scores using the <a Analysis Annotating>annotation feature</a>.
  These scores have one of the formats +0.25, [% +0.25] , or the standard [%eval +0.25]. The later two formats allow these scores to be hidden in  the PGN window by enabling PGN-<gt>Options-<gt>Hide-Codes.
  The values are represented from White's perspective (so a negative value means black is ahead).
  In cases when the scores are not from White's perspective, one may select an option
  (in the Options Menu) for an inverted perspective.
  </p>
  <h4>Features</h4>

  <p>Left Click positionally in the graph to go to the corresponding move.</p>

  <p>Right Clicking anywhere in the score graph will perform a refresh.</p>

  <p>The current move is now highlighted a different colour, though for performance reasons (on OS X mainly), this can be disabled.
  It is also possible to change the Graph colour via
<green><run SetScoreColour>Options-<gt>Colors-<gt>Score Graph</run></green> and
<green><run SetScoreBarColour>Options-<gt>Colors-<gt>Score Graph current</run></green>.


  <p><footer>Updated: Scid vs. PC 4.20 June 2018</footer></p>
}

set helpTitle(TB) "Tablebases"
set helpText(TB) {<h1>Tablebases</h1>

  <p>
  <i>A Tablebase is a file containing the </i><b>perfect result
  information</b><i> about all positions of a particular material setup,
  such as King and Rook versus King and Pawn. Tablebases for all
  positions up to five pieces (including the Kings) have been
  generated, and some simple six piece tablebases are also available.</i>
  </p>
  <p>
  Scid uses <b>Nalimov</b> tablebases, which are also used by many
  chess engines. The filenames often end with the suffix <b>.nbw.emd</b>
  or <b>.nbb.emd</b> (for <b>N</b>alimov <b>B</b>ases <b>W</b>hite/<b>B</b>lack).
  All 3, 4 and 5 piece Nalimov tablebases can be
  used in Scid.
  </p>
  <p>
  When a position found in a tablebase file is reached, the Game Information
  window (below the chessboard) will show the relevant information.
  </p>
  <p><i>
  Scid vs. PC can also lookup results from <url http://www.lokasoft.nl/tbweb.aspx>www.lokasoft.nl</url> ,
  but this information is not available in Game Information, only in the Tablebase Window, and can cause system lag.
  </i></p>

  <h3>Configuration</h3>
  <p>
  To load the tablebases, select their directory(s) via
  the <b>Options--<gt>Tablebase Directory</b> menu item.
  Up to 4 directories may be selected.
  </p>
  <p>You can configure the amount of information shown via the
  <b>Options--<gt>Game Information</b> menus.
  Selecting <b>Result and Best Moves</b>
  gives the most information, but is often much slower than
  <b>Result Only</b>.
  </p>

  <h3>The Tablebase Window</h3>
  <p>
  You can get more comprehensive information
  from the <green><run ::tb::Open>Tablebase Window</run></green>
  (Control =). This shows the result with perfect play
  of all legal moves from the current position.
  </p>
  <p>
  The window has two main parts. The Summary Frame (on the left) shows
  which tablebases Scid has found, and a summary for each
  tablebase. The Results Frame (on the right) shows optimal results for
  all moves from the current position displayed in the main window.
  </p>

  <h4>The Summary Frame</h4>
  <p>
  The top part of the summary frame lets you select a particular
  tablebase. Those available are shown in blue, those unavailable
  in gray, but you can select any tablebase.
  The lower part shows summary information for the
  selected tablebase. <i>Not all tablebases have a summary recorded in
  Scid yet.</i>
  </p>
  <p>
  The summary includes the frequency (how many games per million reach a
  position with this material, computed from a database of more than
  600,000 master-level games), a longest mate for either side, and the
  number of mutual (or "reciprocal") zugzwangs. A mutual zugwang is a
  position where white to move draws and black to move loses, or where
  white to move loses and black to move draws, or where whoever moves
  loses.
  </p>
  <p>
  For some tablebases with mutual zugzwangs, the summary also includes
  a list of all of the zugwang positions or a selection of them. A full
  list for every tablebase is not feasible since some tablebases have
  thousands of mutual zugzwangs.
  </p>

  <h4>The Results Frame</h4>
  <p>
  Results may be shown from local Nalimov bases (if installed) , or generated from an online lookup to
  lokasoft.nl.
  The results frame is updated whenever the main chessboard changes.
  </p>
  <p>
  The first line of local bases shows how many moves win (+), draw (=), lose (-),
  or have an unknown result (?). The rest of the frame gives a more detailed
  list of results, ranking them from shortest to longest mates, then draws,
  then longest to shortest losses. All distances are to checkmate.
  </p>

  <h4>The Results Board <button tb_coords 32></h4>
  <p>
  In any tablebase position, it is often useful to know what the results
  would be if one piece was moved somewhere else.
  For example, you may want to determine how close a King has to be to
  a passed Pawn to win or draw. In endgame books
  this is often called the <b>winning zone</b>, or <b>drawing zone</b>, of a piece.
  </p>
  <p>
  From the Results Board, this information is available by pressing the piece in question.
  This displays symbols representing what the result would be (with the side to move of the current position)
  if the selected piece was on that square.
  </p>
  <p>
  There are five different symbols a square can have:
<ul>
  <li>white # : White wins</li>
  <li>black # : Black wins</li>
  <li>blue = : Drawn position</li>
  <li>red X : Illegal position (because the kings are adjacent or the side to move is giving check)</li>
  <li>red ? : Result unknown - the necessary tablebase file is not available.</li>
  </ul>
  <p>
<i>The Result Board cannot make use of online tablebases.</i>
  </p>

  <h3>Obtaining Tablebase Files</h3>
  <p>
  The tablebases are available from
<url http://oics.olympuschess.com/tracker/index.php>Olympuschess.com</url>.
and (previously)
<url ftp://ftp.cis.uab.edu/pub/hyatt/TB/3-4-5/>Bob Hyatt's Ftp</url>
<br>
  Play With Arena distribute the 4 piece tablebases as a
<url http://www.playwitharena.de/download/4-pieces-tbs.zip>single file</url>
  </p>

  <p><footer>Updated: Scid vs. PC 4.12, March 2014</footer></p>
}

set helpTitle(Bookmarks) "Bookmarks"
set helpText(Bookmarks) {<h1>Bookmarks</h1>
  <p>
  Scid allows you to bookmark important games for easy
  future reference. The bookmarks menu is found in
  <green>File-<gt>Bookmarks</green>, or from the toolbar bookmark icon.
  </p>
  <p>
  When you open a bookmark Scid will automatically
  load the appropriate database, game and position.
  But if the database has been sorted or compacted, the bookmark
  details may be out of date. In this case Scid will search
  for the best matching game (comparing player names, site, etc),
  but it is possible that a different game will match the criteria,
  and be incorrectly loaded.</p>
  <p><i>
  It is a good idea to re-bookmark a game if you edit its Players, Site, Result, Round or Year.
  </i></p>
  <p><i>
  Games in a PGN file or the Clipbase cannot be bookmarked.
  </i></p>

  <h3>Editing and Arranging Bookmarks</h3>
  <p>
  With the bookmark editor you can change the label for
  each bookmark, and add folders for better organization.
  Double clicking entries will load the game, and the 'Delete', 'Control+Up' and 'Control+Down' keys
  can be used to delete a bookmark, or reorder it in the list.
  </p>

  <h3>Hints</h3>
  <p>
  You can use bookmarks for fast access to common databases
  by bookmarking a game from each database.
  </p>
  <p>
  The bookmark editor contains a checkbox for controlling the display of
  folders. They can be shown as submenus (useful when there are
  many games), or as a single list.
  </p>

  <p><footer>Updated: Scid vs. PC 4.10, July 2013</footer></p>
}

set helpTitle(Cmdline) "Command Line Options"
set helpText(Cmdline) {<h1>Command Line Options</h1>
  <p>
  <ul>
  <li>-xtb : turn off <a TB>tablebases</a></li>
  <li>-xspell : don't load the <a Maintenance Spellcheck>spelling</a> file.</li>
  <li>-xeco : don't load the <a ECO>ECO openings classification</a> file.</li>
  <li>-fast | -f : Start in fast mode (see below).</li>
  </ul>

  <p>Other args given on the command line are expected to be databases, pgn files or search files.
  For databases, the file suffix ".si4" is optional.
  </p>
  <p> Example: <b>scid -fast mybase newgames.pgn</b>
  will start in fast mode, opening "mybase.si4" and the "newgames.pgn".
  </p>

  <h3>Fast Mode</h3>
  <p>Scid vs. PC's fast mode skips loading the
  spelling (or ratings) file, and recalculating name frequencies (as well as
  flag counts and estimated ratings). Scid vs. PC has recently reduced the bugs in name frequency handling,
  so using fast mode may now be fine, but is still not generally recommended.
  </p>
  <p><footer>Updated: Scid vs. PC 4.19 Feb 2018</footer></p>
}

set helpTitle(Pgnscid) "Pgnscid"
set helpText(Pgnscid) {<h1>Pgnscid</h1>
  <p>
  Pgnscid is a command line utility (included with Scid) to convert PGN files to si4 databases.
  It's main advantage over Scid Imports is that it is <b>more reliable</b> for large PGN imports.
  </p>
  <p>
  To convert a file named "myfile.pgn", simply type:
  <ul>
  <li> <b>pgnscid myfile.pgn</b> </li>
  </ul>
  and a Scid database (consisting of "myfile.si4", "myfile.sg4"
  and "myfile.sn4") is created, with errors and warnings written to "myfile.err".
  </p>
  <p>
  To create the database in a different directory, or with a different name,
  one may add the database name to the command line. For eg:
  <ul>
  <li> <b>pgnscid myfile.pgn mybase</b> </li>
  </ul>
  creates a database consisting of the files "mybase.si4",
  "mybase.sg4" and "mybase.sn4".
  </p>
  <p>
  Scid and Pgnscid can also read <b>gzipped</b> PGN files directly.
  So large files compressed with gzip (such as "mybase.pgn.gz"),
  do not have to be gunzipped first.
  </p>

  <h3>Options</h3>
  <p>
  There are two options that may occur before the filename:
  </p>
  <p>
  <b>-f</b> forces overwriting of an existing database.
  (By default, pgnscid will not overwrite a database that already exist).
  </p>
  <p>
  <b>-x</b> causes pgnscid to ignore all comments/text <b>between games</b>.
  (By default, text between games is stored as a pre-game comment).
  </p>

  <h3>Player Name Formatting</h3>
  <p>
  Some commonsense formatting of Player Names is done automatically.
  These include: the number of spaces following a comma is standardized to one.
  Spaces at the start and end of names, and trailing dots, are removed.
  And Dutch prefixes such as "van den" and "Van Der" are normalized to have
  a capital "V" and small "d".
  </p>
  <p>
  Of course, one may manually <a Maintenance Editing>edit and spellcheck</a>
Player, Event, Site and Round Names via the Scid Maintenance Window once games
are imported.
  </p>

  <p><footer>Updated: Scid vs. PC 4.8 May 2012</footer></p>
}


set helpTitle(Formats) "File Formats"
set helpText(Formats) {<h1>Scid File Formats</h1>
  <p>
  Scid Databases consist of three files - an index file (file suffix .si4), a name file (.sn4) and a game file (.sg4).
</p>
<p><i>Scid only allocates three bytes for some data fields. This means si4's maximum number of games is 16,777,214.</i>
</p>

  <h3>The Index File (.si4)</h3>
  <p>
  The Index File contains a description for the database and a small fixed-size
  entry for each game. Each game entry includes essential information such as the result,
  date, player/event/site name IDs (the actual names are in the
  Name File), and some redundant but useful information
  that is used to speed up searches (see <a Formats Fast>fast searches</a> for more information).
  </p>

  <h3>The Name File (.sn4)</h3>
  <p>
  Contains all Player, Event, Site and Round names used in the
  database. Each name is stored only once even if it occurs in many games, and there is
  a database restriction on the number of unique names. The limits are -
</p>
<ul><ul>
    <li>Player names:	2^20 - 1</li>
    <li>Event  names:	2^19 - 1</li>
    <li>Site   names:	2^19 - 1</li>
    <li>Round  names:	2^18 - 1</li>
</ul></ul>
  and are defined in <b>namebase.h</b>
  The name file is usually the smallest of the three database files.
  </p>

  <h3>The Game File (.sg4)</h3>
  <p>
  This file contains the actual moves, variations and comments of each game.
  </p>
  <p><i>
  The move encoding format is very compact: most moves take only a single byte (8 bits)!
  This is done by storing the piece to move in 4 bits (2^4 = 16 pieces) and the
  move direction in another 4 bits. Only Queen diagonal moves cannot be stored in this small space.
  This compactness is the reason Scid does not support chess variants.
  </i></p>
  <p>
  When a game is *replaced* a new version is - in fact - created,
  so wasted space does accumulate over time. The database may
  be restored to its minimal size by <a Compact>compaction</a>.
  </p>

  <h3>Other file formats</h3>
  <p>
  An <a EPD>EPD</a> file (<b>.epd</b>)
  contains a number of chess positions, each with a text comment.
  The EPD file format is described in the <a Related>PGN Standard</a>.
  </p>
  <p>
  An email (<b>.sems</b>) file for a database stores details of the opponents
  you send email messages to.
  </p>
  <p>
  A SearchOptions (<b>.sso</b>) file contains Scid
  <a Searches Header>header</a> or
  <a Searches Material>material/pattern</a> search settings.
  </p>

  <h3><name Fast>Fast Searches in Scid</name></h3>
  <p>
  The Index File stores some redundant but useful
  information about each game to speed up position or material searches.
  </p>
  <p>
  For example, the material of the final position is stored. If you search
  for rook and pawn endings, then all games that end with a queen, bishop
  or knight on the board (and have no pawn promotions) will be quickly
  skipped over.
  </p>
  <p>
  Another useful piece of information stored is the order in which pawns
  leave their home squares (by moving, or by being captured). This is used
  to speed up tree or exact position searches, especially for opening
  positions. For example, when searching for the starting position of the
  French Defence (1.e4 e6), every game starts with 1.e4 c5, or 1.d4, etc, will
  be skipped, but games starting with 1.e4 e5 will still need to be searched.
  </p>

  <p><footer>Updated: Scid vs. PC 4.2 November 2010 </footer></p>
}

set helpTitle(Options) "Options"
set helpText(Options) {<h1>Options and Preferences</h1>

  <p>
  On Linux and Mac, the options directory is <b>$HOME/.scidvspc/config/</b>.
  On Windows the directory is in the program installation directory/<b>bin/config</b>.
  In here you'll find the main options file <b>options.dat</b>, and a few other files.
  </p>
  <p>
  Options are saved automatically at program exit, or when <b>Options-<gt>Save Options</b> is selected.</p>
  <p>
  The <a Docking>Docked Windows</a> layout is not saved automatically, but may be done manually using <b>Options-<gt>Save Layout</b>.
</p><p>
  <b>Save Bases as Default</b> will reopen all current databases the next time Scid starts (without command line options/files).
</p>
  <h3><name Colours>Colours</name></h3>
  <p>
  The colours and themes for the Main Board are set in the <run ::chooseBoardColors><green>Options-<gt>Chessboard</green></run>,
  but a few other colour settings are available in <b>Options-<gt>Colours</b>.
</p><p>
  The <b>Rows</b> colour is for the highlighted row in the Tree, Books, Finder, PlayerFinder and TournamentFinder windows.
  The Board arrows and drawables' colours are set in the <a Comment Diagrams>Comment Editor</a>.
  </p>
  <p> The <b>Highlight</b> colour is for a few Name, Game and PGN window mouse-over highlights.
  These include the Name Editor and Game Saves autocomplete entries, the
  Crosstable and GameInfo Player Names mouse-over highlighting, and the Crosstable and Report's Game highlighting.
  </p>
  <p>
  The <b>Background Colour</b> feature enables a bg colour for various text-like windows.
  Likewise, <b>Text Colour</b> enables a text fg colour for the same/simliar windows, though this change requires ScidvsPC restart.
  </p>

  <h3><name MyPlayerNames>My Player Names</name></h3>
  <p>
  <green><run editMyPlayerNames>My Player Names</run></green> allows one to
  take note of special player names.
  </p><p>
  Every time a game with a name in the list is loaded, the main chessboard
  will be flipped (if necessary) to show the game from that players perspective.
  </p>
  <p>
  The first "My Player Name" is also used by the Player vs. Computer feature.
  </p>
  <p>
  My Player Names are entered one per-line, and may contain the
  wildcards "<b>?</b>" (for exactly one character) and "<b>*</b>"
  (for a sequence of zero or more characters).
  </p>

  <h3><name Fonts>Fonts</name></h3>
  <p>
  Scid has four basic fonts; <b>Regular</b>, <b>Menu</b>, <b>Small</b> and <b>Fixed</b>,
  which can be customized via the <green>Options-<gt>Fonts</green> menus.
  </p>
  <p><i>Many windows can quickly resize fonts by using Control+WheelMouse</i>.
  </p>
  <p>
  The <b>Fixed</b> font is used by the <a Tree>Tree</a> and <a Crosstable>Crosstable</a> windows, and requires a fixed-width font to make text allign nicely.
  </p>
  <h3><name Themes>Themes</name></h3>
  <p>
Tk has a feature known as "Themes" (or "Themed Tk" - ttk), which allow for
custom graphics and colours for some specific GUI elements.
Tk comes with a few themes installed by default, and these can be
selected in <b>Options-<gt>Themes</b>.
</p><p>Installing extra themes can be tricky - and most custom themes are not terribly mature/complete.
ScidvsPC does not make extensive use of the themes features, prefering instead the
mature (though boring) default Tk widgets; though there are some good extra themes available in our "support files" downloads.
  </p>
<p>
Theme installation is not quite trivial:
    Copy the theme(s) to one of Tk library directories (eg, on linux /usr/lib/tk8.6 or /usr/local/lib).
    If the theme is one of "tilegtk tileq keramik keramik_alt plastik dark", it will appear in the Themes Menu upon restart.
</p><p>
    Otherwise, add the theme name to the above names (in the gui), or issue these commands from ScidvsPC's startup window command line.
<ul>
    <li>"source myThemes.tcl"</li>
    <li>"package require ttk::theme::MyTheme"</li>
    <li>"ttk::style theme use MyTheme"</li>
</ul>
  </p>

  <p><footer>Updated: Scid vs. PC 4.22 Feb 2020</footer></p>
}

set helpTitle(NAGs) "NAG values"
set helpText(NAGs) {<h1>NAG Values</h1>
  <h3>Standard NAGs</h3>
  <p>
  Standard <b>Numeric Annotation Glyphs</b> are defined in the
  <a Related>PGN Standard</a> and are listed below.
  <br>
  <i>Scid's use of Ascii strings to represent annotations is common, but against the PGN standard. There are options in the PGN window, and PGN Export window, to show Numeric Glyphs.</i>
  </p>
  <cyan>
  <ul>
  <li>  1     Good move                                                      : !       </li>
  <li>  2     Poor move                                                      : ?       </li>
  <li>  3     Excellent move                                                 : !!      </li>
  <li>  4     Blunder                                                        : ??      </li>
  <li>  5     Interesting move                                               : !?      </li>
  <li>  6     Dubious move                                                   : ?!      </li>
  <li>  7     Forced move                                                    : forced  </li>
  <li>  8     The only move. No reasonable alternatives                      : ???       </li>
  <li>  9     Worst move                                                     : worst   </li>
  <li> 10     Drawish position                                               : =       </li>
  <li> 11     Equal chances, quiet position                                  : =, quiet</li>
  <li> 12     Equal chances, active position                                 : ???       </li>
  <li> 13     Unclear position                                               : ~       </li>
  <li> 14     White has a slight advantage                                   : +=      </li>
  <li> 15     Black has a slight advantage                                   : =+      </li>
  <li> 16     White has a moderate advantage                                 : +/-     </li>
  <li> 17     Black has a moderate advantage                                 : -/+     </li>
  <li> 18     White has a decisive advantage                                 : +-      </li>
  <li> 19     Black has a decisive advantage                                 : -+      </li>
  <li> 20     White has a crushing advantage                                 : +--     </li>
  <li> 21     Black has a crushing advantage                                 : --+     </li>
  <li> 22     White is in zugzwang                                           :  ???      </li>
  <li> 23     Black is in zugzwang                                           :  ???      </li>
  <li> 24     White has a slight space advantage                             :  ???      </li>
  <li> 25     Black has a slight space advantage                             :  ???      </li>
  <li> 26     White has a moderate space advantage                           :  ??????     </li>
  <li> 27     Black has a moderate space advantage                           :  ??????     </li>
  <li> 28     White has a decisive space advantage                           :  ?????????    </li>
  <li> 29     Black has a decisive space advantage                           :  ?????????    </li>
  <li> 30     White has a slight time (development) advantage                :  ???      </li>
  <li> 31     Black has a slight time (development) advantage                :  ???      </li>
  <li> 32     White has a moderate time (development) advantage              :  ??????     </li>
  <li> 33     Black has a moderate time (development) advantage              :  ??????     </li>
  <li> 34     White has a decisive time (development) advantage              :  ?????????    </li>
  <li> 35     Black has a decisive time (development) advantage              :  ?????????    </li>
  <li> 36     White has the initiative                                       :  ???      </li>
  <li> 37     Black has the initiative                                       :  ???      </li>
  <li> 38     White has a lasting initiative                                 :  ???      </li>
  <li> 39     Black has a lasting initiative                                 :  ???      </li>
  <li> 40     White has the attack                                           :  ???      </li>
  <li> 41     Black has the attack                                           :  ???      </li>
  <li> 42     White has insufficient compensation for material deficit       :  &/-    </li>
  <li> 43     Black has insufficient compensation for material deficit       :  &/+    </li>
  <li> 44     White has sufficient compensation for material deficit         :  =/&    </li>
  <li> 45     Black has sufficient compensation for material deficit         :  =/&    </li>
  <li> 46     White has more than adequate compensation for material deficit :  +/&    </li>
  <li> 47     Black has more than adequate compensation for material deficit :  -/&    </li>
  <li> 48     White has a slight center control advantage                    :  ???      </li>
  <li> 49     Black has a slight center control advantage                    :  ???      </li>
  <li> 50     White has a moderate center control advantage                  :  ??????     </li>
  <li> 51     Black has a moderate center control advantage                  :  ??????     </li>
  <li> 52     White has a decisive center control advantage                  :  ?????????    </li>
  <li> 53     Black has a decisive center control advantage                  :  ?????????    </li>
  <li> 54     White has a slight kingside control advantage                  :  ???      </li>
  <li> 55     Black has a slight kingside control advantage                  :  ???      </li>
  <li> 56     White has a moderate kingside control advantage                :  ???      </li>
  <li> 57     Black has a moderate kingside control advantage                :  ???      </li>
  <li> 58     White has a decisive kingside control advantage                :  ???      </li>
  <li> 59     Black has a decisive kingside control advantage                :  ???      </li>
  <li> 60     White has a slight queenside control advantage                 :  ???      </li>
  <li> 61     Black has a slight queenside control advantage                 :  ???      </li>
  <li> 62     White has a moderate queenside control advantage               :  ???      </li>
  <li> 63     Black has a moderate queenside control advantage               :  ???      </li>
  <li> 64     White has a decisive queenside control advantage               :  ???      </li>
  <li> 65     Black has a decisive queenside control advantage               :  ???      </li>
  <li> 66     White has a vulnerable first rank  </li>
  <li> 67     Black has a vulnerable first rank  </li>
  <li> 68     White has a well protected first rank  </li>
  <li> 69     Black has a well protected first rank  </li>
  <li> 70     White has a poorly protected king  </li>
  <li> 71     Black has a poorly protected king  </li>
  <li> 72     White has a well protected king  </li>
  <li> 73     Black has a well protected king  </li>
  <li> 74     White has a poorly placed king  </li>
  <li> 75     Black has a poorly placed king  </li>
  <li> 76     White has a well placed king  </li>
  <li> 77     Black has a well placed king  </li>
  <li> 78     White has a very weak pawn structure  </li>
  <li> 79     Black has a very weak pawn structure  </li>
  <li> 80     White has a moderately weak pawn structure  </li>
  <li> 81     Black has a moderately weak pawn structure  </li>
  <li> 82     White has a moderately strong pawn structure  </li>
  <li> 83     Black has a moderately strong pawn structure  </li>
  <li> 84     White has a very strong pawn structure  </li>
  <li> 85     Black has a very strong pawn structure  </li>
  <li> 86     White has poor knight placement  </li>
  <li> 87     Black has poor knight placement  </li>
  <li> 88     White has good knight placement  </li>
  <li> 89     Black has good knight placement  </li>
  <li> 90     White has poor bishop placement  </li>
  <li> 91     Black has poor bishop placement  </li>
  <li> 92     White has good bishop placement                                :  ???      </li>
  <li> 93     Black has good bishop placement                                :  ???      </li>
  <li> 94     White has poor rook placement  </li>
  <li> 95     Black has poor rook placement  </li>
  <li> 96     White has good rook placement                                  :  ???      </li>
  <li> 97     Black has good rook placement                                  :  ???      </li>
  <li> 98     White has poor queen placement  </li>
  <li> 99     Black has poor queen placement  </li>
  <li>100     White has good queen placement  </li>
  <li>101     Black has good queen placement  </li>
  <li>102     White has poor piece coordination  </li>
  <li>103     Black has poor piece coordination  </li>
  <li>104     White has good piece coordination  </li>
  <li>105     Black has good piece coordination  </li>
  <li>106     White has played the opening very poorly  </li>
  <li>107     Black has played the opening very poorly  </li>
  <li>108     White has played the opening poorly  </li>
  <li>109     Black has played the opening poorly  </li>
  <li>110     White has played the opening well  </li>
  <li>111     Black has played the opening well  </li>
  <li>112     White has played the opening very well  </li>
  <li>113     Black has played the opening very well  </li>
  <li>114     White has played the middlegame very poorly  </li>
  <li>115     Black has played the middlegame very poorly  </li>
  <li>116     White has played the middlegame poorly  </li>
  <li>117     Black has played the middlegame poorly  </li>
  <li>118     White has played the middlegame well  </li>
  <li>119     Black has played the middlegame well  </li>
  <li>120     White has played the middlegame very well  </li>
  <li>121     Black has played the middlegame very well  </li>
  <li>122     White has played the ending very poorly  </li>
  <li>123     Black has played the ending very poorly  </li>
  <li>124     White has played the ending poorly  </li>
  <li>125     Black has played the ending poorly  </li>
  <li>126     White has played the ending well  </li>
  <li>127     Black has played the ending well  </li>
  <li>128     White has played the ending very well  </li>
  <li>129     Black has played the ending very well  </li>
  <li>130     White has slight counterplay                                   :  ???      </li>
  <li>131     Black has slight counterplay                                   :  ???      </li>
  <li>132     White has moderate counterplay                                 :  ??????     </li>
  <li>133     Black has moderate counterplay                                 :  ??????     </li>
  <li>134     White has decisive counterplay                                 :  ?????????    </li>
  <li>135     Black has decisive counterplay                                 :  ?????????    </li>
  <li>136     White has moderate time control pressure                       :  ???      </li>
  <li>137     Black has moderate time control pressure                       :  ???      </li>
  <li>138     White has severe time control pressure                         :  ??????     </li>
  <li>139     Black has severe time control pressure                         :  ??????     </li>
  </ul>
  </cyan>

  <h3>Proposed NAGs</h3>
  <p>
  NAG values proposed by the Chess Informant publication.
  </p>
  <cyan>
  <ul>
  <li>140     With the idea ...           : ???  </li>
  <li>141     Aimed against ...  </li>
  <li>142     Better move                 : ???  </li>
  <li>143     Worse move  </li>
  <li>144     Equivalent move             : R  </li>
  <li>145     Editor's Remark             : RR </li>
  <li>146     Novelty                     : N  </li>
  <li>147     Weak point                  : ??  </li>
  <li>148     Endgame                     : ???  </li>
  <li>149     Line                        : ???  </li>
  <li>150     Diagonal                    : ???  </li>
  <li>151     White has a pair of Bishops : ???  </li>
  <li>152     Black has a pair of Bishops  </li>
  <li>153     Bishops of opposite color   : ???  </li>
  <li>154     Bishops of same color       : ???  </li>
  </ul>
  </cyan>

  <h3>Other Suggested Values</h3>
  <cyan>
  <ul>
  <li>190     Etc.            : ?? </li>
  <li>191     Doubled pawns   : ??? </li>
  <li>192     Isolated pawn   : ??? </li>
  <li>193     Connected pawns : ??? </li>
  <li>194     Hanging pawns  </li>
  <li>195     Backwards pawn  </li>
  </ul>
  </cyan>

  <h3>Scid NAGs</h3>
  <p>
  Defined by Scid for its own use.
  </p>
  <cyan>
  <ul>
  <li>201   Diagram        : D or #</li>
  <li>210   see            : ???     </li>
  <li>211   mate           : #     </li>
  <li>212   passed pawn    : ???     </li>
  <li>213   more pawns  </li>
  <li>214   with           : ???     </li>
  <li>215   without        : ???     </li>
  </ul>
  </cyan>

  <p><footer>Updated: Scid vs. PC 4.10 July 2013</footer></p>
}


set helpTitle(ECO) "ECO Guide"
set helpText(ECO) {<h1>ECO Codes</h1>
  <p>
  ECO stands for <b>Encyclopedia of Chess Openings</b>. They are codes identifying chess opening,
  each consisting of a letter from A to E, followed by two digits. For example -
  <b>C33</b> represents the <b>King's Gambit Accepted</b>.
  There are five hundred distinct ECO codes.
  </p>

  <p>
  To see a game's ECO code, select
  <run IdentifyOpening><green>Game-<gt>Identify Opening</green></run>
  and examine the <a MainWindow GameInfo>Game Information</a> window.
  </p>

  <h3>Scid Extensions to ECO</h3>
  <p>
  The ECO system is however fairly limited, and insufficient for modern games.
  Some codes are never used, while others are overly frequent.
  To improve this, Scid allows an optional
  extension to the basic ECO codes. Codes may be extended with a
  letter from a to z, with a further extension - a digit from 1 to 4 - being
  possible but not yet used.
  So an extended code may look like <b>A41e</b> or <b>E99b2</b>.
  Many of the codes common in modern master-level games have
  extensions defined in the Scid ECO file.
  </p>

  <h3><name Browser>The ECO Browser Window</name></h3>
  <p>
  Scid's
  <run ::windows::eco::Open><green>ECO Browser</green></run> shows information
  about ECO codes and their frequency and performance for ECO classified games in the current database.
  </p>
  <p>
  The upper pane shows a bar graph with three sections (representing White wins, draws and Black wins),
  and illustrates at a glance an openings characteristics - whether
  draws are common or White or Black is winning.
  </p>
  To go to a deeper ECO level click on a bar in the graph. To go higher press the <button bookmark_up> button.
  You can also browse ECO codes and Opening names by typing them into the bottom entry box and pressing 'Enter'.
  </p>
  <p>
  The bottom pane shows the positions for a particular ECO code according to the ECO file loaded.
  </p>
  <p><i>
  Note - Games not ECO classified will not contribute to the statistics graph. To ECO classify games, go to the <a Maintenance>Maintenance Window</a>
  </i></p>

  <h3>Loading an ECO File</h3>
  <p>
  Scid will attempt to load the default <b>scid.eco</b> at start up.
  If it cannot, or you wish to use another file, one may be loaded manually via the
  <run ::windows::eco::LoadFile><green>Load ECO File</green></run> feature,
  after which this will be loaded automatically.
  </p>

  <h3><name Codes>ECO Code System</name></h3>
  <p>
  The basic structure of the ECO system is:
  </p>
  <p>
  <b><blue><run ::windows::eco::Refresh A>A</run></blue></b>
  1.d4 Nf6 2...;  1.d4 ...;  1.c4;  1.various
  <ul>
  <li>  <b>A0</b>  1.<i>various</i>
  (<b>A02-A03</b> 1.f4: <i>Bird's Opening</i>,
  <b>A04-A09</b>  1.Nf3: <i>Reti, King's Indian Attack</i>) </li>
  <li>  <b>A1</b>  1.c4 ...: <i>English</i> </li>
  <li>  <b>A2</b>  1.c4 e5: <i>King's English</i> </li>
  <li>  <b>A3</b>  1.c4 c5: <i>English, Symmetrical </i> </li>
  <li>  <b>A4</b>  1.d4 ...: <i>Queen's Pawn</i> </li>
  <li>  <b>A5</b>  1.d4 Nf6 2.c4 ..: <i>Indian Defence </i> </li>
  <li>  <b>A6</b>  1.d4 Nf6 2.c4 c5 3.d5 e6: <i>Modern Benoni</i> </li>
  <li>  <b>A7</b>  A6 + 4.Nc3 exd5 5.cxd5 d6 6.e4 g6 7.Nf3 </li>
  <li>  <b>A8</b>  1.d4 f5: <i>Dutch Defence</i> </li>
  <li>  <b>A9</b>  1.d4 f5 2.c4 e6: <i>Dutch Defence</i> </li>
  </ul>

  <p>
  <b><blue><run ::windows::eco::Refresh B>B</run></blue></b>
  1.e4 c5;  1.e4 c6;  1.e4 d6;  1.e4 <i>various</i>
  <ul>
  <li>  <b>B0</b>  1.e4 ...
  (<b>B02-B05</b>  1.e4 Nf6: <i>Alekhine Defence</i>;
  <b>B07-B09</b>  1.e4 d6: <i>Pirc</i>) </li>
  <li>  <b>B1</b>  1.e4 c6: <i>Caro-Kann</i> </li>
  <li>  <b>B2</b>  1.e4 c5: <i>Sicilian Defence </i> </li>
  <li>  <b>B3</b>  1.e4 c5 2.Nf3 Nc6: <i>Sicilian</i> </li>
  <li>  <b>B4</b>  1.e4 c5 2.Nf3 e6: <i>Sicilian</i> </li>
  <li>  <b>B5</b>  1.e4 c5 2.Nf3 d6: <i>Sicilian</i> </li>
  <li>  <b>B6</b>  B5 + 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 Nc6 </li>
  <li>  <b>B7</b>  B5 + 4.Nxd4 Nf6 5.Nc3 g6: <i>Sicilian Dragon</i> </li>
  <li>  <b>B8</b>  B5 + 4.Nxd4 Nf6 5.Nc3 e6: <i>Sicilian Scheveningen</i> </li>
  <li>  <b>B9</b>  B5 + 4.Nxd4 Nf6 5.Nc3 a6: <i>Sicilian Najdorf</i> </li>
  </ul>

  <p>
  <b><blue><run ::windows::eco::Refresh C>C</run></blue></b>
  1.e4 e5;  1.e4 e6
  <ul>
  <li>  <b>C0</b>  1.e4 e6: <i>French Defence</i> </li>
  <li>  <b>C1</b>  1.e4 e6 2.d4 d5 3.Nc3: <i>French, Winawer/Classical</i> </li>
  <li>  <b>C2</b>  1.e4 e5: <i>Open Game</i> </li>
  <li>  <b>C3</b>  1.e4 e5 2.f4: <i>King's Gambit</i> </li>
  <li>  <b>C4</b>  1.e4 e5 2.Nf3: <i>Open Game</i> </li>
  <li>  <b>C5</b>  1.e4 e5 2.Nf3 Nc6 3.Bc4: <i>Italian; Two Knights</i> </li>
  <li>  <b>C6</b>  1.e4 e5 2.Nf3 Nc6 3.Bb5: <i>Spanish (Ruy Lopez)</i> </li>
  <li>  <b>C7</b>  1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4: <i>Spanish</i> </li>
  <li>  <b>C8</b>  C7 + 4...Nf6 5.O-O: <i>Spanish, Closed and Open</i>
  (<b>C80-C83</b>  5.O-O Nxe4: <i>Spanish, Open System</i>;
  <b>C84-C89</b>  5.O-O Be7: <i>Spanish, Closed System</i>) </li>
  <li>  <b>C9</b>  C8 + 5...Be7 6.Re1 b5 7.Bb3 d6: <i>Spanish, Closed</i> </li>
  </ul>

  <p>
  <b><blue><run ::windows::eco::Refresh D>D</run></blue></b>
  1.d4 d5; 1.d4 Nf6 2.c4 g6 with 3...d5
  <ul>
  <li>  <b>D0</b>   1.d4 d5: <i>Queen's Pawn</i> </li>
  <li>  <b>D1</b>   1.d4 d5 2.c4 c6: <i>Slav Defence</i> </li>
  <li>  <b>D2</b>  1.d4 d5 2.c4 dxc4: <i>Queen's Gambit Accepted (QGA)</i> </li>
  <li>  <b>D3</b>  1.d4 d5 2.c4 e6: <i>Queen's Gambit Declined (QGD)</i> </li>
  <li>  <b>D4</b>  D3 + 3.Nc3 Nf6 4.Nf3 c5/c6: <i>Semi-Tarrasch; Semi-Slav</i> </li>
  <li>  <b>D5</b>  D3 + 3.Nc3 Nf6 4.Bg5: <i>QGD Classical</i> </li>
  <li>  <b>D6</b>  D5 + 4...Be7 5.e3 O-O 6.Nf3 Nbd7: <i>QGD Orthodox</i> </li>
  <li>  <b>D7</b>  1.d4 Nf6 2.c4 g6 with 3...d5: <i>Grunfeld</i> </li>
  <li>  <b>D8</b>  1.d4 Nf6 2.c4 g6 3.Nc3 d5: <i>Grunfeld</i> </li>
  <li>  <b>D9</b>  1.d4 Nf6 2.c4 g6 3.Nc3 d5 4.Nf3: <i>Grunfeld</i> </li>
  </ul>

  <p>
  <b><blue><run ::windows::eco::Refresh E>E</run></blue></b>
  1.d4 Nf6 2.c4 e6; 1.d4 Nf6 2.c4 g6 </li>
  <ul>
  <li>  <b>E0</b>  1.d4 Nf6 2.c4 e6: <i>Catalan, etc</i> </li>
  <li>  <b>E1</b>  1.d4 Nf6 2.c4 e6 3.Nf3 (b6): <i>Queen's Indian, etc</i> </li>
  <li>  <b>E2</b>  1.d4 Nf6 2.c4 e6 3.Nc3 (Bb4): <i>Nimzo-Indian, etc</i> </li>
  <li>  <b>E3</b>  E2 + 4.Bg5 or 4.Qc2: <i>Nimzo-Indian</i> </li>
  <li>  <b>E4</b>  E2 + 4.e3: <i>Nimzo-Indian, Rubinstein</i> </li>
  <li>  <b>E5</b>  E4 + 4...O-O 5.Nf3: <i>Nimzo-Indian, main line</i> </li>
  <li>  <b>E6</b>  1.d4 Nf6 2.c4 g6: <i>King's Indian</i> </li>
  <li>  <b>E7</b>  1.d4 Nf6 2.c4 g6 3.Nc3 Bg7 4.e4: <i>King's Indian</i> </li>
  <li>  <b>E8</b>  E7 + 4...d6 5.f3: <i>King's Indian, Samisch</i> </li>
  <li>  <b>E9</b>  E7 + 4...d6 5.Nf3: <i>King's Indian, main lines</i> </li>
  </ul>

  <p><footer>Updated: Scid vs. PC 4.22, Oct 2020</footer></p>
}


set helpTitle(Author) "About"
set helpText(Author) "<h1>Scid vs. PC</h1>
  <ht><img icon></ht>
  <ul> <ul> <ul> <ul> <ul> <ul> <ul>
  <li>$::scidName  version $::scidVersion</li>
  <br>
  <li>Based on:</li>
  <li>Shane's Chess Information Database 3.6.26</li>
  <li>(C) Steven Atkinson (stevenaaus@yahoo.com), Shane Hudson,</li>
  <li>Pascal Georges and others.</li>
  <br>
  <li>Licenced under the GNU General Public License.</li>
  <br>
  <li><url http://scidvspc.sourceforge.net/>http://scidvspc.sourceforge.net/</url></li>
  <li>Mailing list: <url http://www.mail-archive.com/scidvspc-users@lists.sourceforge.net/>archive</url>,
  <url https://lists.sourceforge.net/lists/listinfo/scidvspc-users>subscribe</url></li>
  <li><url https://www.google.com/search?q=Tree+site:scidvspc.sourceforge.net/doc/>Search online help</url> (eg).
  <br>
  <li>Using Tcl/Tk version [info patchlevel]</li>
  <li>Alpha Piece Set is free for personal, non-commercial use.</li>

</ul> </ul> </ul>
  <p><footer>(Project Updated: $::scidVersionDate)</footer></p>
  </p>
"

set helpTitle(Related) "Links"
set helpText(Related) {<h1>Links</h1>
  <p>
  <ul>
  <li>Scid vs. PC  <url http://scidvspc.sourceforge.net/>http://scidvspc.sourceforge.net/</url></li>
  <li>Project page  <url http://sourceforge.net/projects/scidvspc>http://sourceforge.net/projects/scidvspc</url></li>
  <li>Online documentation <url http://scidvspc.sourceforge.net/doc/Contents.htm>http://scidvspc.sourceforge.net/doc/Contents.htm</url></li>
  <br>
  <li>Ca??ssabase database <url http://caissabase.co.uk/>http://caissabase.co.uk/</url></li>
  <li>Player Information resources  <url http://sourceforge.net/projects/scid/files/Player Data/>http://sourceforge.net/projects/scid/files/Player Data/</url></li>
  <li>FICS <url http://www.freechess.org>www.freechess.org</url></li>
  <li>FICS game archives <url http://ficsgames.org>http://ficsgames.org</url></li>
  <li>Kayvan's Cross platform 'docker' images <url https://github.com/ksylvan/scidvspc>https://github.com/ksylvan/scidvspc</url></li>
  <li>Chess Tech blog, with some ScidvsPC tutorials <url http://chesstech.info/>http://chesstech.info/</url></li>
  <li>Debian/Mint/Ubuntu installation how-to <url http://www.linuxx.eu/2012/11/scid-vs-pc-installation-guide-ubuntu.html>http://www.linuxx.eu/2012/11/scid-vs-pc-installation-guide-ubuntu.html</url></li>
  <li>Ed Collins' Scid vs. PC page <url http://edcollins.com/chess/scidvspc/index.html>http://edcollins.com/chess/scidvspc/index.html</url></li>
  <li>Gorgonian's custom pieces <url http://gorgonian.weebly.com/scid-vs-pc.html>http://gorgonian.weebly.com/scid-vs-pc.html</url></i>
  <li>The PGN and EPD standards <url http://www.saremba.de/chessgml/standards/pgn/pgn-complete.htm>www.saremba.de/chessgml/standards/pgn...</url></li>
  <li>Common PGN extensions <url http://www.enpassant.dk/chess/palview/enhancedpgn.htm>http://www.enpassant.dk/chess/palview/enhancedpgn.htm</url></li>
  <li>Pgn of players <url http://www.pgnmentor.com/files.html#players>www.pgnmentor.com/files.html#players</url></li>
  <li>Pgn of events <url http://www.pgnmentor.com/files.html#events>www.pgnmentor.com/files.html#events</url></li>
  <li><url http://www.jrsoftware.org/isinfo.php>Inno setup</url> (used to make windows installer)</li>
  <li>Professional quality chess icons  <url http://www.virtualpieces.net>www.virtualpieces.net</url></li>
  <li>Tango icons <url http://tango.freedesktop.org/Tango_Desktop_Project>http://tango.freedesktop.org/Tango_Desktop_Project</url></li>
<br>
  <li>Mailing list subscribe (must be a member to post to list) <url https://lists.sourceforge.net/lists/listinfo/scidvspc-users>https://lists.sourceforge.net/lists/listinfo/scidvspc-users</url></li>
  <li>Mailing list archive <url http://www.mail-archive.com/scidvspc-users@lists.sourceforge.net/>http://www.mail-archive.com/scidvspc-users@lists.sourceforge.net/</url></li>
  <li>Programmer's reference <url http://scidvspc.sourceforge.net/doc/progref.html>http://scidvspc.sourceforge.net/doc/progref.html</url></li>
  <li>Tcl History <url www.tcl.tk/about/history.html>www.tcl.tk/about/history.html</url></li>
  <li>UCI engine protocol <url http://wbec-ridderkerk.nl/html/UCIProtocol.html>http://wbec-ridderkerk.nl/html/UCIProtocol.html</url></li>
  <li>Xboard engine protocol <url http://www.open-aurec.com/wbforum/WinBoard/engine-intf.html>http://www.open-aurec.com/wbforum/WinBoard/engine-intf.html</url></li>

  </ul>
<p><footer>Updated: Scid vs PC 4.19, September 2017</footer></p>
}

# Book window help
set helpTitle(Book) "Book Window"
set helpText(Book) {<h1>Book Window</h1>
  <p>
  Opening Books are small databases recording moves at the start of a game
  and how often each move occurs. Scid's <run
  ::book::Open><green>Book Window</green></run> allows perusal of opening
  books, and a few extra features.
  </p><p>
  <i>Scid uses the popular <b>Polyglot</b> book format, and comes with a few
  databases  already installed, including gm2600.bin and Elo2400.bin</i>.  </p>
<h2>Features</h2>
  <p>
  In Scid vs. PC, two books can be viewed at once. Normally, moves are listed in order
  of weight, but selecting the <b>Alphabetical</b> box will sort them, placing
  like moves side-by-side.
  </p>
  <p>
  The <b>Other Moves</b> button shows moves not in the book, but which lead to book positions.
  </p>
  <p>
  See also the <a BookTuning>Book Tuning</a> feature.
  </p>

<h2><name Polyglot>Polyglot</name></h2>

<p>
<i>Scid comes with an altered version of Polyglot. The below features require the
<url http://wbec-ridderkerk.nl/html/details1/PolyGlot.html>full version</url></i> of the command line tool.
</p>
<h4>Making Opening Books</h4>
<p>
First, remove games with non-standard starts.
These can be found by <a Searches Header>searching</a> for games with the "non-standard start" flag.
Then, negate the filter, <a Export>export</a> the games to PGN, and from the command line:
<br>
<b>polyglot make-book -pgn GAMES.PGN -bin BOOK.BIN -min-game 1 -max-ply 30</b>
<br>
See the polyglot documentation for more options.
</p>
<h4>Merging Two Books</h4>
<p>
<b>polyglot merge-book -in1 w.bin -in2 b.bin out book.bin</b>
</p>
<p><footer>Updated: Scid vs. PC 4.19 June, 2018</footer></p>
}

# Tactical game window help
set helpTitle(ComputerGame) "Playing the Computer"
set helpText(ComputerGame) {<h1><name PhalanxGame>Playing the Computer</name></h1>

<p> Scid offers two ways to play a Computer Opponent. They are against <a ComputerGame PhalanxGame>Phalanx</a>,
or any installed <a ComputerGame UCIGame>UCI Engine</a>.
</p>
<p>
<i>Other computer opponents can be found in the
training features of <a Analysis>Engine Analysis</a>, <a TB>Tablebases</a> and <a Tree>Tree</a></i>.
</p>
<p>To play as Black, simply flip the board before starting a game.
The clocks may be hidden by pressing the 'x' on the White clock.</p>

<h2>Playing Phalanx</h2>
<p>
<run ::tacgame::config><green>Phalanx</green></run> is an old XBoard engine written by Dusan Dobes.
With it one may play a game of Normal, Fischer (castling not supported), or Random Pawns Chess.
</p><p>
Recently, Dusan has updated Phalanx to be a stronger engine, with more sophisticated code for playing at different ELO.
It's level can be adjusted roughly between 1400 (a novice club member), to 2400.
There is also a computer coach (Toga II) watching, which will indicate when Phalanx has made a blunder.
</p>
<p><b>Coach's analysis time</b> <i>is the allowable time for the
coach to check the players moves for errors. If this time is not
limited the coach is allowed to think in the background.</i></p>
</ul>

<h2><name UCIGame>Playing an UCI Engine</name></h2>

  <p>
  Stronger opponents can be found against any installed
  <run ::sergame::config><green>UCI Engine</green></run>.
  By default, this only includes Toga - but users may wish to <a Analysis List>install others</a>.
  Stockfish is a good alternative, as it has an adjustable "Skill Level" feature.
  </p>
  <p>
  Engine parameters may be configured - to tune performance or utilize engine features.
  <b>Opening Books</b> and <b>Specific Openings</b> to follow can also be selected.
  </p>
  <p><i>
  It is now possible to play (or train with) any opening found in the ECO window,  using the "Import ECO" button.
  </i></p>
  <p>
  Other configuration items are straight forward except:
  </p>
  <ul>
     <li><b>Fixed depth</b> does not set the time per game but
     the depth the engine will calculate in half moves. As this
     disables the ability to calculate deeper if necessary, the
     computer will not see certain mates and combinations, the engine
     may play weaker and thus offer a better partner for training
     purposes.
     </li>

     <li><b>Nodes</b> is similar to limiting the search depth,
     but here the engine has to move after the evaluation of a certain
     number of positions. (The default is 10,000.)
     </li>

  <li><b>Permanent thinking</b> (sometimes also called ponder)
  allows the engine to calculate on the players time. If unchecked, the
  engine will stop analysing the position if the player has the move.
  If the game is set for a fixed time per move, this will weaken the
  engine. On the other hand, the engine might move immediately, if the
  player made the move it was analysing on the players time.</li>
  <li><b>Coach is Watching</b> offers the player to take back a move if the computer thinks it is a blunder.
  The blunder value used is that of the Informant "Poor move" (not "Blunder") , and is configurable in the Informants window,
where one may also alter the "Game is considered Won", which acts as a cutoff above which blunders are not notified.</li>
  </ul>

  <p><footer>Updated: Scid vs. PC 4.21 December 2019</footer></p>
}

set helpTitle(Correspondence) "Correspondence Chess"
set helpText(Correspondence) {<h1>Correspondence Chess</h1>

<p>
Correspondence Chess can be played in two ways.
</p>
<ul>
   <li><a CCeMailChess>Email</a>. Mails the current game (stripped of comments and variations)
   to your opponent when you make your move.
   </li>
   <li>Using <a CCXfcc>Xfcc</a> Chess Servers. External tools are used to fetch the games from
   your account(s) and deliver them to Scid for synchronisation. After
   making your move, it is also sent to your opponent using
   Xfcc. Fetch and Send are implemented as external tools, for
   easy extension if other protocols arise.
   </li>
</ul>
<p>
Features can be accessed via the <b>Play-<gt>Correspondence Chess</b>
menus, or the main
<run ::CorrespondenceChess::CCWindow><green>Correspondence Chess</green></run> window.

This window contains buttons to navigate through
ongoing games, shortcut keys to fetch games by means of the Xfcc
protocol and sync in eMail based games as well as a console stating
which messages where sent or retrieved. Additionally, it
contains a list of ongoing games retrieved from your Inbox directory.
</p>

<p>
To use these features, a database of the type "Correspondence chess" has to be opened.
If you do not have such a database, or Scid has not created one for you, just create a new database and set its type to "Correspondence
chess" via the <a Maintenance>Maintenance</a>.
Setting the type is important as Scid will recognise the database for
synchronisation by this type. As this database is empty after the
creation Scid will treat all correspondence chess games it receives at
first synchronisation as new games and append them to this database.
</p>

<p>
If no database of the type "Correspondence chess" is currently opened
Scid will prompt you to do so, but do not open more than one
database of this type as Scid will not know which one to use.
</p>

<h3>Basic functionality</h3>

<p>
Once everything is set up correctly, Correspondence Chess functions
can be accessed using the following buttons
<ul>
   <li><button tb_CC_Retrieve> Retrieve correspondence chess games.
   The external fetch tool is called and games are retrieved.
   Additionally, other games that are stored in Scid's Inbox
   (see below) are synchronised into the current correspondence chess
   database.
   </li>
   <li><button tb_CC_Prev> Go to the previous game in Scid's Inbox
   </li>
   <li><button tb_CC_Next> Go to the next game in Scid's Inbox
   </li>
   <li><button tb_CC_Send> Sends your move to the opponent by either
   creating a new eMail message in your prefered mail program or by
   sending the move to a chess server in case of Xfcc.
   </li>
   <li><button tb_CC_delete> empties your Inbox/Outbox directories.
   </li>
   <li><button tb_CC_online> is shown if the game list was refreshed
   from the server within the current Scid session. The tool tip for
   this icon shows date and time of the last refresh.
   </li>
   <li><button tb_CC_offline> indicates, that Xfcc status icons are
   restored from saved results. No update has taken place in the
   current Scid session. The tool tip for this icon shows date and
   time of the last refresh.
   </li>
</ul>
</p>
<p>
See also <a CCIcons>Correspondence Icons and Status Indicators</a>.
</p>

<h3>Configuration</h3>

<p>
Correspondence Chess within Scid is based upon a normal Scid
database that holds the games and some helpers external to Scid that
handle the "non-chess-parts". These tools and parameters must be set
up once, and are stored afterwards for future use.
</p>

<p>
The configuration dialog is found in
  <run ::CorrespondenceChess::config><green>Play-</gt>CorrespondenceChess-<gt>Configure</green></run>.
and details are described in <a CCSetupDialog>Correspondence Chess Setup</a>. Press <b>Ok</b> to automatically store your options.
</p>

<h3>Retrieving the games</h3>
<p>
Depending wether you play correspondence chess via eMail or via a
chess server the actual retrieval process differs slightly. Generally
it results in a set of games in PGN format located in Scids Inbox
directory. This offers also the possibility of automatic retrieval via
external software.
</p>
<p>
Once the games are in Scids Inbox invoking <green>Process Inbox</green>
from the menu will work though the Inbox and add new moves to the
games already in the database. Additionally it will add games not
found in the current correspondence chess database as new games.
</p>

<p><a CCeMailChess>Correspondence Chess via eMail</a> describes the
details for the usage of eMail, while in <a CCXfcc>Correspondence
Chess via Chess Servers</a> describes the same for correspondence
chess servers.
</p>

<h3>Stepping through games</h3>
<p>
After games are retrieved they are loaded to Scids clipboard database
and new moves are added and stored in the correspondence chess
database opened. The most convenient way to step through the games is
by the two buttons <button tb_CC_Prev> and <button tb_CC_Next> which
go to the previous and the next game, respectively. The difference to
the functions from the <green>Games</green> menu is, that these two
buttons scroll only between the games in Scids Inbox which are
supposed to be your actually ongoing games. Of course the
Correspondence Chess database might contain much more games, but
normally you do not want to go through all these to find out what your
opponent moved in a current game.
</p>
<p>
Note that a header search is required incorporating some fields that
are not indexed by Scid. Hence, storing your correspondence chess
games in a huge reference database might not be advisable as the
search times may be quite long. If you play a lot and your own
database gets quite large, search times can be reduced by moving
finished games to an archive database, or by just createing a new
database for the ongoing games. Scid will treat all games not existing
in the correspondence chess database already as new games and add them
automatically. Hence, it is sufficient to open an empty database of
type "Correspondence chess" and call <green>Process Inbox</green> to
import all currently ongoing games.
</p>
<p>
Equivalent to the two buttons mentinoned are the items <green>Previous
Game</green> and <green>Next Game</green> from the <green>Correpondence
Chess</green> menu.
</p>
<p>
An alternate way to jump to a specific game is by double clicking on
it within the game list.
</p>
<p>
Note that if you set up your player names correctly (by means of
<green>My Player Names</green>) Scid will rotate the board for you to
play always upwards. You can have multiple player names. See also <a
Options MyPlayerNames>My Player Names</a> for details.
</p>

<h3>Analyse and make a move</h3>
<p>
All analysis features can be used for correspondence chess games.
Variations, annotations etc. can be added just like in normal game
analysis. Once finished, Scid will take the last half move added to
the game and treat it as the current move to send. No checking wether
only one half a move was added or which side to move is done here,
hence, only one half move to the mainline must be added!  In case a
chess server is used Scid also sends the last comment added to the
server which might be usefull for communication with the opponent. In
eMail chess this can be done by the normal mail message, so there all
commments are stripped off.
</p>
<p>
Pressing the Send button <button tb_CC_Send> will have Scid to
determine the type of the correspondence chess game displayed (eMail or
a server game) and call either your eMail program or the external send
tool to submit your move. Calling <green>Send move</green> is equivalent
to this button. Alternatively, <green>Mail move</green> can be used to
send the current game via eMail. In case of an eMail game this
function is equivalent to <green>Send move</green>. In case of a server
based game an eMail message is generated. Note however, that it will
not necessarily contain a proper recipient as eMail addresses are not
exchanged in server based correspondence chess.
</p>


<p><footer>Updated: Scid 3.6.25, August 2008</footer></p>
}

set helpTitle(CCIcons) "Correspondence Chess Icons and Status Indicators"
set helpText(CCIcons) {
<h1>Correspondence Icons and Status Indicators</h1>
<p>
To shorten the display, a set of icons is used in the game list. Some
of them are only present in certain circumstances, some are only valid
for Xfcc based games, some for eMail based games. These indicators are
stored internally and are restored to the last update from the server
if no interet connection is available.
</p>
<ul>
   <li><button tb_CC_online> is shown if the game list was refreshed
   from the server within the current Scid session. The tool tip for
   this icon shows date and time of the last refresh.
   </li>
   <li><button tb_CC_offline> indicates, that Xfcc status icons are
   restored from saved results. No update has taken place in the
   current Scid session. The tool tip for this icon shows date and
   time of the last refresh.
   </li>
   <li><button tb_CC_envelope> This is an eMail based game. In those
   games many of the status flags used in Xfcc-based games are not
   available due to the limitation of the medium.
   </li>
   <li><button tb_CC_yourmove>
   Its your move. Note: this status is only updated if you
   synchronise your games with the server, that is, it always refers
   to the servers status at last syncronisation.
   </li>
   <li><button tb_CC_oppmove>
   Its the opponents move. Note: this status is only updated if you
   synchronise your games with the server, that is, it always refers
   to the servers status at last syncronisation.
   </li>
   <li><button tb_CC_draw>
   Peace was agreed by a draw.
   </li>
   <li><button tb_CC_book>
   The use of opening books is allowed for this game.
   </li>
   <li><button tb_CC_database>
   The use of databases is allowed for this game.
   </li>
   <li><button tb_CC_tablebase>
   The use of endgame tablebases (e.g. Nalimov tablebases etc.) is
   allowed for this game.
   </li>
   <li><button tb_CC_engine>
   Chess Engines are allowed for this game. Sometimes these games are
   also refered to as "Advanced Chess".
   </li>
   <li><button tb_CC_outoftime>
   Your opponent ran out of time. You may claim a win on time.
   </li>
   <li><button tb_CC_message>
   Your oppenent sent a message along with his last move. Check the
   game notation.
   </li>
</ul>

<p>
In Xfcc games, each opponents country may be displayed by the
associated flag, if the server provides that information. For eMail
based games this can be achieved by adding additional PGN tags for
<i>whiteCountry</i> and <i>blackCountry</i>, each followed by the
international three letter country code according to ISO 3166-1
(e.g. "EUR" <button flag_eur>, "USA" <button flag_usa>, "GBR"
<button flag_gbr>, "FRA" <button flag_fra>, "RUS" <button flag_rus>, "CHN"
<button flag_chn>...).
</p>

<p>
See also the chapter <a Correspondence>Correspondence Chess</a> for
general information.
</p>
}



set helpTitle(CCXfcc) "Correspondence Chess Servers"
set helpText(CCXfcc) {<h1>Correspondence Chess Servers / Xfcc</h1>

<p>
There exist several correspondence chess servers throughout the
internet. Generally, they are used by means of a web browser, so no
specific software is required. However many of them also offer an
interface to specialised chess software via a protocoll called Xfcc.
The integration of Xfcc is done in Scid via external helper tools set
in the <a CCSetupDialog>Configuration</a> dialog for correspondence
chess.
</p>
<p>
<i>Scid's Xfcc support is dependant on the TCL </i><b>http</b><i> , </i><b>tDOM</b><i> and </i><b>TLS</b><i> packages.
See the <green><run raiseSplashWindow>Startup Window</run></green> to inspect
if these packages are found.
</i> </p>

<h3>Start a new game</h3>
<p>
Xfcc does not allow to start a new game itself. Searching for an
opponent and starting a game is instead handled by the chess server
on their web site. Once the game is started however, Scid can be used to
retrieve the moves of the opponent, add them to the internal database,
analyse them and so on. All features of Scid are to the users disposal
though certain modes of play may not allow them (e.g.  normal games
usually do not permit the usage of chess engines for analysis).
</p>

<h3>Retrieve games</h3>
<p>
Open a database that holds correspondence chess games. This database
has to be of type "Correspondence chess".
</p>

Notes:
<ul>
   <li>If Scid does not find a correspondence chess database it will
   inform you to open one.
   </li>
   <li>If the database does not hold the games that are fetchted from
   the server they are treated as new games and added to the database
   automatically.
   </li>
   <li>Scid will use the first database of type "Correspondence Chess"
   that is currently open. For this reason only one such DB should be
   opened at a time.
   </li>
</ul>
<p>
Xfcc always retrieves all games hosted on a specified server for your
user ID at once. To retrieve the games just press the
<button tb_CC_Retrieve> icon or select <green>Retrieve Games</green> from the
<green>Correspondence Chess</green> menu. As a server connection is
required to fetch new games be sure that the system has network
access. Scid will call the fetch tool configured in the <a
CCSetupDialog>Configuration</a> dialog which will place the games in
PGN format in Scids inbox. It may take some time to retrieve the
answer, so be patient. After the games are retrieved the
correspondence chess database is updated accordingly.
</p>

<p>
<b>Note</b>By using the <button tb_CC_delete> you can empty your whole
In- and Outbox directories.
</p>

<p>
Once the games are retrieved their counterpart is searched within the
correspondence chess db and new moves are added accordingly. As Xfcc
servers may offer various ways to insert moves (via web or mobile or
other programs...) it might well be that Scid will have to add half of
the game to the db. This poses no problem. Scid will add all moves
returned in the game from the server. Scid will however not replace
the game from the beginning as then all your analysis may be lost.
Hence it is <b>important to note</b> that you must not insert moves to
the main line beyond your own last move! To add continuations please
use variations!
</p>
<p>
Xfcc base games offer extensive status display within the games list.
This information, however, is only available if Scids internal Xfcc
support is used.  The follwoing icon are for visual display:
<ul>
   <li><button tb_CC_draw> A draw was agreed with the last move.
   </li>
   <li><button tb_CC_yourmove> You're on the move.
   </li>
   <li><button tb_CC_oppmove> Your opponent is on the move.
   </li>
   <li><button tb_CC_book> This game allows the use of opening books.
   </li>
   <li><button tb_CC_database> This game allows the use of databases.
   </li>
   <li><button tb_CC_tablebase> This game allows the use of tablebases.
   </li>
   <li><button tb_CC_engine> This game allows the use of chess engines.
   </li>
</ul>
<p>
Additonally Scid will display the clock for both parties <b>at the
time of sync</b> as well as the chess variant played. Note however
that Scid currently only supports standard chess.
</p>
<p>
Note: only if the proper icon (book, database, tablebase, engine)
is dispalyed, the useage of these tools is allowed. It is forbidden
otherwise. Be fair and respect these rules.
</p>
<p>
Note: if other sources have placed games in your inbox (e.g. from
your eMail correspondence chess) they are also synchronised in the
retrieval step into the database as the whole Inbox is worked through.
This allows for adding eMail games to the Inbox, then switch to Scid,
hit <button tb_CC_Retrieve> and all games are up to date.  Games that are not
yet found in the database are treated as new games and appended to the
database.
</p>
<p>
<b>Note</b>By using the <button tb_CC_delete> you can empty your whole
In- and Outbox directories.
</p>
<p>
<b>Note for programmers</b>: the fetch tool is called with the Inbox path as
parameter. It is thought to work through all server accounts and place
properly formatted PGN files in the path passed to it. These files
should contain additional header fields as they are known by the cmail
tool. (See <a CCeMailChess>Correspondence Chess via eMail</a> for
information about the fields required.)
</p>

<p><footer>Updated: Scid 3.6.23, March 2008</footer></p>
}

set helpTitle(CCeMailChess) "Correspondence Chess via eMail"
set helpText(CCeMailChess) {<h1>Correspondence Chess via eMail</h1>

<p>
eMail offers a convenient way to play <a Correspondence>Correspondence Chess</a>. The
standard Unix application is XBoard and its cmail helper
- as it has fast email processing, and still maintains PGN compliability.
This is also the model which Scid uses.
By preserving the whole PGN header, such games can be
played with any opponent who has a tool to handle PGN.
</p>
<p>
Scid too can handle eMail correspondence games almost automatically;
maintaining compatiblity with cmail and XBoard.  It works by sending
the games as PGN attachments, including in
the header certain tags that allows them to be recognised and
sorted together. For this reason the user has to be careful with
editing the header. Fields/tags with explicit values have
to be set to exactly to this value. Starting a game with
Scid will do this automatically, but you <b>must not</b> overwrite
or delete them.
</p>
<p>
Essential header fields are
</p>
<ul>
   <li><term>Event</term>: by default "Email correspondence game"
   </li>
   <li><term>Site</term>: has to be "NET"
   </li>
   <li><term>Mode</term>: has to be "EM"
   </li>
   <li><term>WhiteNA</term>: contains the eMail address of the white player. Note
   that only the bare address is stored there in the form
   <term>user@host.org</term>.
   </li>
   <li><term>BlackNA</term>: contains the eMail address of the black player
   similar to WhiteNA.
   </li>
   <li><term>CmailGameName</term>: Contains a <b>unique</b> identifier for
   the game. This is used to sort the games together.
   <p>
   While Scid could use some database index this is not possible for
   non-DB-based tools like cmail. For this reason the
   <term>CmailGameName</term> parameter is user suppied. It must be
   unique! The easiest way is something of the form
   <term>xx-yy-yyyymmdd</term> where xx is a shortcut for the white
   player, yy one for the black player, and yyyymmdd the current date.
   </p>
   <p>For Xfcc-based games this field has also to be set to a unique
   identifier but there the server name and the unique game number on
   this server can be used, that is this identifier is of the form
   <term>MyXfccServer-12345</term>.
   </p>
   </li>
</ul>
<p>
eMail based chess does not contain that extended status codes as Xfcc.
These games show the <button tb_CC_envelope> icon to notify them as
eMail based.
</p>

<h3>Start a new game</h3>
<p>
This opens a dialog for the input of the own and the opponents name as
they should appear in the header as well as the eMail addresses of
both parties. Additionally a <b>unique</b> game ID has to be inserted.
The easiest way for this ID is something of the form
<term>xx-yy-yyyymmdd</term> where xx is a shortcut for the white
player, yy one for the black player, and yyyymmdd the current date.
This id is a text and it is important to identify the games uniquely.
Users of cmail will also know this ID as <i>game name</i>. It must
only contain letters and numbers, the minus sign and the underscore.
Please avoid other characters.
</p>
<p>
After the dialog is quit by pressing the <b>[Ok]</b> button a new
game is appended to the currently loaded correspondence chess database
and the PGN header is set properly. Just make your move and send it as
mentioned below.
</p>

<h3>Retrieve games</h3>

<p>
Scid does not handle your mailbox automatically. This would,
considering the wide range of possible mail setups these days, involve
a huge amount of code. For this reason Scid relies on your normal
eMail program which is far more suitable for this purpose than Scid
can ever be. To get a game into Scid just save the attached PGN file
to Scid's inbox and process the inbox by either <green>Retrieve
Games</green> or the <button tb_CC_Retrieve> button or
<green>Process Inbox</green>. The difference between the two is that
the first one will also fetch and populate the Inbox additionally with
games from another source (say Xfcc) by either the internal Xfcc
support or an external fetch tool called. Hence
<button tb_CC_Retrieve> is the most convenient way if you use both types of
correspondence chess games.
</p>
<p>
<b>Note</b> The <green>Retrieve Games</green> menu or the
<button tb_CC_Retrieve> button do <b>not</b> fetch your eMail messages! You
have to save your PGN files to Scids Inbox by hand. Probably this can
be automatised by your eMail program (on Un*x systems setting up a
mime handler is easy enough by means of <term>.mailcap</term>).
</p>
<p>
<b>Note</b>By using the <button tb_CC_delete> you can empty your whole
In- and Outbox directories.
</p>

<h3>Send the response</h3>

<p>
After making your move send it by either the <green>Mail Move</green>
item from the menu via <green>Send move</green> which is equivalent to
<button tb_CC_Send>. The latter will Scid have to recognise the game
as eMail correspondence and send it by mail while the former method
will force Scid to generate an eMail message.
</p>
<p>
Of course Scid strips the the game bare of any comments and variations
before attaching it to the outgoing eMail as you probably do not want to send
your analysis along.
</p>
<p>
If a GUI-mailer is used, its usual compose window is opened. The
address of your opponent is filled in as well as a generic subject
containing the game id for easy filtering and the bcc address if
specified in the <a CCSetupDialog>Configuraion</a> dialog. The mail
body is set to contain the FEN of the final position and the list of
moves made so far. This way the opponent can quickly look up your
move. Finally, Scid attaches the current game including your move in
PGN format to the mail message.
</p>
<p>
When using a mailx compatible tool no window is opened and the mail is
sent invisibly by invoking the tool specified in the background. In
this case the generated mail contains the PGN also in the mail body.
</p>
<p>
Note that as eMail chess works by sending the whole PGN file you must
not add more than your half move. Scid does not check here wether
more than one half move was added to the mainline, simply as Scid does
not know which move it was, when you sent yours.
</p>
<p><footer>Updated: Scid 3.6.23, March 2008</footer></p>
}

set helpTitle(CCSetupDialog) "Correspondence Chess Setup"
set helpText(CCSetupDialog) {<h1>Correspondence Chess Setup</h1>

<p>
The <run ::CorrespondenceChess::config><green>Correspondence Chess Setup</green></run>
window comes complete with system defaults ... but these may not match your system, so
please configure as necessary.
Scid will use the defaults until this setup dialog
is closed by pressing <b>OK</b>.
</p>
<p>
Configuration data is stored in "config/correspondence.dat" , and the default database
(and Inbox/Outbox) in the "data" directory ($HOME/.scidvspc/data/ on Unix systems).
</p>

<h3>Settings</h3>

<p>
<b>Default Database</b>:
The default database for Correspondence Chess games
, which has to be of type "Correspondence chess".
Opening a database of this type by any other
means is also ok, so probably you may want to ignore this setting
(e.g. if you call Scid with your correspondence chess database on
startup.)
</p>

<p>
<b>Inbox (path)</b>:
The directory Scid will look for correspondence chess games stored
in PGN format. These games are used for the synchronisation of the
correspondence chess database. Generally, Scid does not care how the
games come to this directory. It will just work through all PGN files
located there. This offers the possibility to use some external tools
to fetch games to this location. Additionally, in eMail chess one
should just save the PGN files received from the opponent in this
directory.
</p>
<p>
Scid will not read a mailbox of whatever sort, it just handles
all PGN files placed in that directory. Also note, that it will
synchronise games with the current database. However, if a game
from this directory does not yet exist in the database it is
treated as new game and appended to the database.
</p>
<p>
For the synchronisation process to work the PGN files must contain
some additional header information that are in perfect agreement with
the PGN Standard. Please have a look at <a CCeMailChess>Correspondence
Chess via eMail</a> if you want to create your own tool or if you are
migrating data from some other system.
</p>

<p>
<b>Outbox (path)</b>:
The inverse of the <i>Inbox</i>. Scid places here PGN files of the
outgoing games. For eMail chess this is essential as the PGN files have
to be attached to an eMail message.  For Xfcc, where only the move is
sent, this would not be necessary, however the Outbox directory offers
a convenient way to link up to your PDA or for any other usage as the
PGN files contained in the Outbox will also contain your last move.
</p>

<p>
<b>Use internal Xfcc support</b>:
If checked Scid will not use the external tools specified as external
protocol handlers but use its internal Xfcc support to fetch games and
send moves. This will be the most convenient way to access an Xfcc
server and should be used as default.
<i>This item will be disabled if Xfcc support is not enabled.</i>
</p>
<p>
This feature requires http, tDOM and TLS support for TCL to be installed.
See <a CCXfccSetupDialog>Xfcc Server Setup</a> for more information.</p>

<p>
<b>Xfcc Configuration</b>:
Give the path and filename of the config file for the xfcc protocol
handler. This path is also passed on to the external protocol handlers
to be used by them.
</p>

<p>
<b>Fetch Tool</b>:
This program is called to retrieve correspondence chess
games from a correspondence chess server. This helper just has to
fetch the games from whatever source it likes, generate a proper PGN
file containing the necessary PGN header. Tools for fetching games
from Xfcc-servers exist as external programs and these are the natural
tools to set up here. For future protocols one could easily generate
an external fetch tool that handles this protocol. Also automatisation
is possible if this functionality is done externally.
</p>
<p>
Note: This tool is <b>not</b> called for retrieval of eMail chess
messages!
</p>

<p>
<b>Send Tool</b>:
This is the inverse of the fetch tool, primarily also ment for Xfcc
support or any future protocol that might come up. The send tool,
however, is called from Scid with several parameters where the call
looks like:
<term>
SendTool Outbox Name GameID MoveCount Move "Comment" resign claimDraw offerDraw acceptDraw
</term>
</p>

<p>
The meaning of the parameters is as follows:
   <ul>
      <li><term>Outbox</term>: The Outbox path set in this dialog. The
      send tool is meant to generate a correctly formatted PGN file
      there.
      </li>
      <li><term>Name</term>: The name of the player to move as stated
      in the PGN header. For Xfcc this would be the login name. It is
      identical to the player name in the PGN header.
      </li>
      <li><term>MoveCount</term>: The move number to send.
      </li>
      <li><term>Move</term>: The actual move in SAN.
      </li>
      <li><term>"Comment"</term>: A comment sent to the opponent. Scid
      inserts the last comment of the game. That is these comments are
      treated as comments to the opponent. Note that the comment is
      quoted, so multiline comments should be possible.
      </li>
      <li><term>resign</term>: 0 or 1, specifying wether the user
      wants to resign. Set to 1 if the user invokes
      <green>Resign</green> from the <green>Correspondence Chess</green>
      menu.
      </li>
      <li><term>claimDraw</term>: 0 or 1, specifying wether the user
      wants to claim a draw. Set to 1 if the user invokes
      <green>Claim Draw</green> from the <green>Correspondence Chess</green>
      menu.
      </li>
      <li><term>offerDraw</term>: 0 or 1, specifying wether the user
      wants to offer a draw. Set to 1 if the user invokes <green>Offer
      Draw</green> from the <green>Correspondence Chess</green> menu.
      </li>
      <li><term>acceptDraw</term>: 0 or 1, specifying wether the user
      wants to accept a draw offered by the opponent. Set to 1 if the
      user invokes <green>Accept Draw</green> from the
      <green>Correspondence Chess</green>
      menu.
      </li>
   </ul>
</p>
<p>
Note: This tool is <b>not</b> called for eMail chess!
</p>

<p>
<b>Mail program</b>:
This gives the path to your prefered eMail program. This program is
called for eMail chess to compose the message to the opponent.
</p>

<p>
<b>(B)CC Address</b>:
A copy of the outgoing message is sent to this address as blind copy.
Note however, that if a GUI mailer is used it has normally its own
outgoing mail handling. Hence, setting this address might duplicate
messages. It can be used to transfer a game to another address though.
</p>

<p>
<b>Mode</b>:
Unfortunately there exists a wide range of mail clients and they use
very different calling conventions. Some common conventions, and
examples of programs that use them, are listed here. The mailprogram
will be called with the convention selected. In case it is not known
which convention is used one of those offered might match and do the
trick. Note however that quite a number of mail programs are not
capable of sending attachements when called from another program. In
this case you will have to either change your mail client or add the
attachement placed in Scids Outbox by hand.
</p>
<p>Hint: mailx or one of its many clones should be available as a
command line application on almost any platform as an easy to set up
tool. In case none of the conventions work with your preferred
client or this client can not handle mails with attachements by calls
from the command line, installing mailx would be an option.
</p>
<p>Hint: mutt uses the systems mail transport (aka
sendmail/exim/postfix). To hook up with those (arguably) not easy to
set up tools mutt is a perfect option. On a decent Un*x with a proper
setup it should be the most painless way to handle eMail chess.
(Though not many properly set up systems exist, especially in the
Linux world.)
</p>
<p>
<b>Attachement parameter</b>:
This parameter is used to specify an attachement. It is <b>only</b>
used in <term>mailx</term> mode.
</p>
<p>
<b>Subject parameter</b>:
This parameter is used to specify the subject of the mail message. It
is <b>only</b> used in <term>mailx</term> mode.
</p>
<p><footer>Updated: Scid 3.6.24, March 2008</footer></p>
}

set helpTitle(CCXfccSetupDialog) "Xfcc Server Setup"
set helpText(CCXfccSetupDialog) {<h1>Xfcc Server Setup</h1>
<p>
The Xfcc Server Setup dialog reads in the currently specified xfcc
configuration and displays all servers specified in the config file.
The dialog is separated in two parts: the upper half lists all server
names defined, while the lower part lists all currently set
configuration values for these files.
</p>

<p><i>For servers requiring tls1.2 protocol, tls-1.7 must be installed and some changes made to Scid's gui
"package require tls 1.7" and "::tls::init -ssl3 false -ssl2 false -tls1.2 true"</p>
</i></p>

<h2>Necessary entries</h2>
<ul>
<li><term>Server name</term>: This specifies the name used for this specific
server and to generate unique game IDs. The name should consist of a
single word containing only characters (a-z and A-Z), numbers and the
characters "-" and "_". It is treated case sensitive.
</li>
<li><term>Login name</term>: specifies the name used to log into a
specific server. It is a wise custom to use only characters, numbers
and "-" as well as "_" in this name.
</li>
<li><term>Password</term>: defines the password used for login. The
same rules apply as for the Login name. <b>Note</b> Scid currently
stores your passwords on the hardisc in unencrypted form. For this
reason keep the directory safe.
</li>
<li><term>URL</term>: This is the base URL for the Xfcc interface of the
correspondence chess server. It can be found at the servers homepage.
Some examples for common servers are:
<ul>
	<li>SchemingMind: <url
	http://www.schemingmind.com/xfcc/xfccbasic.asmx>
	http://www.schemingmind.com/xfcc/xfccbasic.asmx</url>
	</li>
	<li>ICCF:
	<url https://www.iccf.com/XfccBasic.asmx>
	https://www.iccf.com/XfccBasic.asmx</url>
	</li>
	<li>MeinSchach.de / MyChess.de:
	<url http://www.myChess.de/xfcc/xfccbasic.php4>
	http://www.myChess.de/xfcc/xfccbasic.php4</url>
	</li>
</ul>
</li>
</ul>
<p>
To switch between the individual server settings just select the
server to change from the upper listbox. Its current values will then
be displayed in the entry fields and can be adopted. Clicking on
another server in the list will activate the new settings.
</p>
<p>
To add a new server, just hit the <term>Add</term> button. A new entry
will be created that is prefilled with some text to replace. Please
keep in mind that the server name has to be unique in your setup.
</p>
<p>
To delete a server select it from the list and press the
<term>Delete</term> button. All values for this specific server will
be prepended by a hash mark (#) marking this entry as deleted.
Therefore, if a server was deleted by accident, just remove the hash
marks in front of the entries.
</p>
<p>
Hitting <term>OK</term> will Scid have to store your current setup. At
this point all servers marked as deleted are deleted, all new servers
are added to the setup. By pressing <term>Cancel</term> all changes
are lost, the old setup stays in place.
</p>

<p><footer>Updated: Scid vs. PC 4.21 Nov 2019</footer></p>
}

# Tactics Trainer
# Renamed to Puzzles S.A
set helpTitle(TacticsTrainer) "Mate in ..N.. Puzzles"
set helpText(TacticsTrainer) {<h1>Mate in ..N.. Puzzles</h1>
  <p>
  Scid's <run ::tactics::config><green>Mate in N</green></run> window
  is a handy way to improve your chess skills.
  The feature is fairly straight forward, though not especially polished,
  and is implemented using special databases containing the puzzles
  , installed in Scid's default <run setTacticsBasesDir><green>Bases Directory</green></run>.
</p>
<p><i>Starting Mate-in-N, Scid opens all databases in this directory, so it is probably not a great place
  to keep your personal databases, as this will cause the feature to hang or run slowly at start-up.</i></p>
  <h3>Configuration</h3>
  <p>
  The <term>Engine analysis time</term> slider limits Toga's
  time to solve the puzzle (which are generated on-the-fly).
  Five seconds should generally
  be enough as most puzzles contain forced continuations.
  It does not describe how long one has to solve any puzzle.
  </p>
<p>
  Scid stores data about solved puzzles within the database.
  Clicking the <term>Reset scores</term> button will reset this
  information marking all puzzles as unsolved. And unless care is taken,
<b>reinstalling Scid will overwrite puzzles solved</b>!
  </p>

  <h3>Playing</h3>
  <p>
  If you get stuck, select <term>Show Solution</term> to add the solution as
  <run ::pgn::Open><green>PGN</green></run>
  (where it can be easily examined). Unclicking the button will reset the puzzle for another try.
  </p>
  <p>
  Clicking the <term>Next</term> button allows the user to skip any
  puzzle, and individual exercises can be opened via the
<run ::windows::gamelist::Open><green>Game List</green></run> widget.
  </p>
  <p>
  Some exercises do not end in a mate, with the
  solution only giving a clear advantage. If one wants to play out these
  scenarios and only count the exercise solved in case of a win, just
  check the <term>Playout exercises</term> option. This option has no
  meaning in case of a clear mate solution.
  </p>
  <p>
  The clock is only for the user to check how long he thought about the
  position at hand. No evaluation is done on the time required to solve a problem.
  </p>

  <h3>Notes</h3>
  <p>
  Unlike other bases, puzzle bases do not contain full games; only starting positions.
  Any puzzle book can be converted to a trainings base by setting up the
  positions and storing the new database into the <term>Bases</term> directory.
  In the <a Maintenance>Maintenance</a> window, set the new base type to <term>Tactics</term>,
  and edit the <term>Description</term> to give the database a name.
  </p>
  <p><footer>Updated: Scid vs. PC 4.21, April 2019</footer></p>
}

set helpTitle(FindBestMove) "Find best move"
set helpText(FindBestMove) {<h1>Find Best Move</h1>
  <p>
  The Play-<gt>Training-<gt>Find Best Move feature uses specially prepared databases
  to help you train to find tactical shots (non-obvious and unique winning moves).
  </p>
  <p>
  Scid will initially jump to the first relevant position in the current database,
  allowing the player to study for the tactical shot. The PGN window will close, and Hide Next Move is enabled.
  </p>
  <p>
  Re-selecting the Play--<gt>Training--<gt>FindBestMove menu, or double clicking to the left of the board,
  will search for the next position/game.
  </p>
  <h2>Compatible Databases</h2>
  <p>
  All relevant games must be flagged with the tactics <b>T</b> flag.
  Thereafter, there are two ways a game can be marked.
 </p><p>
  Traditionally, databases are prepared by <a Analysis Annotating>annotating games</a> with a UCI engine and enabling
  "Mark tactical exercises".
<br><br>
  <i>This marks relevant moves a special comment (beginning with <b>****D-<gt></b> and commented in the analysis.tcl source file).
<br>
  For a move to be regarded as a Tactical Shot, it must be a unique winning move, that is not obvious - ie found at depth <lt>= 3.</i>
 </p><p>
  But ScidvsPC will now also assume the game is a tactical exercise, if it has a non-standard start.
  A good example is the <url http://gorgonian.weebly.com/uploads/1/7/2/2/17221082/auerswald.pgn>Auerswald Collection</url>
<br>
(Note - games must first be copied to si4 database and flagged with the tactics <b>T</b> flag from the maintenance window).</p>

  <p><footer>Updated: Scid vs. PC 4.17 Feb 2016</footer></p>
}

# FICS Login
set helpTitle(FICSlogin) "FICS Login"
set helpText(FICSlogin) {<h1>FICS Login</h1>

<p><i>FICS supports anonymous login, but you'll find more people to play if you visit
<url http://www.freechess.org>www.freechess.org</url> first and create an account.
If you're having problems logging in, try deselecting "timeseal".</i></p>

<ul>
<li><term>Login Name</term> This is your user name on the FICS
server. To login anonymously, use the "Login as guest" button.
<i> .... It is also possible to login anonymously with a particular name. Enter
you favourite name into the login field and clear the password field. If this
name is not registered it will become yours for this session; otherwise please
close FICS and try logging in again.</i></li>

<li><term>Password</term> The password is not displayed when you type,
but is stored in plain text within Scid's configuration files. If you are
using a publicly accessible computer, please make sure to
restrict readability to these files, or clear password after FICS end.
</li>

<li><term>Timeseal</term> If checked, all connections to the
FICS server are routed through the (optional) timeseal
program. Its purpose is to cope with network lags and keep the clocks in
correct order, which can otherwise create problems on slow network
connections.

Timeseal is available from the
<url http://sourceforge.net/projects/scidvspc>Scid vs. PC project page</url>.
</li>

<li><term>URL</term> This is normally "freechess.org", but during outages, it is
also worth trying "fics2.freechess.org".
</li>

<li><term>IP Address</term> If you need to change the URL, press "Refresh" for Scid to search for a new IP Address,
but normally you shouldnt have to worry about this field. After FICS has connected once, the IP Address shouldn't change again.
</li>

<li><term>Server port</term> specifies the port on the server.
The default is 5000 and should be ok for almost all needs.</li>
<li><term>Timeseal port</term> specifies the port where the
timeseal program is listening. The default is 5001
and should be ok for almost all needs.</li>
</ul>

  <p><footer>Updated: Scid vs. PC 4.10 July 2013</footer></p>
}

# FICS Find Opponent
set helpTitle(FICSfindopp) "Finding an Opponent"
set helpText(FICSfindopp) {<h1>Finding an Opponent</h1>
  <p>
  There are several ways to start playing. The easiest are the <b>Find Opponent</b>
  and <b>Offers Graph</b> widgets.
  </p>

  <h3>Find Opponent</h3>

  <p>
  Click on the <b>Find Opponent</b> button and you'll see a dialogue from
  which you can challenge other players for a game.
  Select how long you'd like to play for, and other options, then
  press the <b>Make Offer</b> button.

Options:
  <br>
  <ul>

      <li><term>Time</term> Base time for game in minutes.</li>
      <li><term>Increment</term> Seconds added to your time with each move.</li>
      <li><term>Rated game</term> The result of rated games affect your rating.
      Unrated games make no adjustment.</li>
      <li><term>Confirm manually</term> Allows you to confirm or deny a challenge.</li>
      <li><term>Color</term> Select whether to play White or Black or Auto.</li>
      <li><term>Limit rating between</term> Only play those with a given rating interval.</li>
      <li><term>Filter with formula</term> On FICS every player can
      set a formula that describes what challenges will be denied
      automatically. This formula can be enabled by checking this box.
      </li>
   </ul>
  </p>

  <h3>Offers Graph</h3>

    <p>The <b>Offers Graph</b> button shows all current game offers. Hovering
your mouse over a node will show it's details, and clicking a node will
request a new game. Sometimes you'll have to be quick though, as
FICS can be quite busy. Middle clicking FICS will hide/display the Offers,
and 'Escape' dismisses thm.</p>

<p> On the graph itself, The y-axis shows the ELO rating of the opponent -
higher number means stronger player , while x-axis of the graph plots the time
allowed for the game. The first grey line marks standard <term>Blitz</term>
timing (5 min., no increment) while the second red line marks the standard
<term>Rapid</term> timing (15 min., no increment).
<p>
Additionally, the offers use the following coding:
    <ul>
       <li><green>Green</green>: offers from computer opponents</li>
       <li><blue>Blue</blue>: offers from human opponents</li>
       <li><red>Red</red>: games with a total time of more than 1 hour</li>
       <li><gray>Gray</gray>: anonymous offers, i.e. offers from guest logins</li>
       <li>Boxes: unrated games</li>
       <li>Circles: rated games</li>
    </ul>
  </p>

<p>
<i>
Note FICS also offers a bunch of chess variants like bughouse or crazyhouse.
Playing these games is not supported, but they can be <a FICSobserve exam>observed and examined</a>.
</i></p>

  <p><footer>Updated: Scid vs. PC 4.8 April 2012</footer></p>
}
# FICS Find Opponent
set helpTitle(FICSobserve) "Other Features"
set helpText(FICSobserve) {<h1>Other Features</h1>

  <h3>Live International Events</h3>
  <p>
  From time to time FICS broadcasts major events in
  international chess, whence one can observe the games live.
  These events are handled by the special account, Relay.
  To find out what games are currently relayed , use
  <b>tell relay listgames</b>. Relay will reply with a table of current games.
Use <b>tell relay notify</b> if you want to be told what tournaments are being relayed when you login.
  </p>

<h3>Observing Games</h3>
  <p>
The format for observing games is "<b>observe</b> game", where game may be
<ul>
<li>a specific game number</li>
<li>a specific player's current game</li>
</ul>
or, highest rated games, such as
<ul>
<li>/l - lightning</li>
<li>/b - blitz</li>
<li>/s - standard</li>
<li>/S - suicide</li>
<li>/w - wild</li>
<li>/z - crazyhouse</li>
<li>/B - bughouse</li>
<li>/L - losers</li>
<li>/x - atomic</li>
</ul>
</p>
  One may browse all current games using the <b>games</b> command, or <b>unobserve</b> to stop oberving games.
  </p>
  <br>
  Observed games are shown as small boards (the size is configurable in Options--<gt>FICS)
  and they have two buttons:
  <ul>
  <li><img arrow_up>  :  Load the game into Scid's main board, allowing analysis and saving of the game.
  <i>Note: Doing this with blitz games on slow internet connections can be
  troublesome, and it is disabled altogether for unsupported variants.</li>
  <li><img arrow_close>  :  Close the game.</li>
  </ul>

  <p>
  Discussing games with others is supported by the <b>whisper</b> and <b>kibitz</b> commands.
  </p><p>
  FICS also has a concept of <b>primary</b> game. When observing multiple games, double click any board to make it your primary game,
  and the game number will be shown in bold.
  </p>

<h3>Following Players</h3>
  <p>The FICS <b>follow</b> command allows one to follow a specific player's games.
  Using <b>follow+</b> in Scid vs PC will allow one to follow, and automatically save the games.
</p>

  <h3><name exam>Examining and Loading Games</name></h3>

  <p>
  FICS and Scid vs. PC offer two ways to analyze games - "smoves" and "examine".
  </p>
  <p>
  The <b>smoves</b> command loads a previously played or suspended game into the main board.
  Using "smoves GMShort -1" (for eg) is better in that the whole game is loaded to Scid, and
  it can thus have variations added, and the game saved. The elapsed-move-times will be stored as comments if FICS-<gt>Options-<gt>StoreClockTimes is selected. Scid vs. PC will insert your playername if none is given (eg "smoves -1").
  </p>
  <p>
  The FICS <b>examine</b> command is now well supported, and is a convenient way
  for groups or friends to analyze games. After issuing  "examine GMShort -1" (for eg),
  Scid's large move buttons are bound to the FICS <b>forward</b> and <b>back</b> commands.
  </p>
  <p>
  One may upload a game to FICS using <b>upload</b>. This command sends the current game to FICS
  as a scratch game in examine mode. Others can then examine your game.
  </p>
  <p>
  <i>Crazyhouse and Bughouse games can only be observed or examined. They cannot be loaded
  into the main board with "smoves" because of limitations in Scid. Additionally, some
crazyhouse positions have illegal FEN (for eg - because of more than 8 pawns)
and trying to run engines against such positions is not recommended.</i></p>

  <h3>Downloading Games</h3>
  <p>
  To download more than a handful of games,
  <url http://www.ficsgames.org>www.ficsgames.org</url> is a great resource.
  </p>

  <h3>Lectures</h3>

  <p>
  FICS offers several options for chess training. One of the more
  prominent once are the lecture bots <b>LectureBot</b> and
  <b>WesBot</b>. They run all the time on FICS and offer various
  training sessions that can be visited using Scid. The start of each
  session is announced on <b>Channel 67</b> of FICS. Therefore,
  to see these announcements one should first add this channel to the
  personal observation list. This can be done by <b>+channel
  67</b> (it can be removed again by <b>-channel 67</b>).
  Once e.g. LectureBot announces a training session, one can take part
  by issuing <b>observe lecturebot</b>. Please refer to the
  online documentation of FICS for additional features of the Bots and
  also other bots available.
  </p>

  <p><footer>Updated: Scid vs. PC 4.14 January 2015</footer></p>
}

set helpTitle(FICSwidget) "FICS: Play on the Internet"
set helpText(FICSwidget) {<h1>Using FICS</h1>
  <p>
Once you have <a FICSlogin>logged in</a>, the main FICS widget shows a
console window, command and find entry boxes, and some command buttons.</p>

<h3>FICS Console</h3>
<p>
This is the main interface with the FICS server.
</p>

<p>
Interaction is via commands entered in the entry box, or by
the Command Buttons. For an outline of popular commands see the
<a FICScommands>Commands</a> section.</p>

<h4>Console Colours</h4>
<p>
Normal messages are written in green; messages from other
players appear in red.  It can be a little confusing, but
toggling the <b>Tells</b> and <b>Shouts</b> boxes will make
it quieter.
</p>
<p>
One may also customize <b>the fore/background colours</b> from the main Options--<gt>FICS menu.
By default they are LimeGreen and grey35.
</p>
<h4>FICS Options</h4>
<p>
Right-clicking posts a menu with several options. 'No Requests'
denies Takebacks, Adjournment, Abort and Draw requests. 'No Results' prevents game results
dialogs. 'Board Size' refers to the small Observed Game boards. Autoraise raises the main board
when your opponent makes a move. StoreClockTimes will store move times as comments
(viewable in the <a Graphs Score>Score Graph</a>)
</p>
<p>
There are also options to configure initialisation commands and to customize the top three buttons.
This latter option requires a smidgin of tcl programming ;<gt>, and fics commands should probably be enclosed in quotes.
</p>

  <h3>Buttons</h3>
  <p>
  The FICS buttons are fairly self explanatory, the most notable being the <a FICSfindopp>Find
Opponent and Offers Graph</a> buttons. Other buttons include:
  <br>
  <ul>
    <li><term>Tells</term> Show messages from channel tells</li>
    <li><term>Shouts</term> Show messages from shouts and cshouts</li>
    <li><term>Clear</term> Clear command entry box. <term>Control+Clear</term> clears all of previous messages</li>
    <li><term>Next</term> Send "next" for next page of help info</li>
    <li><term>Rematch</term> Request a rematch with previous opponent</li>
    <li><term>Censor</term> Add Opponent to your censor list, or if not playing, display '+censor'. (Control-Button censors the person chatting to you).</li>
  </ul>

<h3><name premove>Premove</name></h3>
<p>
Premove allows one to decide your next move before your opponent has moved,
allowing for very quick play - essential for Blitz games.
</p><p>
Premove is done like any other move, but pressing the From and To squares.
A coloured line will be drawn, and - if legal -
this move will be played immediately your opponent has.
To cancel premove, press the <b>Escape</b> key.
</p>

<br>
  <p><footer>Updated: Scid vs. PC 4.20 Jan 2015</footer></p>
}

set helpTitle(FICScommands) {FICS Commands and Variables}
set helpText(FICScommands) {<h1>FICS Commands and Variables</h1>

<p>
FICS' command line interface is fairly confusing,
but below you'll find an outline of popular commands and
variables.
</p>

<p><i>
As well as on-line, help can also be got from the command line.
Use <term>help COMMAND</term>, or <term>help v_VARIABLE</term>
for info about specific commands and variables.
</i></p>

<h3>Commands</h3>
<ul>
    <li><term>finger</term> PLAYER - Get info about a specific person</li>
    <li><term>resume</term>   Issue challenges to users with whom you have a stored or interupted game</li>
    <li><term>abort</term> Request game abort, with result set to "no result"</li>
    <li><term>tell</term> CHANNEL MESSAGE - Send a message to chat channel</li>
    <li><term>tell</term> PLAYER  MESSAGE - Send a message to a specific person</li>
    <li><term>.</term> MESSAGE - Send a message to the same person</li>
    <li><term>say</term> MESSAGE - Send a message to opponent</li>
    <li><term>shout</term> MESSAGE - Shout message to everyone</li>
    <li><term>flag</term>   Call time if your opponent has run out of time, and autoflag is disabled</li>
    <li><term>=channel</term>   Show channels player is listening to</li>
    <li><term>+channel</term> NUMBER - Listen to channel NUMBER</li>
    <li><term>-channel</term> NUMBER - Stop listening to channel</li>
    <li><term>news</term>   Show FICS news</li>
    <li><term>observe</term> ID - Load a game into the main board in examine mode</li>
    <li><term>smoves</term> ID - Load moves from a previously played game into Scid</li>
    <li><term>=notify</term> - Display the player names of whom you are automatically notified.</li>
    <li><term>+notify</term> PLAYER - Add player to your notify list</li>
    <li><term>-notify</term> PLAYER - Remove player to your notify list</li>
    <li><term>examine</term> GAME/PLAYER - Load a game into the main board in examine mode</li>
    <li><term>play</term> GAMENUMBER - Respond to a game request from another player</li>
    <li><term>match</term> PLAYER [rated|unrated] [TIME] [INC] - Issue game request to a specific person</li>
    <li><term>seek</term>   Seek a new game</li>
    <li><term>moretime</term> NUMBER - Give you opponent NUMBER more seconds</li>
    <li><term>help</term> TOPIC - Get help about some topic</li>
</ul>


<h3>Variables</h3>
<p><i>To change settings use <term>set</term> VARIABLE VALUE. Often VALUE is a boolean 1 or 0.</i></p>

<ul>
<li><term>silence</term>	Turn off shouts, cshouts and channel tells while you play, examine or observe a game</li>
<li><term>gin</term>	Notify when games begin or end</li>
<li><term>autoflag</term>	Automatically flag opponent as losing when his time runs out</li>
<li><term>noescape</term>	If noescape is set and opponent disconnects, he forfeits game immediately</li>
<li><term>availinfo</term>	Show all available information</li>

<li><term>1</term>	Footnote 1 to player's personal information</li>
<li><term>2</term>	Footnote 2 to player's personal information ....</li>
</ul>

<h3>Bots</h3>
<p>
Bots are special FICS accounts that gather statistics, give lectures puzzles and more.
A nice page can be found at
<url http://antiseptic-freechess.blogspot.com.au/2012/04/favorite-fics-bots.html>www.antiseptic-freechess.blogspot.com.au</url>
<ul>
  <li>tell babaschess usageinfo Scid vs. PC (Show Scid vs. PC usage stats)</li>
  <li>tell relay games (List upcoming games)</li>
  <li>tell chlog show shout -t 20 (Show the last 20 minutes of shouts)</li>
  <li>tell Sibylle how do i add time to my opponent(Ask program Sibylle a question)</li>
</ul>
</p>

<h3>Channels</h3>
<p>Popular channels are:</p>
<ul>
<li><term>1</term>	Server Help and Assistance</li>
<li><term>2</term>	General discussions about FICS</li>
<li><term>4</term>	Guests</li>
<li><term>49</term>	Mamer tournament channel</li>
<li><term>50</term>	The Chat channel</li>
</ul>
</p>

<h3>Aliases</h3>
<ul>
<li><term>f</term>	finger</li>
<li><term>n</term>	next</li>
<li><term>t</term>	tell</li>
<li><term>o</term>	observe</li>
</ul>


<h3>More Information</h3>

<p>
Visit Freechess.org for info about
<url http://www.freechess.org/Help/HelpFiles/variables.html>Variables</url>
or
<url http://www.freechess.org/Help/HelpFiles/commands.html>Commands</url>
<br>
  <p><footer>Updated: Scid vs. PC 3.4.1, September 2010</footer></p>
}

# Book tuning
set helpTitle(BookTuning) "Book tuning"
set helpText(BookTuning) {<h1>Book Tuning</h1>
   <p><i>
   For general Polyglot Book information, see <a Book>Book Window</a>.</i></p>

   <p>
   Using Scid's <run ::book::tuning><green>Book Tuning</green></run> feature, one
   can adjust the value associated with any move in an opening book.
   To navigate through the branches of the book one can just click on
   the line in the book tuning window or move around the game as usual.
   Adjusting a probability via the spinbox - the other values
   stay the same until being recalculated once <b>Save</b> is
   pressed.
   </p>
   <p><i>
   Only integer values are shown - a zero may signify that this move has a probability of less
   than 1%, and most likely happens with books automatically generated
   from game collections. One should also note that all values should add up to 100%.
   </p>
<h3>Adding Lines</h3>
   <p>
   Scid vs. PC includes <b>Add Line</b> and <b>Remove Line</b> features. The first will add
   all moves (or all White or Black moves) <b>to</b> the current position, the latter removes
   all moves <b>from</b> then current move till the game/var end. </p>
   <p><i>
   Unlike adding and removing single moves , these line features ARE automatically saved
   to the book. And - due to implementation - they are not terribly optimal and may
   be slow with large books/move sequences</i>.</p>
<h3>Importing Books</h3>
   <p>
   The <b>Import</b> button imports a branch of the book, from
   the current position onwards, <b>into a single game</b>.
   (The continuation with the highest probability will make up the first variation
   , or main-line if adding on to the end of a game/variation).
   This allows to cherry-pick selected lines, and create a new book (exported from the PGN using the full version of <a Book Polyglot>polyglot</a>).
   </p><p>
   Scid's default limit for importing books is 3000 moves.
   This value is assigned by ::book::exportMax , and can be altered from the <a Console>console</a>
   if desired (eg 'set ::book::exportMax 10000'), but doing so requires caution as higher limits
   are not properly tested (todo) and PGN limits may also apply.
   Books can consist of tens or hundreds of thousands of positions.
   </p><p>
   Moreover - in general it is not possible to import a whole book into a single game.
   Polyglot books are simply chess positions (and probabilities), with no requirement
   for them to be continuous or inclusive.
   Consider a book with entries for both White King and Queen-side castling. There is obviously no
   way to import both these positions into a single game. Additionaly - the number of book positions
   from any one position is not easy to discern (todo), though the total number of entries
   is it's size in bytes divided by 16.
  </p>
  <p><footer>Updated: Scid vs. PC 4.21 January, 2020 </footer></p>
}

set helpTitle(Novag) "Novag Citrine"
set helpText(Novag) {<h1>Novag Citrine Chess Board</h1>
   <p>
   The Novag Citrine is a wooden chess board that can connect to computers
   using a serial connection. It can be used with Scid
   to enter games,  or to play against a computer opponent or on FICS;
   offering a "natural" chess interface.
   </p>
   <p>
   Before the board can be used, one has to configure it's connection via
  <a HardwareConfig>External Hardware configuration</a>
   Once the proper port is set, choose
   <green><run ::novag::connect>Tools-<gt>Connect Hardware-<gt>Novag</run></green>.
   to hook up the board.
   </p>
    <p><footer>Updated: Scid vs. PC 4.18</footer></p>
}

set helpTitle(HardwareConfig) "Connecting External Hardware"
set helpText(HardwareConfig) {<h1>Connecting External Hardware</h1>
<p>
  Scid supports two types of external hardware, configured in
  <green><run ::ExtHardware::config>Tools-<gt>Connect Hardware-<gt>Configure</run></green>.
</p>

  <ul>

    <li><b>Novag Citrine</b> (<a Novag>and compatible boards</a>) use an
    internal driver that was developed specifically for the Novag
    Citrine board, but may also support other boards.
    This driver allows to enter moves but the boards
    logic does not recognise the position set-up, nor the
    pieces as such.
    </li>
    <li><b>Input Engine</b> Drivers are meant to be a free,
    open interface to hook up any hardware to Chess GUIs. They
    are modeled after the usual style of a chess engine. The
    specifications of the protocol can be found at the <url
    http://dgtdrv.sourceforge.net>Dgtdrv Website</url>, while Ozkan has patched an <url https://sourceforge.net/projects/scidvspc/files/support files/dgtdrv2_oz.zip/download>updated version</url> of the <b>serial driver</b> suitable for the <b>DGT Electronic Chessboard</b>.
    Depending on the hardware the board may know the position set-up and the
    pieces by their move (eg DGT boards).
  </li>
  <li><b>Other UCB Boards</b>
  Note - Scid does not include any input engine by default. Input engines are
meant to be independent programs that can be used with a variety of GUIs.
 There is a great modern effort to provide an easy way to access many hardware devices
at <url https://goneill.co.nz/chess.php>Graham's Chess page</url>, where he has drivers for <b>Millennium Chesslink, Certabo and Novag</b> UCB boards, as well as great documentation (at the bottom of the page) for a relatively easy way to implement in Scid (or any chess GUI).
  </li>
  </ul>

  <h3>Settings</h3>
  <p>
  The name of the Port depends on the Operating System and hardware.
  Usually external hardware is hooked up by a Serial, USB or BlueTooth connection.
  Depending on the platform, usual names for the port are:
  </p>
  <ul>
    <li><term>Linux</term> :
    For Serial ports, common names are <b>/dev/ttyS0</b>, <b>/dev/ttyS1</b> (etc).
    The nominal USB device names are <b>/dev/ttyUSB0</b> , <b>/dev/ttyUSB1</b> (etc).
    Less common names include <b>/dev/usb/tts/*</b> or <b>/dev/usbdev*</b>
    (where the asterisk * stands for some
    additional name). BlueTooth devices commonly show up as <b>/dev/rfcomm0</b>.
    </li>
    <li><term>MacOS</term>:
    Todo
    </li>
    <li><term>MS Windows</term> follows the usual DOS convention, where
    the serial ports are labeled <term>COM1:</term>,
    <term>COM2:</term> etc. This naming also applies to
    converters, however they sometimes get numbers beyond 4.
    </li>
  </ul>
  <p>The <term>Show button</term> checkbox enables as
  <a HardwareStatus>Hardware Connect Button</a> in the Toolbar.
  </p>

  <h3>Input Engine/DGT</h3>

  <p>
  Configuring an Input Engine compatible driver requires additional fields.
  </p>
  <ul>
     <li><term>Engine command</term>: The name of the program
     used as a driver engine. For example, the DGT driver engine on
     Linux is usually called <term>dgtdrv2.i686</term>.  though a fully
     qualified name may be required.
     </li>
     <li><term>Engine parameter</term>: This field
     is passed as parameters to the driver engine. The values
     required depend on the driver, and should be given in its
     documentation. The <b>DGT</b> driver engine needs a two letter
     code specifying the board orientation and the moves that should
     be sent to the GUI. The first letter may be <term>l</term> or
     <term>r</term> depending on the clock sitting to Whites left or
     right, the second letter may be <term>a</term>, <term>b</term> or
     <term>w</term> depending whether all, only black or only whites
     moves should be sent.)
     </li>
  </ul>
  <p>
  Hitting <b>OK</b> will store the setup in Scid's configuration
  and immediately start the driver selected.
  </p>
  <p>
  The status of the external board can be monitored by the <a
  HardwareStatus>Hardware Status</a> button. This button can also be
  used to hook up already configured hardware immediately without
  calling the configuration dialog.
  </p>


  <p><footer>(Updated: Scid vs PC 4.18)</footer></p>
}

set helpTitle(HardwareStatus) "Status of External Hardware"
set helpText(HardwareStatus) {<h1>Status of External Hardware</h1>
   <p>
   This button is located on the right of Scid's toolbar. Depending on
   the status of the external hardware it shows different icons:
   </p>
   <ul>
   <li><button tb_eng_disconnected>
   This is the normal state after program startup and shows that no
   external hardware is active at the moment. Pressing the button will
   hook up the configured hardware.
   </li>
   <li><button tb_eng_connecting>
   Scid started the communication with the external hardware,
   initialisation is in progress. Depending on the driver and hardware
   connected, it may take some seconds for things to settle.
   </li>
   <li><button tb_eng_error>
   While communicating withe the external hardware some error
   occurred. Usual sources of problems are e.g. another program
   accessing the external hardware, the hardware is not connected to
   the PC or simply is not switched on. In rare cases an external
   hardware may also behave unexpected. Trying to connect again might
   cure the problem as the hardware is usually reset upon disconnect.
   Also unplugging and/or switching off the device is an option in
   this case. Pressing the button will try again to hook up the
   configured hardware.
   </li>
   <li><button tb_eng_ok>
   The communication is established, the device is ready and can be
   used for move input. Pressing the button will disconnect the
   external hardware.
   </li>
   <li><button tb_eng_dgt>
   In case a DGT Electronic Chess board is connected and ready, this
   button shows up. Pressing the button will disconnect the
   external hardware.
   </li>
   <li><button tb_eng_query>
   The <a HardwareConfig</a> dialogue is open. Finish configuration
   before hooking up the hardware.
   </li>
   </ul>

  <p><footer>(Updated: Scid 3.6.27, October 2008)</footer></p>
}

set helpTitle(InputEngine) "DGT / Input Engine console"
set helpText(InputEngine) {<h1>DGT / Input Engine console</h1>
   <p>
   On top of the Input Engine window, a console monitors the
   communication between Scid and the driver engine. Usually, this is
   of no interest to the user, but it may provide helpful hints in
   case of malfunction. All commands sent by Scid are prepended by an
   arrow to the right, all answers retrieved from the driver engine by
   an arrow to the left.  Below the console, the actual invocation of
   the driver by Scid shows up for information.
   </p>
   <p>
   <term>Moves sent for</term> allows to limit the moves sent by the
   external hardware. For game input the board should of course send
   the moves for both sides. For actually playing a game however, the
   moves made by the opponent should be ignored, as Scid would
   otherwise notify them as "illegal moves".
   </p>
   <p>
   The small board on the right shows the current position.
   </p>
   <p>
   If a move is made, in the area between the buttons and the small
   board the move performed (<term>move area</term>) on the external
   board is shown in figurine long algebraic notation. Valid moves
   show up on a green background while illegal moves
   show up on a red background. Additionally, illegal moves
   are announced by the alert sound, if Scid has sound enabled.
   Depending on the settings, the moves are additionally announced.
   </p>
   <p>
   The <term>Info</term> button calls up information from the driver
   engine. The extend of this information depends on the engine, but
   it should usually give as much as is available about the external
   hardware and the driver itself. Additionally, the external driver
   will return the current position on the external board as <term>FEN</term> which
   is then compared to Scid's internal representation. Discrepancies
   show up in the console and issue an alert.
   </p>
   <p>
   In case Scid and the external board got out of sync, the
   <term>Synchronise</term> button can be used. A new game is set up
   and the start position is set to the position on the external
   board.  </p>
   <p>
   The <term>Close</term> button finally disconnects the external
   hardware and closes the console.
   </p>

   <h2>Special Features</h2>
   <p>
   The following features depend on the driver engine and hardware
   that is used. Their description is based on the functions available
   with the <url http://www.dgt-projects.com>DGT Electronic Chess
   Board</url> and specified in the
   <url http://dgtdrv.sourceforge.net>Input Engine Protocol</url>
   description. Some of these functions however rely on the fact that
   the hardware is able to recognise the pieces on the board and their
   current placement.
   </p>

   <h3>Position setup</h3>
   <p>
   The position setup mode is invoked by removing both kings from the
   board. In this mode the <term>move area</term> is colored yellow
   and shows the White king and the string <b>Setup</b>.
   </p>
   <p>
   In setup mode any valid position can be set up on the external
   board, however Scid's internal representation is not updated till
   finished.
   </p>
   <p>
   To end the setup mode both kings are set back to the board. Note,
   that the king of the side to move is set back <b>last</b>, that is
   if white should be on the move first set back the black king, then
   the white king. Now, the <term>move area</term> shows the black
   Queen and the string <b>OK</b>.
   </p>

   <h3>End a game</h3>
   <p>
   In game input or game play one can end the current game by setting
   both kings into the center squares of the board. The result is
   given as follows:
   </p>
   <ul>
      <li><term>1-0</term> (White win): Set both kings to the squares
      e4 and d5 in any order, ie. to the white centre squares.
      The move area is colored in white, showing the white king and
      the result.
      </li>
      <li><term>0-1</term> (Black win): Set both kings to the squares
      e5 and d4 in any order, ie. to the black centre squares.
      The move area is colored in gray, showing the black king and
      the result.
      </li>
      <li><term>1/2-1/2</term> (Draw): Set one king on a white and one
      on a black centre square in any order.
      The move area is colored in black and white, showing the result.
      </li>
   </ul>
   <p>
   In either case the <term>Save / Add game</term> dialogue shows up
   to allow filling in the game tags and to store the game in the
   current database.
   </p>

   <h3>Start a new game</h3>
   <p>
   A new game can be stared by entering setup mode (ie. removing both
   kings) and setting up the start position. To notify, that Scid has
   recognised the call for a new game the <term>move area</term> is
   colored in blue showing the white king and the string
   <term>OK</term>.
   </p>


  <p><footer>(Updated: Scid 3.6.27, October 2008)</footer></p>
}


set helpTitle(Sound) "Sound"
set helpText(Sound) {<h1>Sound</h1>
   <p>
   Scid vs PC has limited sound capabilities, It can speak moves in English,
   or play a tock sound with every move. Alternatively, <a FICS>FICS</a> can
   also play a tock sound to announce your opponents move.
   </p>
   <p>
   The feature relies on a slow and poorly maintained Tcl package, <b>Snack</b>,
   which should be installed by default on Windows and OSX. On Linux this package
   is known as "libsnack" and "tcl-snack". For more info, see below.
   </p>
   <p>
   To see if sound is enabled, examine the <green><run raiseSplashWindow>Startup Window</run></green>.
   The sound options are configured from the
   <run ::utils::sound::OptionsDialog><green>Options--<gt>Sounds</green></run> menu.
   </p>
   <p>
   Sound may be disabled by selecting an invalid folder.
   </p>
   <h2>Linux Snack Issues</h2><p>
   If Scid only plays every second move, you have a buggy
   libsnack, and should compile snack-2.2.10 from
   <url https://sourceforge.net/projects/scidvspc/files/support files/>source</url>.
   </p>
   <ul>
   <li>* It should be installed in the same lib as tcl/tk (generally /usr/lib or /usr/local/lib).</li>
   <li>* If you get a compilation error in file generic/jkFormatMP3.c,
   move the "#include <lt>math.h<gt>" line in this file to above "#define roundf(x)".</li>
   </ul>
   <p><footer>Updated: Scid vs. PC 4.12 December 2013</footer></p>
}

set helpTitle(Changelog) "Scid vs PC Changelog"
set helpText(Changelog) {<h1>Changelog</h1>

<h4>4.22 (June 10, 2021)</h4>
<ul>
<li>Show Stockfish Win/Draw/Loss (as White/Draw/Black) infos in information window</li>
<li>Add an 'Extra Tags' field to the header search (eg 'Annotator')</li>
<li>Revamp colours and size of the Comment Editor</li>
<li>New 'Highlight' colour option (affects crosstable, reports, pgn moves and name-editor)</li>
<li>Animate the Rook in Castling. (author Uwe - Nice)</li>
<li>Engine analysis: option to wrap long lines</li>
<li>Engine annotation: option to disable adding an end-of-game variation</li>
<li>Playing an opening against an UCI engine - openings can be imported from the ECO Window</li>
<li>Improve the tree training feature by automatically enabling Trial mode</li>
<li>Minor tweaks to the spacing in long comments in the PGN and Gameinfo windows.</li>
<li>Export Games: add option to disable inserting newlines every 80 chars or so</li>
<li>Serious game: When using book, leave a comment when book is exited / exhausted</li>
<li>Add an undo point at the start of every annotation game</li>
<li>Add a Switcher menu item to show/hide the gamelist buttonbar</li>
<li>Update Player Data (spelling) file<li>
</ul>
<ul>
<li>Help and translation updates</li>
<li>Book tuning tweaks</li>
<li>Graph window tweaks</li>
<li>ECO window tweaks</li>
</ul><br>

<b>Bug Fixes</b>
<ul>
<li>The Gamelist 'next moves' feature didn't work for transpositions at differing depths</li>
<li>Remember arrow lengths/widths</li>
<li>Batch stripping comments/vars could sometimes break the namebase</li>
<li>Fix / enable hiding of 'Colored Squares and Arrows' on the main board</li>
<li>Windows drag and drop typo/fix from Oz</li>
</ul>


<h4>4.21 (Jan 7, 2020)</h4>
<ul>
<li>Gamelist (and Best Games) can now show 'Next Moves' instead of just the 'Opening Moves' if the tree is open and adjusting filter</li>
<li>Text foreground colour option for listboxes and text windows. (and remove the 'global' colour option which is too rough)</li>
<li>Fics: allow moves made by examiners to be seen by other examiners/observers, and fix longstanding init fail</li>
<li>Mac: 64 bit macOS port. Poor performance but mostly working</li>
</ul><br>

<b>Engines</b>
<ul>
<li>Allow multiple engine logs at once, which can be nicely updated in real-time (and bind 'space' to engine stop/start)</li>
<li>Small engine boards now have an alternative display mode: Arrow shows best move</li>
<li>Free up right-click for windows 'copy text'. (Use middle click instead for toggling analysis modes)</li>
<li>Can now always show 'Infos' via an option in the main Engine config widget</li>
<li>Low level support for alternative "GO" modes for UCI engines. (::uci::goCommand)</li>
<li>Give transient engine popup buttons the same bindings as their originals</li>
</ul><br>

<b>EPD Window</b>
<ul>
<li>New annotaion/analyze features (UCI only): Count best moves and (optionally) show/store results.  Allow selecting the engine</li>
<li>New 'find' entrybox searches EPD file for matching text</li>
<li>Basic EPD/FEN export feature</li>
<li>Menu rearranges, including enabling more translations, and changing menubuttons to standard menu widgets</li>
<li>Paste analysis now removes previous analysis opcodes</li>
<li>Bind space in listbox to start/stop engine</li>
</ul><br>

<b>Minor</b>
<ul>
<li>Tree window - options to hide buttonbar, and always 'Adjust' filter</li>
<li>Display a board in the Player Report (if applicable)</li>
<li>Full German help update from Christian</li>
<li>Improve Gamelist 'see' issues</li>
<li>Brazil-Portuguese language update from Gilberto de Almeida Peres</li>
<li>Opening Books - don't clobber existing game mainline with book import (was 'export'). Unneeded 'update -pgn' was slowing everything down too</li>
<li>Refresh score graph at end of fics game</li>
<li>Pressing End key twice always goes to game end</li>
<li>Show Tux in the comment editor, and update the gifs</li>
<li>Update chess 960 patch</li>
<li>New flip board button</li>
<li>scidt reverse sort feature. Also - don't accept empty sort criteria, and accept 'si4' filenames</li>
<li>Don't ask to 'Save Game' if the game length is zero, and try to stop ECO window clobbering (any) game changes (New 'sc_game info halfmoves' command)</li>
</ul><br>

<b>Bug Fixes</b>
<ul>
<li>PGN - Properly handle all level of var indentation.</li>
<li>Windows: Fix extra text in the Player Info windows</li>
<li>Fix Tree cache getting saved with app close</li>
</ul>

<h4>4.20 (Apr 7, 2019)</h4>
<li>The Score Graph can now display move-times (using "%emt" and "%clk" pgn values)</li>
<li>Option to display a black rectangle for the "selected square" instead of a coloured square (Options-<gt>Moves-<gt>ColorSelected)</li>
<li>Several translation updates including a complete German help file from Christian Opitz</li>
<li>The Setup Board window now has a coordinate axis and a flip button</li>
<li>Computer Tournament - Don't enforce a ten-engine limit, have a new statusbar to show progress and the winner, include Uwe Klimmek's carousel scheduling</li>
<li>EPD rewrite from Bonnie A. - Annotations are now compliant with the EPD specification, Flips the board to side-to-move, other bug fixes</li>
<li>In Game Annotation, don't miss analysing last-move blunders</li>
<li>The ECO finder has a basic "Find Opening by Name" feature</li>
<li>A quick Piece Position Search implemented using CQL</li>
<li>Gameinfo window always shows a rehoned "Material Advantage" value</li>
<li>Board Options window can now display all custom piecesets in a gridded manner, and also highlights the current piece style</li>
<li>FICs - Automatically store move-times, some changes to the button/font, and don't store adminBOT tells.</li>
<li>Tree Mask - Add 'unfold' option to the Mask window, and fix up some allignment/font issues</li>
<li>Update the Spelling file with Uwe's 2018 update</li>
<li>Pressing 'End' key moves to end-of-variation (if in var) instead of end-of-game</li>
<li>Minor Book Window fixes - enable undo, remove the arrow buttons (use wheelmouse instead), and properly name and document the 'Other Moves' button</li>
<br>

<li>Analysis Engines: pressing keys 1 to 5 sets PV</li>
<li>Set undo point when marking squares</li>
<li>Remove Suggested Moves feature</li>
<li>Update Gregors tktext patch to current (2018-08-13)</li>
<li>Xboard protocol fixes: setboard should come after analyze, send 'nopost' to xboard engines in comp mode, and acknowledge 'my move' in analysis, as sometimes xboard engines (scidlet) dont send any other infos</li>
<li>Relocate a couple of colour option menus to their proper windows (Crosstable and Score Graph)</li>
<li>In PGN import, handle the case when there are two comments for a single move</li>
</ul><br>

<b>Bug Fixes</b>
<ul>
<li>Fix serious built-in-engine and PGN-import errors</li>
<li>Tree - the greying of the tree moves (if the progressbar is hidden) disabled the tree mask's move colouring</li>
<li>Disable gamelist flag/delete menus if read-only</li>
<li>Mate in N fix and hardening</li>
<li>Ignore Country names if they dont look right in the gamelist and database sort</li>
<li>Disable MS Windows screenshot feature (broken in Tk)</li>
</ul>

<h4>4.19 (March 15, 2018)</h4>
<ul>

<li>New 'Default Databases' feature (Options-<gt>Save Bases as Default)</li>
<li>CQL 5.2 search feature (Search-<gt>CQL). Thanks Lionel and CQL authors</li>
<li>General search can now match any (non-hidden) pre-game or final move Comment</li>
<li>Export Scid Flags feature</li>
<li>Big speed up for bulk Strip Comments/Variations feature. (Also make the 'Stop' button work)</li>
<li>Improvements to loading games at the correct position (resolve a conflict between the tree window and search results), and small Tree speed-up</li>
<li>Remove 'Magnetic' for Paul's chess pieces. New 'Ascii' chess pieces (thanks HGM), and 'Green' colour scheme</li>
<li>New Turkish translation (thanks Ali Sen)</li>
<br>

<li>Right-clicking button bar changes, including right-click Window button shows Splash window</li>
<li>Some tree tweaks and doco updates, and tree Fast+Slow mode now doesn't break the win/lose graph</li>
<li>Tweak progress bar update frequencies (base export, game copy)</li>
<li>OS X has a faster build</li>
<li>New Windows build system from Oz</li>
<li>A new script, 'sc_filter_pgn', which filters multiple PGN files for games matching a certain position</li>
<li>FICS - Offers Graph is disabled while playing a game. Change the censor button a little, and control+censor censors person chatting to you</li>
<li>Escape key in main board cancels piece dragging/move</li>
<li>Input engine fixes (DGT board). Widget now resizes ok, and bitmaps display properly on OS X. Thanks to Davy De Roeck for debugging it on OS X</li>
</ul><br>
<b>Bug Fixes</b>
<ul>
<li>Fixes regarding other language piece letters</li>
<li>Fix up showing the first gamelist/game in searches</li>
<li>Fix up the days of the months in the calender widget</li>
<li>Fix up window placement on multi display desktops</li>
<li>Best games 'Reset Column titles' was broke</li>
<li>sc_game startPos segfaults if !HasNonStandardStart</li>
</ul>

<h4>4.18 (July 1, 2017)</h4>
<ul>
<li>New Best Games widget, similar to the Gamelist</li>
<li>Score Graph now highlights the current move</li>
<li>New annotation feature: Show missed/shorter mates</li>
<li>A little new Gamelist button to reveal hidden/squeezed buttons (finally!)</li>
<li>The GameInfo Window has a right-click menu, and other minor menu changes</li>
<li>Basic support for horizontal scrolling (in gamelist, crosstable and bestgames) for mousewheel buttons with horizontal capability.</li>
<li>Finnish translation, from Mika Kaakinen</li>
<br>
<li>Engines: if an engine shows a Mating line, show the whole line in Analysis Window, disregarding Max-Ply variable</li>
<li>Don't show an error message when importing null PGN tags... too verbose</li>
<li>Fics: try to handle case when move is made after run out of time. (We don't want to mark the game as out of sync)</li>
<li>Minor Translation, Mask and Fics tweaks</li>
<li>Hide Board resize buttons in docked mode if auto-resize is enabled</li>
<li>Revert Control-b binding to Book window</li>
<li>Focus the text box of Comment Editor when raised</li>
<li>Show a busy cursor when backing-up databases in the finder</li>
<li>Game Save: also use previous Round with the 'Use Previous' button/feature</li>
<li>Running Engine 1 in the statusbar needs special handling if using docking, as it cannot be withdrawn properly and was confusing before</li>
<li>Show correct position in the pgn window after adding a new var/move</li>
<li>Show PGN scrollbar by default</li>
</ul><br>
<b>Bug Fixes</b>
<ul>
<li>Redock Windows after they have been undocked then destroyed. Before, such windows were remade undocked, and *without* menus</li>
<li>Keep comments when truncating game from start</li>
<li>Fix broken 'Copy' button in Engine's config window</li>
<li>Promoting variations didn't handle precomments</li>
</ul>

<h4>4.17 (October 25, 2016)</h4>
<ul>
<li>Analysis/Engine window</li>
<li>  * Show checkmate/stalemate messages instead of sending 'no-move positions' to engine</li>
<li>  * In engine configuration window the 'Date' field of an engine is now its exe modification time (mtime)</li>
<li>  * Speed enhancements for processing UCI engine moves (pv)</li>
<li>Gregor's improvements to the player and tournament finders (which Shane never implemented properly)</li>
<li>  * Previously - only the *first* 50 tournaments were used (eg) when looking for the 50 tournaments with most players</li>
<li>  * Compilers must now support c++0x / c++11</li>
<br>
<li>Custom player photos (Place correctly named gifs in $HOME/.scidvspc/photos or bin/photos)</li>
<li>Resign button for playing UCI engines and Phalanx, analog clocks can now be hidden ('x' button in the white clock), and add the 'Skill Level' to the pgn header (eg - as used by Stockfish)</li>
<li>A patch to include Gregor's tk::text improvements</li>
<li>New Chess 960 patch! Thanks to Britton Farrar, who now has a project at https://github.com/brittonf/scid-vs-variants</li>
<li>New 'Under Promotion' search item in General Search</li>
<br>
<li>Computer Tournament: when 'First engine plays others', flip board to show games from first engine's view</li>
<li>Flip game browser if matches myPlayerNames</li>
<li>Clipbase game limit is now 5,000,000, and game undo buffer is 20</li>
<li>Chess Pieces: remove 12 piece-set limit, and adventurer and kingdom pieces. Reinstate old Merida1 as Merida3</li>
<li>Row colour is now configurable for Player/Tourney/DB finders and Crosstable rows</li>
<li>Fics</li>
<li>  * Offers graph is updated in a better manner</li>
<li>  * Save game and add message disconnected while playing</li>
<li>  * Top three buttons are now configurable</li>
<li>  * Add a 'follow+' command, which automatically saves followed games</li>
<li>Tweak Find Best Move feature, which now also recognizes non-standard starts</li>
<li>Game Save dialog: extend use of 'Use prev tags' to 'Use previous' (for Names, Site, Event, Elo, dates)</li>
<li>Switcher - replace readonly foreground color with a '(readonly)' message, and add a 'Confirm Copy' option menu</li>
<li>Disable tree updates while annotating games and computer tournament</li>
<li>Tree: Instead of having a 'stop' button, grey the tree text when updating (if progressBar is hidden)</li>
<li>Change a few shortcuts. control-b board colours. control-B setup board. control-G general search</li>
<li>Control-TrialMode button, automatically adds a null move, and tweak the trial mode button pic</li>
<li>Gregors namebase hardening</li>
<li>PGN Import now converts any empty Name/Event/Site/Round tags to '?' (according to pgn standard, these should not be empty)</li>
<li>Minor fixes for Setup Board</li>
<li>Allow Merging Games with non standard starts</li>
<li>Bind pressing 'vv' keys to enter first variation</li>
<li>Remove Crafty specific command 'mn', and it seems unsupported in Crafty 25</li>
<li>In the tree window, when deselecting "Adjust Games", we now keep the current gamelist/filter</li>
<li>Make hideNextMove non-persistent</li>
<li>Right clicking 'Exit Var' button will exit all vars</li>
<br>
<br>
<b>Bug fixes</b>
<li>Fix a nasty memory leak (in PgnParser)</li>
<li>Fix name counts when using globbing in the name editor</li>
<li>Fix Mate-in-N (Tactics) bug</li>
<li>Some  charsetconverter (internationalisation) fixes from Gregor</li>
<li>Removed xdg-open for opening URLs which just doesnt work for me</li>
<li>Tree info button (short display) was broke</li>
<li>Bugfixes for compiling on some linux platforms (including Raspberry Pi 2)</li>
<li>Some clock fixes. Digital clock was busted (counting up). CompTournament clocks are now digital only</li>
<li>Stop tacgame/phalanx from failing to restart</li>
</ul>

<h4>4.16 (January 24, 2016)</h4>
<ul>
<li>New Checkmate/Stalemate general search option</li>
<li>Make fics premove work properly, and with promotion</li>
<li>New Switcher menus to Open Tree/Best Games/Change Icon, and negate any open base filter</li>
<li>The Best Games window can now be unsorted (on ELO)</li>
<li>Tree window has a short-display option (default is on)</li>
<li>New Merida1 piece set with large sizes (from Richard)</li>
<li>Change the colours of the switcher current-base, and of book/book-tuning/tree next-moves</li>
<li>Update all Latex export features from Chess12 to the modern Skak (author Richard Ashwell) and add Latex previews for game exports (linux only)</li>
<li>Some Opening-Report and Player-Report fixes, and fix the Opening-Table options window</li>
<li>Show the custom flag names in the statusbar</li>
<li>Player Info: Add an extra 'Filter Games' hyperlink</li>
<li>Tournament finder: Change behaviour re showing tournament crosstable</li>
<li>Portugese update from G. Silva. Spanish update from Benigno</li>
<li>Add 50 move draw detection to Phalanx and UCI computer games</li>
<li>And new fics 'smoves+' command stores move-time (%emt fields)</li>
<br>
<br>
<b>Bug fixes</b>
<li>Export PGN bugfix introduced in 4.15</li>
<li>Properly handle OpenRecentAsTree, if base is already opened</li>
<li>'Round' wasn't getting shown in the gameinfo if Date was unset</li>
<li>Annotation: try to handle zero move games</li>
<li>Work aroud for occasional Tcl issue which affects piece dragging</li>
<li>Game Save dialog didn't have translations</li>
<li>Remove a heap of compiler warnings</li>
<li>Tournament finder was showing incorrect number of games</li>
</ul>

<h4>4.15 (November 20, 2015)</h4>
<br>
<b>Engines</b>
<ul>
<li>Limit engine ply option</li>
<li>Bind Control+Enter to add whole line</li>
<li>Tweak variation creation to avoid occasional var staggering</li>
<li>Show 'Ponder' as a UCI configuration option (now that engines may play with Ponder on)</li>
<li>For the addmove button '+'. If move exists, just move::Forward</li>
</ul><br>

<b>Annotation</b>
<ul>
<li>Options for the score format (which allows them to be hidden in the PGN window)</li>
<li>When finished annotating game, move to last move (instead of sometime staying at second last move)</li>
<li>Dont show out-of-book messages for non-standard starts</li>
<li>Use-book feature didn't work under certain condition</li>
</ul><br>

<b>Gamelist Window</b>
<ul>
<li>Columns can now be reordered, hidden, or right/left alligned (right-click column titles)</li>
<li>Replace the Flag button with context menus</li>
<li>Left/right keys scroll the gamelist view</li>
<li>'Merge Game' menu item (patch only)</li>
</ul><br>

<b>Tree</b>
<ul>
<li>When deselecting 'Adjust Filter', make the current adjusted filter remain</li>
<li>Fix up a few tree translations/text formatting issues</li>
<li>Option to show/hide the progress bar. (On OS X, the progressbar makes searches much slower)</li>
<li>Fix unusual coredump closing unused tree</li>
</ul><br>

<b>Spelling</b>
<ul>
<li>Make Spellcheck interuptible, and remove limit of 2000</li>
<li>Update spelling file against Franz' June 2015 release</li>
<li>Skip spelling date check if game has no date</li>
<li>Tweak AddEloRatings feature to work properly with FIDE rating data newer than 2012</li>
<li>Don't ask confirmation of spellchecking clipbase</li>
</ul><br>

<b>UTF-8 support</b> (from Gregor)
<ul>
<li>Databases can now be exported to PGN using either UTF-8 or Latin-1 character sets</li>
<li>Detect correct charset of imported pgn and convert all to utf 'Avoiding a mix of character sets inside a database.'</li>
<li>Support for ChessBase proprietary character set in PGN header</li>
</ul><br>

<b>FICS</b>
<ul>
<li>Add flip-board buttons to the mini observed games</li>
<li>Add a 10 minute line to offers graph</li>
<li>Hack to destroy the results messageBox if we are being 'rematched' or challenged</li>
<li>Unhide fics boards when a new observed game is announced</li>
<li>New takeback code (better, but needs more work)</li>
<li>Add a 'Time' tag</li>
</ul><br>

<b>Computer Tournament</b>
<ul>
<li>Remember selected engines when changing number of engines</li>
<li>Use new is-check routine for stalemate detection (sc_pos analyze could cause core dumps)</li>
<li>Change the tournament per-game time controls from min/secs to secs/secs (base/incr)</li>
<li>Don't add time increment for in-book moves</li>
</ul><br>

<b>Translations</b>
<ul>
<li>Update for French from Dale Cannon</li>
<li>Minor Portugese update from martinus</li>
</ul><br>

<b>Player Info</b>
<ul>
<li>Player Info history feature (right click window)</li>
<li>Add 'Total' separators to the playerinfo stats</li>
<li>Filtering opponent games wasn't working if tree open</li>
</ul><br>

<b>Bug Fixes</b>
<ul>
<li>MS Windows - preempt/fix possible db compaction failure due to inherited engine file descriptors remaining open</li>
<li>OS X Board Options colour buttons were not coloured</li>
<li>OS X and maybe win32 - game import wasn't automatically pasting the text copy buffer</li>
<li>The pgn middle-button board popup could rarely be placed off-screen</li>
<li>Fix occasional (but annoying) bug regarding game truncation and variations</li>
<li>Creating a new database - board wasn't getting refreshed</li>
<li>Browsing a game - autoplay didn't stop straight away when requested</li>
<li>Some EPD fixes. Notably - auto save position</li>
</ul><br>

<b>Also</b>
<ul>
<li>Minor Compact database fixes; create a new game when compacting db (instead of leaving the current game as game 0, which is confusing), and ask for SaveGameChanges before compacting</li>
<li>Autoplaying multiple games - pause at each game end</li>
<li>Database switcher uses font_Tiny, so handle/resize this font a little better</li>
<li>Usual Help updates, including add a help button for the NAG window and Correspondence Chess / Xfcc / email help update</li>
<li>OS X hack to activate shortcuts keys when wm gives app focus</li>
<li>Setup board should always start with the current position</li>
<li>Try to make all base filenames absolute, hoping to fix duplicate file history entries and db opens</li>
<li>Add a string length validation procedure, and use it to limit Custom Flag entry boxes to 8 chars</li>
<li>Dont reload last/first game if already active</li>
<li>Gregor's qsort implementation for player finder sorting (sc_name plist)</li>
<li>Bump player/tourney finder defaults</li>
<li>Make tournament finder respect EventDate tag</li>
<li>Patch to always load last game (ignoring base autoload)</li>
<li>Bind Control+Wheel to font resize in the player and tournament finders</li>
<li>Merge game: move the merge game comment to the start of variation, and simplify comment</li>
</ul><br>


<h4>4.14 (April 7, 2015)</h4>
<br>
<b>Tree Mask</b>
<ul>
<li>Mask auto-load option</li>
<li>Automatically add move to mask instead of showing silly error message</li>
<li>Holding Control while opening the Mask context menu (marker/nags/color) adds a marker to the whole line (etc)</li>
<li>Make Mask moves easier to see, and tweak menus</li>
</ul>
<br>

<b>Board Setup</b>
<ul>
<li>Enable piece dragging</li>
<li>Flip the setup board if main is flipped</li>
<li>Make 'Clear Setup board' have Kings</li>
</ul>
<br>

<b>Searches</b>
<ul>
<li>Add End-Position-Only option to Material Search</li>
<li>Knight+Bishop sanity check was wrong, and we werent saving Knight+Bishop joint totals in saved searches</li>
<li>Tweak the other-base combobox in Board Search</li>
</ul>
<br>

<b>Fics</b>
<ul>
<li>Double clicking an observed game makes it your primary game (number is shown as bold)</li>
<li>Refine Offer Graph layout (most games are short), and add a close button (previously was only escape key)</li>
<li>New 'Censor' button (+censor opponent)</li>
<li>Add a show/hide buttons feature</li>
<li>Control+Wheelmouse alters Fics console font size</li>
<li>Only save games a few moves long</li>
</ul>
<br>

<b>Computer Tournament</b>
<ul>
<li>Automatically adjudicate in simple cases of insufficient material</li>
<li>Make the window more ergonomic</li>
<li>Fix ponder not working with non-standard starts</li>
</ul>
<br>

<b>Game Information</b>
<ul>
<li>Comments now have their own line, and move some infos to the Statusbar</li>
<li>When Gameinfo is hidden, make the mini Player Names clickable</li>
</ul>
<br>

<b>Book Tuning</b>
<ul>
<li>Add/Remove Line features</li>
<li>Clicking on Book Tuning next move (in yellow) moves forward</li>
<li>Bugfix - truncate the polyglot books when using Remove Move</li>
</ul>
<br>

<b>Score Graph</b>
<ul>
<li>Remove the errant rounding up of +10 to +11 in y-axis, and raise border over graph bars</li>
<li>Add backGround colour to graphs</li>
<li>Middle button pops up the game position for any move</li>
</ul>
<br>

<b>Other</b>
<ul>
<li>New Portuguese translation from R. Silva (martinus at FICS)</li>
<li>Update to Phalanx XXIV. The Tactical Game feature is a proper challenge now</li>
<li>Place Best Games window beside Tree window (in docking mode)</li>
<li>Playerinfo: still show Bio info (if available) when there are no games in database</li>
<li>Automatically add the final move if adding a var at game end with the AddVar button</li>
<li>Minor improvements for html/html+javascript Game Exports</li>
<li>Set filter to deleted games prior to compacting game file</li>
</ul>
<br>

<b>Documentation</b>
<ul>
<li>Document how to alter the Game List fields</li>
<li>Update OS X build notes</li>
<li>Update chess960 patch (no code changes), and document known issues</li>
</ul>
<br>

<b>General Bug-fixes</b>
<ul>
<li>Xboard engine annotation was ignoring 'Use Book'</li>
<li>Correspondence chess tls/encryption bugfix (Alexander)</li>
<li>Properly flip comment editor board (if applicable) and other tweaks</li>
<li>'Find Best Move' feature was broke</li>
<li>When saving game, throw error for badly formed extra tags (instead of silently discarding)</li>
<li>When adding a var to end of game, make sure to auto enter *this* variation, in case of vars already existing</li>
<li>Exit trial mode when changing bases</li>
<li>Gamelist sort confirmation column-name was not translated</li>
<li>Change move overwrite behaviour of eco browser and Opening Table moves</li>
<li>Remove superfluous padding from OS X aqua theme</li>
</ul>

<h4>4.13 (October 25, 2014)</h4>
<ul>
<li>Analysis Engine: exclude move(s) feature. Mouse-hover shows excluded moves (UCI only)</li>
<li>Analysis Engine: button to pop-up unrevealed buttons, and redo a few icons</li>
<li>Maintenance: Bulk strip Comments/Variations</li>
<li>Depth-based Engine Annotation improvements</li>
<li>Tweaked Key Bindings (including FilterReset Control-r and GameSave Control-s)</li>
<li>Improved Background Colour feature</li>
<li>Add 'Find' entry boxes to more windows (including spelling corrections).widget can now use regular expressions</li>
<li>Splash widget console now has a simple command history (up-arrow)</li>
<li>Better Repair Base feature (from Gregor)</li>
<li>Include Gregors fast file opening with the windows 32-bit binary</li>
<li>Bind Control-Wheel to alter fixed font size (in some windows)</li>
<li>New Russian translation (from Sergey Nikolaevich Koyankin) and updated German one (from surrim)</li>
<li>Enforce all tags (eg Event names, etc) to be less than 256 chars</li>
<li>Tweak Scid's Linux installer is to properly allow custom SHAREDIR</li>
<li>Windows drag and drop file open wasn't being init properly</li>
<li>Better handle language translations/encoding</li>
<li>Crosstable: bump max-player limit, tweak menus and bind right-click to menu, fix occasional allignment bug, and dont' automatically update (fixing busy cursor bug)</li>
<li>Bump Opening Table limits, and minor bug-fixes</li>
<li>New (Skak) Latex export-games feature (author Mark Dennehy)</li>
<li>Update Xfcc to handle secure connections (thanks to Andrew Hunt)</li>
<li>Fix minor memory leaks, and dont slow game file compaction (we now reset filter)</li>
<li>Bestgames has a game load menu instead of 3 buttons</li>
<li>Refine docked window drag and drop</li>
<li>Many minor OS X tweaks</li>
<li>Trim whitespace from name fields in game save dialog</li>
<li>Add whitespace corrections to spelling.ssp, and also tweak Event spelling corrections</li>
<li>Tooltips for the obscure buttons in main buttonbar</li>
<li>Analysis add move as 'New Mainline' was broke</li>
<li>Always get confirmation for sorting via gamelist</li>
<li>Enforce illegalilty of saving Event Date without Game Date</li>
<li>Phalanx updates and minor tacgame, sergame fixes</li>
<li>Make a few windows have small font buttons</li>
<li>Shift+Wheel(/ left-right wheel) scrolls a few widgets horizontally</li>
<li>Break up the long Book Tuning button menus</li>
<li>Many minor bugfixes and further tree-only filter fixes</li>
</ul>

<h4>4.12 (March 25, 2014)</h4>
<ul>
<li>Gamelist/Filter fixes. Filter works better with Tree</li>
<li>New Crosstable tie-break options and reorder Crosstable menus</li>
<li>Game-result is now shown alongside Player names, at top of GameInfo window</li>
<li>Middle button in main board toggles game info</li>
<li>Databases open faster (Linux/OS X only - "avoid the time consuming file locking". Windows is in testing)</li>
<li>Allow dragging Docked Window tabs to alter their order</li>
</ul>
<br>
<b>Gamelist button/menu</b>
<ul>
<li>Flag button is now context menu, Gamelist Save is moved to tools-<gt>export</li>
<li>Find button removed (use enter in Find entrybox)</li>
</ul>
<br>
<b>Spelling</b>
<ul>
<li>Update spelling file to a custom version of Franz's Jan-5-2014 spellling.ssp</li>
<li>Spell-checking can now remove GM, IM, FM, CM, WGM prefixes from player names</li>
<li>Doing player-name replacements, show how many fail due to age/date considerations</li>
</ul>
<br>
<b>FICS</b>
<ul>
<li>Add user-configurable init commands</li>
<li>Board size slider is now a menu</li>
<li>Game Offers pack over buttons (making it less crowded, use escape/button-2 to cancel)</li>
<li>New find entrybox to search the console</li>
<li>Remove Clear button (as getting crowded)</li>
<li>Remove the never used big clocks</li>
<li>Add start, end sounds (and minor sound fixes - though still buggy)</li>
<li>Dont save FICS aborted games</li>
<li>Disable engines when playing a FICS game</li>
</ul>
<br>
<b>Analysis and Annotation</b>
<ul>
<li>Make 'scoreToMate' work better and faster, which stops occasional incorrect Mate-in-N lines showing up, and works better at near-mate positions</li>
<li>Make the Annotation config window fit on small displays</li>
<li>Stop engine at end of annotating a single game</li>
<li>Try a new approach to Depth-based annotation, which works better, but still needs fine-tuning</li>
</ul>
<ul>
<li>Spanish translation update from Igor Sosa Mayor</li>
<li>Polish translation update from Adam Umiastowski</li>
<li>Add a find entrybox to the splash window</li>
<li>Strip PGN Tags improvements</li>
<li>Right-clicking toolbar Game-Save icon quick saves game</li>
<li>Sound devices can now be selected; mainly useful for Linux systems</li>
<li>Dont insert newlines into PGN copied to text buffer... Some web PGN browsers don't work with newlines following movenum. eg "10. Nxc3"</li>
<li>Save game history when Scid quits</li>
<li>Remove tree status bar. Same info avail in switcher and tree text widget</li>
<li>Booktuning nextmove is now highlighted (same as Book), and padding has been tweaked a bit</li>
<li>Move Maintenance menu from File to Tools menu</li>
<li>Remove the annoying " from myPlayerNames</li>
</ul>
<br>
<b>Bugfixes</b>
<ul>
<li>When saving PGN to file, disable translating pieces. (Export to PGN was already this way)</li>
<li>FICS Digital clocks didnt appear under some circumstances</li>
<li>Undo/redo refinement/fix for when buffer has been full</li>
<li>Fix import issue - Sometimes first tag is lost (If UTF byte order mark is present)</li>
<li>MSWindows - Board keyboard bindings are were getting lost after Variation window popup is dismissed</li>
<li>Some tooltip refinements, including removing tooltips with board update (mask tooltips were erroneously persistent)</li>
<li>Tablebase window: Results Board was not getting packed (is now below Results Frame). Change the damn awful red, update help, give tbWin the widest paned window</li>
<li>With wish8.6, we cant close undocked windows with a Close button. Fix</li>
<li>Some fixes for javascript and html game exports</li>
<li>Correctly handle plain text crosstables</li>
</ul>

<h4>4.11 (December 1, 2013)</h4>
<ul>
<li> Maximum board size is now twice as big</li>
<li> Gamelist context menu (right-click). Less button crowding</li>
<li> Annotation improvements: Depth based annotation, and cut-off features</li>
<li> Dock a few extra windows (graphs, tablebase)</li>
<li> Computer tournament stability/speed fix</li>
<li> Locked Analysis Engines now show the locked position (not the working line)</li>
, and bug-fix the engine lock, which didnt work properly</li>
<li> Add a low CPU priority check box to Engine Configuration window</li>
(especially important for MS Windows - where engines can kill GUI)</li>
<li> Engine configuration window now repsonds to keystrokes to quickly find any engine</li>
<li> Display "(altered)" in statusbar is game has been changed</li>
<li> Fullscreen menu item (Options-<gt>Windows-<gt>Fullscreen)</li>
<li> FICS tweaks, including over-riding takeback/abort request dialogs when game ends</li>
<li> Remove some wasted space around FICS, main button bar, and other widgets</li>
<li> New Greek translation</li>
<li> Read custom chess pieces from ~/.scidvspc/pieces</li>
<li> Docked tabs/menu refinements</li>
<li> OS X - Clicking on URLs will open the link in a browser</li>
<li> Add a command console to the start-up window</li>
<li> Bug-fix: Fix main board rendering anomoly in docked mode with MS Windows</li>
<li> Bug-fix: When tree is open, gamelist filter operations didn't work properly</li>
<li> Bug-fix: Search in variations never matched positions at end-of-line</li>
<li> Bug-fix: Opening Table favourites werent working properly</li>
<li> In Export PGN dialog, add an option for "Space after Move Numbers"</li>
<li> Keyboard short-cuts changes. Control-p (etc) no longer open/close, but open/raise</li>
<li> Tweak Comment Editor and Player Info buttons</li>
</ul>

<h4>4.10 (August 25, 2013)</h4>
<ul>
<li>When sorting databases, don't reset filter and remember current game/gamestate</li>
<li>Game history menu</li>
<li>Implement (and bugfix) SCID's more comprehensive NAG framework</li>
<li>Change a couple of field orders in the gamelist, remember field widths, and remove the icon context menus from the switcher (middle click now toggles show/hide the database icons)</li>
<li>FICS: Allow use of alternative URLs (used during FICS outage) and other minor tweaks</li>
<li>Window focus improvements (mainly for MS Windows and OS X)</li>
<li>Computer Tournament: add 'Engine Scores as comments' option, and make some minor global/:: var changes</li>
<li>Add Book Tuning to dockable windows</li>
<li>Automatically flip board (if applicable) in game browser and analysis miniboards</li>
<li>When diffing twin games, ignore newlines in the comments, which make diffing impossible</li>
<li>Add undo points for user generated addNag events</li>
<li>Bookmarks: add a few key bindings (delete/up/down), and shuffle the gamelist bookmark button up one row</li>
<li>Drag and drop hardening</li>
<li>Windows 7 bugfix: PGN export and Progress bars weren't working in undocked mode</li>
<li>Translation framework updates. Overhaul Dutch translation, and remove (broken) Russian one</li>
<li>Convert braces '{', '}' to '(',')' when exporting PGN comments (against PGN standard). Also tweak various PGN help topics</li>
</ul>

<h4>4.9.2 (June 19, 2013)</h4>
<ul>
<li>OS X changes, including docked mode fixes</li>
</ul>

<h4>4.9.1 (May 4, 2013)</h4>
<ul>
<li>Fix promotion bug in non-docked mode</li>
<li>Small pictures allign top/bottom in game info</li>
<li>Clickable crosstable columns</li>
<li>Make an undo point with Setup Board, and disable undo for Trial mode</li>
<li>Add Tournament lookup to Player Info window</li>
<li>PGN import window was not getting mapped</li>
</ul>

<h4>4.9 (April 20, 2013)</h4>
<b>Window Docking</b>
<ul>
<li>Different windows are docked/restored than Scid. Five layout slots with three custom layouts. Bug-fixes. F11 for fullscreen. Tcl 8.6.0 may have issues. Selectable Ttk themes (also for Gamelist)</li>
</ul>
<br>
<b>General</b>
<ul>
<li>Move search feature (eg 'h6 Bxh6')</li>
<li>UCI: replace 'position fen ...' with 'position startpos moves ...' for general analysis</li>
<li>Better Twin Games Checker - highlights missing comments and variations in duplicate games</li>
<li>Windows has a  MSVC makefile (Makefile.vc) and includes Stockfish 2.31 (JA legacy build)</li>
<li>Fix windows stack problem (hopefully)</li>
<li>Text Find widgets in help, crosstable, engine logs</li>
<li>Game Save dialog remembers any custom tags you add to a game, making them easy to recall</li>
<li>Restore drawing arrows and marks from the main board (also used by FICS premove)</li>
<li>Arrow length/widths configurable via comment editor</li>
<li>PGN Figurines now display in bold, and a different font, if applicable (from Gregor)</li>
<li>Some new board textures (from Ed Collins)</li>
<li>Automatically save "bitmaps" directory when exporting to HTML</li>
<li>Player info window shows Photos in a scrollable canvas insead of stuck in top right corner</li>
<li>Delete key deletes moves in game/variation after the current move</li>
<li>Score Graphs are now bargraphs instead of lines</li>
<li>Bind statusbar-<gt>middle button to 'switch base'</li>
<li>FICS context menu, game offers now show more information, and premove</li>
<li>FICS: deiconify/raise window when game starts (nodock mode only)</li>
<li>FICS: stop clock when we make a move (even though we may not have acknowledgemnt from FICS about move)</li>
<li>FICS: 'upload' command for uploading local games to FICS examine mode</li>
<li>Allow the Name editor to glob '*' for Site, Event and Round fields (but not for 'All Games', too dangerous when used by mistake)</li>
<li>The material board can display *all* taken pieces</li>
<li>Gamelist button rows can be hidden by right-clicking the list, and it has a game save icon</li>
<li>Right click V+ button adds the second variation</li>
<li>Windows analysis engines no longer run at low priority</li>
<li>When annotating the score on blunders, show the main score first, var second (eg: +1.00 / +2.50)</li>
<li>Add programmers reference to the help contents/online doc</li>
<li>Bind space-bar to engine start/stop</li>
<li>Update twic2scid.py script</li>
<li>Remember if .board is flipped for each open base</li>
</ul>
<br>
<b>Bug-fixes</b>
<ul>
<li>Make the database switcher icons/frames get smaller if they are cramped (so we can see them all)</li>
<li>Half fix UCI game (sergame.tcl) time issues</li>
<li>Corrospondence Chess now works</li>
<li>Tree Mask bugfix: Checks couldnt be added to mask</li>
<li>Fix Tree 'Fill cache with game/base' feature</li>
<li>Try to handle shortened FENs with Paste FEN</li>
<li>Crosstable: 'Set Filter' now includes deleted games if +deleted</li>
<li>Crosstable: handle games with a year-only date differently for crosstable purposes (Instead of +/-3 months, match any other games in the calender year</li>
<li>FICS: Stop clocks after a takeback request from opponent</li>
<li>FICS: Games with move lengths greater than 1:00:00 would break parse</li>
<li>Add missing FICSLogin translation</li>
<li>New windows Phalanx build. It works better under win7, but has analysis polling issues</li>
<li>OS X: Pad out flag buttons in Header search</li>
<li>base_open_failure was erroneously closing wrong base</li>
<li>Windows Preview HTML for Reports is fixed</li>
</ul>

<h4>4.8 (August 12, 2012)</h4>
<b>General</b>
<ul>
<li>Drag and Drop file open(s) on Windows and Unix</li>
<li>Custom background images (jpegs, gifs and pngs)</li>
<li>Random sort pgn feature</li>
<li>Crosstable now have +/-/= subtotals</li>
<li>(and Player Stats format changed from +/=/- to +/-/=)</li>
<li>General PGN search has ignore case option</li>
<li>Board Search gets it's combobox updated when DBs are opened and closed</li>
<li>Save game before PGN Import</li>
<li>Save game: enable the use of 'prev game tags' for existing games. This allows easy addition of the same tags to consecutive existing games</li>
<li>Remove the 'Scid: ' prefix from several window titles</li>
<li>Update some translations</li>
<li>Show Linux version/distro in the startup window</li>
<li>Add a patch to make toolbar buttons raise only (instead of toggle open/shut)</li>
<li>Add a patch for Chess960 support (from Ben Hague). Unfinished</li>
</ul>

<br>
<b>Analysis</b>
<ul>
<li>UCI: properly handle UCI buttons. Previously they were invoked at every engine restart</li>
<li>Right clicking 'Add Var' button adds Engine Score comment only</li>
<li>Replace ponder on/off with hard/easy for xboard engines</li>
<li>Super quick engine infos can happen before Scid's PV is inited properly. So we have to default to PV = 1</li>
<li>Allow xboard engines to use lowercase 'b' for bishop promotion (eg a7b8b)</li>
<li>Don't send an erroneous 'isready' (with 'uci') to quiet analysis engines</li>
<li>Right clicking the widget allows to disable line wrapping</li>
<li>Don't add a line to analysis history if moves are null</li>
</ul>

<br>
<b>Tree</b>
<ul>
<li>Move ECO stats to the end of line</li>
<li>Several Mask refinements - notably Searches are much more readable and previously clicking on searched lines didn't work</li>
<li>Fix up minor bugs about castling moves (OO, O-O, O-O-O)</li>
</ul>

<br>
<b>Computer Tournament</b>
<ul>
<li>Computer Tournament Book feature</li>
<li>Dont' kill tournament if engine crashes</li>
<li>Only pack the first 10 engine combos (which allows for big tournaments)</li>
<li>Fix up Xboard time/move command order. Xboard engines should behave much better</li>
<li>Various other tweaks</li>
</ul>

<br>
<b>Gamelist</b>
<ul>
<li>Show altered games in red</li>
<li>Control-wheelmouse scrolls up/down one page</li>
<li>Switcher now has text on two lines (if icons are shown)</li>
</ul>

<br>
<b>FICS</b>
<ul>
<li>Digital clocks now (optionally) on the main board</li>
<li>Better integration of FICS "examine" and "observe" features</li>
<li>FICS has it's own options menu</li>
<li>bind F9 to xtell instead of tell</li>
<li>Change the move.wav sound from tick-tock to a short click</li>
</ul>

<br>
<b>OS X</b>
<ul>
<li>Filter graph bugfix</li>
<li>Material Search properly shows the little buttons</li>
<li>Copy and Paste text from disabled OSX text widgets (engines, help, gameinfo)</li>
<li>Buttons 2 and 3 are swapped around</li>
</ul>

<br>
<b>General Bugs</b>
<ul>
<li>Work arounds for wish 8.5.12 and 8.5.8 issues</li>
<li>Analysis logs can badly break autoscroll, so use normal frames and scrollbars</li>
<li>Handle PGN parsing of unspecified promotions (b8 becomes b8=Q , for eg)</li>
</ul>

<h4>4.7 (January 20, 2012)</h4>
<ul>
<li>Tree: Add coloured bar-graphs representing win/draw/loss (and remove the old tree graph)</li>
<li>Tablebases: Make best tablebase moves clickable</li>
<li>Tablebases: tidy up config , main window and help items</li>
<li>FICs: Can now play and watch (observe) multiple games at the same time</li>
<li>FICS: Support loading old/interupted games for analysis (using 'smoves' command)</li>
<li>FICs: Add an Abort button. Other minor fixes</li>
<li>Serious Game  overhaul (though still has minor issues) Add pause, resume features and mate, game drawn dialogs</li>
<li>Computer Tournament: Add  'first engine only' feature for testing a single engine against others</li>
<li>Enable material difference display for game browser and fics observed games</li>
<li>Analysis: View engine logs from within Scid, and can also disable logging</li>
<li>Analysis no longer word wraps, and uses fixed font</li>
<li>Analysis: add a xboard/uci protocol column to the engine list</li>
<li>Include updates to SCID's spellchk.c, improving the ELO add-ratings feature</li>
<li>Update spelling.ssp file to Jan 2012</li>
<li>Player info: clicking FIDE ID opens relevant url</li>
<li>New feature: 'Search-<gt>Filter to Last Move'. All filter games will load at the last move (end of game)</li>
<li>Refine the Calculation of Variation (Stoyko Exercise) feature and Help</li>
<li>Toolbar has a 'book window' icon</li>
<li>Tweak PGN context menu: reorder the Strip/Delete move items</li>
<li>Gamelist: replace the Negate button with a Select button</li>
<li>Tree: Include a patch for embedding the Best Games into the Tree window</li>
<li></li>
<li>Bugfixes</li>
<li>Importing PGN, check that Promotion Moves are long enough (otherwise can segfault)</li>
<li>Document CCRL pgn round name problem, and handle errors better when Name limits hit</li>
<li>FICS: remove non-ascii chars from commands if using timeseal</li>
<li>Gamelist: To display unusual characters, convert to unicode before displaying games</li>
<li>Sync html bitmaps with SCID</li>
<li>Book: Only do the second book move lookup if we have too. (slight performance boost)</li>
<li>EPD: Quick fix for epd analysis annotation bug</li>
<li>Hungarian, Swedish and Potugese Spanish were broken if Piece translation enabled (which was default). Fixed</li>
<li>Fix up Tacgame score-isn't-updated bug</li>
</ul>

<h4>4.6 (November 20, 2011)</h4>
<ul>
<li>Undo and Redo features (partly from SCID)</li>
<li>Microsoft Windows has a proper installer</li>
<li>Always loads games at the correct game ply when using the tree and searches</li>
<li>Ratings graph can show multiple players (and there's a minimum ELO feature)</li>
<li>Computer Tournament: Improvements for both Xboard and UCI engines, and implement the 50 move draw rule</li>
<li>Auto-promote feature for FICS</li>
<li>Book tuning 'Remove move' feature</li>
<li>Autoraise button raises all windows</li>
<li>Annotation improvements, and it is now possible to score All moves while only annotating Blunders</li>
<br>
<li>Biographical data for aliases is shown in the player information window</li>
<li>The player info widget has buttons enabling quick player renames and look-up</li>
<li>'Read-Only' context menu in the Database Switcher, and Read-Only bases are greyed out</li>
<li>Fix bug in the opening/theory table</li>
<li>Remember game position when stripping comments and variations from PGN</li>
<li>Change analysis colors for MultiPV to black/grey instead of blue/black</li>
<li>New 'Search in (other) Database' feature to the board search (from SCID)</li>
<li>Variation/Mainline arrows can have custom colours</li>
<li>Crosstable can (optionally) show 3 points for a win</li>
<li>Fix sc_remote (which allows games to be opened in an already running Scid vs PC)</li>
<li>Phalanx tacgame bug-fixes (play brainy, and stop after the correct amount of time)</li>
<li>Tweak the best games widget (make fields line-up)</li>
<li>When handling Import PGN errors, show the game numbers as well as the line in file</li>
<li>Catch a nasty wish8.5.10 bug with the gamelist (Wish-8.5.10 should be avoided)</li>
<li>Remove the broken integer field validation and replace it with something that allows backspace to work</li>
<li>Bind Control-Tab to 'switch to next base', and Control-(quoteleft) to 'switch to clipbase'</li>
<li>Fix a couple of corner cases concerning dates and searches</li>
<li>Analysis widget : small speed improvements , icon changes and bug-fixes</li>
<li>Add a help item for Maintenance 'Check Games' feature</li>
<li>Swap around the 'Next Move' and 'Event' game-information lines</li>
<li>New documentation about making Polyglot books</li>
<li>Make the player Report config widget a bit easier to use</li>
<li>Catch a nasty wish8.5.10 bug with the gamelist (Wish-8.5.10 should be avoided)</li>
<li>New OSX HowTo</li>
<li>Crosstable bugfix: the 'show white first' feature didn't work for two match rounds</li>
<li>Update 'Tips'</li>
<li>Clarify Scid's maximum number of games</li>
<li>Update Spanish and Polish translations</li>
<li>Update FICS , PGN and Menu  language translations</li>
</ul>
}

set helpTitle(ShortCuts) "Shortcuts"
set helpText(ShortCuts) {<h1>Keyboard Shortcuts</h1>
<p>
Shortcuts are <b>case sensitive</b>, and can be overided by altering standardShortcuts() in Scid.gui (end.tcl).
<br>
The window manager may interfere with some shortcuts.
<br>
<br>
<a ShortCuts alpha>Sorted Alphabetically</a>
</p>

<h4>General</h4>
<ul>
<li><i>Use standard notation to input moves with the keyboard (eg <b>e4</b>)</i></li>
<li></li>
<li><b>left</b> - Back one move</li>
<li><b>right</b> - Forward one move</li>
<li><b>up</b> - Back five moves/exit variation</li>
<li><b>down</b> - Forward five moves</li>
<li><b>home</b> - Goto start</li>
<li><b>end</b> - Goto end/variation end</li>
<li><b>control-g</b> - Goto move number</li>
<li><b>control-f</b> - Flip Board</li>
<li><b>escape</b> - Clear move entry</li>
<li><b>enter</b> - Add move from chess engine</li>
<li><b>space</b> - Start/stop chess engine</li>
<li><b>delete</b> - Delete trailing moves from game or variation</li>
<li><b>control-enter</b> - Add line from chess engine</li>
<li><b>control-delete</b> - Delete current game</li>
<li></li>
<li><b>F1</b> - Help</li>
<li><b>control-shift-F7</b> - Dump all Images as base64 (developer only)</li>
<li><b>control-shift-F8</b> - Dump all Images as jpegs  (developer only)</li>
<li><b>control-shift-F12</b> - Screenshot</li>
<li><b>alt-KEY</b> - Menu shortcut (*nix only)</li>
</ul>

<h4>Scid Windows</h4>
<ul>
<li><b>control-p</b> - PGN window</li>
<li><b>control-l</b> - Gamelist window</li>
<li><b>control-e</b> - Comment editor</li>
<li><b>control-m</b> - Maintenance window</li>
<li><b>control-i</b> - Gameinfo window</li>
<li><b>control-t</b> - Tree window</li>
<li><b>control-X</b> - Crosstable</li>
<li><b>control-b</b> - Book window</li>
<li><b>control-B</b> - Setup board</li>
<li><b>control-Z</b> - Score graph</li>
<li><b>escape</b> - Close window</li>
</ul>

<h4>Engines</h4>
<ul>
<li><b>control-A</b> - Configure analysis engines</li>
<li><b>F2</b> - Toggle engine 1</li>
<li><b>F3</b> - Toggle engine 2</li>
<li><b>F4</b> - Toggle engine 3</li>
<li><b>enter</b> - Add move from chess engine</li>
<li><b>space</b> - Start/stop chess engine</li>
<li><b>control-enter</b> - Add line from chess engine</li>
<li><b>control-space</b> - Toggle trial mode</li>
</ul>

<h4>Copy / Paste</h4>
<ul>
<li><b>control-c</b> - Copy game to Clipbase</li>
<li><b>control-v</b> - Paste game from Clipbase</li>
<li><b>control-C</b> - Copy FEN</li>
<li><b>control-V</b> - Paste FEN</li>
<li><b>control-I</b> - Import PGN</li>
</ul>

<h4>Games and Databases</h4>
<ul>
<li><b>control-s</b> - Save game</li>
<li><b>control-S</b> - Add game</li>
<li></li>
<li><b>control-up</b> - Previous game</li>
<li><b>control-down</b> - Next game</li>
<li><b>control-home</b> - First game</li>
<li><b>control-end</b> - Last game</li>
<li><b>control-N</b> - New game</li>
<li><b>control-u</b> - Load game number</li>
<li><b>control-?</b> - Load random game</li>
<li></li>
<li><b>control-o</b> - Open database</li>
<li><b>control-w</b> - Close database</li>
<li><b>control-/</b> - Finder</li>
<li></li>
<li><b>control-1</b> - Switch to first open base</li>
<li><b>control-2</b> - Switch to second open base</li>
<li>....</li>
<li><b>control-9</b> - Switch to Clipbase</li>
</ul>

<h4>Search / Filter</h4>
<ul>
<li><b>control-G</b> - General (header) search</li>
<li><b>control-M</b> - Material search</li>
<li></li>
<li><b>control-r</b> - Reset filter</li>
<li><b>control-n</b> - Negate Filter</li>
<li></li>
<li><b>control-P</b> - Player finder</li>
<li><b>control-T</b> - Tournament finder</li>
<li><b>control-Z</b> - Score graph</li>
</ul>

<h4>Variations</h4>
<ul>
<li><b>control-a</b> - Add variation</li>
<li><b>v</b> - Enter variation</li>
<li><b>z</b> - Exit variation</li>
</ul>
-------------------------------------------------------------------------

<h2><name alpha>Alphabetical</name></h2>
<ul>

<li><b>control-a</b> - Add variation</li>
<li><b>control-A</b> - Analysis engines</li>
<li><b>control-b</b> - Book window</li>
<li><b>control-B</b> - Setup board</li>
<li><b>control-c</b> - Copy game to Clipbase</li>
<li><b>control-C</b> - Copy FEN</li>
<li><b>control-e</b> - Comment editor</li>
<li><b>control-f</b> - Flip Board</li>
<li><b>control-g</b> - Goto move number</li>
<li><b>control-G</b> - General (header) search</li>
<li><b>control-i</b> - Gameinfo window</li>
<li><b>control-I</b> - Import PGN</li>
<li><b>control-l</b> - Gamelist window</li>
<li><b>control-m</b> - Maintenance window</li>
<li><b>control-M</b> - Material search</li>
<li><b>control-n</b> - Negate Filter</li>
<li><b>control-N</b> - New game</li>
<li><b>control-o</b> - Open database</li>
<li><b>control-p</b> - PGN window</li>
<li><b>control-P</b> - Player finder</li>
<li><b>control-r</b> - Reset Filter</li>
<li><b>control-s</b> - Save game</li>
<li><b>control-S</b> - Add game</li>
<li><b>control-t</b> - Tree window</li>
<li><b>control-T</b> - Tournament finder</li>
<li><b>control-u</b> - Load game number</li>
<li><b>control-v</b> - Paste game from Clipbase</li>
<li><b>control-V</b> - Paste FEN</li>
<li><b>control-w</b> - Close database</li>
<li><b>control-X</b> - Crosstable</li>
<li></li>

<li><b>control-/</b> - Finder</li>
<li><b>control-?</b> - Load random game</li>
<li><b>control-space</b> - Toggle trial mode</li>
<li><b>control-delete</b> - Delete current game</li>
<li><b>control-up</b> - Load previous game</li>
<li><b>control-down</b> - Load next game</li>
<li><b>control-home</b> - Load First game</li>
<li><b>control-end</b> - Load last game</li>
<li></li>

<li><b>control-1</b> - Switch to first open base</li>
<li><b>control-2</b> - Switch to second open base</li>
<li>....</li>
<li><b>control-9</b> - Switch to Clipbase</li>
<li></li>

<li><b>enter</b> - Add move from chess engine</li>
<li><b>space</b> - Start/stop chess engine</li>
<li><b>delete</b> - Delete trailing moves from game or variation</li>
<li><b>v</b> - Enter variation</li>
<li><b>z</b> - Exit variation</li>
<li><b>left</b> - Back one move</li>
<li><b>right</b> - Forward one move</li>
<li><b>up</b> - Back five moves/exit variation</li>
<li><b>down</b> - Forward five moves</li>
<li><b>home</b> - Goto start</li>
<li><b>end</b> - Goto end/variation end</li>
<li></li>

<li><b>F1</b> - Help</li>
<li><b>F2</b> - Toggle engine 1</li>
<li><b>F3</b> - Toggle engine 2</li>
<li><b>F4</b> - Toggle engine 3</li>
<li><b>control-shift-F7</b> - Dump all Images as base64 (developer only)</li>
<li><b>control-shift-F8</b> - Dump all Images as jpegs  (developer only)</li>
<li><b>control-shift-F12</b> - Screenshot</li>

</ul>
<p><footer>Updated: Scid vs. PC 4.9 April 2013</footer></p>
}

set helpTitle(Board) "Board Customisation"
set helpText(Board) {<h1>Board Customisation</h1>
<h3><name Textures>Custom Textures</name></h3>
<p>
   Up to ten custom board textures can be loaded.
   These must be placed in the directory <b>Scid vs PC/bin/textures</b> (windows) or <b>$HOME/.scidvspc/textures</b>,
   and be of the form <b>wood_l.gif</b> / <b>wood_d.gif</b>  or <b>steel_l.png</b> / <b>steel_d.png</b> , for example.
</p>
<h3><name Textures>Custom Pieces</name></h3>
<p>
<i>The Merida1 pieces now have high-quality larger sizes.</i>
</p><p>
Place custom piece sets in the directory <b>$HOME/.scidvspc/pieces</b>, and they will be added to the
Board Options window. These can be found at our
<url https://sourceforge.net/projects/scidvspc/files/support files/chess pieces/>pieces page</url>.
</p>
<p>Some of these include high detail pieces suitable for large displays.
notably Ken's and Paul's, and the FritzSWS pieces at
<url http://gorgonian.weebly.com/scid-vs-pc.html>Gorgonian's Chess Site</url>
</p>
<p>
Paul's also include instructions for making high detail pieces from svg using Inkscape
You can find the older instructions to make Scid pieces in scid_chess_pieces.tgz.
</p>
<p><i>
The keyboard sequence control-shift-F7 (or F8) dumps all Scid images to files, and may be useful for editing existing chess pieces.
Examine the <a Console>Splash Window</a> for the status of loading user textures and pieces.
</i></p>
<p><i>
   Tk 8.5 (used by Windows and OS X) only supports the GIF image format by default,
   but PNG and JPG images (and pieces) are supported by the TkImg package, which we package with ScidvsPC on these two OS.
   On Linux, most systems will be using Tk 8.6 (which has inbuilt image support),
   but it is also possible to compile and install TkImg from the
   <url https://sourceforge.net/projects/scidvspc/files/support files/tkimg1.3.scidvspc.tar.bz2/download>source tarball</url>
</i></p>
<p><footer>Updated: Scid vs. PC 4.21 Jan 2019</footer></p>
}

set helpTitle(Console) "Startup Window / Console"
set helpText(Console) {<h1>Startup Window and Console</h1>
<p>
The <green><run raiseSplashWindow>Splash / Startup Window</run></green> shows various
technical information about the system and program startup. In the bottom right corner is an
entry-box for text searches; just type your text and press return.</p>
<p>
Just above the bottom is another, larger, entry-box. This is Scid vs PC's <b>Console</b> which enables input of Tcl/Tk commands for debugging and advanced use.
For more information about Tcl, try
<url https://www.tutorialspoint.com/tcl-tk/>Tutorials Point's Tcl</url> and
<url https://www.tutorialspoint.com/tcl-tk/tk_overview.htm>Tk</url> tutorials.
</p>
<p><footer>Updated: Scid vs. PC 4.21 July 2019</footer></p>
}
