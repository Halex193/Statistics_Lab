clear all
clc
close all
n=30;
p=0.65;
k=0:n;
y=pdf('bino', k, n, p);
figure(1)
hold on
bar(k, y, 'b')
med=n*p;
sig=sqrt(n*p*(1-p));
x=(med-3*sig):0.01:(med+3*sig);
z=pdf('norm', x, med, sig);
figure(1)
plot(x, z, 'color', 'r', 'LineWidth', 2)