replace_all([],Value,With,[]).
replace_all([Value|T1],Value,With,[With|T2]):-
        replace_all(T1,Value,With,T2).
replace_all([H|T1],Value,With,[H|T2]):-
        Value\=H,
        replace_all(T1,Value,With,T2).