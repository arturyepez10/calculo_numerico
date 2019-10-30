# PROYECTO 1
# Autor: Arturo Yepez

# MATRICES
A1 = [0.641, 0.242; 0.321, 0.121];
A2 = [10, -7, 0; -3,2,6; 5,-1,5];
s = load("CO3211_proy1datos");
A3 = s.A1;
A4 = s.A2;
A5 = s.A3;
A6 = s.A4;
A7 = s.A5;

# EJERCICIO 3
%{
    A diferencia de los ejercicios anteriores, aquí se toma otra perspectiva 
para intentar lograr una mejor aproximación al número de condición. He allí la
implementación del codigo de sist_aprox que junto a las sugerencias del
enunciado se prueba una nueva idea para aproximar el valor de la norma de la 
matriz inversa y por lo tanto, el número de condición.
%}


# CASO 1: matriz A1
x = sist_aprox(A1);

disp('Número de Condición de la matriz A1')
cond(A1,1)
disp('Aproximación del Número de Condición')
A1aprox1 = norma1(A1)*norm(x,1)

# CASO 2: matriz A2
x = sist_aprox(A2);

disp('Número de Condición de la matriz A2')
cond(A2,1)
disp('Aproximación del Número de Condición')
A2aprox1 = norma1(A2)*norm(x,1)

# CASO 3: matriz A3
x = sist_aprox(A3);

disp('Número de Condición de la matriz A3')
cond(A3,1)
disp('Aproximación del Número de Condición')
A3aprox1 = norma1(A3)*norm(x,1)

# CASO 4: matriz A4
x = sist_aprox(A4);

disp('Número de Condición de la matriz A4')
cond(A4,1)
disp('Aproximación del Número de Condición')
A4aprox1 = norma1(A4)*norm(x,1)

# CASO 5: matriz A5
x = sist_aprox(A5);

disp('Número de Condición de la matriz A5')
cond(A5,1)
disp('Aproximación del Número de Condición')
A5aprox1 = norma1(A5)*norm(x,1)

# CASO 6: matriz A6
%{
    Si intentamos probar la resolución del sistema por descomposición LU el 
algoritmo saltará con un error y esto es porque la matriz A6 no tiene una 
descomposición LU dado que alguna de las submatrices (menores) tiene determinan-
te 0, que podemos tomar como razón dado un teorema.
%}

# CASO 7: matriz A7
x = sist_aprox(A7);

disp('Número de Condición de la matriz A7')
cond(A7,1)
disp('Aproximación del Número de Condición')
A7aprox1 = norma1(A7)*norm(x,1)