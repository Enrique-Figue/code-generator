% Descripción: Resuelve una ecuación cuadrática ax² + bx + c = 0 y grafica la función

% Solicitar coeficientes al usuario
a = input('Ingrese el coeficiente a: ');
if a == 0
    error('El coeficiente a no puede ser cero.');  % Validar entrada
end
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcular discriminante y raíces
discriminante = b^2 - 4*a*c;
raices = roots([a b c]);  % Usar función roots de MATLAB

% Mostrar resultados numéricos
fprintf('\nResultados:')
fprintf('\nDiscriminante: %.2f', discriminante);

if isreal(raices)
    fprintf('\nRaíces reales:\n');
else
    fprintf('\nRaíces complejas:\n');
end
disp(raices)

% Generar puntos para la gráfica
x = linspace(min(raices)-2, max(raices)+2, 400);
y = a*x.^2 + b*x + c;

% Configurar gráfica
figure;
plot(x, y, 'LineWidth', 2, DisplayName='Función cuadrática');
hold on;
scatter(real(raices), zeros(size(raices)), 100, 'filled',...
    MarkerFaceColor='r', DisplayName='Raíces');
title(sprintf('f(x) = %.1fx² + %.1fx + %.1f', a, b, c));
xlabel('x');
ylabel('f(x)');
grid on;

% Calcular y mostrar vértice
vertice_x = -b/(2*a);
vertice_y = a*vertice_x^2 + b*vertice_x + c;
plot(vertice_x, vertice_y, 'sg', 'MarkerSize', 10,...
    MarkerFaceColor='g', DisplayName='Vértice');

% Añadir referencias visuales
xline(0,'k--', 'Label','x=0');
yline(0,'k--', 'Label','y=0');
legend('Location','best');
hold off;