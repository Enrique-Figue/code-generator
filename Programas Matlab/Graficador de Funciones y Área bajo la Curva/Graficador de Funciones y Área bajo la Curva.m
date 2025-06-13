clear all;
close all;

% Solicitar entrada de usuario
func_str = input('Ingrese la función f(x) (ej. x.^2 + sin(x)): ', 's');
f = str2func(['@(x) ' func_str]); % Crear función manejadora

a = input('Ingrese el límite inferior a: ');
b = input('Ingrese el límite superior b: ');
if a >= b
    error('El límite inferior debe ser menor al superior.');
end

h = input('Ingrese el paso de integración h (ej. 0.01): ');
if h <= 0 || h >= (b - a)
    error('h debe ser positivo y menor que (b - a).');
end

% Generar datos para gráfico
x = a:0.01:b;           % Resolución alta para gráfico suave
y = f(x);

% Calcular integral numérica (regla trapezoidal)
x_trapz = a:h:b;
y_trapz = f(x_trapz);
integral_numerica = trapz(x_trapz, y_trapz);

% Calcular integral exacta (si es posible)
try
    integral_exacta = integral(f, a, b);
    exacta_disponible = true;
catch
    exacta_disponible = false;
end

% Graficar resultados
figure;
plot(x, y, 'b', 'LineWidth', 1.5);
hold on;
area(x_trapz, y_trapz, 'FaceColor', [0.8 0.9 1], 'EdgeColor', 'none');
title(['Área bajo f(x) = ' func_str]);
xlabel('x'); ylabel('f(x)');
legend('Función', 'Área aproximada', 'Location', 'best');
grid on;

% Mostrar resultados numéricos
fprintf('\nResultados:\n');
fprintf('Área aproximada (h=%.4f): %.4f\n', h, integral_numerica);
if exacta_disponible
    fprintf('Área exacta: %.4f\n', integral_exacta);
    fprintf('Error absoluto: %.2e\n', abs(integral_exacta - integral_numerica));
else
    fprintf('Integral exacta no disponible (función no compatible)\n');
end