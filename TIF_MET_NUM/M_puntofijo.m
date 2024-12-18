x0 = input('Ingrese el valor inicial x0= ');
tolerancia = input('Ingrese la tolerancia = ');
f = input('Ingrese la funcion f= ', 's');
f = inline(f);
x1 = f(x0);
k = 1;
fprintf('k         xk         error abs       error relativo\n')
while abs(x1 - x0) > tolerancia
    fprintf('%d\t%.10f\t%.10f\t%.10f\n', k, x1, abs(x1 - x0), ...
        abs(x1 - x0)/ abs(x1))
    k = k + 1;
    x0 = x1;
    x1 = f(x0);
end
 fprintf('%d\t%.10f\t%.10f\t%.10f\n', k, x1, abs(x1 - x0), ...
     abs(x1 - x0)/ abs(x1))