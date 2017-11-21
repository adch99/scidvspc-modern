#include "node.h"
vnode OnNode::children(){
  return vnode(clauses.begin(), clauses.end());
}

OnNode::OnNode(vector<SetBase*> cs){
  clauses=cs;
  uassert(clauses.size()>=2,"invalid or node");
  for (auto c : clauses)
    uassert(c);
}


void OnNode::print(){
  printf("\n");
  tab();
  printf("<%s nclauses: %lu:\n",thisclass(), clauses.size());
  indent();
  for(int i=0;i<clauses.size();++i){
    tab();
    printf("clause %d of %lu: ",i,clauses.size());
    clauses[i]->print();
    printf("\n");
  }
  printf(" %s>",thisclass());
  unindent();
}

SquareMask OnNode::getSquares(Game*game){
  SquareMask ret;
  ret= ~ret;
  for(SetBase* set : clauses)
    ret&=set->getSquares(game);
  return ret;
}



