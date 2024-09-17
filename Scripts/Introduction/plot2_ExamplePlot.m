% Example Plot in MATLAB

t = -2:0.05:4; % Time Span
x1 = 2*t.*(heaviside(t) - heaviside(t-1)) + ...  % Signal
    2*(heaviside(t-1) - heaviside(t-2)) + ...
    (-2*t+6).*(heaviside(t-2) - heaviside(t-3));

x2 = 2*cos(t).*(heaviside(t+pi/2) - heaviside(t-pi/2));

Sum = x1 + x2;
Product = x1.*x2;

plot(t,Sum,t,Product)
xlabel('time(sec)'), ylabel('x(t)'), title('Plotting x(t) in Time'), grid on,
xlim([-2 4]), ylim([-3 3]), legend('x1+x2', 'x1*x2')