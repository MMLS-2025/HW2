du = 0.0001;
uu = 0:du:1;
n_transient = 2000;
n_period = 500;
x0 = 0.5;

hold on

for i=1:length(uu)
    u = uu(i);
    xt = zeros(1, n_transient);
    xt(1) = x0;
    for i=2:n_transient
        xt(i) = u * sin(pi * xt(i-1));
    end
    plot(u*ones(1, n_period), xt(1, n_transient-n_period+1:n_transient), '.', MarkerSize=0.5)
end
xlabel('\mu');
ylabel('x');
title('Sine Bifurcation Diagram')
saveas(gcf, 'sb.png')
