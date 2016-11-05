function [ x ] = BroydenRaquel( f, x0 , niter )
    Sn = eye(2);
    xn = x0;
    yn = f(xn);
    xn1 = xn - Sn\yn;
    yn1 = f(xn1);
    Axn = xn1 - xn;
    Ayn = yn1 - yn;
    for k = 1: niter
        Sn= Sn + (Ayn-Sn*Axn)/(norm(Axn)^2)*Axn';
        xn1 = xn - Sn\yn;
        yn1 = f(xn1);
        Axn = xn1 - xn;
        Ayn = yn1 - yn;
        xn = xn1;
        yn = f(xn);
    end
    x = xn1;
end
