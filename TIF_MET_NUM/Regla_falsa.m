
a = input("Ingrese el valor de a= ");
b = input("Ingrese el valor de b= ");
tol = input("Ingrese el valor de tol= ");
itera = input("Ingrese iteraciones = ");
f = input("Ingrese la función f=", 's');
f = inline(f);

k = 0; 
an = a;
bn = b;
fprintf('k\tan\t\tbn\t\txn\t\terror\n');

while true

    xn = an * f(bn) - bn * f(an);
    xn = xn / (f(bn) - f(an));
    
    e1 = abs(xn - an);
    e2 = abs(bn - xn);
    
    fprintf('%d\t%f\t%f\t%f\t%f\n', k, an, bn, xn, max(e1, e2));
    
    if max(e1, e2) <= tol || k >= itera
        break;
    end
    
    if f(xn) * f(an) > 0
        an = xn;
    else
        bn = xn;
    end
    
    k = k + 1;
end

fprintf('La raíz aproximada es xn = %f\n', xn);
