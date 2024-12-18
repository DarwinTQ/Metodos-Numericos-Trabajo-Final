A = input('Ingrese la matriz aumentada A= ');
[n, m] = size(A);
for i = 1:n-1
    for p = i:n
        if A(p,i) ~= 0
            break
        else
            disp('xd')
        end
    end
    if p ~= i
        aux = A(i,:);
        A(i,:) = A(p,:);
        A(p,:) = aux;
    end
    for j = i+1:n
        M(j,i) = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - M(j,i) * A(i,:)
    end
end
if A(n,n) == 0
    disp('No existe solucion unica');
else
    x(n) = A(n,n+1)/A(n,n);
    for i = n-1:-1:1
        sum = 0;
        for j = i+1:n
            sum = sum + A(i,j) * x(j);
        end
        x(i) = (A(i,n+1) - sum) / A(i,i);
    end
    % Imprimir los valores de x1, x2, x3, etc.
    for k = 1:n
        fprintf('x%d = %.4f\n', k, x(k));
    end
end
