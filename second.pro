
include "likesandcanbuy.inc"

predicates
can_buy(symbol, symbol) - nondeterm (o,o)
person(symbol) - nondeterm (o)
car(symbol,short,symbol) - nondeterm (o,o,o), nondeterm (i,o,o)
likes(symbol, symbol) - nondeterm (i,i)
for_sale(symbol) - nondeterm (i), nondeterm (o)

clauses
can_buy(X, Y) :- person(X), car(Y, W, V), likes(X, Y), for_sale(Y). 
person(kelly).
person(judy).
person(john).
person(mila).

car(audi, 2500, orange).
car(hot_rod, 20000, black).
car(chrysler, 13000,red).
car(ford, 9000, gray).
car(datsun, 8000, white).

likes(kelly, ford).
likes(judy, datsun).
likes(john, datsun).
likes(mila, hot_rod).

for_sale(datsun).
for_sale(audi).
for_sale(hot_rod). 

goal
can_buy(X,Y),
car(Y,W,V).
