%Search or membership
member(X,[X|_]).
member(X,[_|T]):-member(X,T).
