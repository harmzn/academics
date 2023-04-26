X=[1 1.5 2 2.5];
Y=[2.7183 4.4817 7.3891 12.1825];
p=input('Enter the point to be interpolated = ');
n=length(X);c
for i=1:n
    F(i,1)=Y(i);
end
for i=2:n
    for j=i:n
        F(j,i)=((F(j,i-1)-F(j-1,i-1))/(X(j)-X(j-i+1)));
    end
end

for i=1:n
   l(i)=1;
   for j=1:i-1
       l(i)=l(i)*(p-X(j));
   end
end
sum=0;
for i=1:n
    sum=sum+l(i)*F(i,i);
end
fprintf('the interpolated value is %f \n',sum);