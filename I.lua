-- https://atcoder.jp/contests/abs/tasks/abc085_c
N, Y = io.read("*n", "*n");

function check(i, j, k)
    local value = 10000 * i + 5000 * j + 1000 * k;
    if value == Y then
        return true;
    else
        return false;
    end
end

function solve()
    for i = 0, N do
       for j = 0, N - i do
           local k = N - i - j;
           if check(i, j, k) then
               return { i, j, k };
           end
       end
    end
    return { -1, -1, -1 };
end

ans = solve();
print(table.concat(ans, " "));
