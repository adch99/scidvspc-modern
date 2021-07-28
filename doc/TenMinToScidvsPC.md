% 10 Minutes to Scid vs PC
% Aditya Chincholi
% 20 July, 2021

# 10 Minutes to Scid vs PC

Scid vs PC is a program that lets you analyse your games, learn theory
from databases, and prepare for your opponents. What we are going to do
now is analyse a game with Scid vs PC.

## Step 1: Start Off with a Game
We need a game to analyse. We can download the PGN file if we played
a game online [(Download PGN from Lichess and chess.com)][1].
Open the PGN file from File > Open. We can also copy-paste the
PGN text into Scid with Edit > Paste PGN > Import. If we played
over the board and have the moves, we go to Game > New Game and
then start playing the moves on the board.

## Step 2: Analyse and Annotate By Hand
Now we can analyse our game manually by moving through the game.
We can move through the game by the arrow buttons above the board.
The normal arrow keys and mouse scrolling also works. Hold Ctrl
and click on two squares to create arrows, hold Shift and click
on a square to highlight the square. To add a
comment on a move, we right-click the move in the PGN window and
select Comment Editor. We can write our comments here and add
manual annotation symbols. Arrows, highlights, labels can all be
added from here as well [(See Comment Editor)][2].

## Step 3: Engine Analysis
An engine is a program that analyses the board position, gives
a score to each move and recommends the best move. Scid vs PC
comes Stockfish 9 by default, but there are many free and open
source engines out there and we can download and add them to
Scid vs PC. We go to Tools > Analysis Engines, select Stockfish
and click Start. Now Stockfish begins to analyse the current
position on the board. It will open in a new tab on the right.
It will output a lot of lines, which are irrelevant for us.
We only want to look at the top lines, so increase the 1 beside
the book icon to 3 or 4. This controls the number of lines.
The topmost line is the best move as per the engine and the
score is taken as the score for the position. Let us take a
particular line:

```
1. 27 [+0.26] 3.Bb5  Nf6  4.O-O  Nxe4
```

| depth |   score   |           moves           |
|-------|-----------|---------------------------|
|  `27` | `[+0.26]` | `3.Bb5  Nf6  4.O-O  Nxe4` |

We can also annotate the whole game at once. Go to the first
move by clicking the arrow buttons above the board. Now in the
engine (Stockfish) tab, click the annotate button (the bookmark-like
icon). We leave most of the values as defaults, but change the depth
to around 20 for a quick run. Higher depths give more accurate
analysis but also take more time. We can also run this for multiple
games together. Once it is done, we can see the score along with
the moves in the PGN window. We can generate an interactive graph
using Tools > Score Graph. The graph can show both time taken per
move (if your PGN file has it) and the engine score. To switch
between them, left-click on the little arrow beside the Graph tab
label to open a menu. We can select the graph type in Options in this
menu. As we move through the game, we also see arrows added by
engine to show the best move wherever the actual move is a blunder.

## Step 4: Use a Database
The place where Scid vs PC really shines in comparison to online
websites which will also do game analysis for you is in it's
database capabilities. A database simply is a collection of chess
games. Like many simple things, it is a fairly powerful tool when
used properly. Suppose we have a database of a 10,000 chess games
played by GMs in the past year. We can open up a game of our own,
and look at what moves were played by these GMs in the same position
as us. This allows us to learn from their games and improve our
openings. Suppose we have a large collection of our own games,
we can look at what openings are performing better for us, which
endgames are we weak at, which moves do we face the most in a
certain position etc. Having a collection of our opponents games
tells us what they do in certain lines and openings.

Most of these can be done using a simple tree window. We download
a large collection of our games from a website in PGN or if they were
played over the board, then we can add them by hand. If you are
feeling too lazy to download it, then you can use the PGN file that
we just used. But a database with a single game isn't very useful.
In any case, we create a new database from File > New Database. Give
it an appropriate name and location. Now open the PGN file from
File > Open. Open the game list window from Windows > Game List.
At the bottom, we see three boxes: Clipbase, the PGN file and the
newly created Database. Drag and drop the PGN box onto the Database
to copy the games to it. To add games manually, we go to
Game > New Game, input the moves and then Game > Add Game (or Ctrl-S).

Now, we go to File > Open Base as Tree and select our new database.
This shows us the frequency of the moves played by/against us and
their win rates. So when if we now analyse a new game, we can see
all this for each move in the tree window. This is important data
because it tells us which moves we actually get the most and which
lines we are weak in.

Though we used the

## TL;DR

Scid vs PC has 3 major parts:

1. Game Data: Game Data is what the user has to bring, Scid vs PC can't
    help with this:
    - User's and opponent's games can be brought from wherever
        they play. Most websites give an option to download this.
    - Master's games: Caissabase is a large, good and free database.
2. Analysis Engines and Tools: Analysis engines and tools are all present
    in Scid vs PC already. You can download more and add them too.
3. Databases: Databases are what store the game data and allow analysis
    tools to work fast and accurately.

[1]: www.example.com
[2]: www.example.com
