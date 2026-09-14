function [avail, outages, downtime] = simulate_pair(p_fail, repair_mean, hours)
up1 = true; up2 = true; serving = 1; downtime = 0; outages = 0; repair_left1 = 0; repair_left2 = 0;
for h = 1:hours
    if serving == 1 && up1
        if rand < p_fail
            up1 = false; repair_left1 = ceil(repair_mean * -log(rand)); outages = outages + 1;
            if up2 && rand < 0.95
                serving = 2;
            else
                serving = 0;
            end
        end
    elseif serving == 2 && up2
        if rand < p_fail
            up2 = false; repair_left2 = ceil(repair_mean * -log(rand)); outages = outages + 1;
            if up1 && rand < 0.95
                serving = 1;
            else
                serving = 0;
            end
        end
    end

    if serving == 0
        downtime = downtime + 1;
    end

    if ~up1
        repair_left1 = repair_left1 - 1;
        if repair_left1 <= 0
            up1 = true;
            if serving == 0
                serving = 1;
            end
        end
    end

    if ~up2
        repair_left2 = repair_left2 - 1;
        if repair_left2 <= 0
            up2 = true;
            if serving == 0
                serving = 2;
            end
        end
    end
end
avail = 1 - downtime / hours;
end