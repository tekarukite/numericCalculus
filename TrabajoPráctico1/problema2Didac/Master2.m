% Resolució del mateix sistema per a valor creixents de la 
% velocitat angular del sistema
clear;

% Opcions gràfiques
NicePlot();

tol = 1e-8;
maxIter = 42;

global g m L Ohm C;

g = 9.8;    % gravity (N/kg)
m = 1;      % mass (kg)
L = 1;      % length (m)
Ohm = -1;   % rotation speed (rad/s)

sol = zeros(100,1);
rel = zeros(100,1);
cons = zeros(100,1);
ohm = zeros(100,1);

for i=1:1:100
    Ohm = Ohm + 1;
    C = L*Ohm^2/g;
    ohm(i) = Ohm;
    cons(i) = C;
    F = @(X)(System(X));
    JF = @(X)(JacobF(X));
    X = [1;1];
    % Select a method
    [X, R] = NewtonRaphsonDN(F, X, tol, maxIter);
    % [X, R] = NewtonRaphson(F, JF, X, tol, maxIter);
    % [X, R, S] = Broyden(F, X, tol, maxIter);
    rel(i, 1) = C/X(1);
    rel(i, 2) = C/X(2);
    sol(i, 1) = X(1);
    sol(i, 2) = X(2);
end

figure(2)
plot (ohm, sol, 'displayname', 'Solucions per a C creixent');
grid on;
xlabel('$\Omega$', 'Interpreter','Latex');
ylabel('$\theta$','Interpreter','Latex');

figure(3)
plot (cons, rel, 'displayname', 'C/theta');
grid on;
xlabel('$C=L\Omega^2 /g$', 'Interpreter','Latex');
ylabel('$C/\theta$','Interpreter','Latex');

legend('show');