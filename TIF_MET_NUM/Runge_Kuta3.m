a = input("Ingrese el valor menor intervalo a=");%0
b = input("Ingrese el valor mayor intervalo b=");%2
y0 = input("Ingrese la condicion inicial y0=");  %0.5
h = input("Ingrese el tamaño de paso h=");       %0.5
f = input("Ingrese la funcion f=", "s");         %y-t^2-1
f = inline(f);
n=(b-a)/h;
w=y0;
t=a;
fprintf("--------------------\n")
fprintf(   " t              y \n")
fprintf("--------------------\n")
fprintf("%.2f\t%.8f\n", t,w)
for i=1:n
    k1= h*f(t,w);
    k2= h*f(t+h*0.5,w+k1*0.5);
    k3= h*f(t+h,w-k1+2*k2);
    w = w + 1/6*(k1+4*k2+k3);
    t = a+h*i;
    fprintf("|%.2f\t%.8f|\n", t,w)
    
end
fprintf("-------------------\n")