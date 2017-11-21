#pragma once
#include "node.h"

bool lexFile(const char*filename, vector<Token*>*tokens);
bool lexStream(FILE*file,char*buffer,vector<Token*>*tokens);
//bool lexStream(FILE*file,vector<Token*>*tokens) { return lexStream(file,NULL,tokens); }
//bool lexStream(char*buffer,vector<Token*>*tokens) { return lexStream(NULL,buffer,tokens); }
char * readstring(FILE * file);
char * readstring(char * buffer);
Token* makeToken(char* val);
PieceDesignatorToken* match_piecedesignator(char* input);
bool match_piecespecifier(char**inputp,vector<PieceToken*>*pieces);
PieceToken* match_singlepiecespecifier(char**inputp);
bool match_singlepiecespecifierplus(char**input,vector<PieceToken*>*piecesp);
PieceToken* match_simplepiecespecifier(char**inputp);
bool match_compoundpiecespecifier(char**inputp,vector<PieceToken*>*piecesp);
bool match_alphanums(char**inputp, char* result, int maxlength);
Token* match_keyword(char*input); 
bool match_char(char**input,char c);
VariableToken* match_variable(char**input);
void match_variables(char**input,vector<VariableToken*>*variablesp);
VariableToken* match_variable(char*input);
bool match_letterdigit(char**inputp,char * ch);
bool match_letterdigits(char*input);
bool match_squarespecifier(char**inputp, vector<SquareToken*>*squaresp);
SquareToken* match_square(char**inputp);
bool match_commasquares(char**input,vector<SquareToken*>*squaresp);
bool match_file(char**inputp,int * result);
bool match_rank(char**inputp,int * result);
SquareToken* match_blocksquarespecifier(char**inputp);
bool match_compoundsquarespecifier(char**inputp,vector<SquareToken*>*squaresp);
bool match_files(char**inputp,int*min,int *max);
bool match_filerange(char**inputp,int*min,int*max);
bool match_ranks(char**inputp,int*min,int *max);
bool match_rankrange(char**inputp,int*min,int*max);
Token* match_int(char*val);
Token* match_Bar(char*v);
Token* match_Star(char*v);
Token* match_QuestionMark(char*v);
Token* match_Plus(char*v);
Token* match_LParen(char*v);
Token* match_RParen(char*v);
Token* match_LBrace(char*v);
Token* match_RBrace(char*v);
Token* match_LessThan(char*v);
Token* match_GreaterThan(char*v);
Token* match_name(char*input);
Token* match_quotedstring(char*v);
