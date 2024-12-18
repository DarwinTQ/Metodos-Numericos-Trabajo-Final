A = input("Ingresar  la matriz extricta diagona A: ");
b = input("Ingresar lado derecho:");
X0 = input("Ingresar vector inicial:");
TL = input("Ingresar tolerancia :");
N = input("Ingresar numero maximo de iteraciones :");
k =1;
x=[];
n = length(b);
while k<=N
    for i=1:n
        sum1 = 0;
        for j=1:i-1
            sum1 = sum1 + A(i,j)*x(j);   
        end
        sum2 = 0 ;
        for j=i+1:n
            sum2 = sum2 + A(i,j)*X0(j);
        end
        x(i)=(b(i)-sum1-sum2)/A(i,i);
    end
    x
    error = norm(x-X0)
    if norm(x-X0)<TL
        break
    end
    k = k +1
    X0=x;     
end
