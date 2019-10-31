# METODO DE HORNER (Adaptado para su uso con Splines Cubicos)

function [eval] = Horner(abcisas, a, b, c, d, x)
  
  for j= 1:1:length(abcisas)
    if x >= abcisas(j)
      i = j;
      break
    end
  end
  
  coef = [d(i); c(i); b(i); a(i)];
  n = length(coef);
  eval = coef(1);
  for k=2:1:n
    eval = (eval * (x - abcisas(i)) + coef(k));
  end
end