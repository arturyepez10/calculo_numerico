%{
ContornoCosta.m
Autor: Arturo Yepez
Carnet: 15-11551

DESCRIPCION: En el actual archivo está la estructura con la cual se cumplen
con los requerimientos del item 4 del enunciado, que basicamente se resume en la
estructuración de un archivo que se encargue de gráficar todos los splines 
asignados a la representación de la costa de la Peninsula de Paraguaná.
%}


hold on
title('Peninsula de Paraguaná')

recorrido = load('tramos');


# TRAMO 1 DEL RECORRIDO
recorrido.tramo1x = flip(recorrido.tramo1x);
recorrido.tramo1y = flip(recorrido.tramo1y);

[a1, b1, c1, d1] = SplineCubico(recorrido.tramo1x, recorrido.tramo1y);

evalTramo1 = zeros(length(a1),1);

for i=1:1:length(a1)
  evalTramo1(i) = Horner(recorrido.tramo1x, a1, b1, c1, d1, recorrido.tramo1x(i));
end

plot(recorrido.tramo1x, evalTramo1)


# TRAMO 2 DEL RECORRIDO
[a2, b2, c2, d2] = SplineCubico(recorrido.tramo2x, recorrido.tramo2y);

evalTramo2 = zeros(length(a2),1);

for i=1:1:length(a2)
  evalTramo2(i) = Horner(recorrido.tramo2x, a2, b2, c2, d2, recorrido.tramo2x(i));
end

plot(recorrido.tramo2x, evalTramo2)


# TRAMO 3 DEL RECORRIDO
[a3, b3, c3, d3] = SplineCubico(recorrido.tramo3x, recorrido.tramo3y);

evalTramo3 = zeros(length(a3),1);

for i=1:1:length(a3)
  evalTramo3(i) = Horner(recorrido.tramo3x, a3, b3, c3, d3, recorrido.tramo3x(i));
end

plot(recorrido.tramo3x, evalTramo3)


# TRAMO 4 DEL RECORRIDO

[a4, b4, c4, d4] = SplineCubico(recorrido.tramo4x, recorrido.tramo4y);

evalTramo4 = zeros(length(a4),1);

for i=1:1:length(a4)
  evalTramo4(i) = Horner(recorrido.tramo4x, a4, b4, c4, d4, recorrido.tramo4x(i));
end

plot(recorrido.tramo4x, evalTramo4)


# TRAMO 5 DEL RECORRIDO

[a5, b5, c5, d5] = SplineCubico(recorrido.tramo5x, recorrido.tramo5y);

evalTramo5 = zeros(length(a5),1);

for i=1:1:length(a5)
  evalTramo5(i) = Horner(recorrido.tramo5x, a5, b5, c5, d5, recorrido.tramo5x(i));
end

plot(recorrido.tramo5x, evalTramo5)


# TRAMO 6 DEL RECORRIDO

[a6, b6, c6, d6] = SplineCubico(recorrido.tramo6x, recorrido.tramo6y);

evalTramo6 = zeros(length(a6),1);

for i=1:1:length(a6)
  evalTramo6(i) = Horner(recorrido.tramo6x, a6, b6, c6, d6, recorrido.tramo6x(i));
end

plot(recorrido.tramo6x, evalTramo6)


# TRAMO 7 DEL RECORRIDO

[a7, b7, c7, d7] = SplineCubico(recorrido.tramo7x, recorrido.tramo7y);

evalTramo7 = zeros(length(a7),1);

for i=1:1:length(a7)
  evalTramo7(i) = Horner(recorrido.tramo7x, a7, b7, c7, d7, recorrido.tramo7x(i));
end

plot(recorrido.tramo7x, evalTramo7)


# TRAMO 8 DEL RECORRIDO

[a8, b8, c8, d8] = SplineCubico(recorrido.tramo8x, recorrido.tramo8y);

evalTramo8 = zeros(length(a8),1);

for i=1:1:length(a8)
  evalTramo8(i) = Horner(recorrido.tramo8x, a8, b8, c8, d8, recorrido.tramo8x(i));
end

plot(recorrido.tramo8x, evalTramo8)


# TRAMO 9 DEL RECORRIDO

[a9, b9, c9, d9] = SplineCubico(recorrido.tramo9x, recorrido.tramo9y);

evalTramo9 = zeros(length(a9),1);

for i=1:1:length(a9)
  evalTramo9(i) = Horner(recorrido.tramo9x, a9, b9, c9, d9, recorrido.tramo9x(i));
end

plot(recorrido.tramo9x, evalTramo9)


# TRAMO 10 DEL RECORRIDO

[a10, b10, c10, d10] = SplineCubico(recorrido.tramo10x, recorrido.tramo10y);

evalTramo10 = zeros(length(a10),1);

for i=1:1:length(a10)
  evalTramo10(i) = Horner(recorrido.tramo10x, a10, b10, c10, d10, ...
    recorrido.tramo10x(i));
end

plot(recorrido.tramo10x, evalTramo10)
%}

# TRAMO 11 DEL RECORRIDO

[a11, b11, c11, d11] = SplineCubico(recorrido.tramo11x, recorrido.tramo11y);

evalTramo11 = zeros(length(a11),1);

for i=1:1:length(a11)
  evalTramo11(i) = Horner(recorrido.tramo11x, a11, b11, c11, d11, ...
    recorrido.tramo11x(i));
end

plot(recorrido.tramo11x, evalTramo11)
