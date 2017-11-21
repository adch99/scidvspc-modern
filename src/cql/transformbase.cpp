#include "node.h"

TransformBase* TransformBase::create(vector<Transform*> ts,Node*n,Range*r){
  uassert(n);
  TransformBase* nbase=dynamic_cast<TransformBase*>(n);
  TransformNode* nbasenode=dynamic_cast<TransformNode*>(n);
  Range*subrange=NULL;
  if(nbasenode)subrange=nbasenode->range;
  if(!r&&nbase&&!subrange){
    uassert(!nbase->expanded());
    vector<Transform*>basets=nbase->getTransforms();
    vector<Transform*>composedts=
      ComposeTransform::composeVectors(ts,basets);
    Node* source=nbase->getSource();
    return create(composedts,source,r);
  }
  SetBase* sb=dynamic_cast<SetBase*>(n);
  MFilter* mf=dynamic_cast<MFilter*>(n);
  uassert(sb||mf, "tb::create: invalid node");
  if(sb)(uassert(mf,"internal unknown tb:create"));
  if(sb&&!r) return new TransformSetNode(ts,sb);
  return new TransformNode(ts,mf,r);
}

