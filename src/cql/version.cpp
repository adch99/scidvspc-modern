#include "range.h"
const char* CqlBuild="8.51";
const char* CqlVersion="5.1";
bool CqlDebug=false;
bool CqlShowDtor=false;
const char* CqlDate=__DATE__ ;
bool CqlParseOnly=false;
bool CqlShowParse=false;
bool CqlShowLex=false;
const char* CqlFilename=0;
#ifdef STANDALONE
const char* CqlPgnFilename=0;
const char* CqlOutputFilename=0;
#endif
#ifdef INTEGRATED
const char* CqlPgnFilename="fileInNull.pgn";
const char* CqlOutputFilename="fileOutNull.pgn";
#endif
bool CqlSilent=false;
Range* CqlGameNumberRange=0;
Range* CqlYearRange=0;
const char* CqlPlayer=0;

