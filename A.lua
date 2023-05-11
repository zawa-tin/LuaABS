-- *nで数値、*lで文字列?
a = io.read("*n");
b, c = io.read("*n", "*n", "*l");
s = io.read("*l");
sum = a + b + c;
print(string.format("%d ", sum)..s);
