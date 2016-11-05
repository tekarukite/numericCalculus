function [X, R, S] = Broyden (F, X, tol, maxIter)

S = JacobF(X);
deltaX = -S\F(X); % Contrabarra per a resoldre el sistema
newX = X + deltaX;
R = zeros(1, maxIter);

R(1) = norm((X - newX))/norm(newX);
i = 1;

while R(i) > tol && i < maxIter
    i = i + 1;
    v = deltaX;
    u = F(newX)/norm(deltaX)^2;
    S = S+u*v';
    deltaX = -S\F(X);
    newX = X + deltaX;
    R(i) = norm((X - newX))/norm(newX);
    X = newX;
end

% Output info
fprintf('Mètode de Broyden\n');
fprintf('El 0 de la funció trobat és a:');
display(X);
fprintf('S''han dut a terme %d iteracions\n', i);
fprintf('\n');

% Graphing of the error
V = 1:1:i;
plot (V, log(R(1:i)), 'displayname', 'Broyden');

end