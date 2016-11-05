function [sol, res] = broyden (F,Jf1, X, tol, maxIter)
%% Broyden
% Es como el método de la secante generalizado.

S = Jf1;
deltaX = -S\F(X); % Contrabarra per a resoldre el sistema
newX = X + deltaX;
R = [ ];

R =[R norm((X - newX))/norm(newX)];
i = 1;

while i < maxIter
    i = i + 1;
    v = deltaX;
    u = F(X)/norm(deltaX)^2;
    S = S+u*v';
    deltaX = -S\F(X);
    newX = X + deltaX;
    R =[R norm((X - newX))/norm(newX)];
    X = newX;
     if(R(1,i) <= tol)
        fprintf('Hemos encontrado la solucion en %i iteraciones \n',i-1)
        break
     end
end
sol = X;
res = R;

end