#include "node.h"

SquareMask PieceLoc::getSquares(Game*game){
  SquareMask ret=SquareMask::all();
  for(Variable*v:variables){
    uassert(v->isBound(),"Unexpected unbound variable: may be undeclared: ",v->name);
    squareT s=65;
    bool b=v->getSquare(&s);
    if(!b) return SquareMask();
    uassert(square_valid(s));
    ret&=SquareMask::fromSquare(s);
  }
  ret&=squaremask;
  if(ret.empty())return ret;
  return ret&getPieceMask(game);
}

SquareMask PieceLoc::getPieceMask(Game*game){
  int gamenumber=game->GetNumber();
  auto me=MarkBoard::identity(game);
  if(lastid==me&&lastgamenumber==gamenumber)
    return lastmask;
  lastmask.clear();
  lastid=me;
  Position*position=game->GetCurrentPos();
  pieceT*board=position->GetBoard();
  for(squareT sq=0;sq<64;++sq){
    pieceT piece=board[sq];
    if (match_piece(piece))
      lastmask.insert(sq);
  }
  return lastmask;
}

bool PieceLoc::match_piece(pieceT piece){
  //  uassert(piece_valid(piece));
  return pieces.member(piece);
}

