% Resolució del sistema no lineal platenjat al problema 2
% per mitjà dels mètodes de Newton-Raphson, Newton-Raphson
% utilitzant la derivació numèrica i Broyden.
clear;

% Opcions gràfiques
NicePlot();

tol = 1e-8;
maxIter = 100;

global C;

% Paràmetre adimensional C = L*Ohm^2/g
C = 2;

F = @(X)(System(X));
JF = @(X)(JacobF(X));
X = [1;1];

% Utilitzem el/s mètode/s desitjats descomentant-lo/s
% NewtonRaphson(F, JF, X, tol, maxIter);
% NewtonRaphsonDN(F, X, tol, maxIter);
Broyden(F, X, tol, maxIter);

legend('show');