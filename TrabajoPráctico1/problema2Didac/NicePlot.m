function [] = NicePlot()

% legend('show') has to be called after the last plotting instruction
grid on;
hold on;
xlabel('Iterations (k)');
ylabel('$log(r^k)$', 'Interpreter', 'Latex');

end