% Arseniy
% Kaurdakou
% EDIfu-25/2
% 2026.09.14

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-] | F_2 [-x-]')

%% Complementary task

N = 7;

v = N + 1 : 0.5 : N + 4;

A = N:N+8;
A = reshape(A, 3, 3).';

a = A(3,2);

b = A(2:3,1:2);

c = [A(1,1) A(1,3);
     A(3,1) A(3,3)];

v2 = v(1:3).';
C = [A v2];

disp('Vector v:')
disp(v)

disp('Matrix A:')
disp(A)

disp('a =')
disp(a)

disp('b =')
disp(b)

disp('c =')
disp(c)

disp('C =')
disp(C)