clc
clear all
F= @(x) (3*x) - exp(x);
a=0;
b=1.5;
e=0.0001;
if F(a).*F(b)<0
    while abs(b-a)>e
        c=(a+b)./2
        if F(a).*F(c)<0
            b=c;
        else
            a=c;
        end
    end
else
    disp('inaccurate')
end

