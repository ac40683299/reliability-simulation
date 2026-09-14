% main_raid.m
N = 1000; hours = 8760;
p_fail = 0.00005; rebuild_hours = [6, 24, 72];
raid1_loss = zeros(length(rebuild_hours),1);
raid5_loss = zeros(length(rebuild_hours),1);

for i = 1:length(rebuild_hours)
    temp = zeros(N,1);
    for k = 1:N
        temp(k) = simulate_raid(2, 1, p_fail, rebuild_hours(i), hours);
    end
    raid1_loss(i) = mean(temp);
    
    temp = zeros(N,1);
    for k = 1:N
        temp(k) = simulate_raid(4, 1, p_fail, rebuild_hours(i), hours);
    end
    raid5_loss(i) = mean(temp);
end

fprintf('RAID-1 loss: %.6f %.6f %.6f\n', raid1_loss);
fprintf('RAID-5 loss: %.6f %.6f %.6f\n', raid5_loss);
plot(rebuild_hours, raid1_loss*100, 'o-'); hold on;
plot(rebuild_hours, raid5_loss*100, 's-');
xlabel('Rebuild Hours'); ylabel('Data Loss Probability');
legend('RAID-1','RAID-5'); grid on;
title('RAID Data Loss vs. Rebuild Time');