% A function to plot the line between A(x1,y1) and b(x2,y2) for 
% T1 <= t <= T2

function PlotLine(x1,y1,x2,y2,T1,T2)
t = T1:T2;

slope = (y2-y1)/(x2-x1);
y_int = y1 - slope*x1;

y = slope*t + y_int;

plot(t,y)
xlabel('time(sec)'), ylabel('y(t)'), title('Plotting y(t) in Time'), grid on,
return