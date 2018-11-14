# METODO DE POTENCIA PARA AUTOVALOR MAS GRANDE

function [x k r] = potencia(A, error, x, itmax)
  for k=1:1:itmax
    y = A*x;
    r = y(1)/x(1);
    if norm(x-(y/norm(y,inf)),inf) < error
      return
    end
    x = y/norm(y,inf);
  end
end