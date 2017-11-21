#include "node.h"
PlayerNode::PlayerNode(const char* n,colorT c):name{n},color{c}{
  uassert(n&&name,"playernode internal");
  uassert(color==WHITE||color==BLACK||color==NOCOLOR,"playernode color");
}

bool PlayerNode::match_game(Game*game){
  char* whiteplayer=game->GetWhiteStr();
  char* blackplayer=game->GetBlackStr();
  if( (whiteplayer&&strstr(whiteplayer,name)
       &&(color==WHITE||color==NOCOLOR))
      ||
      (blackplayer&&strstr(blackplayer,name)
       &&(color==BLACK||color==NOCOLOR)))
    return true;
  return false;
}
  
void PlayerNode::print(){
  printf("<%s %s %s>",thisclass(),color_string(color),name);
}
  
