%redondearDecimal/3: se encarga de redondear el decimal segun las condiciones indicadas.
redondearDecimal(NInicial, TRedondeo, NFinal):-

%redondeo/3: es la estructura del resultado del redondeo.
redondeo(TRedondeo, NOriginal, NRedondeado):-

%numeroOriginal/3: representa el numero a redondear.
numeroOriginal(Separador, ParteEnt, ParteDecimal):-

%numeroRedondeado/3: representa el numero redondeado.
numeroRedondeado(Separador, ParteEnt, ParteDecimal):-
