a=input('Enter the lower limit=')
b=input('Enter the upper limit=')
n=input('Enter the no. of subdivisions=')
F=@(x) 4/(1+x^2)
h=(b-a)/n
sum1=F(a)+F(b);
sum2=0;
for i=1:n-1
    sum2=sum2+F(a+(i*h))
end
result=h*(sum1+(2*sum2))/2