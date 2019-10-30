function [x] = normainf(A)
  n = length(A);
  Aux = 0*ones(n,1);
  for i=1:1:n
    suma = 0;
    for j=1:1:n
      suma = suma + abs(A(i,j));
    end
    Aux(i,1) = suma;
  end
  x = max(Aux);
end