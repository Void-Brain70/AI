product_cost(chips, 10).
product_cost(cake, 15).
product_cost(milk, 60).

is_cheaper(X, Y) :-
        product_cost(X, Z),
        product_cost(Y, W),
        Z < W.
