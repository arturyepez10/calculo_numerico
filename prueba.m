# PRUEBA
matriz_prueba = Hilbert(11) + 1.025*eye(11)
x = ones(11,1)
b = matriz_prueba*x
t = cputime;
[xn k] = jacobi(matriz_prueba,b,0*ones(11,1), 1500, 10^-7)

disp(cputime-t)