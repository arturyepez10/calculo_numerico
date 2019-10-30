function [sol] = sist_aprox(A)
  n = length(A);
  b = 0*ones(n,1);
  for i=1:1:n
    b(i,1) = 1/n;
  end
  x = sistemaLU(A,b);
  
  At = transpose(A);
  y = 0*ones(n,1);
  for i=1:1:n
    if x(i,1)>=0
      y(i,1) = 1;
    else
      y(i,1) = -1;
    end
  end
  z = sistemaLU(At,y);
  
  k = max(abs(z));
  b1 = 0 *ones(n,1);
  for i=1:1:n
    if k == abs(z(i,1))
      b1(i,1) = 1;
    end
  end
  sol = sistemaLU(A,b1);
end