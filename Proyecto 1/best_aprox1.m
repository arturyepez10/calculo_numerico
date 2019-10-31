function [max_aprox] = best_aprox1(A)
  n = length(A);
  aprox = [];
  for i=1:1:30
    y = 200*rand(n,1) - 100;
    
    z = sistemaLU(A,y);
  
    norma_y = norm(y,1);
    norma_z = norm(z,1);
  
    x = norma1(A)*(norma_z/norma_y);
    
    aprox = [aprox; x];
  end
  max_aprox = max(aprox);
end