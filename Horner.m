# METODO DE HORNER

function [eval] = Horner(coef, x)
  n = length(coef);
  eval = coef(1);
  for i=2:1:n
    eval = (eval * x) + coef(i);
  end
end