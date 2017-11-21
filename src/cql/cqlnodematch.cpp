#include "node.h"

int matchCount = 0;
uint matchPlyFirst;

void CqlNode::do_match(MFilter*p,Game*game){
  NumericVariable*mc=Variable::matchCountVariable();
  bool searchvariations=getSearchVariations();
  if(!searchvariations)
    uassert(MarkBoard::inMainline(game));
  auto id=MarkBoard::identity(game);
  if(p->match_position(game)){
    mc->increment();
    if (!matchCount++) matchPlyFirst = game->GetCurrentPly();
    if(p->annotateFlag&&!isSilent())
      MarkBoard::gameAppendComment(game,"MATCH");
  }
  //  printf("cqlnode: unbinding tags at ply: %d\n",game->GetCurrentPly());
  Variable::unbindTags();
  int nchildren=MarkBoard::number_children(game,searchvariations);
  vector<moveT*>ids;
  ids.push_back(id);
  for(int i=0;i<nchildren;++i){
    MarkBoard::move_to_child(game,i);
    auto childid=MarkBoard::identity(game);
    for(auto oid:ids)
      uassert(oid!=childid,"idcheck fail");
    ids.push_back(childid);
    do_match(p,game);
    MarkBoard::gameBackup(game);
    uassert(id==MarkBoard::identity(game),"movecheckfail");
  }
  uassert(id==MarkBoard::identity(game),"movecheckfail2");
  uassert(mc->getValue()==mc->getExtremalValue());
}

bool CqlNode::match_game(Game*game){
  game->MoveToPly(0);
  if(CqlDebug) {
    printf("\n\ncqlnode:match_game entered: %d\n", game->GetNumber());
    util::printgame(stdout,game);
  }
#ifdef STANDALONE
  char buffer[500];
  //MarkBoard::cleanFirstComment(game);
  sprintf(buffer,"Game number %u",game->GetNumber());
  if(!isSilent())MarkBoard::gameAppendComment(game,buffer); 
#endif
  if(usemarks) MarkBoard::mark(game);
  NumericVariable::resetAll();
  NumericVariable*mc=Variable::matchCountVariable();
  mc->bindNumeric(0);
  // first check the standard tags
  for(GameFilter* gf : gamefilters)
    if(!gf->match_game(game))
      return false;
  matchCount = 0;
  do_match(filter,game);
  int nmatches=(int)(mc->getValue());
  uassert(nmatches==(int)(mc->getExtremalValue()));
  bool matched=false;
  if(matchCountRange)
    matched=matchCountRange->valid(nmatches);
  else matched=(nmatches>0);
  if(matched)
    annotateEchoes(game);
  if(matched && CqlDebug) {
    printf("\n\ncqlnode:match_game matched on game: %d\n", game->GetNumber());
    util::printgame(stdout,game);
  }
  return matched;
}
      
void CqlNode::match(){
  Game * game=new Game;
  MFile*inputMFile=new MFile;
  printf("CQL: reading PGN file: %s: \n",inputfile);
  if(inputMFile->Open(inputfile,FMODE_ReadOnly)!=OK)
    uassert(false,"Unable to open file: ",inputfile);
  inputMFile->skipNonAscii();
  PgnParser pgnparser(inputMFile);
  currentGameNumber=0;
  uassert(outputfile,"missing output file");
  uassert(!outputstream,"unexpected outputstream");
  outputstream=fopen(outputfile,"w");
  uassert(outputstream,"CQL: could not open file for writing: ",outputfile);
  int nmatches=0;
  vector<GameSortInfo>infos;
  while(pgnparser.ParseGame(game)!=ERROR_NotFound){
    if(0){
      printf("cqlnode:match printing just after parse: \n");
      util::printgame(stdout,game);
      printf("clqnode:match: done print just after parse\n");
    }
    game->SetNumber(++currentGameNumber);
    if(gamenumberrange){
      if(currentGameNumber>gamenumberrange->max)
	break;
      else if(currentGameNumber<gamenumberrange->min)
	continue;
    }
    if ((currentGameNumber-1)%1000==0&&currentGameNumber>1000)
      printf("%d\n",currentGameNumber);
    else if ((currentGameNumber-1)%100==0)printf(".");
    bool matched=match_game(game);
    if(matched) {
      ++nmatches;
      printf("+<%d>",game->GetNumber());
      setFirstComment(game);
      infos.push_back(makeInfo(game));
    } // if (matched)
  } // while next game
  GameSortInfo::sort(infos);
  GameSortInfo::output(outputstream,infos);
  printf("\nCQL: wrote %d matching game%s to file: %s\n",
	 nmatches,
	 nmatches==1 ? "" : "s",
	 outputfile);
}


// Everything below this line is kludgeville... necessary because any inclusion
// of a header from this directory in tkscid.cpp descends into include-file-hell.

CqlNode* nodeScid = NULL;
//bool silentFlag;

bool match_gameCql(Game *game) {

  // override the CQL header silent param
  //if (CqlSilent) nodeScid->CommentFlags::makeSilent();

  Range* gamenumberrange = nodeScid->gamenumberrange;
  int currentGameNumber = game->GetNumber();
  //printf("game number: %d\n", currentGameNumber);
  if(gamenumberrange) {
    //printf("game range: %d %d\n", gamenumberrange->min, gamenumberrange->max);
    if(currentGameNumber > gamenumberrange->max || currentGameNumber < gamenumberrange->min)
      return false;
  }

  return nodeScid->match_game(game);
}

