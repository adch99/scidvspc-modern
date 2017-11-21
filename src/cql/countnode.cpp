#include "node.h"
bool CountNode::match_position(Game*game){
  SquareMask mask=set->getSquares(game);
  count=mask.size();
  return range->valid(count);
}

CountNode::CountNode(SetBase* dp, Range*rp){
  uassert(dp);
  set=dp;
  range=rp;
  uassert(range);
}

void CountNode::print(){
  printf("<%s ",thisclass());
  range->print();
  indent();
  set->print();
  printf(">");
}

// for CountNode::match_count, see coutable.cpp
