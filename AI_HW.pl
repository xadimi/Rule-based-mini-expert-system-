father(mohammed, houssam).
father(mohammed, hassan).
mother(kenza, houssam).
mother(kenza, hassan).
brother(hassan,houssam).
alive(kenza).
alive(houssam).
alive(hassan).
alive(mohammed).
spouce(kenza,mohammed).








write_inheritance_list(Y) :-
    assertz(dead(Y)),
    dead(Y),
    father(Y,houssam),
    father(Y,hassan),
    spouce(kenza,Y),
    nl,
    write([houssam,son,5/12]|[hassan,son,5/12] |[kenza,spouce,1/6] ),
    retract(dead(Y)).
write_inheritance_list(Z) :-
    assertz(dead(Z)),
    dead(Z),
    mother(Z,houssam),
    mother(Z,hassan),
    spouce(Z,mohammed),
    nl,
    write([houssam,son,5/12]|[hassan,son,5/12] |[mohammed,hasband,1/6] ),
    retract(dead(Z)).
write_inheritance_list(X) :-
    assertz(dead(X)),
    dead(X),
    brother(X,houssam),
    father(mohammed,X),
    mother(kenza,X),
    nl,
    write([houssam,brother,1/2]|[kenza,mother,1/4] |[mohammed,father,1/4] ),
    retract(dead(X)).
write_inheritance_list(V) :-
    assertz(dead(V)),
    dead(V),
    brother(hassan,V),
    father(mohammed,V),
    mother(kenza,V),
    nl,
    write([hassan,brother,1/2]|[kenza,mother,1/4] |[mohammed,father,1/4] ),
    retract(dead(V)).
