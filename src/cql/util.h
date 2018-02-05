#pragma once
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <ctype.h>
#include <vector>
#include <algorithm>
#include "chesstypes.h"
#include "gfile.h"
#include "pgnparse.h"
using std::vector;
using std::string;
#include "range.h"
#include "squaremask.h"
#include "direction.h"
#include "myvector.h"
#include "cqlassert.h"
#include "cqlexit.h"


#define CQL_ASSERT(x) {if(!(x)) { printf("Assert fails: %s: %d\n",__FILE__,__LINE__); uassert(false, "Internal CQL Error: assert fails"); }}

void tab();
void indent();
void unindent();

//Filename functions (in filename.cpp)

bool filename_is_pgn(const char*filename);
bool filename_is_cql(const char* filename);
const char* filename_extension(const char* filename);
const char* filename_stem(const char*name);
const char* filename_trim_path_prefix(const char*name);
const char* filename_trim_last(const char* name, char c);
const char* filename_trim_extension(const char* name);

class util{
 public:
  static char * copy(const char * buffer);
  static bool positiveIntValue(char * s, int*val);
  static bool signedIntValue(char * s, int*val);
  static void printgame(FILE* stream,Game* game);
  static void my_dump_board(boardT board);
  static int squareShiftDirection(int sq, directionT direction);
  static bool directionCompatible(pieceT piecet, directionT direction);
  static bool directionDiagonal(directionT direction);
  static bool directionOrthogonal(directionT direction);
  static void printgame(Game*game);
  static string game_to_string(Game*game);
  static const char* string_append(const char* a, const char* b);
};

