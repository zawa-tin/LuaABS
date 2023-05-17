-- https://atcoder.jp/contests/abs/tasks/abc081_a
s = io.read("*l");
ans = 0;
for i = 1, #s do
    local val = s:sub(i, i);
    if val == "1" then ans = ans + 1 end
end
print(ans)
