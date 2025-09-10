% Descripción: Calcula y grafica raíces de polinomios con entrada de usuario
disp('Este programa grafica un polinomio y muestra sus raíces.');

% Entrada de coeficientes
coeficientes = input('Ingrese coeficientes del polinomio como vector [a_n,...,a_0]: ');
while isempty(coeficientes) || ~isnumeric(coeficientes)
    disp('Entrada inválida. Intente nuevamente.');
    coeficientes = input('Ingrese coeficientes del polinomio como vector [a_n,...,a_0]: ');
end

% Cálculo de raíces
raices = roots(coeficientes);
raices_reales = raices(imag(raices) == 0);
raices_complejas = raices(imag(raices) ~= 0);

% Generación de dominio para gráfico
if ~isempty(raices_reales)
    x = linspace(min(raices_reales)-2, max(raices_reales)+2, 1000);
else
    x = linspace(-10, 10, 1000);
end

% Evaluación y gráfico del polinomio
y = polyval(coeficientes, x);
figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
hold on;
plot(raices_reales, zeros(size(raices_reales)), 'ro', 'MarkerSize', 8);
grid on;
xlabel('x'); ylabel('P(x)');
title(['Polinomio: ', polytex(coeficientes)]);
legend('Función', 'Raíces reales', 'Location', 'northwest');

% Mostrar resultados en consola
fprintf('\nRaíces reales: \n'); disp(raices_reales);
fprintf('Raíces complejas: \n'); disp(raices_complejas);

% Función auxiliar para formato LaTeX
function str = polytex(coef)
    terminos = arrayfun(@(i) sprintf('%.2fx^{%d}', coef(i), length(coef)-i), 1:length(coef), 'UniformOutput', false);
    terminos = strrep(terminos, 'x^{0}', '');
    terminos = strrep(terminos, '^{1}', '');
    terminos = strrep(terminos, '+ -', '- ');
    str = strjoin(terminos, ' + ');
    str = regexprep(str, '(?<!\d)1x', 'x');
end