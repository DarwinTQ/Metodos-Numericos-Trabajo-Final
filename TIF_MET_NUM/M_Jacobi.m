A = input("Ingresar  la matriz extricta diagona A: ");
b = input("Ingresar lado derecho:");
X0 = input("Ingresar vector inicial:");
TL = input("Ingresar tolerancia :");
N = input("Ingresar numero maximo de iteraciones :");
k =1  ;
n = length(b);
while k<=N
    for i=1:n
        sum = 0;
        for j=1:n
            if j~=i
                sum = sum + A(i,j)*X0(j);
            end
        end
        x(i)=(b(i)-sum)/A(i,i);
    end
    x
    error = norm(x-X0)
    if norm(x-X0)<TL
        break
    end
    k = k + 1
    X0=x;     
end