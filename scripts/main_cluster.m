% main_cluster.m
N = 1000; hours = 8760;
avail1 = zeros(N,1); avail2 = zeros(N,1);
for k = 1:N
    avail1(k) = simulate_cluster(0.001, 8, hours, 1);
    avail2(k) = simulate_cluster(0.001, 8, hours, 2);
end
fprintf('Cluster (1 up): %.4f%%\n', 100*mean(avail1));
fprintf('Cluster (2 up): %.4f%%\n', 100*mean(avail2));
fprintf('Downtime (1 up): %.1f hours\n', 8760*(1-mean(avail1)));
fprintf('Downtime (2 up): %.1f hours\n', 8760*(1-mean(avail2)));
figure; histogram((1-avail1)*8760); xlabel('Downtime per year (hours)');
ylabel('Number of simulated years'); title('Cluster (1 up)');
figure; histogram((1-avail2)*8760); xlabel('Downtime per year (hours)');
ylabel('Number of simulated years'); title('Cluster (2 up)');