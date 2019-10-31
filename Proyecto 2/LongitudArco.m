# FUNCIÓN LONGITU DE ARCO (Exclusivo para Spline Cubico)

function [result] = LongitudArco(b, c, d, A, B)
  coef = [b, c, d]; 
  derivada =@(x) (coef(1) + 2*coef(2)*x + 3*coef(3)*x^2);
  
  aux =@(x) (1 + (derivada(x))^2)^(1/2);
  
  result = quad(aux, A, B);
end