%Fase 1
k1 = zeros(1,n);
k2 = ones(1,m);
c2 = [k1 k2];
A2 = [A , eye(m)];
n2 = n + m;
%Inicialización adaptada a las modificaciones de la fase 1
B = [n+1:n+m];
N = [1:n];
X = b;
z = c2(B)*b;
M = A2(1:m,[B]);
r = c2(N)-c2(B)*M*A2(1:m,[N]);
it = 0;
while(r<= 0)
it = it +1
%Selecionamos la variable q de entrada por la regla de Bland
i = 1;
q = 0;
while (q==0)
     if(r(i) < 0)
         q = N(i);
             
     end
     i = i+1;
end
%Cálculo de la dirección básica factible de descenso.
iM = inv(M);
d = - iM*A(1:m,[q]);
%si la d es positiva debería petar.
if (d>0) break; end
%Cálculo de la theta máxima y selección de la variable de salida q
aux = d;
theta = 0;
pos = 1;
for i = 1:m
    if(d(i)<0)
        aux(i) = -X(i)./d(i);
        if(theta ==0 | aux(i)<theta) 
            theta = aux(i); 
            pos = i;
        end
    end
end
p = B(pos);
%Actualización y cambio de base
posp = find(B == p);
posq = find(N == q);
X=X+theta*d;
X(posq)=theta;
z =z + theta*r(posq);
B(posp)=q;
N(posq) = p;
%volvemos al paso 2
r = c2(N)-c2(B)*M*A2(1:m,[N]);
end


B
%inicializamos
%N=N-[1+n:n+m] 
for i =1:dim(N,1)
      if( N(i) > n)
              N=[N[1:i-1],[N[i+1:dim(N,1)]];
              i =i+1;
      end
end
while(r<= 0)
    it = it +1
    %Selecionamos la variable q de entrada por la regla de Bland
    i = 1;
    q = 0;
    while (q==0)
         if(r(i) < 0)
             q = N(i);

         end
         i = i+1;
    end
    %Cálculo de la dirección básica factible de descenso.
    iM = inv(M);
    d = - iM*A(1:m,[q]);
    %si la d es positiva debería petar.
    if (d>0) 
        break; 
    end
    %Cálculo de la theta máxima y selección de la variable de salida q
    aux = d;
    theta = 0;
    pos = 1;
    for i = 1:m
        if(d(i)<0)
            aux(i) = -X(i)./d(i);
            if(theta ==0 | aux(i)<theta) 
                theta = aux(i); 
                pos = i;
            end
        end
    end
    p = B(pos);
    %Actualización y cambio de base
    posp = find(B == p);
    posq = find(N == q);
    X=X+theta*d;
    X(posq)=theta;
    z =z + theta*r(posq);
    B(posp)=q;
    N(posq) = p;
    %volvemos al paso 2
    r = c2(N)-c2(B)*M*A(1:m,[N]);
end


