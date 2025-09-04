% Calcula la integral numérica de una función usando la regla del trapecio y muestra gráficamente la aproximación

%% Entrada de usuario (ejemplo de uso: @(x) x.^2, a=0, b=2, n=4)
funcion = input('Ingrese la función f(x) (ej: @(x) x.^2): ');
a = input('Límite inferior a: ');
b = input('Límite superior b: ');
n = input('Número de subdivisiones n: ');

%% Validación de parámetros
if n <= 0 || a >= b
    error('Parámetros inválidos: n debe ser positivo y a < b');
end

%% Cálculo de integral por regla del trapecio
h = (b - a)/n;  % Ancho de subintervalo
x = a:h:b;       % Puntos de evaluación
y = funcion(x);  % Evaluación de la función

integral = (h/2)*(y(1) + y(end) + 2*sum(y(2:end-1)));  % Fórmula compuesta

%% Visualización
figure;
hold on;
grid on;

% Graficar función original
fplot(funcion, [a, b], 'b', 'LineWidth', 1.5, 'DisplayName', 'Función original');

% Graficar trapecios
for i = 1:n
    x_trap = [x(i), x(i+1), x(i+1), x(i)];
    y_trap = [0, 0, y(i+1), y(i)];
    fill(x_trap, y_trap, 'r', 'FaceAlpha', 0.3, 'EdgeColor', 'none', 'DisplayName', 'Aproximación trapezoidal');
end

title(['Integración numérica: $\int_{' num2str(a) '}^{' num2str(b) '} f(x)dx \approx ' num2str(integral) '$'], 'Interpreter', 'latex');
xlabel('x');
ylabel('f(x)');
legend('show', 'Location', 'best');

%% Mostrar resultado
disp(['Resultado integral numérica: ' num2str(integral)]);