#

function x = sistemaLU(A,b)
    n = length(A);
    Lu = LU(A);
    L = tril(Lu,-1) + eye(n);
    U = triu(Lu);
    
    y = sustad(L,b);
    x = sustat(U,y); 
endfunction

% ESTA FUNCIÓN SE ENCARGA DE RESOLVER UN SISTEMA DE ECUACIONES USANDO EL METODO DE REDUCCIÓN LU Y 
% RECIBE COMO PARMETROS LA MATRIZ A Y EL VECTOR B DEL SISTEMA