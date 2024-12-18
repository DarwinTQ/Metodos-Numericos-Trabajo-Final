a = input('Ingrese el límite inferior de la integral a=');
b = input('Ingrese el límite superior de la integral b=');
n = input('Ingrese el número de particiones n=');
f = input('Ingrese la función f=', 's');
f = inline(f);

h = (b - a) / n;

sumpar = 0;
sumimpar = 0;

for i = 1:n-1
    x = a + i*h;
    if mod(i,3) == 0
        sumpar = sumpar + f(x);
    else
        sumimpar = sumimpar + f(x);
    end
end

simpson_38 = (3*h/8) * (f(a) + f(b) + 3*sumimpar + 2*sumpar);

fprintf('El valor de la integral usando Simpson 3/8 es: %.6f\n', simpson_38);
