%{
LongitudLineaCosta.m
Autor: Arturo Yepez
Carnet: 15-11551

DESCRIPCION: En el actual archivo está la estructura con la cual se cumplen
con los requerimientos del item 5 del enunciado. Mediante la expresión para 
calcular la Longitud de Arco de una curva, usaremos esta expresión para
calcular la longitud de los arcos de cada función de los spline en todos los
tramos del recorrido de la costa de la Peninsula.
%}

recorrido = load('tramos');

[a1, b1, c1, d1] = SplineCubico(recorrido.tramo1x, recorrido.tramo1y);
[a2, b2, c2, d2] = SplineCubico(recorrido.tramo2x, recorrido.tramo2y);
[a3, b3, c3, d3] = SplineCubico(recorrido.tramo3x, recorrido.tramo3y);
[a4, b4, c4, d4] = SplineCubico(recorrido.tramo4x, recorrido.tramo4y);
[a5, b5, c5, d5] = SplineCubico(recorrido.tramo5x, recorrido.tramo5y);
[a6, b6, c6, d6] = SplineCubico(recorrido.tramo6x, recorrido.tramo6y);
[a7, b7, c7, d7] = SplineCubico(recorrido.tramo7x, recorrido.tramo7y);
[a8, b8, c8, d8] = SplineCubico(recorrido.tramo8x, recorrido.tramo8y);
[a9, b9, c9, d9] = SplineCubico(recorrido.tramo9x, recorrido.tramo9y);
[a10, b10, c10, d10] = SplineCubico(recorrido.tramo10x, recorrido.tramo10y);
[a11, b11, c11, d11] = SplineCubico(recorrido.tramo11x, recorrido.tramo11y);

Longitud = 0;

# LONGITUD DE ARCO 1
for i=1:1:length(a1)-1
  Longitud += LongitudArco(b1(i), c1(i), d1(i), ...
    recorrido.tramo1x(i), recorrido.tramo1x(i+1));
end

# LONGITUD DE ARCO 2
for i=1:1:length(a2)-1
  Longitud += LongitudArco(b2(i), c2(i), d2(i), ...
    recorrido.tramo2x(i), recorrido.tramo2x(i+1));
end

# LONGITUD DE ARCO 3
for i=1:1:length(a3)-1
  Longitud += LongitudArco(b3(i), c3(i), d3(i), ...
    recorrido.tramo3x(i), recorrido.tramo3x(i+1));
end


# LONGITUD DE ARCO 4
for i=1:1:length(a4)-1
  Longitud += LongitudArco(b4(i), c4(i), d4(i), ...
    recorrido.tramo4x(i), recorrido.tramo4x(i+1));
end


# LONGITUD DE ARCO 5
for i=1:1:length(a5)-1
  Longitud += LongitudArco(b5(i), c5(i), d5(i), ...
    recorrido.tramo5x(i), recorrido.tramox5(i+1));
end


# LONGITUD DE ARCO 6
for i=1:1:length(a6)-1
  Longitud += LongitudArco(b6(i), c6(i), d6(i), ...
    recorrido.tramo6x(i), recorrido.tramo6x(i+1));
end


# LONGITUD DE ARCO 7
for i=1:1:length(a7)
  Longitud += LongitudArco(b7(i), c7(i), d7(i), ...
    recorrido.tramo7x(i), recorrido.tramo7x(i+1));
end


# LONGITUD DE ARCO 8
for i=1:1:length(a8)-1
  Longitud += LongitudArco(b8(i), c8(i), d8(i), ...
    recorrido.tramo8x(i), recorrido.tramo8x(i+1));
end


# LONGITUD DE ARCO 9
for i=1:1:length(a9)-1
  Longitud += LongitudArco(b9(i), c9(i), d9(i), ...
    recorrido.tramo9x(i), recorrido.tramo9x(i+1));
end

# LONGITUD DE ARCO 10
for i=1:1:length(a10)-1
  Longitud += LongitudArco(b10(i), c10(i), d10(i), ...
    recorrido.tramo10x(i), recorrido.tramo10x(i+1));
end

# LONGITUD DE ARCO 111
for i=1:1:length(a11)-1
  Longitud += LongitudArco(b11(i), c11(i), d11(i), ...
    recorrido.tramo11x(i), recorrido.tramo11x(i+1));
end



# CONVERSIÓN A KM

Longitud = (Longitud*5)/33