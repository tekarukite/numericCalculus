function J = JacobF(X)

global C;

J = [C*((-8)*sin(X(1))^2+8*cos(X(1))^2-3*sin(X(1))*sin(X(2)))-9*cos(X(1)), C*3*cos(X(1))*cos(X(2));
    C*3*cos(X(1))*cos(X(2)), C*((-3)*sin(X(1))*sin(X(2))+2*cos(2*X(2)))-3*cos(X(2))];

end