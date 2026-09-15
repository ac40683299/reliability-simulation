function [avail, outages, downtime] = simulate_single(p_fail, repair_mean, hours)
% p_fail: probability the server fails in any working hour (e.g., 0.001)
% repair_mean: average repair time in hours (e.g., 8)
up = true; downtime = 0; outages = 0; repair_left = 0;
for h = 1:hours
    if up
        if rand < p_fail
            up = false;
            outages = outages + 1;
            repair_left = ceil(repair_mean * -log(rand)); % random repair time
        end
    else
        downtime = downtime + 1;
        repair_left = repair_left - 1;
        if repair_left <= 0
            up = true;
        end
    end
end
avail = 1 - downtime / hours;
end