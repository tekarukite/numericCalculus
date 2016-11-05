function [ dist ] = distortionTriangle( Xe )
%Devolvemos la distorsión e un triángulo a partir de su matriz de
%coordenadas.
global A;
Aux = [Xe(2,:)-Xe(1,:); Xe(3,:)-Xe(1,:)];
Dphi = A*Aux';

dist = norm(Dphi,'fro')^2/(2*abs(det(Dphi)));

end

