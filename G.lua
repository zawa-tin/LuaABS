N = io.read("*n");
A = {};
for i = 1, N do
    A[i] = io.read("*n");
end

table.sort(A);

alice, bob = 0, 0
now = 0;

for i = N, 1, -1 do
    if now % 2 == 0 then
        alice = alice + A[i];
    else 
        bob = bob + A[i];
    end
    now = 1 - now;
end

ans = alice - bob;

print(ans);
