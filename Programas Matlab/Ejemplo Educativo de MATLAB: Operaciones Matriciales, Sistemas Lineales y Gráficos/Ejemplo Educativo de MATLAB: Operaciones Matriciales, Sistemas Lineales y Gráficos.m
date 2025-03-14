%% Sección 1: Operaciones Básicas con Matrices y Vectores
% Creamos dos matrices y realizamos operaciones básicas
A = [1, 2; 3, 4];           % Matriz 2x2
B = [5, 6; 7, 8];           % Matriz 2x2
C = A + B;                   % Suma de matrices
D = A * B;                   % Multiplicación de matrices

% Mostramos resultados en consola
disp('Resultado de la suma A + B:'); disp(C);
disp('Resultado de la multiplicación A * B:'); disp(D);

%% Sección 2: Resolución de Sistema Lineal Ax = b
% Definimos la matriz de coeficientes y el vector solución
A_sistema = [3, 2; 1, -1];  % Matriz del sistema
b = [12; 1];                 % Vector de términos independientes

% Resolvemos el sistema usando el operador '\'
x = A_sistema \ b;

% Mostramos la solución
disp('Solución del sistema lineal Ax = b:'); 
disp(['x1 = ', num2str(x(1)), ', x2 = ', num2str(x(2))]);

%% Sección 3: Gráficos 2D y 3D
% Creamos datos para gráficos 2D
t = linspace(0, 2*pi, 100); % Vector de tiempo
y1 = sin(t);                % Función seno
y2 = cos(t);                % Función coseno

% Graficamos ambas funciones en la misma figura
figure;
subplot(2,1,1);            % Dividimos la figura en subgráficos (2 filas)
plot(t, y1, 'r', 'LineWidth', 1.5); 
hold on;
plot(t, y2, 'b--', 'LineWidth', 1.5);
title('Gráficas de Seno y Coseno');
xlabel('Tiempo (rad)');
ylabel('Amplitud');
legend('sen(t)', 'cos(t)');
grid on;
hold off;

% Creamos datos para gráfico 3D
[X, Y] = meshgrid(-2:0.1:2);         % Malla para coordenadas X/Y
Z = X .* exp(-X.^2 - Y.^2);          % Función de dos variables

% Graficamos superficie 3D
subplot(2,1,2);
surf(X, Y, Z);
title('Superficie 3D: z = x e^{-(x^2 + y^2)}');
xlabel('Eje X');
ylabel('Eje Y');
zlabel('Eje Z');
colormap('parula'); 
colorbar;