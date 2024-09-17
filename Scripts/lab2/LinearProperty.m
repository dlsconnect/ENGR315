% Checking Linearity property in MATLAB

t = 0:0.05:5; %time span
x1 = heaviside(t); x2 = heaviside(t-1); %inputs

a = 1; b = 2; %coefficients

y1 = 2*x1; y2 = 2*x2; %outputs to x1 and x2

x = a*x1 + b*x2; %linear combination of x1 and x2

y = 2*x; %output due to x

plot(t,a*y1+b*y2,t, y); legend('a*y1+b*y2', 'y');