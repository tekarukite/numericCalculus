function [J] = NumJF(F, x)

J = zeros(2, 2);
e = eye(2);
h = 1e-8; % valor escollit per prova i error

for j=1:2
    J(:, j) = (F(x + h*e(:,j))-F(x))/h;
end

end