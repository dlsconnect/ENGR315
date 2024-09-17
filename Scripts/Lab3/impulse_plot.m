% Plotting the impulse response h(t)

t = 0:0.02:10;
h = (5*exp(-5*t) - 6.6667*exp(-4*t) + 1.6667*exp(-t)) .* heaviside(t);

plot(t,h,'r*'), hold on, xlabel('time'), ylabel('h(t)'),
title('Impulse response'), grid on

a = [1 10 29 20]; b = [0 0 0 20]; % Vectors of coefficients
h = tf(b,a);              % Transfer Function
impulse(10,h), hold off, 
legend('Exact solustion of h(t)', 'MATLAB numverical')