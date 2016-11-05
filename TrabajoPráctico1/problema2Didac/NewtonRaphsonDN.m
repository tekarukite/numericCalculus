function [X, R] = NewtonRaphsonDN (F, X, tol, maxIter)

J = NumJF(F, X);
deltaX = -J\F(X); % Contrabarra per a resoldre el sistema
newX = X + deltaX;
R = zeros(maxIter, 1);

R(1) = norm((X - newX))/norm(newX);
i = 1;

while R(i) > tol && i < maxIter
    i = i + 1;
    J = NumJF(F, X);
    deltaX = -J\F(X);
    newX = X + deltaX;
    R(i) = norm((X - newX))/norm(newX);
    X = newX;
end

% Output info
fprintf('Mètode de Newton-Raphson amb Derivació Numèrica\n');
fprintf('El 0 de la funció trobat és a:');
display(X);
fprintf('S''han dut a terme %d iteracions\n', i);
fprintf('\n');

% Graphing of the error
V = 1:1:i;
plot (V, log(R(1:i)), 'displayname', 'Newton-Raphson amb Derivació Numèrica');

end