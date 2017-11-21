#include "node.h"  // this file should be a copy of TransformNode - should use templates actually
// for TransformSetNode::transform_in_place(Transform*t) see the file transform_members.cpp

void TransformSetNode::expand(){
  uassert(transformedFilters.empty()&&filter);
  for(auto transform : transforms){
    SetBase* transformednode=dynamic_cast<SetBase*>(filter->transform(transform));
    uassert(transformednode,"null transform or wrong type in expans()");
    transformedFilters.push_back(transformednode);
  }
  for(auto transformedfilter : transformedFilters)
    transformedfilter->expand();
  filter=NULL;
}


vnode TransformSetNode::children(){
  vnode v;
  if(expanded())
    v.insert(v.end(),transformedFilters.begin(),transformedFilters.end());
  else
    v.push_back(filter);
  return v;
}
  
TransformSetNode::TransformSetNode(vector<Transform*>ts,SetBase*f){
  uassert(f);
  for(auto t:ts) uassert(t);
  transforms=ts;
  filter=f;
}

void TransformSetNode::print(){
  int ntransforms=transforms.size();
  int nfilters=transformedFilters.size();
  printf("<%s ntransforms: %d nfilters: %d",thisclass(),ntransforms,nfilters);
  for(int i=0;i<ntransforms;++i){
    auto t=transforms[i];
    printf("\n");indent();tab();
    printf("Transform %d of %d: ",i,ntransforms);
    t->print();
    unindent();
  }
  if(filter){
    uassert (!nfilters);
    printf("\n");indent();tab();
    printf("Filter: ");
    filter->print();
    unindent();
  }
  else{
    uassert (nfilters);
    for(int i=0;i<nfilters;++i){
      auto tfilter=transformedFilters[i];
      printf("\n");indent();tab();
      printf("TransformedFilter %d of %d: ",i,nfilters);
      tfilter->print();
      unindent();
    }
  }
  printf(" %s>",thisclass());
}

void TransformSetNode::deepify(){
  uassert(!expanded());
  filter=filter->clone();
}
    
bool TransformSetNode::expanded(){
  uassert(!filter&&transformedFilters.size() ||
	  filter&&transformedFilters.empty());
  return filter==NULL;
}

TransformSetNode* TransformSetNode::clone(){
  uassert(!expanded(),"cannot clone expanded transformnode");
  TransformSetNode*ret=new TransformSetNode(*this);
  ret->deepify();
  cloneverify(this,ret);
  return ret;
}

SquareMask TransformSetNode::getSquares(Game*game){
  uassert(expanded(),"tsn not expanded");
  SquareMask mask;
  for(auto set : transformedFilters)
    mask|=set->getSquares(game);
  return mask;
}


  
bool TransformSetNode::match_position(Game*game){
  uassert(expanded(),"tn not expanded");
  for(auto f:transformedFilters)
    if(f->match_position(game)) return true;
  return false;
}
