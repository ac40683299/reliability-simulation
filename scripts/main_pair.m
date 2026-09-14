% main_pair.m
N = 1000; hours = 8760;
avail = zeros(N,1);
for k = 1:N
    avail(k) = simulate_pair(0.001, 8, hours);
end
fprintf('Pair availability: %.4f%%\n', 100*mean(avail));
fprintf('Pair annual downtime: %.1f hours\n', 8760*(1-mean(avail)));
histogram((1-avail)*8760); xlabel('Downtime per year (hours)');
ylabel('Number of simulated years'); title('Active-Passive Pair');