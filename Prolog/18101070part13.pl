has(sedan, four_doors).
trunk(sedan, traditional).

has(coupe,two_doors).
trunk(coupe,traditional).
roof(coupe,solid).

has(sports, two_doors).
price(sports, high).

types(Car, sedan) :-
has(Car, four_doors),
trunk(Car, traditional).

types(Car, coupe) :-
has(Car, two_doors),
trunk(Car, traditional),
roof(Car, solid).

types(Car, sports) :-
has(Car, two_doors),
price(Car, high).
