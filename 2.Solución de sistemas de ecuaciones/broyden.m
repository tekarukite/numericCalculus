function [sol, res] = broyden (F,Jf1, X, tol, maxIter)
%% Broyden
% A = \delta
% Es como el método de la secante generalizado.
% Queremos una aproximacion de la secante S_k*Ax_k = Af_k en esta ecuación
% tenemos n^2 incógnitas y n ecuaciones.
% No queremos calcular S_k cada iteracion:
%       S_k*Ax_k = Af_k------> Ax_k
%       x_{k+1}=x_k + Ax_{k+1}
%       v = Ax_{k+1}
%       f_{k+1}=f(x_{k+1})
%       u = f_{k+1}/norm(Ax_{k+1})^2
%       S_{k+1} = S_{k} + u*v^T

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