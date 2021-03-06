# METODO DE GAUSS CON PIVOTEO

function [A b] = GAUSS_P(A,b)
  [m, n] = size(A);
  for k=1:1:n-1
    maximo=abs(A(k,k));
    imax=k;
    
    for i=k+1:1:n
        if abs(A(i,k))>maximo
            maximo=abs(A(i,k));
            imax=i;
        end
    end
    
    for j=k:1:n
        temp= A(k,j);
        A(k,j)=A(imax,j);
        A(imax,j)=temp;
    end
    
    temp=b(k);
    b(k)= b(imax);
    b(imax)=temp;
    
    
    for i=k+1:1:n
        alpha=A(i,k)/A(k,k);
        for j=k:1:n
            A(i,j)=A(i,j)-alpha*A(k,j);
            
        end
        b(i)=b(i)-alpha*b(k);
    end
  end
endfunction

% ESTA FUNCIÓN SE ENCARGA DE RESOLVER UN SISTEMA DE ECUACIONES USANDO EL METODO DE GAUSS CON PIVOTEO 
% Y RECIBE COMO PARMETROS LA MATRIZ A Y EL VECTOR B DEL SISTEMA