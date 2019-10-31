function [max_aprox] = rand_best_aproxinf(A)
  n = length(A);
  aprox = [];
  for i=1:1:200
    y = [];
    for j=1:1:n
      y = [y ;(-1)^randi([-100 100])];
    end
    
    z = sistemaLU(A,y);
  
    norma_y = norm(y,inf);
    norma_z = norm(z,inf);
  
    x = normainf(A)*(norma_z/norma_y);
    
    aprox = [aprox; x];
  end
  max_aprox = max(aprox);
end