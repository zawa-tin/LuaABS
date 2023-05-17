-- https://atcoder.jp/contests/abs/tasks/abc085_b
N = io.read("*n");
A = {};
for i = 1, N do
    A[i] = io.read("*n");
end

table.sort(A);

ans = 0;
value = 0;
for i = 1, N do
    if value < A[i] then
        ans, value = ans + 1, A[i]
    end
end

print(ans);
