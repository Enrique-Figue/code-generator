% Este programa calcula el área y perímetro de figuras geométricas seleccionadas por el usuario.
% Las opciones son círculo, rectángulo y triángulo (usando fórmula de Herón).

clear; clc; close all;

disp('Calculadora de áreas y perímetros');
disp('1. Círculo');
disp('2. Rectángulo');
disp('3. Triángulo');
opcion = input('Seleccione una figura (1-3): ');

switch opcion
    case 1 % Cálculos para el círculo
        radio = input('Radio del círculo: ');
        area = pi * radio^2;
        perimetro = 2 * pi * radio;
        fprintf('Área: %.2f\nPerímetro: %.2f\n', area, perimetro);
    case 2 % Cálculos para el rectángulo
        largo = input('Largo del rectángulo: ');
        ancho = input('Ancho del rectángulo: ');
        area = largo * ancho;
        perimetro = 2 * (largo + ancho);
        fprintf('Área: %.2f\nPerímetro: %.2f\n', area, perimetro);
    case 3 % Cálculos para el triángulo con fórmula de Herón
        a = input('Lado a del triángulo: ');
        b = input('Lado b del triángulo: ');
        c = input('Lado c del triángulo: ');
        perimetro = a + b + c;
        s = perimetro / 2; % Semiperímetro
        area = sqrt(s * (s - a) * (s - b) * (s - c));
        fprintf('Área: %.2f\nPerímetro: %.2f\n', area, perimetro);
    otherwise
        error('Opción no válida. Seleccione 1, 2 o 3.');
end