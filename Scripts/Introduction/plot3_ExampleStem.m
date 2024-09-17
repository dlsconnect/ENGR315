% Plotting using stem

t = -1:0.1:4; % Time Span
x1 = 2*t.*(heaviside(t) - heaviside(t-1)) + ...  % Signal
    2*(heaviside(t-1) - heaviside(t-2)) + ...
    (-2*t+6).*(heaviside(t-2) - heaviside(t-3));

stem(t,x1)
xlabel('time(sec)'), ylabel('x(t)'), title('Plotting x(t) in Time'), grid on,
xlim([-1 4]), ylim([-3 3]), legend('x1')