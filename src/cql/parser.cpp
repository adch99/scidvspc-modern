#include "parser.h"
#include "lexer.h"
#include "cql.h"
#include "tokenstream.h"

static Tokens* GlobalTokens;

CqlNode* parseFile(const char* filename){
  if(CqlDebug)printf("Parser: lexing file: %s\n",filename);
  vector<Token*> tokens;
  bool ret=lexFile(filename,&tokens);
  if(CqlShowLex)
    printf("Got return of: %d and ntokens: %lu\n",ret,tokens.size());
  Tokens * ts=new Tokens(tokens);
  GlobalTokens=ts;
  if(CqlShowLex){
    printf("Printing the token stream for file: %s:\n",filename);
    ts->print();
  }
  Variable::createNumericVariable("matchcount",true);
  CqlNode* n=ts->match_cqlnode();
  uassert(n!=NULL,"CQL: Unable to parse file: %s",filename);
  n->setChildVariations();
  n->setUseMarks();
  if(n->isSilent()) n->makeSilentRecursively();
  n->makeNotNodeSilentRecursively();
  n->expand();
  n->addSortFields(n->sortfields);
  return n;
}


CqlNode* parseBuffer(char* buffer){
  static bool pbDoOnce = true;
  if(CqlDebug)printf("Parser: lexing buffer:\n");
  vector<Token*> tokens;
  bool ret=lexStream(NULL,buffer,&tokens);
  if(CqlShowLex)
    printf("Got return of: %d and ntokens: %lu\n",ret,tokens.size());
  Tokens * ts=new Tokens(tokens);
  GlobalTokens=ts;
  if(CqlShowLex){
    printf("Printing the token stream:\n");
    ts->print();
  }
  if (pbDoOnce) {
    Variable::createNumericVariable("matchcount",true);
    pbDoOnce = false;
  }
  CqlNode* n=ts->match_cqlnode();
  uassert(n!=NULL,"CQL: Unable to parse buffer");
  n->setChildVariations();
  n->setUseMarks();
  if(n->isSilent()) n->makeSilentRecursively();
  n->makeNotNodeSilentRecursively();
  n->expand();
  n->addSortFields(n->sortfields);
  return n;
}

void showTokens(){
  if(!GlobalTokens)
    printf("No global tokens\n");
  GlobalTokens->print();
}


// Everything below this line is kludgeville... necessary because any inclusion
// of a header from this directory in tkscid.cpp descends into include-file-hell.

extern CqlNode* nodeScid;

bool CqlParseBuffer(char *buffer) {

  nodeScid = parseBuffer(buffer);

  // If there's a problem, we'll longjmp() our way out of it before we reach this point.
  return true;
}

// Reset initialised statics and free mem resources.
void CqlReset() {

  MarkBoard::gamenumber=0;
  MarkBoard::lastignored=-1;
  if (MarkBoard::globalMarkBoard) {
    delete MarkBoard::globalMarkBoard;
    MarkBoard::globalMarkBoard=NULL;
  }

  Tokens::nextid=0;

  PieceLoc::lastid=NULL;
  PieceLoc::lastgamenumber=-1;

  if (nodeScid) {
    delete nodeScid;
    nodeScid = NULL;
  }

  if (GlobalTokens) {
    delete GlobalTokens;
    GlobalTokens = NULL;
  }
}
