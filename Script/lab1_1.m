t = -3:0.01:4;

y1 = (t.*cos(8.*pi.*t)).*(heaviside(t)-heaviside(t-1));
y2 = (-(t-2).*cos(8.*pi.*t)).*(heaviside(t-1)-heaviside(t-2));
Y = y1 + y2;

x1 = -1*(heaviside(t+3)-heaviside(t+2));
x2 = (t+1).*(heaviside(t+2)-heaviside(t));
x3 = (-2.*t+1).*(heaviside(t)-heaviside(t-1));
x4 = 0*(heaviside(t-1)-heaviside(t-2));
x5 = (-1.*t+3).*(heaviside(t-2)-heaviside(t-3));
X = x1+x2+x3+x4+x5;

z1 = (-1.*t-2).*(heaviside(t+2)-heaviside(t+1));
z2 = (-1.*t+1).*(heaviside(t+1)-heaviside(t-1));
z3 = (2.*t-4).*(heaviside(t-1)-heaviside(t-2));
z4 = (-1.*t+3).*(heaviside(t-2)-heaviside(t-3));
Z = z1+z2+z3+z4;

subplot(3,1,1);
plot(t,Y,'LineWidth',4); grid on;
subplot(3,1,2);
plot(t,X,'LineWidth',4); grid on;
subplot(3,1,3);
plot(t,Z,'LineWidth',4); grid on;

