clc
clear all
close all

s=10000;
p=0.35;
for i=1:s
    x(i)=(rand < p);
end
fr1 = sum(x);
fr0 = s - fr1;
fprintf('Relative frequency = %f \n', fr1\s)

n=3;
x=zeros(1,s);
for i=1:s
    u = rand(1, n);
    x(i)=sum(u<p);
end
fr_bin = hist(x, n+1)/s;
w=pdf('bino',0:n, n, p);

fprintf('Binomial\n')
[fr_bin' w']

fr_c = Fr_Rel(x);
[fr_bin' fr_c']

x=zeros(1,s);
for i=1:s
    x(i)=0;
    while rand >=p
        x(i)=x(i) + 1;
    end
end
geo_fr = Fr_Rel(x);
q = pdf('geo', unique(x), p);
fprintf('Geometrical\n')
[unique(x)' geo_fr' q']

n=3;
y=zeros(1, s);
for i=1:s
    x=zeros(1, n);
    for j=1:n
        while rand>=p
            x(j)=x(j)+1;
        end
    end
    y(i)=sum(x);
end

fr_Pascal = Fr_Rel(y);
qp = pdf('nbin', unique(y), n, p);
fprintf('Pascal\n');
[unique(y)' fr_Pascal' qp']
