#include "node.h"
void RayNode::print(){
  printf("\n");tab();
  printf("<%s ",thisclass());
  if(isAttack) printf(" isAttack ");
  if(range) {
    printf(" Range: ");
    range->print();
  }
  for(auto d:directions){
    printf(" ");
    d.print();
  }
  printf("\n");
  indent();
  int nds=(int)(designators.size());
  for(int i=0;i<nds;++i){
    tab();
    printf("Ray designator %d of %d: ",i,nds);
    designators[i]->print();
    printf("\n");
  }
  tab();
  printf(" %s>",thisclass());
  unindent();
}

RayNode::RayNode(vector<Direction>dirs,
		 vector<SetBase*> sets,
		 bool isattack,
		 Range*r){
  uassert(dirs.size()>0);
  uassert(sets.size()>=2);
  directions=dirs;
  for(auto s:sets) uassert(s);
  designators=sets;
  isAttack=isattack;
  if(isAttack) uassert(dirs.size()==Direction::allDirections().size(),"raynode constructor internal");
  range=r;
}

bool RayNode::match_position(Game * game){
  //  printf("rn:mcp: called\n");
  Position * p=game->GetCurrentPos();
  pieceT * board=p->GetBoard();
  int nmatches=0;
  uassert(designators.size()>1);
  SetBase*start=designators.at(0);
  SquareMask startmask=start->getSquares(game);
  for (squareT sq=0;sq<64;++sq)
    if(startmask.member(sq))
      for (Direction direction:directions){
	if (isAttack&&
	    !direction.isCompatible(board[sq]))
	continue;
	if (match_starting(sq,direction,game))
	  ++nmatches;
	if(!range&&nmatches) return true;
      } //for each direction
  if(!range) {uassert(!nmatches,"internal raynode");return false;}
  count=nmatches;
  return range->valid(nmatches);
}

bool RayNode::match_starting(squareT square, Direction direction, Game*game){
  uassert(square_valid(square));
  int ndesignators=(int)(designators.size());
  uassert(ndesignators>1,"internal match_starting");
  int current=square;
  int nmatched=0;
  nmatched=1;
  while(true){
    if (nmatched==ndesignators) return true;
    current=direction.apply(current);
    if (!square_valid(current)) break;
    SetBase*next=designators.at(nmatched);
    SquareMask nextmask=next->getSquares(game); // FIX THIS!!!!
    if (nextmask.member(current))
      nmatched++;
    else {
      pieceT piece=MarkBoard::piece_at_square((squareT)current,game);
      if(piece!=EMPTY)return false;
    }
  }
  uassert(nmatched<ndesignators,"match_starting, internal");
  return false;
}

