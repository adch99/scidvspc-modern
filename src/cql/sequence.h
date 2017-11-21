#pragma once

typedef vector<SeqConstituent*>SeqStack;
class SequenceBase : public MFilter, public Countable, public VariationFlags, public CommentFlags{ //abstract
 public:
  bool match_position(Game*game);
  bool isSkip()const;
  colorT getSkipColor()const;
  bool skipColor(colorT)const;
  bool skipCurrentPosition()const;
  void clearSkipColor();
  void setSkipColor(colorT);
  void initializeSkip();
  void exitMatch();
  SeqRet computeSkip(SeqStack&stack);
  HolderConstituent* getSkipConstituent()const;
  virtual SeqRet compute (SeqStack&);
  virtual SeqRet compute(VectorConstituent*,SeqStack&);
  virtual SeqRet compute(StarConstituent*,SeqStack&);
  virtual SeqRet compute(HolderConstituent*,SeqStack&)=0;
  virtual SeqRet compute(PlusConstituent*,SeqStack&);
  virtual SeqRet compute(OptionalConstituent*,SeqStack&);
  virtual SeqRet computeNull(SeqStack&);
  virtual void notate(SeqRet& ret)=0;
  bool match_count(Game*game,NumValue*value);
  vector<SeqConstituent*> constituents;
  void print();
  Range*range{NULL};
  int count{-1};
  int getCount() const{return count;}
  void deepify();
  SequenceBase(vector<SeqConstituent*> scs,Range*r, bool isskip);
  vnode children();
  int nconstituents()const;
  bool valid_constituent (int offset)const;
  Game*game{NULL};
  SeqConstituent* getConstituent (int offset)const;
  void setOffsets();
 private:
  HolderConstituent* theWhiteHolder{NULL};
  HolderConstituent* theBlackHolder{NULL};
  colorT theSkipColor{NOCOLOR};
};

class PastNode : public SequenceBase{
 public:
  SeqRet compute(HolderConstituent*,SeqStack&);
  CVV(PastNode);
  void notate(SeqRet& ret);
  PastNode(vector<SeqConstituent*>,Range*,bool);
};

class FutureNode : public SequenceBase{
 public:
  SeqRet compute(HolderConstituent*,SeqStack&);
  CVV(FutureNode);
  void notate(SeqRet& ret);
  FutureNode(vector<SeqConstituent*>,Range*,bool);
  
};

