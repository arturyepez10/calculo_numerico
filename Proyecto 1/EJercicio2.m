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

# EJERCICIO 2
%{
    En comparación respecto ejercicio pasado, ahora utilizamos la función creada 
rand_best_aprox para crear los vectores 'y' de manera que volvamos a calcular 
aproximaciones, esta vez de manera que sean un poco más acercadas al valor real
si es que no son el valor real.
%}
   
# CASO 1: matriz A1
disp('Numeros de Condiciones de la Matriz A1')
M_A1 = [cond(A1,1),cond(A1,inf)]

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma 1')
A1aprox1 = rand_best_aprox1(A1)

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma Infinito')            
A1aprox1_inf = rand_best_aproxinf(A1)

# CASO 2: matriz A2
disp('Numeros de Condiciones de la Matriz A2')
M_A2 = [cond(A2,1),cond(A2,inf)]

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma 1')
A2aprox1 = rand_best_aprox1(A2)

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma Infinito')            
A2aprox1_inf = rand_best_aproxinf(A2)
                
# CASO 3: matriz A3
disp('Numeros de Condiciones de la Matriz A3')
M_A3 = [cond(A3,1),cond(A3,inf)]

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma 1')
A3aprox1 = rand_best_aprox1(A3)

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma Infinito')            
A3aprox1_inf = rand_best_aproxinf(A3)

# CASO 4: matriz A4
disp('Numeros de Condiciones de la Matriz A4')
M_A4 = [cond(A4,1),cond(A4,inf)]

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma 1')
A4aprox1 = rand_best_aprox1(A4)

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma Infinito')            
A4aprox1_inf = rand_best_aproxinf(A4)
                
# CASO 5: matriz A5
disp('Numeros de Condiciones de la Matriz A5')
M_A5 = [cond(A5,1),cond(A5,inf)]

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma 1')
A5aprox1 = rand_best_aprox1(A5)

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma Infinito')            
A5aprox1_inf = rand_best_aproxinf(A5)
                
# CASO 6: matriz A6
%{
    Si intentamos probar la resolución del sistema por descomposición LU el 
algoritmo saltará con un error y esto es porque la matriz A6 no tiene una 
descomposición LU dado que alguna de las submatrices (menores) tiene determinan-
te 0, que podemos tomar como razón dado un teorema.
%}

# CASO 7: matriz A7
disp('Numeros de Condiciones de la Matriz A7')
M_A7 = [cond(A7,1),cond(A7,inf)]

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma 1')
A7aprox1 = rand_best_aprox1(A7)

disp('Mayor Valor de la Aproximación del Numero de Condición con Norma Infinito')            
A7aprox1_inf = rand_best_aproxinf(A7)