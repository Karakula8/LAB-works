%Arseniy Kaurdakou, EDIfu-25/2, 2026.09.21
%% 1. Vectors

a = 200:-10:10;

b = log10(a);

c = 10.^b;

d = c - a;

disp('Vector a:')
disp(a)

disp('Vector b:')
disp(b)

disp('Vector c:')
disp(c)

disp('Vector d:')
disp(d)
%% 2. Matrices

A = [pi/2, 3i, exp(pi);
     log2(2), 2*pi, log10(1);
     log(exp(1)), pi^pi, cos(pi)];

disp('Matrix A:')
disp(A)
v = rand(3,1);

A(:,2) = v;

disp('New matrix A:')
disp(A)
column_sums = sum(A);

disp('Sum of each column:')
disp(column_sums)
%% 3. Practical applications
 A = 4;
 f = 3;
 sigma = 1;
 U1 = 2.5;
 U2 = 1.5;

 t = 0:0.001:1;

s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);

n = sigma*randn(size(t));

x = s + n;

selected = x(x > U1);

filtered = x;

filtered(abs(filtered) < U2) = 0;

number_filtered = length(filtered);

number_selected = length(selected);

min_filtered = min(filtered); 
max_filtered = max(filtered);

disp('Selected samples:') 
disp(selected)

fprintf('Number of samples in filtered signal: %d\n', number_filtered); 
fprintf('Number of samples exceeding U1: %d\n', number_selected);
fprintf('Minimum value of filtered signal: %.4f V\n', min_filtered); 
fprintf('Maximum value of filtered signal: %.4f V\n', max_filtered);