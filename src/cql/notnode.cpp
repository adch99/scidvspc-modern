#include "node.h"

NotNode::NotNode(Node*np){
  filter=dynamic_cast<MFilter*>(np);
  uassert(filter,"Missing or illegal argument to :not specification");
}

void NotNode::print(){
  printf("\n");
  tab();
  printf("<not ");
  indent();
  filter->print();
  printf(" not>");
  unindent();
}

bool NotNode::match_position(Game*game){
  return !filter->match_position(game);
}

NotSetNode::NotSetNode(SetBase*b){
  uassert(b,"internal nsn");
  filter=b;
}

void NotSetNode::print(){
  printf(("\n"));
  tab();
  printf("<%s ",thisclass());
  filter->print();
  printf(" not>");
}

SquareMask NotSetNode::getSquares(Game*game){
  return ~(filter->getSquares(game));
}

bool NotSetNode::match_position(Game*game){
  return !filter->match_position(game);
}
