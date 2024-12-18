X = input('Ingrese el vector X = ');
Y = input('Ingrese el vector Y = ');
a = input('Ingrese el punto a evaluar a = ');
n = length(X);
L = zeros(1, n);

for i = 1:n
    L(i) = 1;
    for j = 1:n
        if i ~= j
            L(i) = L(i) * (a - X(j)) / (X(i) - X(j));
        end
    end
end
% el valor del polinomio en el punto a
P = sum(Y .* L);

disp(['El valor del polinomio de Lagrange en a = ', ...
    num2str(a), ' es P(a) = ', num2str(P)]);