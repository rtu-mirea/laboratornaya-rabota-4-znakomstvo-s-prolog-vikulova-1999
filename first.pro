include "rodstvenniyeotnosheniya.inc"

predicates
nondeterm parent(symbol,symbol)
nondeterm female(symbol)
nondeterm male(symbol)
nondeterm mother(symbol,symbol)
nondeterm father(symbol,symbol)
nondeterm child(symbol,symbol)
nondeterm grandfather(symbol,symbol)
nondeterm grandmother(symbol,symbol)
nondeterm sister(symbol,symbol)	
nondeterm brother(symbol,symbol)	

nondeterm aunt(symbol,symbol)
nondeterm uncle(symbol,symbol)

clauses
parent(pam,bob). 	
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).	
female(liz).
female(ann).
female(pat).

male(tom).	
male(bob).
male(jim).

child(Y,X):- parent(X,Y).
mother(X,Y):- parent(X,Y),female(X). 
father(X,Y):- parent(X,Y),male(X). 
grandfather(X,Z):- parent(X,Y), child (Z,Y), male(X).
grandmother(X,Z):- parent(X,Y), child (Z,Y), female(X).
sister(X,Z) :- parent(Y,Z), parent(Y,X), female(X).
brother(X,Z) :- parent(Y,Z), parent(Y,X), male(X).
aunt(X,Z) :- child (X,Y), parent (Y,W), parent(W,Z), female(X).
uncle(X,Z) :- child (Z,Y), child (Y,W), parent(W,X), male(X).


goal
grandfather(Grandfather,_).
%grandmother(Grandmother, _).
%sister(X,Z).
%brother(X,Z).
%aunt(X,Z).
%uncle(X,Z).
