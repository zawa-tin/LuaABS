s = io.read("*l");
ans = 0;
for i = 1, #s do
    val = s:sub(i, i);
    if val == "1" then ans = ans + 1 end
end
print(ans)
