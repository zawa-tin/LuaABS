local function f(v)
    local res = 0;
    while v > 0 do
        res = res + v % 10;
        v = v // 10;
    end
    return res;
end

N, A, B = io.read("*n", "*n", "*n");
ans = 0;
for i = 1, N do
    local val = f(i);
    if A <= val and val <= B then
        ans = ans + i;
    end
end

print(ans);
