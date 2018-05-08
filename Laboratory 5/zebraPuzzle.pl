Strada = [
  casa(1,_,_,_,_,_),
  casa(2,_,_,_,_,_),
  casa(3,_,_,_,_,_),
  casa(4,_,_,_,_,_),
  casa(5,_,_,_,_,_)],
		 %casa(Nr,  Nation,     Culr,     Animal,Bautur,Tigari)
   member(casa(_,   englez,     rosie,    _,     _,     _), Strada), %2
   member(casa(_,   spaniol,    _,        caine, _,     _), Strada), %3
   member(casa(_,   _,          verde,    _,     cafea, _), Strada), %4
   member(casa(_,   ucrainean,  _,        _,     cafea, _), Strada), %5    
   member(casa(X,   _,          bej,      _,     _,     _), Strada), %6
   member(casa(X+1, _,          verde,    _,     _,     _), Strada), %6
   member(casa(_,   _,          _,        melci, _,     oldgold), Strada), %7
   member(casa(_,   _,          galbena,  _,     _,     kools), Strada), %8
   member(casa(3,   _,          _,        _,     lapte, _), Strada), %9
   member(casa(1,   norvegian,  _,        _,     _,     _), Strada), %10
   member(casa(Y,   _,          _,        vulpe, _,     _), Strada), %11
   member(casa(Y+1, _,          _,        _,     _,     chesterfields) Strada); %11
   member(casa(Y-1, _,          _,        _,     _,     chesterfields) Strada); %11
   member(casa(Z,   _,          _,        cal,   _,     _), Strada), %12
   member(casa(Z+1, _,          _,        _,     _,     kools), Strada); %12
   member(casa(Z-1, _,          _,        _,     _,     kools), Strada), %12
   member(casa(_,   _,          _,        _,     suc,   luckystrike), Strada), %13
   member(casa(_,   japonez,    _,        _,     _,     parliaments), Strada), %14
   member(casa(Q,   _,          albastra, _,     _,     _), Strada), %15
   member(casa(Q+1, norvegian,  _,        _,     _,     _), Strada); %15
   member(casa(Q-1, norvegian,  _,        _,     _,     _), Strada). %15
].

