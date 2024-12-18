A = input('Ingrese la matriz aumentada A= ');
b = input('ingrese el lado derecho de b=');
[n,m]=size(A);
M=eye(n);
for i=1:n-1
    for j=i+1:n
        M(j,i)=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-M(j,i)*A(i,:)
    end
end
L=M
U=A
y = zeros(n, 1);
for i = 1:n
    y(i) = b(i) - L(i, 1:i-1) * y(1:i-1);
end
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (y(i) - U(i, i+1:n) * x(i+1:n)) / U(i, i); 
end
disp('La solución del sistema Ax = b es:');
disp(x);