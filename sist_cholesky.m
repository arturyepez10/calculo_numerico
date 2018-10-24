# RESOLUCIÓN SISTEMA DE CHOLESKY

function [x] = sist_cholesky(A,b)
  L = cholesky(A);
  U = transpose(L);
  y = sustad(L,b);
  x = sustat(U,y);
end