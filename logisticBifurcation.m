dr = 0.001;
rr = 0:dr:4;
n_transient = 500;
n_period = 100;
x0 = 0.5;

hold on

for i=1:length(rr)
    r = rr(i);
    xt = zeros(1, n_transient);
    xt(1) = x0;
    for i=2:n_transient
        xt(i) = logisticF(r, xt(i-1));
    end
    plot(r*ones(1, n_period), xt(1, n_transient-n_period+1:n_transient), '.', MarkerSize=0.5)
end
xlabel('r');
ylabel('x');
title('Logistic Bifuration Diagram')
