function distorsioMalla = calculaDistorsioMalla(X,T)
% Esta funcio calcula la distorsio de l'element e
% Entrada: X, T (matrius)
% Sortida distorsioMalla (Real)

global A;
A = [1  -sqrt(3)/3
     0 2*sqrt(3)/3];
 
distorsioMalla = 0;
numElements = size(T,1);

for e = 1:numElements
    % Distorsio del element e: 
    Xe = X(T(e,:),:);
    distorsioMalla = distorsioMalla + (distortionTriangle(Xe))^2;
end

distorsioMalla = sqrt(distorsioMalla);
end

