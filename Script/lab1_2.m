function [a,b,c,d,e,f] = lab1_2(t)

    subplot(3,2,1);
    a = x(t-1);
    plot(t,a);
    grid on; title("subplot 1: A = x(t-1)");

    subplot(3,2,2);
    b = x(3+t);
    plot(t,b);
    grid on; title("subplot 2: B = x(3+t)");

    subplot(3,2,3);
    c = x(t) + 1;
    plot(t,c);
    grid on; title("subplot 3: C = x(t) + 1");

    subplot(3,2,4);
    d = x(2.*t);
    plot(t,d);
    grid on; title("subplot 4: D = x(2t)");

    subplot(3,2,5);
    e = x((t./2) + 1);
    plot(t,e);
    grid on; title("subplot 5: E = x(t/2 + 1)");

    subplot(3,2,6);
    f = t.*x(t);
    plot(t,f);
    grid on; title("subplot 6: A = tx(t)");
end

function y = x(t)
    y = t .* (heaviside(t) - heaviside(t-2));
end