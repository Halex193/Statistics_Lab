function [vectfr] = Fr_Rel(x)
    ux=unique(x);
    lx = length(ux);
    for j=1:lx
        fr(j)=sum(x==ux(j));
    end
    vectfr = fr/length(x);
end