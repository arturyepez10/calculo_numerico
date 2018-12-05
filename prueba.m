x = linspace(0,4*pi,10);
van = vander(x);
a = van\transpose(sin(x));
x1 = 0:0.1:4*pi;
y1 = sin(x1);
subplot(3,2,[1,2]);
plot(x1,sin(x1));
title("vander");
hold on
plot(x1,polyval(a,x1),'r');
legend("function","vander")
subplot(3,2,[3,4])
plot(x1,sin(x1))
title("Lagrange")

hold on
vector = zeros(0,length(x1));
k = 1;
for i=0:0.1:4*pi
  vector(k) = Lagrange(x,sin(x),i);
  k += 1;
end
plot(x1,vector,'r')
hold off
legend("function","Lagrange")

%{
prueba para graficar comparacion entre vander y 
polyval y lagrange con polyval
%}