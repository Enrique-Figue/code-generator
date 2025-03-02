x = linspace(-2, 4, 1000);
y = x.^3 - 3*x.^2 + 2;
dy = diff(y) ./ diff(x);
xDiff = x(1:end-1) + diff(x)/2;

figure;
yyaxis left;
plot(x, y, 'b', 'LineWidth', 1.5);
ylabel('f(x)');
yyaxis right;
plot(xDiff, dy, 'r--', 'LineWidth', 1.5);
ylabel("f'(x)");

title('Función y su Derivada Numérica');
xlabel('x');
grid on;
legend('f(x) = x^3 - 3x^2 + 2', 'Derivada numérica', 'Location', 'northwest');