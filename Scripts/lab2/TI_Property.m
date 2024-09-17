% Time-Invariant Property

t = 0:0.02:5; %time span
T = 3; %delay

x1 = heaviside(t);
y1 = 2.*x1 + 1;

x = heaviside(t-T); %delayed input
y = 2.*x + 1; %the output due to the delayed input

plot(t,y,t+T, y1); legend('output due to delayed input','delayed output');