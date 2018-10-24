function A = Hilbert(n)
    for i=1:n
        for j=1:n
            A(i,j)=1/(i+j-1);
        end
    end
end

%ESTA FUNCIÓN CREA UNA AMTRIZ DE HILBERT DE ORDEN N DADO POR EL USUARIO