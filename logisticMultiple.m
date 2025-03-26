f = @logisticF;

%% f(f(x)), r=3.2
r = 3.2;

xx = 0:0.001:1;
ff = f(r, f(r, xx));

figure
plot(xx, ff, [0 1], [0 1])
xlabel("x");
ylabel("f(f(x))");
title("f(f(x)) Map (r = 3.2)")

%% f(x), r=2
r = 2;

ff = f(r, xx);

figure
plot(xx, ff, [0 1], [0 1])
xlabel("x")
ylabel("f(x)")
title("f(x) Map (r = 2)")

%% f(f(f(f(x)))), r=3.5
f = @(x) logisticF(3.5, x);

ff = f(f(f(f(xx))));

figure
plot(xx, ff, [0 1], [0 1])
xlabel("x")
ylabel("f^{(4)}(x)")
title("f^{(4)}(x) Map (r = 3.5)")