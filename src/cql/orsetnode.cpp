#include "node.h"
OrSetNode::OrSetNode(SetBase*c1,SetBase*c2){
  clause1=c1;
  clause2=c2;
  uassert(clause1&&clause2);

}

void OrSetNode::print(){
  printf("<%s",thisclass());
  printf("\n");indent();tab();
  printf("clause1: ");
  clause1->print();
  printf("clause1: ");
  printf("\n");tab();
  clause2->print();
  printf(" %s>",thisclass());
  unindent();
}

bool OrSetNode::match_position(Game*game){
  if(clause1->match_position(game)) return true;
  return clause2->match_position(game);
}

SquareMask OrSetNode::getSquares(Game*game){
  SquareMask m1=clause1->getSquares(game);
  SquareMask m2=clause2->getSquares(game);
  return m1|m2;
}

  

