% sweep_fail.m
N = 1000; hours = 8760;
p_fail_vals = [0.0005, 0.001, 0.005, 0.01];
single_avail = zeros(length(p_fail_vals),1);
pair_avail = zeros(length(p_fail_vals),1);
cluster_avail = zeros(length(p_fail_vals),1);

for i = 1:length(p_fail_vals)
    temp = zeros(N,1);
    for k = 1:N
        temp(k) = simulate_single(p_fail_vals(i), 8, hours);
    end
    single_avail(i) = mean(temp);

    temp = zeros(N,1);
    for k = 1:N
        temp(k) = simulate_pair(p_fail_vals(i), 8, hours);
    end
    pair_avail(i) = mean(temp);

    temp = zeros(N,1);
    for k = 1:N
        temp(k) = simulate_cluster(p_fail_vals(i), 8, hours, 1);
    end
    cluster_avail(i) = mean(temp);
end

plot(p_fail_vals, single_avail*100, 'o-'); hold on;
plot(p_fail_vals, pair_avail*100, 's-');
plot(p_fail_vals, cluster_avail*100, 'd-');
xlabel('p_fail'); ylabel('Availability (%)');
legend('Single','Pair','Cluster'); grid on;
title('Availability vs. Failure Rate');