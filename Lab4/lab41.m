clc
clear all
close all

N = 10000;
y = rand(1,N);
z = randn(1, N);

figure(1)
hold on
hist(y, 20)

title('RAND')
figure(2)
hold on
hist(z, 20)
title('RANDN')

a=0;
b=2;
w=(b-a)*y;
figure(3)
hold on
hist(w, 20)
title(['RAND[', num2str(a), ',', num2str(b),']'])

fr = hist(0, 20)

u=normrnd(0,2,1,N);
figure(4)
hold on
hist(u,20)
title('NORMRND')

n=3;
p=0.65;
v=binornd(n, p, 1, N);
fr2=hist(v, n+1)/N;
pb=pdf('bino', 0:n, n, p);
[fr2' pb']
