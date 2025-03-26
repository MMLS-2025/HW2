n = [400];
m = [120];
for j = 2:31
    coin = rand(1);
    if coin < 0.35
        n(j) = n(j-1) * 0.9;
        m(j) = m(j-1) * 0.8;
    else
        n(j) = n(j-1) * 1.1;
        m(j) = m(j-1) * 1.2;
    end
end

plot(1:31,log(n),'-o',1:31,log(m),'-o');
xlabel("Time(day)");
ylabel("The number of parasites(log-scale)");
title("Time vs The number of parasites")
legend('Parasites in ''my'' body', 'Parasites in the assistant''s body');
