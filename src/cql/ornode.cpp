#include "node.h"
OrNode::OrNode(Node*c1,Node*c2){
  uassert(c1&&c2);
  clause1=dynamic_cast<MFilter*>(c1);
  clause2=dynamic_cast<MFilter*>(c2);
  uassert(clause1&&clause2);

}

void OrNode::print(){
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

bool OrNode::match_position(Game*game){
  if(clause1->match_position(game)) return true;
  return clause2->match_position(game);
}


