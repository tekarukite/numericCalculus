function [ y ] = newf2( z , a , b)
% La función con el cambio de variable tq la integral en
% vez de ser de [a,b] es de [-1,1]
x = (b-a)/2*z + (a+b)/2;

y = 1./(1+x.^2)*(b-a)/2;

end

