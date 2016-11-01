function [jac ] = Jf1( x )
X = x(1);
Y = x(2);
Z = x(3);

jac = [6,2*Z*sin(Y*Z),2*Y*sin(Y*Z);
    X/(X^2+sin(Z)+53/50)^(1/2),9,cos(Z)/(2*(X^2+sin(Z)+53/50)^(1/2));
    3*Y*exp(X*Y), 3*X*exp(X*Y),60];
end

