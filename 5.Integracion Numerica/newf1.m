function [ y ] = newf1( z , a , b)
% La función con el cambio de variable tq la integral en
% vez de ser de [a,b] es de [-1,1]
x = (b-a)/2*z + (a+b)/2;

y = (exp(-x)+0.5*exp(-(x-4).^2))*(b-a)/2;

end

