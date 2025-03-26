r = 0.75;

xs = [.2 .5 .6 .9]; % different initial condition

xx = 0:0.001:1;
ff = logisticF(r, xx);

plot(xx, ff, [0 1], [0 1])
hold on

% cobwebbing
h_plots = [];
legendLabels = {};

for x0 = xs
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
    h = plot(cx, cy, '-o', MarkerSize=2, LineWidth=1);
    h_plots = [h_plots; h];
    legendLabels{end+1} = ['x_0 = ', num2str(x0)];
end

xlabel("x");
ylabel("f(x)");
title("Logistic Map Cobwebbing (r = 0.75)")
legend(h_plots, legendLabels)