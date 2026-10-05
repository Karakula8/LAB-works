% Arseniy
% Kaurdakou
% EDIfu-25/2
% 2026.10.05

%% 1(a)
x = linspace(-1, 1, 100);
y = linspace(-1, 1, 100);

[X, Y] = meshgrid(x, y);

R = sqrt(X.^2 + Y.^2);
Z = exp(R.^2);

figure
surf(X, Y, Z)
shading interp
colormap parula

xlabel('x')
ylabel('y')
zlabel('z')
title('Surface z(r) = e^{r^2}')
grid on
view(30, 30)


%% 1(b)
x = linspace(-4, 2, 100);
y = linspace(-4, 2, 100);

[X, Y] = meshgrid(x, y);

Z = 1 - 2*X.^2 - 3*Y.^2;

figure
surf(X, Y, Z)
shading interp
colormap parula

xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('Surface f(x,y) = 1 - 2x^2 - 3y^2')
grid on
view(45, 45)