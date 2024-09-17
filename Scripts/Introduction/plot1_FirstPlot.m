% First plot in MATLAB

t = 0:0.02:3; % Time Span
y = 2*cos(2*pi*t); % Signal

plot(t,y)
xlabel('time(sec)'), ylabel('x(t)'), title('Plotting cos(.) function'), grid on
xlim([-1 4]), ylim([-3 3]), legend('')