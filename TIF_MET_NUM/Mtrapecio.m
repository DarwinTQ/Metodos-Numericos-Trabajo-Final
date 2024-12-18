a=input('ingrese el limite inferior de la integral a=');
b=input('ingrese el limite superior de la integral b=');
n=input('ingrese el numero de particiones n=');
f=input('ingrese la funcion f=','s');
f=inline(f);
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
end
trapecio=(h/2)*(f(a)+2*sum+f(b));
fprintf('El valor de la integral es: %.4f\n', trapecio);