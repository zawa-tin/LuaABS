-- https://atcoder.jp/contests/abs/tasks/abc086_a
a, b = io.read("*n", "*n");
prod = a * b;
parity = prod % 2;
if parity == 1 then
    print("Odd");
else 
    print("Even");
end
