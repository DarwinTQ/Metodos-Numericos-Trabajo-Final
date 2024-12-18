a=input('ingrese el limite inferior de la integral a=');
b=input('ingrese el limite superior de la integral b=');
n=input('ingrese el numero de particiones n=');
f=input('ingrese la funcion f=','s');
f=inline(f);
h=(b-a)/n;
sumpar=0;
sumimpar=0;
for i=1:n-1
    x=a+i*h;
    if mod(i,2)==0
        sumpar=sumpar+f(x);
    else
        sumimpar=sumimpar+f(x);
    end 
end
simpson=(h/3)*(f(a)+4*sumimpar+2*sumpar+f(b));
fprintf('El valor de la integral es: %.6f\n', simpson);