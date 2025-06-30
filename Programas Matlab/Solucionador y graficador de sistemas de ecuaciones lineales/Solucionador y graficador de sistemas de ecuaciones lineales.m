% Este programa resuelve sistemas de ecuaciones lineales 2x2 y 3x3 usando
% diferentes métodos numéricos, muestra las soluciones y gráfica las ecuaciones

clc; clear; close all;

%% Sistema 2x2: Método matricial
A = [3, 2; 2, -1];       % Coeficientes del sistema
b = [8; 1];              % Términos independientes
sol_matricial = A\b;     % Solución usando operación matricial

disp('Sistema 2x2:');
disp(['3x + 2y = 8' newline '2x - y = 1']);
disp('Solución matricial:');
fprintf('x = %.2f, y = %.2f\n\n', sol_matricial(1), sol_matricial(2));

%% Sistema 2x2: Regla de Cramer
detA = det(A);
Ax = [b, A(:,2)];
Ay = [A(:,1), b];
x = det(Ax)/detA;
y = det(Ay)/detA;

disp('Solución por Cramer:');
fprintf('x = %.2f, y = %.2f\n\n', x, y);

%% Gráfico del sistema 2x2
x_vals = linspace(0, 4, 100);
y1 = (8 - 3*x_vals)/2;
y2 = 2*x_vals - 1;

figure;
plot(x_vals, y1, 'b', 'LineWidth', 2); hold on;
plot(x_vals, y2, 'r', 'LineWidth', 2);
plot(x, y, 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'g');
title('Sistema de ecuaciones 2x2');
xlabel('x'); ylabel('y');
legend('3x + 2y = 8', '2x - y = 1', 'Solución', 'Location', 'best');
grid on;
hold off;

%% Sistema 3x3: Verificación de singularidad
B = [1, 2, 3; 4, 5, 6; 7, 8, 9];  % Matriz de coeficientes
c = [14; 32; 50];                 % Términos independientes

if det(B) == 0
    disp('Sistema 3x3 es singular (no tiene solución única)');
else
    sol_3x3 = B\c;
    disp('Solución sistema 3x3:');
    fprintf('x = %.2f, y = %.2f, z = %.2f\n', sol_3x3(1), sol_3x3(2), sol_3x3(3));
end

%% Métodos disponibles para el usuario
disp(newline);
disp('Funcionalidades incluidas:');
disp('- Solución de sistemas 2x2 por método matricial');
disp('- Solución de sistemas 2x2 por Regla de Cramer');
disp('- Visualización gráfica de sistemas 2x2');
disp('- Detección de sistemas singulares en 3x3');