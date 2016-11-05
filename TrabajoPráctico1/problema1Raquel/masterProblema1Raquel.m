% calcula 4 iteraciones de whitaker

initialPoint = 2;
numberIterations = 8;
tol = 200;
x0 = 2.134141;
y0 = 0.864141;
m = 7;



[ result, residue  ] = whittakerRaquel( initialPoint, numberIterations, tol,@(t)(fu(t,x0,y0)), m);

fu(result,x0,y0)

plot(residue)