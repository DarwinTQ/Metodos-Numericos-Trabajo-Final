% Valores del ejemplo:
% a = 0;      % Límite inferior del intervalo.
% b = 5;      % Límite superior del intervalo.
% tol = 0.001; % Tolerancia para la precisión de la raíz.
% f = 0.5*x^3 - 3*x^2 + 4*x - 2; % Función de pérdida de señal.
a = input("Ingrese el valor de a= ");
b = input("Ingrese el valor de b= ");
tol = input("Ingrese el valor de tol= ");
f = input("Ingrese la funcion f=", 's');
f = inline(f);  
k = 1;          
m = (a + b) / 2; 

fprintf('k\tak\t\tbk\t\tmk\t\terror\n');

fa = f(a);
fm = f(m);

while (b - a) / 2 > tol
    fprintf('%d\t%f\t%f\t%f\t%f\n', k, a, b, m, (b - a) / 2);
    
    if fa * fm < 0  
        b = m;      
    else
        a = m;      
        fa = fm;    
    end
    
    m = (a + b) / 2;
    fm = f(m); 
    k = k + 1;  
end
fprintf('La raiz aproximada es m = %f\n', m);