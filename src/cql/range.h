#pragma once
class Range{
 public:
  int min;
  int max;
  const char* thisclass(){return "Range";}
  void print();
  Range(int m);
  Range(int mi,int ma);
  bool valid(int i){return min<=i&&i<=max;}

};

