-- https://atcoder.jp/contests/abs/tasks/abc087_b
A, B, C, X = io.read("*n", "*n", "*n", "*n");

local function f(a, b, c)
    return a * 500 + b * 100 + c * 50;
end

ans = 0;
for a = 0, A do
    for b = 0, B do
        for c = 0, C do
            if f(a, b, c) == X then ans = ans + 1 end
        end
    end
end

print(ans);
