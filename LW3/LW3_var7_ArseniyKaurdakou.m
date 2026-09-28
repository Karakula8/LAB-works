%Arseniy Kaurdakou, EDIfu-25/2, 2026.09.21
clear;
clc;
close all;

x = linspace(-pi, pi, 70);

f1 = cos(x);
f2 = -x.^2 + 5;
f3 = x.^3 - 2*x.^2 - 5;

figure;

plot(x, f1, '-o', ...
    'LineWidth', 1.2, ...
    'MarkerSize', 4);

xlabel('x');
ylabel('f_1(x)');
title('f_1(x) = cos(x)');
grid on;

axis([-pi pi -1.2 1.2]);


figure;

plot(x, f2, '--s', ...
    'LineWidth', 1.2, ...
    'MarkerSize', 4);

hold on;

plot(x, f3, ':^', ...
    'LineWidth', 1.2, ...
    'MarkerSize', 4);

xlabel('x');
ylabel('Function value');
title('f_2(x) and f_3(x)');

legend('f_2(x) = -x^2 + 5', ...
       'f_3(x) = x^3 - 2x^2 - 5', ...
       'Location', 'best');

grid on;
axis([-pi pi -60 10]);

hold off;

marks = [ ...
    6 8 7 9 8;
    7 6 8 7 9;
    8 7 6 8 7;
    5 7 8 6 9;
    9 8 7 10 9;
    6 7 9 8 7;
    8 9 10 9 8;
    7 8 6 7 8];

students = {'Student 1','Student 2','Student 3','Student 4', ...
            'Student 5','Student 6','Student 7','Student 8'};

average_mark = marks * ones(5,1) / 5;

figure;

subplot(2,1,1);

bar(marks);

xlabel('Laboratory session');
ylabel('Mark');
title('Marks of Students for Each Laboratory Session');

axis([0 6 0 10]);
grid on;

legend(students, 'Location', 'eastoutside');

subplot(2,1,2);

stem(1:8, average_mark, 'o');

xlabel('Student');
ylabel('Average mark');
title('Average Mark of Each Student');

axis([0 9 0 10]);
grid on;