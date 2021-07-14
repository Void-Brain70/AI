%sectionA
goal(brazil,0).
goal(england,1).
goal(france,2).
%sectionB
goal(argentina,1).
goal(italy,1).
goal(portugal,3).

go:-
write('Enter section A country name'),nl,
read(X),nl,
goal(X,Y),nl,
write('Section A country score is'),nl,
write(Y),nl,

write('Enter section B country name'),nl,
read(M),nl,
goal(M,N),nl,
write('Section B country score is'),nl,
write(N),

compare(Y,N).
compare(Y,N):- 

Y>N,nl,
write('Section A country Win the match');
Y<N,nl,
write('Section B country Win the match');
Y=:=N,nl,
write('Draw the both section country').