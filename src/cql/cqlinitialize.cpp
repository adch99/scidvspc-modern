#include "node.h"
void cql_initialize(){
  setbuf(stdout,NULL);
  uassert(sizeof(Mask)==8,"Expecting sizeof of datatype 'Mask' to be 8");
  //scid_Init();
}
