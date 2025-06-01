% Este programa calcula las raíces de una ecuación cuadrática ax² + bx + c = 0
% y maneja casos especiales como ecuaciones lineales o sin solución.

a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

if a == 0
    if b == 0
        if c == 0
            disp('Infinitas soluciones: ecuación trivial 0 = 0');
        else
            disp('Sin solución: ecuación contradictoria');
        end
    else
        x = -c / b;
        fprintf('Solución lineal única: x = %.2f\n', x);
    end
else
    discriminante = b^2 - 4*a*c;
    raiz1 = (-b + sqrt(complex(discriminante))) / (2*a);
    raiz2 = (-b - sqrt(complex(discriminante))) / (2*a);
    
    fprintf('\nEcuación cuadrática analizada:\n %.2fx² + %.2fx + %.2f = 0\n', a, b, c);
    fprintf('Discriminante: %.2f\n', discriminante);
    
    if isreal(raiz1)
        if raiz1 == raiz2
            fprintf('Solución real doble:\n x = %.2f\n', raiz1);
        else
            fprintf('Soluciones reales distintas:\n x₁ = %.2f\n x₂ = %.2f\n', raiz1, raiz2);
        end
    else
        fprintf('Soluciones complejas conjugadas:\n x₁ = %.2f + %.2fi\n x₂ = %.2f - %.2fi\n', ...
                real(raiz1), imag(raiz1), real(raiz2), imag(raiz2));
    end
end