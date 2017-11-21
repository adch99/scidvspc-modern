#include "node.h"

  
bool PositionNode::match_position(Game*game){
  for(MFilter* spec:specs)
    if(!spec->match_position(game))
      return false;
  return true;
}


    

bool ColorNode::match_position(Game*game){
  colorT tomove=game->GetCurrentPos()->GetToMove();
  uassert(tomove==WHITE||tomove==BLACK);
  return color==tomove;
}

bool InitialNode::match_position(Game*game){
  return game->GetCurrentPly()==0;
}

bool TerminalNode::match_position(Game*game){
  return game->AtVarEnd();
}


bool CheckNode::match_position(Game*game){
  Position*pos=game->GetCurrentPos();
  return pos->IsKingInCheckCQL();
}

bool InVariationNode::match_position(Game*game){
  return MarkBoard::inVariation(game);
}

bool InMainlineNode::match_position(Game*game){
  return MarkBoard::inMainline(game);
}

bool MateNode::match_position(Game*game){
  Position*pos=game->GetCurrentPos();
  return pos->IsKingInMateCQL();
}


bool StalemateNode::match_position(Game*game){
  Position*pos=game->GetCurrentPos();
  return pos->IsKingInStalemateCQL();
}


