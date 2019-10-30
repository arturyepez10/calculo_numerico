function [max_aprox] = best_aproxinf(A)
  n = length(A);
  aprox = [];
  for i=1:1:30
    y = 200*rand(n,1) - 100;
    
    z = sistemaLU(A,y);
  
    norma_y = norm(y,inf);
    norma_z = norm(z,inf);
  
    x = normainf(A)*(norma_z/norma_y);
    
    aprox = [aprox; x];
  end
  max_aprox = max(aprox);
end