#include "node.h"
#include "tokenstream.h"

Node* Tokens::match_basicnode(){
  Node * n=match_basicnode_no_or();
  if(!n) return n;
  Node* orsuffix=match_orsuffix();
  if(!orsuffix) return n;
  return new OrNode(n,orsuffix);
}

Node* Tokens::match_orsuffix(){
  if(!match_keyword("or")) return NULL;
  Node*n=match_basicnode();
  if(!n)
    show_error("Expected a valid form following 'or' but did not get it");
  return n;
}

Node* Tokens::match_basicnode_no_or(){
  Node*n=NULL;
  if(!n) n=match_simplenode();
  if(!n) n=match_compoundnode();
  if(!n) n=match_positionnode();
  return n;
}

SetBase* Tokens::match_setbase(){
  int x=save();
  SetBase*set=match_primary_setbase();
  if(!set) return NULL;
  SetBase*onsuffix=match_onsuffix();
  if (onsuffix) return new OnNode(vector<SetBase*>{set,onsuffix});
  Node*orsuffix=match_orsuffix();
  if(!orsuffix) return set;
  SetBase*orsetsuffix=dynamic_cast<SetBase*>(orsuffix);
  if(!orsetsuffix){
    restore(x);
    return NULL;
  }
  return new OrSetNode(set,orsetsuffix);
}
  
SetBase* Tokens::match_onsuffix(){
  if(!match_keyword("on"))return NULL;
  SetBase* a=match_setbase();
  if(!a)
    show_error("expected a set after 'on'");
  return a;
}

SetBase* Tokens::match_primary_setbase(){
  SetBase*n=NULL;
  if(!n)n=match_pieceloc();
  if(!n)n=match_existsnode();
  if(!n)n=match_pieceidnode();
  if(!n)n=match_parenthesizedsetbase();
  if(!n)n=match_notsetnode();
  if(!n)n=match_transformsetnode();
  if(!n)n=match_vectornode();
  if(!n)n=match_attacknode();
  if(!n)n=match_betweennode();
  if(!n) n=match_movebase();
  if(!n)n=match_anynode();
  if(!n)n=match_originnode();
  return n;
}

Node* Tokens::match_compoundnode(){
  Node*n=NULL;
  if(!n) n=match_countnode();
  if(!n) n=match_sortbodynode();
  if(!n) n=match_setbase();
  if(!n) n=match_movenumbernode();
  if(!n) n=match_matchcommentnode();
  if(!n) n=match_transformnode();
  if(!n) n=match_notnode();
  if(!n) n=match_attacknode();
  if(!n) n=match_raynode();
  if(!n) n=match_forallnode();
  if(!n) n=match_futurestarnode();
  if(!n) n=match_paststarnode();
  if(!n) n=match_sequencenode();
  if(!n) n=match_echonode();
  if(!n) n=match_transformnode(); // not a set!
  if(!n) n=match_powernode();
  if(!n) n=match_resultnode();
  if(!n) n=match_playernode();
  if(!n) n=match_elonode();
  if(!n) n=match_sitenode();
  if(!n) n=match_eventnode();
  if(!n) n=match_yearnode();
  if(!n) n=match_powerdifferencenode();
  if(!n) n=match_extensionnode();
  if(!n) n=match_commentbase();
  if(!n) n=match_silent();
  return n;
}

Node* Tokens::match_countable(){
  Node* node=NULL;
  if(!node) node=match_countnode();
  if(!node) node=match_attacknode();
  if(!node) node=match_raynode();
  if(!node) node=match_futurestarnode();
  if(!node) node=match_paststarnode();
  if(!node) node=match_sequencenode();
  if(!node) node=match_powernode();
  if(!node) node=match_powerdifferencenode();
  if(!node) node=match_silent();
  if(!node) node=match_elonode();
  if(!node) node=match_yearnode();
  if(!node) node=match_movenumbernode();
  if(!node) node=match_parenthesizedcountable();
  if(!node) node=match_transformnode();
  return node;
}

Node* Tokens::match_silent(){
  if(!match_keyword("silent")) return NULL;
  Node* n = match_basicnode();
  if(!n)
    show_error("silent keyword must be followed by a filter to make silent (relation, next, next*, previous, previous*");
  CommentFlags*cf=dynamic_cast<CommentFlags*>(n);
  if(!cf)
    show_error("silent keyword must be followed by one of: relation, next, next*, previous, previous*");
  cf->makeSilent();
  return n;
}

SilentFeatureNode* Tokens::match_silentfeature(){
  if (match_keyword("silent"))return new SilentFeatureNode();
  return NULL;
}

Node* Tokens::match_cqlfeature(){
  Node*n=NULL;
  if(!n)n=match_pgnnode();
  if(!n)n=match_resultnode();
  if(!n)n=match_gamenumbernode();
  if(!n) n=match_outputnode();
  if(!n) n=match_variationsnode();
  if(!n) n=match_matchcountnode();
  if(!n) n=match_silentfeature();
  if(!n)n=match_playernode();
  if(!n)n=match_elonode();
  if(!n)n=match_yearnode();
  if(!n)n=match_sitenode();
  if(!n)n=match_eventnode();
  return n;
}

MoveNumberNode* Tokens::match_movenumbernode(){
  KeywordToken* k=match_keyword(":movenumber");
  if(!k) return NULL;
  Range* r=match_range();
  if(!r) show_error(":movenumber expected range but got: ");
  return new MoveNumberNode(r);
}

GameNumberNode* Tokens::match_gamenumbernode(){
  int x=save();
  if(match_keyword(":gamenumber")){
    Range* r=match_range();
    if(r) return new GameNumberNode(r);
  }
  restore(x);
  return NULL;
}

CqlNode* Tokens::match_cqlnode(){
  if(!match_keyword("cql")) 
    show_error("Expected 'cql' word to start :cql specification but got: ");
  if(!match_lparen())
    show_error("Expected left paren following the 'cql' keyword");
  vector<Node*>* ns=match_some_cqlfeatures();
  uassert(ns,"Received empty list of cql features");
  
  if(!match_rparen())
    show_error("Syntax error while parsing the CQL specification. Expected right paren.");
  vector<Node*> nodes=match_some_basicnodes();
  if(nodes.empty())
    show_error("Expected one or more filters following CQL specification, got none");
  if(!eof())
    show_error("Extra text following the filters after the CQL specification, or unspecified syntax error");
  Node*node=NULL;
  if(nodes.size()>1)
    node=new PositionNode(nodes);
  else
    node=nodes.at(0);
  CqlNode*n=new CqlNode(*ns,node);
  return n;
}


PositionNode*Tokens::match_positionnode(){
  vector<Node*> nodes;
  if(match_lbrace()){
    nodes=match_some_basicnodes();
    bool rp=match_rbrace();
    if(!rp)
      show_error("Syntax error while trying to parse list of filters, expecting right brace");
    return new PositionNode(nodes);
  }//if match_lbrace
  return NULL;
}



NotNode* Tokens::match_notnode(){
  if(!match_keyword(":not")) return NULL;
  Node*node=match_basicnode();
  return new NotNode(node);
}

NotSetNode* Tokens::match_notsetnode(){
  int x=save();
  if(!match_keyword(":not")) return NULL;
  SetBase* set=match_setbase();
  if(set) return new NotSetNode(set);
  restore(x);
  return NULL;
}

RayNode* Tokens::match_raynode(){
  if(!match_keyword("ray")) return NULL;
  bool isattack=false;
  Range* range=match_range();
  vector<Direction> directions=match_raydirections(&isattack);
  if (directions.empty())
    directions=Direction::allDirections();
  if(!match_lparen())
    show_error("Expecting '(' character after list of directions in the ray");
  vector<SetBase*>*ps=match_some_setbases();
  if(!match_rparen())
    show_error("Expected ')' character after arguments to ray");
  uassert(ps,"Internal");
  uassert(ps->size()>1,"Must have at least two arguments to a ray");
  return new RayNode(directions,
		     *ps,
		     isattack,
		     range);
}

vector<Direction> Tokens::match_raydirections(bool*isattack){
  vector<Direction> directions;
  if (match_keyword("attack")||match_keyword("attacks")){
    directions=Direction::allDirections();
    *isattack=true;
    return directions;
  }
  *isattack=false;
  while(true){
    StringToken *token=dynamic_cast<StringToken*>(current());
    if(!token) break;
    vector<Direction>* these=Direction::directionsFromString(token->value);
    if(!these) break;
    forward();
    for(auto d:*these){
      for(auto seen:directions)
	uassert(!d.eq(seen),"Duplicate directions in ray specification");
      directions.push_back(d);
    }
  }
  return directions;
}

      
vector<directionT>Tokens::directionsFromRayKeyword(KeywordToken *k){
  uassert(k);
  if(k->eq(":rayorthogonal"))
    return vector<directionT>{UP, DOWN, LEFT, RIGHT};
  else if (k->eq(":raydiagonal"))
    return vector<directionT>{UP_LEFT, UP_RIGHT, DOWN_LEFT, DOWN_RIGHT};
  else if (k->eq(":rayattack")||k->eq(":ray"))
    return vector<directionT>{
      UP, DOWN, LEFT, RIGHT,
	UP_LEFT, UP_RIGHT, DOWN_LEFT, DOWN_RIGHT};
  uassert(false, "Unknown ray keyword: ", k->value);
  return vector<directionT>{};
}
    

Node* Tokens::match_parenthesizedcountable(){
  int x=save();
  if(match_lbrace()){
    Node *node=match_countable();
    if(node && match_rbrace())
      return node;}
  restore(x);
  return NULL;
}

SetBase* Tokens::match_parenthesizedsetbase(){
  int x=save();
  if(match_lbrace()){
    SetBase *set=match_setbase();
    if(set && match_rbrace())
      return set;}
  restore(x);
  return NULL;
}
    
AttackNode* Tokens::match_attacknode(){
  bool keyword=(match_keyword(":attack")||match_keyword(":attacks"));
  if(!keyword) return NULL;
  Range *r=match_range();
  if(!match_lparen())
    show_error("'attack' expects left paren before the attacker and the attacked specifictions");
  SetBase *p1=match_setbase();
  uassert(p1,"No set specifier follows :attack");
  SetBase*p2=match_setbase();
  uassert(p2,"Two set specifiers must follow :attack but only one was found");
  if(!match_rparen())
    show_error("'attack' expects right paren following the attacker and attacked specifications");
  return new AttackNode(p1,p2,r);
}

Node* Tokens::match_simplenode(){
  if(match_keyword(":check"))
    return new CheckNode();
  if(match_keyword(":stalemate"))
    return new StalemateNode();
  if(match_keyword(":mate"))
    return new MateNode();
  if(match_keyword(":wtm"))
    return new ColorNode(WHITE);
  if(match_keyword(":btm"))
    return new ColorNode(BLACK);
  if(match_keyword(":initial"))
    return new InitialNode();
  if(match_keyword("variation"))
    return new InVariationNode();
  if(match_keyword("beginvariation"))
    return new BeginVariationNode();
  if(match_keyword("mainline"))
    return new InMainlineNode();
  if(match_keyword("terminal"))
    return new TerminalNode();
  if(match_keyword("gap"))
    return new GapNode();
  return NULL;
}

VariationsNode* Tokens::match_variationsnode(){
  if(match_keyword(":variations"))
    return new VariationsNode();
  return NULL;
}

KeywordToken*Tokens::match_raykeyword(){
  int x=save();
  char*keys[]={":ray",":rayorthogonal",":raydiagonal",":rayattack"};
  size_t nkeys = sizeof(keys)/sizeof(char*);
  KeywordToken *t=match_keyword();
  if(!t)return NULL;
  for(int i=0;i<nkeys;++i)
    if(t->eq(keys[i]))return t;
  restore(x);
  return NULL;
}


TransformBase* Tokens::match_transformbase(){
  TransformBase*t= NULL;
  if(!t) t=match_fliptransform();
  if(!t) t=match_shifttransform();
  return t;
}

TransformNode* Tokens::match_transformnode(){
  TransformBase* b=match_transformbase();
  if(!b) return NULL;
  TransformNode*tn=dynamic_cast<TransformNode*>(b);
  if(!tn)
    show_error("Use of transform without a range in context where a range is expected, like sort");
  return tn;
}

TransformSetNode* Tokens::match_transformsetnode(){
  int x=save();
  TransformBase*b=match_transformbase();
  if(!b) return NULL;
  TransformSetNode*tset=dynamic_cast<TransformSetNode*>(b);
  if(!tset){
    restore(x);
    return NULL;
  }
  return tset;
}

NumericVariable* Tokens::match_optionalnumericvariable(bool ismax){
  static int nextid=0;
  const char*name=match_quotedstring();
  if(!name){
    ++nextid;
    char buffer[100];
    sprintf(buffer,"CQL ID-%d",nextid);
    name=util::copy(buffer);
  }
  uassert(name,"internal monv");
  return Variable::getNumericVariable(name,ismax);
}

NumericVariable* Tokens::match_sortheader(){
  if(!match_keyword("sort"))return NULL;
  bool ismax=true;
  if (match_keyword("max"))
    ismax=true;
  else if (match_keyword("min"))
    ismax=false;
  NumericVariable* var=match_optionalnumericvariable(ismax);
  uassert(var,"Unable to form numeric variable");
  return var;
}

Node* Tokens::match_sortbodynode(){
  NumericVariable* var=match_sortheader();
  if(!var)return NULL;
  Node*node=match_countable();
  if(!node)
    show_error("'sort' must be followed by optional 'max' or 'min'; then by an optional quoted string; and last by countable filter. The countable filter is missing");
  return new AssignNode(var,node);
}

  
MatchCountNode* Tokens::match_matchcountnode(){
  bool sort=false;
  if (match_keywords("sort","matchcount"))
    sort=true;
  else if(!match_keyword("matchcount"))
    return NULL;
  Range * range= match_range();
  if(!range)
    show_error("missing range, eg. '1 20', following 'matchcount' keyword");
  return new MatchCountNode(range,sort);
}
  
PgnNode* Tokens::match_pgnnode(){
  if(match_keyword("pgn")||match_keyword("input")){
    StringToken*name=match_string();
    if(!name)show_error("Missing filename in :pgn specification");
    const char* filename= name->value;
    if(CqlPgnFilename){
#ifdef STANDALONE
      printf("Using command line argument pgn filename: %s\n",CqlPgnFilename);
#endif
      filename=CqlPgnFilename;
    }
    uassert(filename);
    if(!filename_is_pgn(filename)){
      fprintf(stderr,"Invalid pgn filename (must end in .pgn or .PGN): %s\n",filename);
      show_error("bad pgn filename");
    }
    return new PgnNode(filename);
  }
  return NULL;
}

OutputNode* Tokens::match_outputnode(){
  if(match_keyword(":output") || match_keyword(":out")){
    StringToken*name=match_string();
    if(!name)show_error("Missing filename in :output specification");
    const char* filename=name->value;
    uassert(filename);
    if(CqlOutputFilename){
      printf("Using command line argument for filename: %s\n",CqlOutputFilename);
      filename=CqlOutputFilename;
    }
    uassert(filename);
    if(!filename_is_pgn(filename)){
      fprintf(stderr,"Invalid pgn filename (must end in .pgn or .PGN): %s\n",filename);
      show_error("bad output filename");
    }
    return new OutputNode(filename);
  }
  return NULL;
}


PlayerNode* Tokens::match_playernode(){
  if(!match_keyword("player"))
    return NULL;
  colorT color=match_color();
  const char* name=match_quotedstring();
  if(!name)
    show_error("'player' must be followed by a quoted string");
  return new PlayerNode(name,color);
}

EventNode* Tokens::match_eventnode(){
  if(!match_keyword("event"))
    return NULL;
  const char* name=match_quotedstring();
  if(!name)
    show_error("'event' must be followed by a quoted string");
  return new EventNode(name);
}

SiteNode* Tokens::match_sitenode(){
  if(!match_keyword("site"))
    return NULL;
  const char* name=match_quotedstring();
  if(!name)
    show_error("'site' must be followed by a quoted string");
  return new SiteNode(name);
}

EloNode* Tokens::match_elonode(){
  if(!match_keyword("elo"))
    return NULL;
  colorT color=match_color();
  Range*range=match_range();
  if(!range)
    show_error("'elo' must be followed by an optional color and a range");
  return new EloNode(range,color);
}

YearNode* Tokens::match_yearnode(){
  if(!match_keyword("year"))
    return NULL;
  Range*range=match_range();
  if(!range)
    show_error("'year' must be followed by a range");
  return new YearNode(range);
}

ResultNode* Tokens::match_resultnode(){
  if(!match_keyword(":result"))
    return NULL;
  StringToken*name=NULL;
  if(!name ) name=match_string("1-0");
  if(!name) name=match_string("0-1");
  if(!name) name=match_string ("1/2-1/2");
  uassert(name,"expecting 1-0 or 0-1 or 1/2-1/2 following :result");
  return new ResultNode(name->value);
}


StringToken* Tokens::match_string(char* v){
  uassert(v!=NULL);
  int x=save();
  StringToken*n=match_string();
  if(n && n->eq(v))
    return n;
  restore(x);
  return NULL;
}
    
StringToken*Tokens::match_string(){
  StringToken*n=dynamic_cast<StringToken*>(current());
  if(n)forward();
  return n;
}

vector<Node*>* Tokens::match_some_cqlfeatures(){
  vector<Node*>*vp=new vector<Node*>;
  while(true){
    Node* n=match_cqlfeature();
    if(!n) break;
    vp->push_back(n);
  }
  return vp;
}

vector<Node*> Tokens::match_some_basicnodes(){
  vector<Node*>v;
  while(true){
    Node* n=match_basicnode();
    if(!n) break;
    v.push_back(n);
  }
  return v;
}

vector<SetBase*>* Tokens::match_some_setbases(){
  vector<SetBase*>*sets=new vector<SetBase*>;
  while(true){
    SetBase* set=match_setbase();
    if(!set) break;
    sets->push_back(set);
  }
  return sets;
}

ForallNode*Tokens::match_forallnode(){
  if(!match_keywords("square", "all"))
    return NULL;
  SquareVariable*sv=match_squarevariable();
  uassert(sv,"Expecting a square variable in 'forall' keyword specification");
  SetBase* target=match_inexpr();
  vector<Node*>nodes=match_some_basicnodes();
  return new ForallNode(sv,target,nodes);
}


      

KeywordToken* Tokens::match_keyword(const char *v){
  KeywordToken* t=dynamic_cast<KeywordToken*>(current());
  if(!t)return NULL;
  if( !t->eq(v)) return NULL;
  forward();
  return t;
}

bool Tokens::match_keywordstar(const char *name){
  int x=save();
  if (match_keyword(name)&&match_star())
    return true;
  restore(x);
  return false;
}

bool Tokens::match_keywords(const char *v1, const char*v2){
  int x=save();
  if(match_keyword(v1)&&match_keyword(v2)) return true;
  restore(x);
  return false;
}


KeywordToken* Tokens::match_keyword(){
  KeywordToken* t=dynamic_cast<KeywordToken*>(current());
  if(t) forward();
  return t;
}

bool Tokens::match_bar(){
  BarToken* t=dynamic_cast<BarToken*>(current());
  if(!t)return false;
  forward();
  return true;
}

bool Tokens::match_lparen(){
  LParenToken* t=dynamic_cast<LParenToken*>(current());
  if(!t)return false;
  forward();
  return true;
}

bool Tokens::match_star(){
  StarToken* t=dynamic_cast<StarToken*>(current());
  if(!t)return false;
  forward();
  return true;
}
bool Tokens::match_questionmark(){
  QuestionMarkToken* t=dynamic_cast<QuestionMarkToken*>(current());
  if(!t)return false;
  forward();
  return true;
}
bool Tokens::match_plus(){
  PlusToken* t=dynamic_cast<PlusToken*>(current());
  if(!t)return false;
  forward();
  return true;
}

bool Tokens::match_lbrace(){
  LBraceToken* t=dynamic_cast<LBraceToken*>(current());
  if(!t)return false;
  forward();
  return true;
}

bool Tokens::match_rparen(){
  RParenToken* t=dynamic_cast<RParenToken*>(current());
  if(!t)return false;
  forward();
  return true;
}

bool Tokens::match_rbrace(){
  RBraceToken* t=dynamic_cast<RBraceToken*>(current());
  if(!t)return false;
  forward();
  return true;
}

// bool Tokens::match_lessthan(){
//   LessThanToken* t=dynamic_cast<LessThanToken*>(current());
//   if(!t)return false;
//   forward();
//   return true;
// }

// bool Tokens::match_greaterthan(){
//   GreaterThanToken* t=dynamic_cast<GreaterThanToken*>(current());
//   if(!t)return false;
//   forward();
//   return true;
// }


PieceLoc* Tokens::match_pieceloc(){
  PieceDesignatorToken* t =
    dynamic_cast<PDT*>(current());
  if(!t) return NULL;
  else
    forward();
  if(t->pieceloc) return t->pieceloc;
  PieceLoc*p=new PieceLoc(t->pieces,
			  t->squares,
			  t->variables);
  t->pieceloc=p;
  return p;
}

Range* Tokens::match_range(){
  Range* r=match_compoundrange();
  if(r) return r;
  IntToken*ip=match_int();
  if(!ip) return NULL;
  return new Range(ip->value);
}

Range* Tokens::match_compoundrange(){
  int x=save();
  IntToken* minp=match_int();
  if(minp){
    IntToken* maxp=match_int();
    if(maxp)
      return new Range(minp->value,maxp->value);
  }
  restore(x);
  return NULL;
}

IntToken* Tokens::match_int(){
  IntToken *ip=dynamic_cast<IntToken*>(current());
  if(ip) forward();
  return ip;
}

MoveBase* Tokens::match_movebase(){
  KeywordToken*m=match_keyword("move");
  if (!m) return NULL;
  bool past=false;
  bool future=false;
  bool legal=false;
  bool mainline=false;
  if(match_keyword("previous"))
    past=true;
  else if (match_keyword("legal"))
    legal=true;
  else if (match_keyword("next"))
    future=true;
  else if (match_keyword("mainline"))
    mainline=false;
  if(!(past||future||legal||mainline))
    future=true;
    
  SetBase* from=match_fromexp();
  SetBase* to=match_toexp();
  PieceLoc* promote=match_promoteexp();
  SetBase* epcapture=match_enpassantexp();
  if(epcapture&&promote)
    show_error("cannot have a move that is both an en passant capture and a promotion");
  if (past&&!future&&!legal&&!mainline)
    return new MovePastNode(from,to,promote,epcapture);
  else if(future&&!past&&!legal&&!mainline)
    return new MoveFutureNode(from,to,promote,epcapture);
  else if (legal&&!past&&!future&&!mainline)
    return new MoveLegalNode(from,to,promote,epcapture);
  else if (mainline&&!past&&!future&&!legal)
    return new MoveMainlineNode(from,to,promote,epcapture);
  else uassert(false,"match_movebase");
  return NULL;
}
  
  
SetBase* Tokens::match_enpassantexp(){
  if (match_keyword("enpassant"))
    return new AnyNode();
  if (match_keyword("enpassantsquare")){
    SetBase*s=match_setbase();
    if(!s)
      show_error("expecting a set specifier following 'enpassantsquare' in 'move'");
    return s;
  }
  return NULL;
}

SetBase* Tokens::match_fromexp(){
  if(!match_keyword("from"))
    return NULL;
  SetBase* s=match_setbase();
  if(!s)
    show_error("missing set specifier in move from");
  return s;
}

SetBase* Tokens::match_toexp(){
  if(!match_keyword("to"))
    return NULL;
  SetBase* s=match_setbase();
  if(!s)
    show_error("missing set specifier in move to");
  return s;
}

PieceLoc* Tokens::match_promoteexp(){
  if(!match_keyword(":promote"))
    return NULL;
  PieceLoc* p=match_pieceloc();
  if(!p) show_error("missing set specifier in :move :promote");
  if(!p->isPurePiece())
    show_error("The promoted piece must be just a piece or set of pieces without square designators, e.g. 'promote R' or 'promote [RN]' ");
  return p;
}


    
SquareVariable*Tokens::match_squarevariable(){
  PDT* t=
    dynamic_cast<PDT*>(current());
  if(!t)return NULL;
  VariableToken*vt=t->getAsVariableToken();
  if(!vt)return NULL;
  const char *name=vt->value;
  uassert(vt);
  SquareVariable*sv=Variable::getSquareVariable(name);
  uassert(sv,"match_squarevariable, internal",name);
  forward();
  return sv;
}

TagVariable*Tokens::match_tagvariable(){
  PDT* t=
    dynamic_cast<PDT*>(current());
  if(!t)return NULL;
  VariableToken*vt=t->getAsVariableToken();
  if(!vt)return NULL;
  const char *name=vt->value;
  uassert(vt);
  TagVariable*tv=Variable::getTagVariable(name);
  uassert(tv,"match_tagvariable, internal",name);
  forward();
  return tv;
}


void Tokens::show_error(const char* message){
  printf("\n**SYNTAX ERROR** %s\n",message);
  if(eof())printf("unexpected end of file\n");
  else {
    printf ("Unable to parse the following token: ");
    current()->print();
    printf("\n");
  }
  cqlDiagnostic = (char*)message;
  myexit();
}

VectorNode* Tokens::match_vectornode(){
  DirectionParameter*p=match_directionparameter();
  if(!p)return NULL;
  SetBase*source=match_setbase();
  if(!source)
    show_error("expecting a set specifier following the direction parameter");
  return new VectorNode(*p,source);
}

vector<Direction>*Tokens::match_direction(){
  StringToken*token=dynamic_cast<StringToken*>(current());
  if(!token)return NULL;
  const char* v=token->value;
  uassert(v,"internal match_directionparameter");
  vector<Direction>*directionsp=Direction::directionsFromString(v);
  if(!directionsp){
    return NULL;
  }
  forward();
  return directionsp;
}
  
DirectionParameter* Tokens::match_directionparameter(){
  vector<Direction>* directionsp=match_direction();
  if(!directionsp)return NULL;
  Range *range=match_range();
  if (!range) range= new Range(1,7);
  DirectionParameter*p=new DirectionParameter(*directionsp,range);
  return p;
}

GapNode* Tokens::match_gapnode(){
  if(match_keyword("gap"))
    return new GapNode();
  else return NULL;
}

FutureStarNode* Tokens::match_futurestarnode(){
  if(!match_keywordstar("next")) return NULL;
  Range*range=match_range();
  Node*node=match_basicnode();
  if(!node)
    show_error("expecting a valid filter following 'next*'");
  return new FutureStarNode(node,range);
}

PastStarNode* Tokens::match_paststarnode(){
  if(!match_keywordstar("previous")) return NULL;
  Range*range=match_range();
  Node*node=match_basicnode();
  if(!node)
    show_error("expecting a valid filter following 'previous*' ");
  return new PastStarNode(node,range);
}


CountNode* Tokens::match_countnode(){
  CountNode* c=NULL;
  if(!c&&match_keyword("countsquares")){
      Range*r=match_range();
      if(!r)
	show_error("The 'countsquares' keyword must be followed by a range");
      SetBase*s=match_setbase();
      if(!s)
	show_error("Expected a set filter following 'countsquares range'");
      return new CountNode(s,r);
    }
  if(!c)
     c=match_count_existsnode();
  if(!c)
    c=match_count_pieceidnode();
  if(c) return c;
  int x=save();
  SetBase* s=match_setbase();
  if(!s) return NULL;
  Range* r=match_range();
  if(r)  {
    fprintf(stderr,"\nWARNING: the syntax 'set-filter range' is deprecated. Instead, use 'countsquares range set-filter'\n");
    return new CountNode(s,r);
  }
  restore(x);
  return NULL;
}
  
  
  
SetBase* Tokens::match_inexpr(){
  if(!match_keyword("in"))
    return NULL;
  SetBase*ret=match_setbase();
  if(!ret)
    show_error("Expecting a set expression following the 'in' keyword in 'square' expression");
  return ret;
}

BetweenNode* Tokens::match_betweennode(){
  if(!match_keyword("between"))
    return NULL;
  if(!match_lparen())
    show_error("arguments to 'between' should be enclosed in parens: missing '('");
  SetBase* source=match_setbase();
  if(!source)
    show_error("Expected a source set following 'between'");
  SetBase* target=match_setbase();
  if(!target)
    show_error("Expected a target set following 'between' and the source");
  if(!match_rparen())
    show_error("arguments to 'between' should be enclosed in parens: missing ')'");

  return new BetweenNode(source,target);
}

ExtensionNode* Tokens::match_extensionnode(){
  if(!match_keyword("extension"))
    return NULL;
  return new ExtensionNode();
}

AnyNode* Tokens::match_anynode(){
  if(match_keyword("any"))
    return new AnyNode();
  else return NULL;
}

PowerNode* Tokens::match_powernode(){
  if(!match_keyword("power"))
    return NULL;
  Range*range=match_range();
  if(!range)
    show_error("Expected a range following 'power' ");
  SetBase*set=match_setbase();
  if(!set)
    show_error("Expected a set following 'power' and the range");
  return new PowerNode(set,range);
}

PowerDifferenceNode* Tokens::match_powerdifferencenode(){
  if(!match_keyword("powerdifference"))
    return NULL;
  Range*range=match_range();
  if(!range)
    show_error("Expected a range following 'powerdifference' ");
  if(!match_lparen())
    show_error("Expected '(' following 'powerdifference' and range");
  SetBase*set1=match_setbase();
  if(!set1)
    show_error("Expected a set following 'powerdifference range <'");
  SetBase*set2=match_setbase();
  if(!set2)
    show_error("Expected another set following 'powerdifference range < set1 '");
  if(!match_rparen())
    show_error("Expected ')' following 'powerdifference range < set1 set2'");
  return new PowerDifferenceNode(set1,set2,range);
}

ExistsNode* Tokens::match_existsnode(){
  int x=save();
  if(match_keywords("square","all")){
    restore(x);
    return NULL;
  }
  Range * range{NULL};
  ExistsNode*e=match_ranged_existsnode(&range);
  if(!e||range){
    restore(x);
    return NULL;
  }
  return e;
}

 CountNode* Tokens::match_count_existsnode(){
  int x=save();
  Range *r=NULL;
  ExistsNode*e=match_ranged_existsnode(&r);
  if(!e) uassert(!r);
  if(r) uassert(e);
  if(e&&r)
    return new CountNode(e,r);
  restore(x);
  return NULL;
}

ExistsNode* Tokens::match_ranged_existsnode(Range**rp){
  int x=save();
  if(match_keywords("square","all")){
    restore(x);
    return NULL;
  }
  if(!match_keyword("square"))
    return NULL;
  Range*range=match_range();
  SquareVariable*sv=match_squarevariable();
  if(!sv) show_error("Expecting a square variable in 'square' keyword specification");
  SetBase*target=match_inexpr();
  if(!target)
    show_error ("Missing 'in' following the variable name in 'square' expression");
  vector<Node*>nodes=match_some_basicnodes();
  if(!nodes.size())
    show_error("expected a nonzero number of nodes to test in square form");
  if(range) *rp=range;
  return new ExistsNode(sv,target,nodes);
}

PieceIdNode* Tokens::match_pieceidnode(){
  int x=save();
  Range * range{NULL};
  PieceIdNode*e=match_ranged_pieceidnode(&range);
  if(!e||range){
    restore(x);
    return NULL;
  }
  return e;
}

 CountNode* Tokens::match_count_pieceidnode(){
  int x=save();
  Range *r=NULL;
  PieceIdNode*e=match_ranged_pieceidnode(&r);
  if(!e) uassert(!r);
  if(r) uassert(e);
  if(e&&r)
    return new CountNode(e,r);
  restore(x);
  return NULL;
}

PieceIdNode* Tokens::match_ranged_pieceidnode(Range**rp){
  if(!match_keyword("piece"))
    return NULL;
  Range*range=match_range();
  TagVariable*tv=match_tagvariable();
  if(!tv) show_error("Expecting an id variable in 'piece' keyword specification");
  SetBase*target=match_inexpr();
  if(!target)
    show_error("Expecting 'in', followed by a set, after  'piece'");
  vector<Node*>nodes=match_some_basicnodes();
  if(!nodes.size())
    show_error("expected a nonzero number of filters following 'in set'  in piece form");
  if(range) *rp=range;
  return new PieceIdNode(tv,target,nodes);
}

OriginNode* Tokens::match_originnode(){
  if(!match_keyword("origin"))
    return NULL;
  TagVariable*tag=match_tagvariable();
  if(!tag)
    show_error("expected a piece id following 'origin'");
  return new OriginNode(tag);
}

MatchCommentNode* Tokens::match_matchcommentnode(){
  if(!match_keyword("hascomment"))
    return NULL;
  const char * name=match_quotedstring();
  if(!name)
    show_error("Expected a quoted string folllowing 'hascomment'");
  return new MatchCommentNode(name);
}

const char* Tokens::match_quotedstring(){
  QuotedStringToken*q=dynamic_cast<QuotedStringToken*>(current());
  if(!q) return NULL;
  forward();
  return q->value;
}

CommentBase* Tokens::match_commentbase(){
  if(!match_keyword("comment"))return NULL;
  const char* s=match_quotedstring();
  if(s){
    if(strlen(s)>=CommentBase::maxLen)
      show_error("comment too long");
    return new CommentString(s);
  }
  SetBase*set=match_setbase();
  if(set)
    return new CommentSet(set);
  show_error("'comment' must be followed by either a quoted string or a set filter");
  return NULL;
}

colorT Tokens::match_color(){
  if (match_keyword("white"))return WHITE;
  if (match_keyword("black"))return BLACK;
  return NOCOLOR;
}
