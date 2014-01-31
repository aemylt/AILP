% element(X,Ys) <- X is an element of the list Ys
element(_,[],[]).
element(X,[X|Ys],R):-element(X,Ys,R).
element(X,[Y|Ys],[Y|R]):-element(X,Ys,R).

% subset(Xs,Ys) <- every element of list Xs occurs in list Ys
subset([],[_]).
subset([X|Xs],[X|Ys]):-subset(Xs,Ys).
subset(Xs,[_|Ys]):-subset(Xs,Ys).

% subseq1(Xs,Ys) <- every element of list Xs occurs in the same order and contiguously in list Ys
subseq1([],ABC).
subseq1([B|Bs],ABC) :-append(_,BC,ABC),append([B|Bs],_,BC).

% subseq2(Xs,Ys) <- every element of list Xs occurs in the same order and contiguously in list Ys
subseq2([],Ys).
subseq2([X|Xs],Ys):-append([X|Xs],_,Ys).
subseq2([X|Xs],[_|Ys]):-subseq2([X|Xs],Ys).
