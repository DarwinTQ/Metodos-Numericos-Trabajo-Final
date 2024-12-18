X = input('Ingrese el vector X = ');
Y = input('Ingrese el vector Y = ');
a = input('Ingrese el punto a evaluar a = ');
n = length(X);
Q = zeros(n);
Q(:,1) = Y;
for i = 2:n
    for j = 2:i
        Q(i,j) = round(((a - X(i-j+1)) * Q(i,j-1) - (a - X(i)) * Q(i-1,j-1)) / (X(i) - X(i-j+1)), 7);
    end
end
disp(Q)