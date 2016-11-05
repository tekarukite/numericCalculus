clear all; close all;
load malla %X,T,Nint
figure(1),plotMesh(X,T), title('Malla inicial') 

% Calcula la distorsio de la malla
F = @(y)(calculaDistorsioMalla([reshape(y,Nint,2);X(Nint+1:end,:)],T));
fprintf('\nValor inicial de la distorsio: %2.6f\n',calculaDistorsioMalla(X,T))  

fprintf('\nNewton...\n')
yk =  reshape(X(1:Nint,:),2*Nint,1);
k = 0; relErr = zeros(100,1); convergence = 0;
while( convergence==0 && k<100)
    Fy = F(yk);
    DFy = numericalDerivative(F,yk); % avaluacio de la derivada numerica de F
    HFy = numericalHessian(F,yk);    % avaluacio de la Hessiana numerica de F
    
    % Metode de newton:
    ykp1 = yk-inv(HFy)*DFy; 
    
    relErr(k+1) = norm(ykp1-yk)/norm(ykp1);
    convergence = relErr(k+1)<1.e-5;
    fprintf(' Iteracio %2d: Distorsio = %2.7f, Error relatiu y = %4.2e\n',k,Fy,relErr(k+1))
    k = k+1; yk = ykp1;
end
X(1:Nint,:) = reshape(yk,Nint,2);% es desfa el canvi de variable i s'actualitza la malla

fprintf('\nValor final de la distorsio: %2.6f\n',calculaDistorsioMalla(X,T)) 
figure(2),plotMesh(X,T), title('Malla optima') 
figure(3); plot(0:k-1,log10(relErr(1:k)),'-o')
xlabel('Iteracions'), ylabel('log_{10}(r^k)')