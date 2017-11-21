#include "parser.h"
#include "lexer.h"
#include "cql.h"

//static Tokens* GlobalTokens;

CqlNode* parseFile(const char* filename){
  if(CqlDebug)printf("Parser: lexing file: %s\n",filename);
  vector<Token*> tokens;
  bool ret=lexFile(filename,&tokens);
  if(CqlShowLex)
    printf("Got return of: %d and ntokens: %lu\n",ret,tokens.size());
  Tokens * ts=new Tokens(tokens);
  //GlobalTokens=ts;
  if(CqlShowLex){
    printf("Printing the token stream for file: %s:\n",filename);
    ts->print();
  }
  Variable::createNumericVariable("matchcount",true);
  CqlNode* n=ts->match_cqlnode();
  delete ts;
  uassert(n!=NULL,"CQL: Unable to parse file: %s",filename);
  n->setChildVariations();
  n->setUseMarks();
  if(n->isSilent()) n->makeSilentRecursively();
  n->makeNotNodeSilentRecursively();
  n->expand();
  n->addSortFields(n->sortfields);
  return n;
}

bool pbDoOnce = true;

CqlNode* parseBuffer(char* buffer){
  if(CqlDebug)printf("Parser: lexing buffer:\n");
  vector<Token*> tokens;
  bool ret=lexStream(NULL,buffer,&tokens);
  if(CqlShowLex)
    printf("Got return of: %d and ntokens: %lu\n",ret,tokens.size());
  Tokens * ts=new Tokens(tokens);
  //GlobalTokens=ts;
  if(CqlShowLex){
    printf("Printing the token stream:\n");
    ts->print();
  }
  if (pbDoOnce) {
    Variable::createNumericVariable("matchcount",true);
    pbDoOnce = false;
  }
  CqlNode* n=ts->match_cqlnode();
  delete ts;
  uassert(n!=NULL,"CQL: Unable to parse buffer");
  n->setChildVariations();
  n->setUseMarks();
  if(n->isSilent()) n->makeSilentRecursively();
  n->makeNotNodeSilentRecursively();
  n->expand();
  n->addSortFields(n->sortfields);
  return n;
}

//void showTokens(){
  //if(!GlobalTokens)
    //printf("No global tokens\n");
  //GlobalTokens->print();
//}


// Everything below this line is kludgeville... necessary because any inclusion
// of a header from this directory in tkscid.cpp descends into include-file-hell.

extern CqlNode* nodeScid;
//extern bool silentFlag;

bool parseBufferCql(char *buffer) {

  if (nodeScid) {
    delete nodeScid;
    nodeScid = NULL;
  }

  nodeScid = parseBuffer(buffer);

  // if there's a problem, we'll longjmp() our way out of it before we reach this point...
  return true;
}

