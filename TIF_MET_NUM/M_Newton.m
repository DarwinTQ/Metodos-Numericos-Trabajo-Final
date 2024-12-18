x0=input('ingrese el valor inicial x= ');
tolerancia=input('ingrese la tolerancia tolerancia x= ');
f=input('ingrese la funcion f= ','s');
f=inline(f);
df=input('ingrese la derivada de la funcion f= ','s');
df=inline(df);
x1=x0-f(x0)/df(x0);
k=1;
fprintf('k       xk      error\n')
while abs(x1-x0) > tolerancia
    fprintf('%d\t%.10f\t%.10f\n', k ,x1, abs(x1-x0))
    k=k+1;
    x0=x1;
    x1=x0-f(x0)/df(x0);
end
fprintf('%d\t%.10f\t%.10f\n', k ,x1, abs(x1-x0))