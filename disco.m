# DISCOS GERSHCHGORIN

function [] = disco(A)
  circulo = 0:0.1:2*pi;
  n = length(A);
  x = zeros(length(circulo),n);
  r = sum(abs(A),2) - abs(diag(A));
  for i=1:n
    x(:,i) = r(i)*cos(circulo) + real(A(i,i));
    y(:,i) = r(i)*sin(circulo) + imag(A(i,i));
  end
  e = eig(A);
  plot(x,y,real(e),imag(e),'x')
end