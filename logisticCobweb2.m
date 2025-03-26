% make an 8-period cobweb
r = 3.559000000000000;

x0 = 0.550042419860392;

xx = 0:0.001:1;
ff = logisticF(r, xx);

plot(xx, ff, [0 1], [0 1])

% cobwebbing

iter = 1000;
cx = [x0];
cy = [logisticF(r, x0)];

for i = 1:iter
    cx(2*i) = cy(2*i-1);
    cy(2*i) = cy(2*i-1);
    cx(2*i+1) = cx(2*i);
    cy(2*i+1) = logisticF(r, cx(2*i+1));
    if abs(cy(2*i+1) - cy(2*i-1)) < 1e-16
        break
    end
end

hold on
plot(cx, cy, '-o')
xlabel("x");
ylabel("f(x)");
title("Logistic Map Cobwebbing (8-period, r = 3.559)")