N = io.read("*n", "*l");
A = {}
for i = 1, N do
    A[i] = io.read("*n");
end

ans = 100;
for i = 1, N do
    local value = 0;
    local a = A[i];
    while a % 2 == 0 do
        value = value + 1;
        a = a // 2;
    end
    ans = math.min(ans, value);
end

print(ans);
