N = io.read("*n", "*l");
A = {}
for i = 1, N do
    local a = io.read("*n");
    A[#A + 1] = a;
end

ans = 100;
for _, a in pairs(A) do
    local value = 0;
    while a % 2 == 0 do
        value = value + 1;
        a = a // 2;
    end
    ans = math.min(ans, value);
end

print(ans);
