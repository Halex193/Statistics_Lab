close all
n = 3;
p = 0.5;
k = 0:n;
y = pdf('bino', k, n, p)
f = cdf('bino', k, n, p)
figure(1)
hold on
plot(k, y, 'b*')
figure(2)
plot(k, f, 'r')

c1 = pdf('bino', 0, n, p)
c2 = 1 - pdf('bino', 1, n, p)
d1 = cdf('bino', 2, n, p)
d2 = cdf('bino', 1, n, p)
e1 = 1 - cdf('bino', 0, n, p)
e2 = 1 - cdf('bino', 1, n, p)

N = 1000;
A = rand(3, N);
x = (A < 0.5);
r = sum(x);
p0 = sum(r == 0)/N;
p1 = sum(r == 1)/N;
p2 = sum(r == 2)/N;
p3 = sum(r == 3)/N;
figure(1)
plot(k, [p0, p1, p2, p3], 'gs')