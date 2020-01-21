include "orangelady.inc"
include "orangelady.con"

predicates
meet (symbol, symbol)
in (symbol, symbol)
sitDownAt (symbol, symbol)
size (symbol, symbol)
material (symbol, symbol)
keepInHands (symbol, symbol)
with (symbol, symbol)
lookIn (symbol, symbol)
handInHand (symbol, symbol)
near (symbol, symbol)
nameSquirrel (symbol, symbol)
posture (symbol, symbol)
 
clauses
meet (lady, hero) :- in (cafe, table), in (cafe, hero), sitDownAt (table, lady).  
in (cafe, table). 
keepInHands (package, lady) :- size (large, package), material (paper, package),  with (oranges, package).
size (large, package).
material (paper, package). 
with (oranges, package).
sitDownAt (table, hero) :- lookIn (lady, hero),  lookIn (hero, lady), sitDownAt (table, lady).
lookIn (lady, hero).  
handInHand (hero, lady) :- sitDownAt (table, hero), sitDownAt (table, lady).
nameSquirrel (hero, lady) :- near (table, lady),  posture (eyesAreFullOfTears, lady).
near (table, lady). 
posture (eyesAreFullOfTears, lady).


goal
size (large, Part),
material (paper, Part).
