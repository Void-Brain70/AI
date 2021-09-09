%Search or membership
member(x,[X|_]).
member(X.[_|T]):- member(X,T).