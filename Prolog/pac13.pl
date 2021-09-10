tall(shafa,rashik).
tall(rashik,prince).
tall(prince,iqbal).

rule_tall(X,Y):-tall(X,Y).
rule_tall(X,Y):-tall(X,Y);tall(Z,Y),rule_tall(X,Z).
