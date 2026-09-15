% sweep_repair.m
N = 1000; hours = 8760;
repair_vals = [2, 8, 24, 72];
single_avail = zeros(length(repair_vals),1);
pair_avail = zeros(length(repair_vals),1);
cluster_avail = zeros(length(repair_vals),1);

for i = 1:length(repair_vals)
    temp = zeros(N,1);
    for k = 1:N
        temp(k) = simulate_single(0.001, repair_vals(i), hours);
    end
    single_avail(i) = mean(temp);

    temp = zeros(N,1);
    for k = 1:N
        temp(k) = simulate_pair(0.001, repair_vals(i), hours);
    end
    pair_avail(i) = mean(temp);

    temp = zeros(N,1);
    for k = 1:N
        temp(k) = simulate_cluster(0.001, repair_vals(i), hours, 1);
    end
    cluster_avail(i) = mean(temp);
end

plot(repair_vals, single_avail*100, 'o-'); hold on;
plot(repair_vals, pair_avail*100, 's-');
plot(repair_vals, cluster_avail*100, 'd-');
xlabel('Repair Mean (hours)'); ylabel('Availability (%)');
legend('Single','Pair','Cluster'); grid on;
title('Availability vs. Repair Time');