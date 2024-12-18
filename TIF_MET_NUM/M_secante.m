x0 = input('Ingrese el valor inicial x0= ');
x1 = input('Ingrese el valor inicial x1= ');
tolerancia = input('Ingrese la tolerancia tolerancia= ');
f = input('Ingrese la funcion f= ', 's');
f = inline(f);
k = 1;
fprintf('k       xk      error\n')
while abs(x1 - x0) > tolerancia
    x2 = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
    fprintf('%d\t%.10f\t%.10f\n', k, x2, abs(x2 - x1));
    x0 = x1;
    x1 = x2;
    k = k + 1;
end
fprintf('%d\t%.10f\t%.10f\n', k, x1, abs(x1 - x0));