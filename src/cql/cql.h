#pragma once
extern const char * CqlVersion;
extern const char * CqlBuild;
extern bool CqlDebug;
extern char* CqlDate;
extern bool CqlParseOnly;
extern bool CqlShowLex;
extern bool CqlShowParse;
extern const char* CqlFilename;
extern const char* CqlPgnFilename;
extern const char* CqlOutputFilename;
extern Range* CqlGameNumberRange;
extern bool CqlSilent;
extern Range* CqlYearRange;
extern const char* CqlPlayer;

void parseargs(int argc, char*argv[]);
void cql_initialize();

