x = linspace(0,4*pi,10);
y = sin(x);
polNewton = Newton(x,y);
% 
x1= 0:0.1:4*pi;
y1= sin(x);
subplot(3,2,[1,2])
plot(x1,sin(x1))
title("Newton")
hold on 
vector= zeros(0,length(x1));
k= 1;
for i= 0:0.1:4*pi
  vector(k) = Horner_dezpla(polNewton,i,x);
  k = k + 1;
end
plot(x1,vector,"y")
legend("function","Newton")