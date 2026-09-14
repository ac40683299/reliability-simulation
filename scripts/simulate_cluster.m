function [avail, outages, downtime] = simulate_cluster(p_fail, repair_mean, hours, min_up)
up1 = true; up2 = true; up3 = true;
downtime = 0; outages = 0;
repair_left1 = 0; repair_left2 = 0; repair_left3 = 0;
for h = 1:hours
    up_count = up1 + up2 + up3;
    if up_count < min_up
        downtime = downtime + 1;
    end

    if up1 && rand < p_fail
        up1 = false; outages = outages + 1; repair_left1 = ceil(repair_mean * -log(rand));
    end

    if up2 && rand < p_fail
        up2 = false; outages = outages + 1; repair_left2 = ceil(repair_mean * -log(rand));
    end

    if up3 && rand < p_fail
        up3 = false; outages = outages + 1; repair_left3 = ceil(repair_mean * -log(rand));
    end

    if ~up1
        repair_left1 = repair_left1 - 1;
        if repair_left1 <= 0, up1 = true; end
    end

    if ~up2
        repair_left2 = repair_left2 - 1;
        if repair_left2 <= 0, up2 = true; end
    end

    if ~up3
        repair_left3 = repair_left3 - 1;
        if repair_left3 <= 0, up3 = true; end
    end
end
avail = 1 - downtime / hours;
end