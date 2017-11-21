#include "node.h"
bool CountNode::match_count(Game*game,NumValue*value){
  if(match_position(game)){
    *value=(NumValue)(getCount());
    return true;
  }
  return false;
}

bool AttackNode::match_count(Game*game,NumValue*value){
  uassert(range,"No range: must include a range when counting attacks");
  if(match_position(game)){
    *value=(NumValue)(getCount());
    return true;
  }
  return false;
}

bool RayNode::match_count(Game*game, NumValue*value){
  uassert(range,"No range: must include a range when counting rays");
  if(match_position(game)){
    *value=(NumValue)(getCount());
    return true;
  }
  return false;
}

bool SequenceBase::match_count(Game*game, NumValue*value){
  if (match_position(game)){
    uassert (getCount()>=0,"match_count");
    *value=(NumValue)(getCount());
    return true;
  }
  return false;
}
    
