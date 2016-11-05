%EXERCICI 1

%apartat a: fet a la funcio cardioide y al pdf

%apartat b:
m = 7;
inicial = 2;
P1 = [2.134141, 0.864141];
tao = 1.04655891;
iter = 4;
[ x, err] = Whittaker(inicial, m, iter, P1, tao);
display(x);
display(err);

%dibuixem la grafica de l'error
xaxis = 1:1:iter + 1;
plot(xaxis, log(err), 'r');
grid on;
legend('Whittaker');
xlabel('iteracio(k)', 'Interpreter', 'Latex');
ylabel('$log(r^k)$', 'Interpreter', 'Latex');

%Apartat c;
FAC = abs(1 - derivada(tao, P1)/m);
display(FAC);

%apartat d: teoric, resolt en el document

%Apartat e;

P2 = [0.221486, 0.864080];
tao2 = 0.99951548361763;

%calculem l'error inicial y el comparem amb la taula.
primer = abs(inicial - tao);
segon = abs(inicial - tao2);
display(primer);
display(segon);

%Dibuixem les grafiques de les projeccions del punt de P1 i P2.
%Aixi veurem a simple vista si els punts son simples o dobles.
figure(2);
dibuixa_cardioide(P1);
dibuixa_cardioide(P2);
legend('\tau_1', '\tau_2');

%Comprovem que realment son simples o dobles
f_P1 = cardioide(tao, P1);
der_P1 = derivada(tao, P1);
display(f_P1);
display(der_P1);

f_P2 = cardioide(tao, P2);
der_P2 = derivada(tao2, P2);
der2_P2 = derivada2(tao2, P2);
display(f_P2);
display(der_P2);
display(der2_P2);






