#include "node.h"
MoveBase::MoveBase(SetBase*f, SetBase*t, PieceLoc*p,SetBase* e){
  from =f;
  to=t;
  promote=p;
  enpassantsquare=e;
}

MoveFutureNode::MoveFutureNode(SetBase*from, SetBase*to, PieceLoc* promote, SetBase* enpassant) :
  MoveBase(from, to, promote, enpassant){}

MoveLegalNode::MoveLegalNode(SetBase*from, SetBase*to, PieceLoc* promote, SetBase* enpassant) :
  MoveBase(from, to, promote, enpassant){}

MovePastNode::MovePastNode(SetBase*from, SetBase*to, PieceLoc* promote, SetBase* enpassant) :
  MoveBase(from, to, promote, enpassant){}

MoveMainlineNode::MoveMainlineNode(SetBase*from, SetBase*to, PieceLoc* promote, SetBase* enpassant) :
  MoveBase(from, to, promote, enpassant){}


vector<simpleMoveT*> MovePastNode::getMoves(Game*game){
  vector<simpleMoveT*>moves;
  if(game->GetCurrentPly()==0) return moves;
  moveT*prev=game->GetCurrentMoveCQL()->prev;
  uassert(prev&&prev->marker!=START_MARKER);
  simpleMoveT* smt= &(prev->moveData);
  moves.push_back(smt);
  return moves;
}

vector<simpleMoveT*>MoveLegalNode::getMoves(Game*game){
  return MarkBoard::getLegalMoves(game);
}

vector<simpleMoveT*>MoveFutureNode::getMoves(Game*game){
  return MarkBoard::getMoves(game,getSearchVariations());
}

vector<simpleMoveT*>MoveMainlineNode::getMoves(Game*game){
  return MarkBoard::getMoves(game,false);
}

SquareMask MoveBase::getSquares(Game*game){
  bool searchvariations=getSearchVariations();
  SquareMask ret;
  if(!searchvariations)
    uassert(MarkBoard::inMainline(game),
	    "unexpectedly in a variation in move");
  vector<simpleMoveT*>moves=getMoves(game);
  for(auto move:moves)
    if(match_move(move,game)){
      squareT tosquare=move->to;
      uassert(square_valid(tosquare));
      ret.insert(tosquare);
    }
  return ret;
}
  
bool MoveBase::match_position(Game*game){
  return getSquares(game).nonempty();
}

bool MoveBase::match_move(simpleMoveT* move, Game*game){
  if(from){
    squareT fromsquare=move->from;
    uassert(square_valid(fromsquare),"match_move, bad from square");
    bool checkfrom=from->getSquares(game).member(fromsquare);
    if(!checkfrom)return false;
  }
  if(to){
    squareT tosquare=move->to;
    uassert(square_valid(tosquare),"match_move, bad to square");
    bool checkto=to->getSquares(game).member(tosquare);
    if(!checkto)return false;
  }
  if(promote){
    pieceT promoted=move->promote;
    if(promoted==EMPTY) return false;
    colorT color=game->GetCurrentPos()->GetToMove();
    if(dynamic_cast<MovePastNode*>(this)){
      if(color==WHITE) color=BLACK;
      else if (color==BLACK) color=WHITE;
      else uassert(false, "mbmm");
    }
    pieceT promotedpiece=piece_Make(color,promoted);
    if(color==WHITE)
      uassert(promotedpiece==WQ||
	      promotedpiece==WR||
	      promotedpiece==WN||
	      promotedpiece==WB);
    else if(color==BLACK)
      uassert(promotedpiece==BQ||
	      promotedpiece==BR||
	      promotedpiece==BN||
	      promotedpiece==BB);
    else
      uassert(false, "promotion internal");
    bool checkpromoted=promote->match_piece(promotedpiece);
    if(!checkpromoted)return false;
  }
  if(enpassantsquare){
    squareT capturedsquare=move->capturedSquare;
    squareT tosquare=move->to;
    if(tosquare==capturedsquare)return false;
    bool epto=enpassantsquare->getSquares(game).member(capturedsquare);
    if(!epto)return false;
  }
  return true;
}

vnode MoveBase::children(){
  vnode v;
  if(from)v.push_back(from);
  if(to)v.push_back(to);
  if(promote)v.push_back(promote);
  if(enpassantsquare)v.push_back(enpassantsquare);
  return v;
}
  
void MoveBase::print(){
  printf("<%s",thisclass());
  printVariationFlags();
  if(from) {
    printf(" from ");
    from->print();}
  if (to){
    printf(" to ");
    to->print();
  }
  if (promote){
    printf(" promote ");
    promote->print();
  }
  if(enpassantsquare){
    printf(" enpassant ");
    enpassantsquare->print();
  }
  printf("%s>",thisclass());
}

