% Name: QuadraticEquationSolver
% Clear command window and workspace
clc;
clear;

% Prompt user for coefficients
a = input('Enter coefficient a: ');
if a == 0
    error('Coefficient a must be non-zero for a quadratic equation.');
end
b = input('Enter coefficient b: ');
c = input('Enter coefficient c: ');

% Calculate discriminant
D = b^2 - 4*a*c;

% Determine roots based on discriminant
if D > 0
    x1 = (-b + sqrt(D))/(2*a);
    x2 = (-b - sqrt(D))/(2*a);
    fprintf('Two distinct real roots:\n');
    fprintf('x1 = %.2f\n', x1);
    fprintf('x2 = %.2f\n', x2);
elseif D == 0
    x1 = -b/(2*a);
    fprintf('One real root (repeated):\n');
    fprintf('x = %.2f\n', x1);
else
    realPart = -b/(2*a);
    imagPart = sqrt(-D)/(2*a);
    fprintf('Complex roots:\n');
    fprintf('x1 = %.2f + %.2fi\n', realPart, imagPart);
    fprintf('x2 = %.2f - %.2fi\n', realPart, imagPart);
end

% Determine x-axis range for plotting
if D > 0
    x_min = min(x1, x2) - 2;
    x_max = max(x1, x2) + 2;
    x = linspace(x_min, x_max, 400);
elseif D == 0
    x_center = x1;
    x = linspace(x_center -5, x_center +5, 400);
else
    h = -b/(2*a);
    x = linspace(h -10, h +10, 400);
end

% Calculate y values
y = a*x.^2 + b*x + c;

% Plot the quadratic function
figure;
plot(x, y);
hold on;

% Plot real roots if they exist
if D >= 0
    if D > 0
        plot(x1, 0, 'r*', 'MarkerSize', 10);
        plot(x2, 0, 'r*', 'MarkerSize', 10);
    else
        plot(x1, 0, 'r*', 'MarkerSize', 10);
    end
end
hold off;

% Add labels and title
xlabel('x');
ylabel('y');
title('Quadratic Equation Plot');
grid on;