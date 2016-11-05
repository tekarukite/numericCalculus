clear all;
load('malla.mat')
distortion = calculaDistorsioMalla(X,T);
mainNewton;
distortion2 = calculaDistorsioMalla(X,T);