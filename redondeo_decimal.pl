%Primer elemento de la lista: sirve para obtener la parte entera
primerElemento([X|_], X).

%Ultimo elemento de la lista: sirve para obtener la parte decimal
ultimoElemento([Y], Y).
ultimoElemento([_|Xs], Y):-
    ultimoElemento(Xs, Y).

%Sumar dos numeros
suma(X,0,X).
suma(A,s(B),s(Y)):-
    suma(A,B,Y).

mayor5(_,0,s(0)).
mayor5(0,_,0).
mayor5(s(X),s(Z),Y):-
    mayor5(X,Z,Y).
  
redondeo(redondeoUnidad, numeroOriginal(',',lentero,ldecimal), numeroRedondeado(',',lenterof,[])).
numeroOriginal(',', lentero, ldecimal).
numeroRedondeado(',', lentero, []).

%Principal: se encarga de redondear a unidad el decimal segun las condiciones indicadas: FALTA ACARREO
redondearDecimal([Lentero,',',Ldecimal], redondeoUnidad, redondeo(redondeoUnidad, numeroOriginal(',',[Lentero],[Ldecimal]), numeroRedondeado(',',[Lenterof],[]))):-
                 mayor5(Ldecimal,s(s(s(s(s(0))))),Resto),
                 suma(Lentero,Resto,Lenterof).

%Principal: se encarga de redondear a decima el decimal segun las condiciones indicadas: FALTA ACARREO
redondearDecimal([Lentero,',',[X1,X2|_]], redondeoDecima, redondeo(redondeoDecima, numeroOriginal(',',[Lentero],[Ldecimal]), numeroRedondeado(',',[Lenterof],[]))):-
                 mayor5(X2,s(s(s(s(s(0))))),Resto),
                 suma(X1,Resto,Lenterof),
    			mayor5(X1,s(s(s(s(s(0))))),Resto),
                 suma(X1,Resto,Lenterof).
    

%Principal: se encarga de redondear a decima el decimal segun las condiciones indicadas: FALTA ACARREO
redondearDecimal([Lentero,',',[X1,X2,X3|_]], redondeoCentesima, redondeo(redondeoCentesima, numeroOriginal(',',[Lentero],[Ldecimal]), numeroRedondeado(',',[Lenterof],[]))):-
                 mayor5(Ldecimal,s(s(s(s(s(0))))),Resto),
                 suma(Lentero,Resto,Lenterof).
