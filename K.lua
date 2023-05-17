function can(sx, sy, st, gx, gy, gt)
    x, y, t = math.abs(sx - gx), math.abs(sy - gy), math.abs(gt - st);
    parity_point, parity_time = (x + y) % 2, t % 2;
    res = true
    if parity_point ~= parity_time then res = false end
    if (x + y) > t then res = false end
    return res;
end

N = io.read("*n");

ans = true;
now_x, now_y, now_time = 0, 0, 0;

for i = 1, N do
    t, x, y = io.read("*n", "*n", "*n");
    if can(now_x, now_y, now_time, x, y, t) == false then ans = false end
    now_time, now_x, now_y = t, x, y;
end

print(ans and "Yes" or "No");
