# INVERSA MEDIANTE DESCOMPOSICIÓN LU MAS EFICIENTE

function inv = inversa_pro(A)
    n = length(A);
    Lu = LU(A);
    L = tril(Lu,-1) + eye(n);
    U = triu(Lu);
    inv = [];
    for k=1:1:n
        e=0*ones(n,1);
        e(k) = 1;
        y = sustad(L,e);
        x = sustat(U,y);
        inv = [inv,x];
    end
    
endfunction

% ESTA FUCNIÓN CALCULA DE FORMA EFICIENTE LA AMTRIZ INVERSA A UAN AMATRIZ A DADA