function lost = simulate_raid(n_disks, tolerate, p_fail, rebuild_hours, hours)
% RAID-5 with 4 disks: n_disks=4, tolerate=1 (one failure survivable)
% RAID-1 mirror: n_disks=2, tolerate=1
failed = 0; rebuild_left = 0; lost = false;
for h = 1:hours
    working = n_disks - failed;
    for d = 1:working % each working disk may fail
        if rand < p_fail
            failed = failed + 1;
        end
    end
    if failed > tolerate
        lost = true; return; % second failure during rebuild window
    end
    if failed > 0
        if rebuild_left == 0
            rebuild_left = rebuild_hours; % rebuild onto spare starts
        end
        rebuild_left = rebuild_left - 1;
        if rebuild_left <= 0
            failed = 0; % rebuild complete
        end
    end
end
end