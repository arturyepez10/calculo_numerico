function [y,s1,s2,s3] = SplineCubico(x,y,FPO,FPN)
  % procedimiento para calcular coeficientes
  % del spline cubico dadas las entradas (x,y)
  % traduccion tomada del pseudocodigo del libro
  % de textos de Burden
  
  
  % inicializamos las variables que utilizaremos
  % en la ejecucion del programa
  n = length(x);
  h = zeros(1,n);
  alpha = zeros(1,n);
  I = zeros(n,n);
  niu = zeros(1,n);
  z = zeros(1,n);
  
  % coeficientes que retornaremos
  s1 = zeros(1,n);
  s2 = zeros(1,n);
  s3 = zeros(1,n);
 
  for i=1:1:n-1
    h(i)=x(i+1)-x(i);
  end 
  
  
  % si no hay 2 o 4 pametros de entrada, se arroja un error
  if nargin == 1 || nargin == 3
    error("Debe ingresar 2 parametros si desea el spline natural o 4 parametros para frontera amarrada")
  end
  
  % si hay 2 parametros de entrada, tenemos condicion de frontera libre
  if nargin == 2
    
    for i=2:1:n-1
        alpha(i)=(3*(y(i+1)-y(i))./h(i))-(3*(y(i)-y(i-1))./h(i-1));
    end
    
    I(1,1)=1;
    niu(1)=0;
    z(1)=0;
    I(n,n)=1;
    s2(n)=0;
    z(n)=0;
    
  end

  % si hay 4 parametros de entrada, se utilizara la condicion de frontera amarrada
  if nargin == 4
   
    alpha(1) = (3*(y(2)-y(1))./h(1))-(3*FPO);
    alpha(n) = (3*FPN)-(3*(y(n)-y(n-1)./h(n-1)));
    
    for i=2:1:n-1
        alpha(i)=(3*(y(i+1)-y(i))./h(i))-(3*(y(i)-y(i-1))./h(i-1));
    end
    
    I(1,1)=2*h(1);
    niu(1)=0.5;
    z(1)=alpha(1)/I(1,1);
    I(n,n)=h(n-1)*(2-niu(n-1));
    z(n)=(alpha(n)-h(n-1)*z(n-1))/I(n,n);
    s2(n)=z(n);
    
    
  end
  
  for i=2:1:n-1
        I(i,i)=2*(x(i+1)-x(i-1))-h(i-1)*niu(i-1);
        niu(i)=h(i)/I(i,i);
        z(i)=(alpha(i)-h(i-1)*z(i-1))/I(i,i);
  end
    
    
  for i=n-1:-1:1
      s2(i)= z(i)-niu(i)*s2(i+1);
      s1(i)=((y(i+1)-y(i))/h(i))-(h(i)*(s2(i+1)+2*s2(i))/3);
      s3(i)=(s2(i+1)-s2(i))/(3*h(i));
  end

end