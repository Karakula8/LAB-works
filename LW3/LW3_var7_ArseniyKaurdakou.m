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
%%

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



figure;


subplot(1,2,1);

plot(t, x, 'b-', 'LineWidth', 1.2);
hold on;

plot(t, filtered, 'g:', 'LineWidth', 1.5);

plot(t, U1 * ones(size(t)), 'k-.', 'LineWidth', 1.2);

plot(t, U2 * ones(size(t)), 'r--', 'LineWidth', 1.2);

xlabel('Time (s)', 'FontWeight', 'bold', 'FontSize', 13);
ylabel('Voltage (V)', 'FontWeight', 'bold', 'FontSize', 13);

title('Original and Filtered Signals');

legend('Original signal', ...
       'Filtered signal', ...
       'U_1', ...
       'U_2', ...
       'Location', 'best');

grid on;

axis([min(t) max(t) min([x filtered U1 U2])-0.5 ...
                         max([x filtered U1 U2])+0.5]);

hold off;



subplot(1,2,2);

idx = x > U1;

stem(t(idx), x(idx), 'b', 'filled');

hold on;

max_value = max(x);
min_value = min(x);

max_idx = x == max_value;
min_idx = x == min_value;

plot(t(max_idx), x(max_idx), 'ro', ...
    'MarkerSize', 9, ...
    'LineWidth', 1.5);

plot(t(min_idx), x(min_idx), 'ks', ...
    'MarkerSize', 8, ...
    'LineWidth', 1.5);

xlabel('Time (s)', 'FontWeight', 'bold', 'FontSize', 13);
ylabel('Voltage (V)', 'FontWeight', 'bold', 'FontSize', 13);

title('Original Signal Values Above U_1');

legend('x(t) > U_1', ...
       'Maximum voltage', ...
       'Minimum voltage', ...
       'Location', 'best');

grid on;

axis([min(t) max(t) min([x])-0.5 max([x])+0.5]);

hold off;


%% Additional task

clc;
clear;

A = [0 1 0 2 3 0 4;
     0 0 0 0 0 0 0;
     0 5 0 6 7 0 8;
     0 9 0 1 2 0 3;
     0 0 0 0 0 0 0;
     0 4 0 5 6 0 7];

...