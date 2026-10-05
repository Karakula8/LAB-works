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


%% Complementary task
xP = linspace(-2, 2, 50);
yP = linspace(-2, 2, 50);

[XP, YP] = meshgrid(xP, yP);

ZP = 1 - (XP.^2 + YP.^2);

figure

subplot(1,3,1)
surf(XP, YP, ZP)
shading flat
title('Flat shading')
xlabel('x')
ylabel('y')
zlabel('z')
grid on

subplot(1,3,2)
surf(XP, YP, ZP)
shading faceted
title('Faceted shading')
xlabel('x')
ylabel('y')
zlabel('z')
grid on

subplot(1,3,3)
surf(XP, YP, ZP)
shading interp
title('Interpolated shading')
xlabel('x')
ylabel('y')
zlabel('z')
grid on