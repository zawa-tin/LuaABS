vals = { "dream", "dreamer", "erase", "eraser" };
for i = 1, 4 do
    vals[i] = vals[i]:reverse();
end

S = io.read("*l"):reverse();

function check(itr, target, goal)
    if itr + #goal - 1 > #target then
        return false
    else 
        local substr = target:sub(itr, itr + #goal - 1);
        return substr == goal;
    end
end

itr = 1;
ans = true;
while itr <= #S and ans == true do
    local nxt = -1;
    for i = 1, 4 do
        local goal = vals[i];
        if check(itr, S, goal) then
            nxt = itr + #goal;
        end
    end
    if nxt == -1 then
        ans = false;
    else
        itr = nxt
    end
end

print(ans and "YES" or "NO");
