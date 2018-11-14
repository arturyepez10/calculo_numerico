# METODO DE POTENCIA PARA AUTOVALOR MAS PEQUEÑO
function [x k r] = potencia_inv(A,error,x,itmax)
  A = LU(A);
  for k=1:1:itmax
    y = sistemaLU(A,x);
    r = y(1)/x(1);
    if norm(x-(y/norm(y,inf)),inf) < error
      r = 1/r;
      return
    end
    x = y/norm(y,inf);
  end
  r = 1/r;
end